<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

// halaman awal
Route::get('/', 'HomeController@index');

// berita
Route::get('/berita', 'BeritaController@index');
Route::get('/berita/{id}', 'BeritaController@show');

// gallery
Route::get('/photo', 'GalleryController@photo');
Route::get('/video', 'GalleryController@video');

// program
Route::get('/profesi-msp-1-tahun', 'ProgramController@index');

// prefix admin panel
Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});

// dynamic pages
// if (Request::url() != 'http://localhost:8000/admin') {
    Route::get('/{slug}', 'PageController@show');
// }
