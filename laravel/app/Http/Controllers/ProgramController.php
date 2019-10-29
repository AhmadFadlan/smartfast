<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use Illuminate\Support\Facades\DB;

use App\Page;

class ProgramController extends Controller
{
  public function index()
  {
    $data = Page::where('status', '=', 'ACTIVE')
          ->get();
    dd($data);

    return view('pages/program-profesi-msp1', compact('data'));
  }

}
