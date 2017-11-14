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

Route::post('login', 'API\PassportController@login');
Route::post('register', 'API\PassportController@register');

Route::group(['middleware' => 'auth:api'], function (){
    Route::get('clientes', 'API\PassportController@getClientes');
    Route::post('get-details', 'API\PassportController@getDetails');
    Route::delete('apagar/{id}', 'API\PassportController@delete');
});
