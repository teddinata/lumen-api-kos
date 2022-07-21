<?php

/** @var \Laravel\Lumen\Routing\Router $router */

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It is a breeze. Simply tell Lumen the URIs it should respond to
| and give it the Closure to call when that URI is requested.
|
*/
$router->get('/', 'KosController@view');

$router->post('create-kos', 'KosController@create');
$router->get('kos', 'KosController@index');
$router->get('kos/{id}', 'KosController@show');
$router->put('kos/{id}', 'KosController@update');
$router->delete('kos/{id}', 'KosController@destroy');




