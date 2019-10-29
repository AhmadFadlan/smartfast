<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use Illuminate\Support\Facades\Storage;

class GalleryController extends Controller
{
    public function photo()
    {
      $dir_path = Storage::directories('public/gallery/photo');
      foreach ($dir_path as $dir) {
        $get_folder = explode('/', $dir);
        $get_allfiles = Storage::allfiles($dir);
        $galleries[$get_folder[3]] = str_replace('public', 'storage', $get_allfiles);
      }

      return view('pages/gallery-photo',compact('galleries'));
    }

    public function video()
    {
      $dir_path = Storage::directories('public/gallery/video');
      // dd($dir_path);
      foreach ($dir_path as $dir) {
        $get_folder = explode('/', $dir);
        // $get_allfiles = str_replace('public', 'storage', Storage::allfiles($dir));
        $get_allfiles = Storage::allfiles($dir);
        // $galleries[$get_folder[3]] = array();
        // dd($get_allfiles);
        foreach ($get_allfiles as $k => $files) {
          // dd($get_allfiles);
            $files_info = pathinfo($files);

            if ($files_info['extension']=='txt') {
              $get_content = Storage::get($files);
              $slice_content = explode(',', $get_content);
              $clean_whitespace = array_filter(array_map('trim', $slice_content));
              $galleries[$get_folder[3]]['youtube'] = $clean_whitespace;
            } else {
              $galleries[$get_folder[3]]['local'] = str_replace('public', 'storage', $files);
            }

        }

        // dd($galleries);

      }
      // dd($galleries);
      return view('pages/gallery-video',compact('galleries'));
    }
}
