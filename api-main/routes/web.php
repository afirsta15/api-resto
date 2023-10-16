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

$router->get('/', function () use ($router) {
    return $router->app->version();
});

// UAC
Route::group([
    'prefix' => 'auth'
], function ($router) {

    Route::post('login', 'AuthController@login');
    Route::get('/user-role','AuthController@me');

});

Route::group([
    // 'middleware' => 'auth',
    'prefix' => 'api'
], function ($router) {

    // ITEM
    Route::get('item/list', 'ItemController@index');
    Route::post('item/create', 'ItemController@store');
    Route::post('item/update', 'ItemController@update');
    Route::get('item/category', 'ItemController@category');
    Route::get('item/harga', 'ItemController@indexharga');

    // WAREHOUSE
    Route::get('outbound', 'WarehouseController@index');
    Route::post('outbound/create', 'WarehouseController@outbound');
    Route::post('outbound/confirm', 'WarehouseController@outboundConfirm');
    Route::post('outbound/update', 'WarehouseController@outboundUpdate');
    Route::post('outbound/cancel', 'WarehouseController@outboundCancel');

    // CASHIER
    Route::get('cashier/list', 'CashierController@index');
    Route::post('cashier/penjualan', 'CashierController@penjualan');
    Route::get('cashier/customer', 'CashierController@customer');
    Route::post('cashier/checker','CashierController@checker');
    Route::post('cashier/checker/update','CashierController@checkerUpdate');
    Route::get('cashier/transaction', 'CashierController@transactionIndex');
    Route::post('cashier/transaction/create', 'CashierController@transaction');
    Route::post('cashier/transaction/cancel', 'CashierController@transactionCancel');
    Route::get('cashier/return', 'CashierController@returnTransactionIndex');
    Route::post('cashier/return/create', 'CashierController@returnTransaction');
    Route::post('cashier/return/cancel', 'CashierController@returnTransactionCancel');

    // CONFIG
    Route::get('config', 'ConfigController@index');

    //print pdf
    Route::get('cashier/checker/invoice/{id}', 'InvoiceController@show')->name('invoice.show');
    
});
