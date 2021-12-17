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


Route::get('/',[App\Http\Controllers\ProductController::class,'getIndex'])->name('product.index');
Route::get('/add-to-cart/{id}',[App\Http\Controllers\ProductController::class,'getAddToCart'])->name('product.addtocart');
Route::get('/reduce/{id}',[App\Http\Controllers\ProductController::class,'getReduceByOne'])->name('product.reducebyone');
Route::get('/remove/{id}',[App\Http\Controllers\ProductController::class,'getRemoveItem'])->name('product.remove');
Route::get('/shoppingcart',[App\Http\Controllers\ProductController::class,'getCart'])->name('product.shoppingcart');
Route::get('/checkout',[App\Http\Controllers\ProductController::class,'getCheckout'])->name('checkout')->middleware('auth');
Route::post('/checkout',[App\Http\Controllers\ProductController::class,'postCheckout'])->name('checkout')->middleware('auth');
Auth::routes();
Route::get('/shop/index',[App\Http\Controllers\HomeController::class,'index']);
Route::get('/logout',[App\Http\Controllers\ProductController::class,'getIndex']);





