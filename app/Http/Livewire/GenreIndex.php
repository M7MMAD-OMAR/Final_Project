<?php

namespace App\Http\Livewire;

use App\Models\Genre;
use Illuminate\Support\Facades\Http;
use Illuminate\Support\Str;
use Livewire\Component;
use Livewire\WithPagination;

class GenreIndex extends Component
{
    use WithPagination;

    public $tmdbId;
    public $title;
    public $genreId;

    public $search = '';
    public $sort = 'asc';
    public $perPage = 5;

    public $showGenreModal = false;

    protected $rules = [
        'title' => 'required',
    ];

    public function generateGenre()
    {
        $newGenre = Http::get('http://api.themoviedb.org/3/genre/'. $this->tmdbId .'?api_key=43d395118985f519a8036c48a693099c&language=en-US
                        ')->json();

        if (!Genre::where('tmdb_id', $newGenre['id'])->first()) {
            Genre::create([
        'tmdb_id' => $newGenre['id'],
        'title'    => $newGenre['name'],
        'slug'    => Str::slug($newGenre['name']),
    ]);
            $this->reset();
            $this->dispatchBrowserEvent('banner-message', ['style' => 'success', 'message' => 'Genre created']);
        } else {
            $this->dispatchBrowserEvent('banner-message', ['style' => 'danger', 'message' => 'Genre exisit']);
        }
    }

    public function showEditModal($id)
    {
        $this->genreId = $id;
        $this->loadGenre();
        $this->showGenreModal = true;
    }

    public function loadGenre()
    {
        $this->title = Genre::findOrFail($this->genreId)->title;
    }

    public function updateGenre()
    {
        $this->validate();
        $genre = Genre::findOrFail($this->genreId);
        $genre->update([
            'title' => $this->title,
        ]);
        $this->dispatchBrowserEvent('banner-message', ['style' => 'success', 'message' => 'Genre updated']);
        $this->reset();
    }

    public function closeGenreModal()
    {
        $this->reset();
        $this->resetValidation();
    }

    public function deleteGenre($id)
    {
        Genre::findOrFail($id)->delete();
        $this->dispatchBrowserEvent('banner-message', ['style' => 'success', 'message' => 'Genre deleted']);
        $this->reset();
    }

    public function resetFilters()
    {
        $this->reset(['search', 'sort', 'perPage']);
    }
    public function render()
    {
        return view('livewire.genre-index', [
            'genres' => Genre::search('title', $this->search)->orderBy('title', $this->sort)->paginate($this->perPage)
        ]);
    }
}
