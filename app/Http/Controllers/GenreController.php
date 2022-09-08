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
        $genre = Genre::create([
            'title' => $request['title'],
            'slug' => str::slug($request['title'])
        ]);
        return back()->with('success', 'send data success');
    }
}
