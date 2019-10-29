<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Page;

class PageController extends Controller
{
    public function show($slug)
    {
        // if ($slug != 'admin') {
          $page = Page::findBySlug($slug);

          return view('pages/show', compact('page'));
        // }else{
        //   return $slug;
        // }
    }
}
