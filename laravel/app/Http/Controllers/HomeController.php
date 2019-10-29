<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use Illuminate\Support\Facades\DB;

use Illuminate\Support\Facades\Storage;

use App\Post;

use App\Models\Slider;

class HomeController extends Controller
{
  public function index()
  {
    $sliders = Slider::where('status', '=', 1)->get();

    $posts = Post::Where('status','=','PUBLISHED')
           ->OrderBy('created_at','desc')
           ->limit(5)
           ->get();

     $dir_path = Storage::directories('public/gallery/photo');
     foreach ($dir_path as $dir) {
       $get_folder = explode('/', $dir);
       $get_allfiles = Storage::allfiles($dir);
       if(!empty($get_allfiles)){
         $key_rand[$get_folder[3]] = array_rand($get_allfiles,2);
         $all_galleries[$get_folder[3]] = str_replace('public', 'storage', $get_allfiles);
       }

     }

     foreach ($key_rand as $cat => $rk) {
       foreach ($rk as $key => $value) {
         $galleries[$cat][] = $all_galleries[$cat][$value];
       }
     }
     // dd($rand_galleries);
     return view('home', compact('posts','sliders','galleries'));
  }

}
