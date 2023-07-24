<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

// Route::get('{any}', function () {
//     return view('admin');
// })->where('any', '.*');

// Route::get('{any}', function () {
//     return view('welcome');
// })->where('any', '.*');

Route::get('/admin/{vue_capture?}', function () {
    return view('admin');
   })->where('vue_capture', '[\/\w\.-]*');

Route::get('/{vue_capture?}', function () {
    return view('welcome');
   })->where('vue_capture', '[\/\w\.-]*');
