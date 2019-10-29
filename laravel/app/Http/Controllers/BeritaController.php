<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use Illuminate\Support\Facades\DB;

use App\Post;

class BeritaController extends Controller
{
  public function index()
  {
    $posts_hot = Post::where('status','=','PUBLISHED')
               ->orderby('created_at','desc')
               ->first();

    $posts = Post::where('id','<>',$posts_hot->id)
           ->where('status','=','PUBLISHED')
           ->orderby('created_at','desc')
           ->paginate(8);

    // dd($posts);

    return view('pages/berita', compact('posts','posts_hot'));
  }

  public function show($id)
  {
    $posts = Post::findorfail($id);
    // dd($posts);
    return view('pages/berita-single',compact('posts'));
  }

}
