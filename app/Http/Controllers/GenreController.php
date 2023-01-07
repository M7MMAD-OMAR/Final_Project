<?php

namespace App\Http\Controllers;

use App\Models\Genre;
use Illuminate\Http\Request;
use Illuminate\Support\Str;

class GenreController extends Controller
{
    public function show(Genre $genre)
    {
        $movies = $genre->movies()->paginate('18');

        return view('genres.show', compact('movies', 'genre'));
    }

    public function store(Request $request) {
        $old_qenre_id = Genre::latest('id')->first();
        $old_qenre_id = (int)$old_qenre_id->id;

        Genre::create([
            'tmdb_id' => ($old_qenre_id + 1),
            'title' => $request['title'],
            'slug' => str::slug($request['title'])
        ]);
        return back()->with('success', 'send data success');
    }
}
