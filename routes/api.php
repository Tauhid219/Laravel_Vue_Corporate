<?php

use App\Http\Controllers\AboutUsController;
use App\Http\Controllers\BlogController;
use App\Http\Controllers\ContactMsgController;
use App\Http\Controllers\GeneralInfoController;
use App\Http\Controllers\ProductController;
use App\Http\Controllers\ServiceController;
use App\Http\Controllers\TeamController;
use App\Http\Controllers\WhyUsController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

Route::resource('products', ProductController::class);
Route::resource('services', ServiceController::class);
Route::resource('general', GeneralInfoController::class);
Route::resource('whyus', WhyUsController::class);
Route::resource('aboutus', AboutUsController::class);
Route::resource('contactmsg', ContactMsgController::class);
Route::resource('team', TeamController::class);
Route::resource('blog', BlogController::class);
