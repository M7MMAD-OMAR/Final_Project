<?php

namespace App\Http\Controllers;

use App\Models\Tag;
use Illuminate\Http\Request;
use Illuminate\Support\Str;

class TagController extends Controller
{
    public function store(Request $request) {
        $tag =  Tag::create([
//            'tmdb_id' => $request['id'],
            'tag_name' => $request['tag_name'],
            'slug' => Str::slug($request['tag_name']),
        ]);
        return back()->with('success', 'Ok it\'s saved');
    }
}
