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

Route::get('/', 'HomeController@index');
Route::get('/welcome', 'HomeController@mulai');
Route::post('/save', 'HomeController@saveQuestioner');
Route::get('/question-answer/{questioner_id}/{question_id}', 'HomeController@questions');
Route::post('/question-answer/{questioner_id}/{question_id}', 'HomeController@saveAnswer');
Route::get('/result/{questioner_id}', 'HomeController@result');
