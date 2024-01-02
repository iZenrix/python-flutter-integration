<?php

use App\Http\Controllers\FibonacciController;
use App\Http\Controllers\MultiplyController;
use App\Http\Controllers\PrimeNumberController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

Route::get('/multiply', MultiplyController::class);
Route::get('/tes', function () {
    return 'Hello World';
});
Route::get('/fibonacci', FibonacciController::class);
Route::get('/prime', PrimeNumberController::class);