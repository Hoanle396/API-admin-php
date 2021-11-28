<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/
Route::post('/register','ApiUserController@register');
Route::post('/login','ApiUserController@login');
Route::get('/user','ApiUserController@userInfo')->middleware('auth:api');
Route::post('/change','ApiUserController@changeAddress');
Route::post('/password','ApiUserController@changePassword');
Route::get('/product','ApiProductController@index');
Route::get('/product/{id}','ApiProductController@show');
Route::get('getbank','CheckoutController@getBank');
Route::post('checkout','CheckoutController@store');
Route::post('done','CheckoutController@done');


Route::resource('product','ApiProductController');
Route::resource('feedback','Admin\FeedbackController');
Route::post('/service' ,'Admin\ServiceController@store');
Route::get('news','NewsController@index');
Route::get('news/{id}','NewsController@show');
