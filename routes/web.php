<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Controller;
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

Route::get('/', function () {
    return view('welcome');
});



Route::get('/Home/login/', [Controller::class, 'login']);
Route::get('/Home/setting/', [Controller::class, 'setting']);
Route::get('/Home/activity/', [Controller::class, 'activity']);
Route::get('/Home/hapus_activity/{id}', [Controller::class, 'hapus_activity']);
Route::get('/Home/clear_all_activities/', [Controller::class, 'clear_all_activities']);
Route::post('/Home/aksilogin', [Controller::class, 'aksilogin']);
Route::get('/Home/logout/', [Controller::class, 'logout']);
Route::post('/Home/aksi_e_setting', [Controller::class, 'aksi_e_setting']);

Route::get('/Home/user/', [Controller::class, 'user']);
Route::get('/Home/t_user/', [Controller::class, 't_user']);
Route::post('/Home/aksi_t_user', [Controller::class, 'aksi_t_user']);
Route::get('/Home/hapus_user/{id}', [Controller::class, 'hapus_user']);
Route::post('/Home/aksi_e_user', [Controller::class, 'aksi_e_user']);

Route::post('/Home/resetpassword/{id}', [Controller::class, 'resetpassword']);

Route::get('/Home/profile/', [Controller::class, 'profile']);
Route::post('/Home/aksi_e_profile', [Controller::class, 'aksi_e_profile']);
Route::post('/Home/editfoto/', [Controller::class, 'editfoto']);
Route::post('/Home/deletefoto/', [Controller::class, 'deletefoto']);

Route::get('/Home/register/', [Controller::class, 'register']);
Route::post('/Home/aksi_register', [Controller::class, 'aksi_register']);

Route::get('/Home/changepassword/', [Controller::class, 'changepassword']);
Route::post('/Home/aksi_changepass', [Controller::class, 'aksi_changepass']);

Route::get('/Home/lockscreen/', [Controller::class, 'lockscreen']);
Route::post('/Home/validatePassword/', [Controller::class, 'validatePassword']);



Route::get('/Home/dashboard/', [Controller::class, 'dashboard']);
Route::get('/Home/t_dashboard/', [Controller::class, 't_dashboard']);
Route::post('/Home/aksi_t_dashboard', [Controller::class, 'aksi_t_dashboard']);
Route::get('/Home/hapus_dashboard/{id}', [Controller::class, 'hapus_dashboard']);
Route::post('/Home/aksi_e_dashboard', [Controller::class, 'aksi_e_dashboard']);



Route::get('/Home/kalkulator/', [Controller::class, 'kalkulator']);
Route::get('/Home/t_kalkulator/', [Controller::class, 't_kalkulator']);
Route::post('/Home/aksi_t_kalkulator', [Controller::class, 'aksi_t_kalkulator']);
Route::get('/Home/hapus_kalkulator/{id}', [Controller::class, 'hapus_kalkulator']);
Route::post('/Home/aksi_e_kalkulator', [Controller::class, 'aksi_e_kalkulator']);