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
        $poster_name = $request->file('poster_path')->getClientOriginalName();
        $backdrop_name = $request->file('poster_path')->getClientOriginalName();
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
            'poster_path' => $request->file('poster_path')->storeAs('photos_movies',$poster_name ,'photo_movie'),
            'backdrop_path' => $request->file('backdrop_path')->storeAs('photos_movies',$backdrop_name ,'photo_movie'),
        ]);
        return back()->with('success', 'Ok it\'s saved');
    }
}
