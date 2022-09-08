<?php

namespace App\Http\Controllers;

use App\Models\Movie;
use Illuminate\Http\Request;
use Illuminate\Support\Str;

class MovieController extends Controller
{
    public function index()
    {
        $movies = Movie::orderBy('created_at', 'desc')->paginate(18);
        return view('movies.index', compact('movies'));
    }
    public function show(Movie $movie)
    {
        $latest = Movie::orderBy('created_at', 'desc')->take(9)->get();
        return view('movies.show', compact('movie', 'latest'));
    }

    public function store(Request $request) {
        $movies = Movie::create([
//            'tmdb_id' => $request['id'],
            'title' => $request['title'],
            'slug'  => Str::slug($request['title']),
            'runtime' => $request['runtime'],
            'rating' => $request['vote_average'],
            'release_date' => $request['release_date'],
            'lang' => $request['original_language'],
            'video_format' => 'HD',
            'is_public' => false,
            'overview' => $request['overview'],
            'visits' => $request['visits'],
            'poster_path' => $request['poster_path'],
            'backdrop_path' => $request['backdrop_path']
        ]);
        $movies->save();
        return back()->with('success', 'Ok it\'s saved');
    }
}
