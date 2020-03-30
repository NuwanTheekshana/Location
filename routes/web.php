<?php

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
    return view('auth.login');
});


Auth::routes();


Route::get('/home','HomeController@index');
Route::get('/mail',function() {
    return view ('Mail_Layout.sendrequest'); 
});


Route::get('/home', 'HomeController@index')->name('home');


    Route::group(['middleware' => 'auth'], function (){
   
    Route::get('/all_branch', 'allbranchcontroller@index');
    Route::get('/all_users','userupdatecontroller@userdetails');
    
    Route::get('/newbranch',function() {
    return view ('newbranch'); 

    });

    Route::POST('/sendrequest','requestcontroller@sendrequest');
    Route::POST('/updatebranch','updatecontroller@updatebranch');
    Route::GET('/location_delete', 'updatecontroller@location_delete');
    Route::POST('/updateusers','userupdatecontroller@updateusers');
    Route::GET('/user_delete', 'userupdatecontroller@user_delete');
    Route::GET('/user_change_password', 'userupdatecontroller@user_change_password');
    

});
