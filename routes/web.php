<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\PostController;
use App\Http\Controllers\CustomAuthController;
use App\Http\Controllers\FileController;
use App\Http\Controllers\LocalizationController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Route::get('/lang/{locale}', [LocalizationController::class, 'index'])->name('lang');

Route::get('posts', [PostController::class, 'index'])->name('post.index')->middleware('auth');
Route::get('post-show/{post}', [PostController::class, 'show'])->name('post.show')->middleware('auth');
Route::get('post-create', [PostController::class, 'create'])->name('post.create')->middleware('auth');
Route::post('post-create', [PostController::class, 'store'])->name('post.store')->middleware('auth');
Route::get('post-edit/{post}', [PostController::class, 'edit'])->name('post.edit')->middleware('auth');
Route::put('post-edit/{post}', [PostController::class, 'update'])->name('post.update')->middleware('auth');
Route::delete('post-edit/{post}', [PostController::class, 'destroy'])->name('post.delete')->middleware('auth');

Route::get('files', [FileController::class, 'index'])->name('file.index')->middleware('auth');
Route::get('file-create', [FileController::class, 'create'])->name('file.create')->middleware('auth');
Route::get('file-edit/{file}', [FileController::class, 'edit'])->name('file.edit')->middleware('auth');
Route::post('file-create', [FileController::class, 'store'])->name('file.store')->middleware('auth');
Route::get('file-show/{file}', [FileController::class, 'show'])->name('file.show')->middleware('auth');
Route::put('file-edit/{file}', [FileController::class, 'update'])->name('file.update')->middleware('auth');
Route::delete('file-edit/{file}', [FileController::class, 'destroy'])->name('file.delete')->middleware('auth');

Route::get('file/{file}', [FileController::class, 'download'])->name('file.download')->middleware('auth');
Route::get('query', [PostController::class, 'query']);
//Route::get('posts-page', [PostController::class, 'page'])->middleware('auth');
//Route::get('/post/{post}/PDF', [PostController::class, 'pdf'])->name('post.pdf')->middleware('auth');

Route::get('registration', [CustomAuthController::class, 'create'])->name('auth.create');
Route::post('registration', [CustomAuthController::class, 'store']);
Route::get('login', [CustomAuthController::class, 'login'])->name('login');
Route::post('login', [CustomAuthController::class, 'authentication']);
Route::get('logout', [CustomAuthController::class, 'logout'])->name('logout')->middleware('auth');


Route::get('etudiants', [CustomAuthController::class, 'index'])->name('etudiant.index')->middleware('auth');
Route::get('etudiant/{etudiant}', [CustomAuthController::class, 'show'])->name('etudiant.show')->middleware('auth');
Route::get('etudiant-edit/{etudiant}', [CustomAuthController::class, 'edit'])->name('etudiant.edit')->middleware('auth');
Route::put('etudiant-edit/{etudiant}', [CustomAuthController::class, 'update'])->name('etudiant.update')->middleware('auth');
Route::delete('etudiant-edit/{etudiant}', [CustomAuthController::class, 'destroy'])->name('etudiant.delete')->middleware('auth');


Route::controller(VilleController::class)->group(function () {
    Route::get('ville', 'index')->name('ville.index');
    Route::get('ville/{ville}', 'show')->name('ville.show');
    Route::get('ville-create', 'create')->name('ville.create');
    Route::post('ville-create', 'store')->name('ville.store');
    Route::get('ville-edit/{ville}', 'edit')->name('ville.edit');
    Route::put('ville-edit/{ville}', 'update')->name('ville.update');
    Route::delete('ville-edit/{ville}', 'destroy')->name('ville.delete');
})->middleware('auth');
