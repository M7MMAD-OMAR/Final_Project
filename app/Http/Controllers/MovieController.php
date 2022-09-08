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

    /**
     * @throws \Exception
     */
    public function store(Request $request) {
        $temp = $request->file('poster_path')::store('photos_movies', 'photo_movie');
        $movies = Movie::create([
//            'tmdb_id' => random_int(0, 10000),
            'title' => $request['title'],
            'slug'  => Str::slug($request['title']),
//            'runtime' => $request['runtime'],
            'rating' => $request['vote_average'],
            'release_date' => $request['release_date'],
            'lang' => $request['original_language'],
            'video_format' => 'HD',
            'is_public' => $request['is_public'],
            'overview' => $request['overview'],
            'visits' => $request['visits'],
            'poster_path' => $temp,
            'backdrop_path' => $request['backdrop_path']
        ]);
        $movies->save();
        return back()->with('success', 'Ok it\'s saved');
    }
}
