<?php

use App\Http\Controllers\MultiplyController;
use App\Livewire\MultiplyPython;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

Route::get('/multiply', MultiplyController::class);
Route::get('/tes', function () {
    return 'Hello World';
});