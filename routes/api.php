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

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

Route::apiResource('vhls','VhlController');

Route::get('agences','VhlController@ListAgences');

Route::get('comments','VhlController@ListComments');

Route::get('status','VhlController@ListStatus');

Route::get('intitule','VhlController@ListIntitules');

Route::post('/comment/create' ,'VhlController@storeComment');

Route::get('visite','VhlController@getVisite');

Route::get('anomalies','VhlController@getAnomalies');



