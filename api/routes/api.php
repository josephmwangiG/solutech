<?php

use App\Http\Controllers\AuthenticationController;
use App\Http\Controllers\StatusController;
use App\Http\Controllers\TaskController;
use App\Http\Controllers\UsersController;
use App\Http\Controllers\UserTaskController;
use App\Http\Controllers\ReportsController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/

Route::post('/signin', [AuthenticationController::class, 'signin']);
//using middleware
Route::group(['middleware' => ['auth:sanctum']], function () {
    Route::get('/user', [AuthenticationController::class, 'user']);
    Route::get('/suser', [UsersController::class, 'update']);
    Route::resource('/users', UsersController::class);
    Route::resource('/tasks', TaskController::class);
    Route::resource('/status', StatusController::class);
    Route::resource('/users-tasks', UserTaskController::class);
    Route::post('/sign-out', [AuthenticationController::class, 'logout']);
});

Route::get('users-pdf', [ReportsController::class, 'usersPDF']);
Route::get('tasks-pdf', [ReportsController::class, 'tasksPDF']);
