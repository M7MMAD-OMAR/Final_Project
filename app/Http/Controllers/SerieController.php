<?php

namespace App\Http\Controllers;

use App\Models\Episode;
use App\Models\Season;
use App\Models\Serie;
use Illuminate\Http\Request;
use Illuminate\Support\Str;

class SerieController extends Controller
{
    public function index()
    {
        $series = Serie::withCount('seasons')->orderBy('created_at', 'desc')->paginate(18);

        return view('series.index', compact('series'));
    }

    public function show(Serie $serie)
    {
        $latests = Serie::withCount('seasons')->orderBy('created_at', 'desc')->take(9)->get();
        return view('series.show', compact('serie', 'latests'));
    }

    public function seasonShow(Serie $serie, Season $season)
    {
        Season::withCount('episodes')->orderBy('created_at', 'desc')->take(9)->get();
        return view('series.seasons.show', compact('serie', 'season'));
    }

    public function showEpisode(Episode $episode)
    {
        Episode::orderBy('created_at', 'desc')->take(9)->get();
        return view('episodes.show', compact('episode'));
    }

    public function store(Request $request)
    {
        $image_name = $request->file('poster_path')->getClientOriginalName();
        $old_serie_id = Serie::latest('id')->first();
        $old_serie_id = (int)$old_serie_id->id;

        $series = Serie::create([
            'tmdb_id' => ($old_serie_id + 1),
            'name' => $request['name'],
            'slug' => Str::slug($request['name']),
            'created_year' => $request['first_air_date'],
            'poster_path' => $request->file('poster_path')->storeAs('photos_movies', $image_name, 'photo_movie'),
        ]);
        $series->save();
        return back()->with('success', 'Ok it\'s saved');
    }

}
