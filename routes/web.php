<?php

use Illuminate\Support\Facades\Route;

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

Route::get('/', [App\Http\Controllers\Admin\HomeController::class, 'index']);
Route::post('/admin_dashboard',[App\Http\Controllers\Admin\HomeController::class, 'store']);
Route::get('/Admin/dashboard',[App\Http\Controllers\Admin\HomeController::class, 'create']);
Route::resource('/Admin/product','Admin\ProductConroller');
Route::resource('/Admin/service','Admin\ServiceController');
Route::resource('/Admin/auth','Admin\AuthController');
Route::resource('/Admin/news','Admin\NewsController');
Route::resource('/Admin/meet','Admin\MeetController');
Route::resource('/Admin/order','Admin\OrderController');
Route::resource('/Admin/Bank','Admin\BankController');
Route::resource('Admin/feedback','Admin\FeedbackController');

