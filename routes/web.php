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

Route::get('/', function () {
    return view('welcome');
});

Route::get('/newsfeed', function () {
    return view('newsfeed');
});

Route::get('/content', function () {
    return view('content');
});

Route::get('/article', function () {
    return view('article');
});


Route::middleware(['auth:sanctum', 'verified'])->get('/dashboard', function () {
    return view('dashboard');
})->name('dashboard');

Route::middleware(['auth:sanctum', 'verified'])->get('/create-post', function () {
    return view('create_post');
})->name('create-post');

// Route::middleware(['auth:sanctum', 'verified'])->get('/individual-post', function () {
//     return view('individual_post');
// })->name('individual-post');


Route::post('/createpost', [
    'uses'=>'PostController@postCreatePost',
    'as'=>'post.create',
    'middleware' => 'auth'
]);

Route::get('/dashboard', [
    'uses'=>'PostController@getDashboard',
    'as'=>'dashboard',
    'middleware' => 'auth'
]);

Route::post('/createcomment', [
    'uses'=>'CommentController@postCreateComment',
    'as'=>'comment.create',
    'middleware' => 'auth'
]);

Route::get('/my_posts', [
    'uses'=>'PostController@getMyPosts',
    'as'=>'my-posts',
    'middleware' => 'auth'
]);

Route::get('/deletepost/{post_id}', [
    'uses' => 'PostController@getDeletePost',
    'as' => 'post.delete',
    'middleware' =>'auth'
]);

Route::get('/individual_post/{post_id}', [
    'uses' => 'PostController@getIndividualPost',
    'as' => 'individual_post',
    'middleware' =>'auth'
]);

Route::get('/editpost/{post_id}', [
    'uses' => 'PostController@getEditPost',
    'as' => 'post.edit',
    'middleware' =>'auth'
]);

Route::post('/updatepost/{post_id}', [
    'uses'=>'PostController@updatePost',
    'as'=>'post.update',
    'middleware' => 'auth'
]);
