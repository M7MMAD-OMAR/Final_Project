<?php

namespace App\Http\Controllers;

use App\Models\Cast;
use Illuminate\Http\Request;
use Illuminate\Support\Str;

class CastController extends Controller
{
    public function index()
    {
        $casts = Cast::orderBy('created_at', 'desc')->paginate(18);

        return view('casts.index', compact('casts'));
    }

    public function show(Cast $cast)
    {
        return view('casts.show', compact('cast'));
    }

    public function store(Request $request) {
        $image_name = $request->file('poster_path')->getClientOriginalName();
        Cast::create([
//            'tmdb_id' => $newCast['id'],
            'name' => $request['name'],
            'slug' => Str::slug($request['name']),
            'poster_path' => $request->file('poster_path')->storeAs('photos_movies',$image_name ,'photo_movie'),
        ]);


                    return back()->with('success', 'Ok it\'s saved');
    }
}
