<?php

use App\Http\Controllers\API\AutController;
use App\Http\Controllers\ApiControll\v1\PacijentController;
use App\Http\Controllers\ApiControll\v1\TerapijaController;
use App\Http\Controllers\ApiControll\v1\PacijentTerapijaController;
use App\Http\Controllers\PController;
use App\Http\Controllers\ApiControll\v1\UserController;
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

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});
//v1
Route::group(['namespace'=>'App\Http\Controllers\ApiControll\v1'], function(){
    Route::apiResource('pacijent', PacijentController::class);
    Route::apiResource('terapija', TerapijaController::class);
    Route::get('/pacijent/{id}/terapija', [PacijentTerapijaController::class, 'index']);
    Route::apiResource('doktor', UserController::class);
    Route::get('doktor/{id}', [UserController::class, 'show']);
    Route::post('/register', [AutController::class, 'register']);
    
   

});
Route::post('/login', [AutController::class, 'login']);
Route::group(['middleware' => ['auth:sanctum'], 'namespace'=>'App\Http\Controllers\ApiControll\v1'], function(){
    Route::get('/profile', function(Request $request){
        return auth()->user();
    });
    Route::post('/logout', [AutController::class, 'logout']);
    Route::resource('pacijent', PacijentController::class)->only(['update', 'store', 'destroy']);
    Route::resource('terapija', TerapijaController::class)->only(['update', 'store', 'destroy']);
}); 
//Route::get('/pacijenti', PController::class, 'index');


