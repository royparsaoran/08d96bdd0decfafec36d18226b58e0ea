<?php

use Illuminate\Http\Request;

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

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});


Route::post('/syllabusdosen/{idPertemuan}/editwaktu','syllabusController@editwaktu');
Route::post('/syllabusdosen/{idPertemuan}/editnama','syllabusController@editnama');

Route::post('/forumManageTopics/{id}/edit','forumManageTopicsController@edit');
Route::post('/forumManageTopicsAdmin/{id}/edit','forumManageTopicsController@edit');

Route::POST('/assignmentDosen/{id}/{idAssignment}/{nrp}', 'assignmentController@editNilai');


