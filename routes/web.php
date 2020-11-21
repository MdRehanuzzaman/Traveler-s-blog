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
    return redirect()->route('home.index');
});

Route::get('/home','HomeController@index')->name('home.index');
Route::get('/tourlocationuser','TourLocationUserController@index')->name('tourLocationUser.index');
Route::get('/tourlocationuser/show/{tour_location_id}','TourLocationUserController@show')->name('tourLocationUser.show');
Route::get('/searchValue','HomeController@search');

Route::get('/notice/show/{notice_id}','HomeController@show')->name('notice.show');
Route::get('/notice/showMore','HomeController@showMore')->name('notice.showMore');

Route::get('/login','LoginController@index')->name('login.index');
Route::post('/login', 'LoginController@verify')->name('login.verify');

Route::get('/registration','UserController@registration')->name('user.registration');
Route::post('/registration','UserController@store');

Route::get('/article','ArticleController@index')->name('article.index');

Route::post('/article','ArticleController@store');

Route::get('/article/show/{article_id}','ArticleController@show')->name('article.show');
Route::post('/article/show/{article_id}','ArticleController@showCommentStore');

Route::group(['middleware'=>['checkType']], function(){
    
    Route::get('/article/report/{article_id}','ArticleController@report')->name('article.report');
    Route::post('/article/report/{article_id}','ArticleController@postReport');

    Route::get('/article/commentreport/{comment_id}','ArticleController@commentReportPage')->name('article.commentreport');
    Route::post('/article/commentreport/{comment_id}','ArticleController@commentReport');

    Route::get('/article/myArticlesShow','ArticleController@myArticlesShow')->name('article.myArticlesShow');

    Route::get('/article/myArticlesShow/edit/{article_id}','ArticleController@edit')->name('article.edit');
    Route::post('/article/myArticlesShow/edit/{article_id}','ArticleController@update');

    Route::get('/article/savepost/{article_id}','ArticleController@savePost')->name('article.savepost');

    Route::get('/article/savedpost','ArticleController@savedPost')->name('article.savedpost');

    Route::get('/user/myprofile','UserController@myProfile')->name('user.myprofile');

    Route::get('/article/myArticlesShow/delete/{article_id}','ArticleController@delete')->name('article.delete');



    Route::group(['middleware'=>['checkModerator']], function(){
        //Shovon part
    
        Route::get('/moderator/reportedpost', 'moderatorController@reported_post')->name('moderator.reported_post');
        Route::post('/moderator/reportedpost', 'moderatorController@status_update_reported_post');
        Route::get('/moderator/unverifiedpost', 'moderatorController@unverified_post')->name('moderator.unverified_post');
        Route::post('/moderator/unverifiedpost', 'moderatorController@verification_update_articles');  
        Route::get('/moderator/comment_reports', 'moderatorController@comment_reports')->name('moderator.comment_report');
        Route::post('/moderator/comment_reports', 'moderatorController@comment_reports_do');
    });
    
    Route::group(['middleware'=>['checkModeratorTwo']], function(){

        Route::get('/moderator', 'moderatorController@index')->name('moderator.index');
        // Route::get('/searchValue','moderatorController@search');
        Route::get('/moderator/delete_post', 'moderatorController@delete_post')->name('moderator.delete_post');
        Route::post('/moderator/delete_post', 'moderatorController@delete_articles');
        Route::get('/moderator/notice', 'moderatorController@notice_index')->name('moderator.notice');
        Route::get('/moderator/notice/create', 'moderatorController@create_notice_render')->name('moderator.notice.create');
        Route::post('/moderator/notice/create', 'moderatorController@create_notice_store');
        Route::get('/moderator/low_accuracy', 'moderatorController@low_acccuracy_post_render')->name('moderator.low_accuracy');

        Route::get('/moderator/notice/see', 'moderatorController@see_notice_render')->name('moderator.notice.see');
        Route::post('/moderator/notice/see', 'moderatorController@delete_notice');
        Route::get('/searchValueNotice','moderatorController@searchnotice');
        Route::get('/moderator/create_post', 'moderatorController@create_post_render')->name('moderator.create_ideal_post'); 
        Route::post('/moderator/create_post', 'moderatorController@store_ideal_post');
    });
    Route::group(['middleware'=>['checkSuperAdmin']], function(){
        Route::get('/super_user', 'super_userController@index')->name('super_user.index');
        Route::get('/super_user/reportedpost', 'super_userController@reported_post')->name('super_user.reported_post');
        Route::post('/super_user/reportedpost', 'super_userController@status_update_reported_post');
        Route::get('/super_user/unverifiedpost', 'super_userController@unverified_post')->name('super_user.unverified_post');
        Route::post('/super_user/unverifiedpost', 'super_userController@verification_update_articles');
        Route::get('/super_user/notice', 'super_userController@notice_index')->name('super_user.notice');
        Route::get('/super_user/notice/create', 'super_userController@create_notice_render')->name('super_user.notice.create');
        Route::post('/super_user/notice/create', 'super_userController@create_notice_store');
        Route::get('/super_user/low_accuracy', 'super_userController@low_acccuracy_post_render')->name('super_user.low_accuracy');
        Route::get('/super_user/user_list', 'super_userController@user_list')->name('super_user.user_list');
        Route::post('/super_user/user_list', 'super_userController@block_user');
        Route::get('/super_user/comment_reports', 'super_userController@comment_reports')->name('super_user.comment_report');
        Route::post('/super_user/comment_reports', 'super_userController@comment_reports_do');
        Route::get('/searchValueUser','super_userController@searchuser');
        Route::get('/super_user/user_list_sorted_articlewritten', 'super_userController@user_list_sorted_articlewritten')->name('super_user.user_list_sorted_articlewritten');
        Route::post('/super_user/user_list_sorted_articlewritten', 'super_userController@increase_level');
        Route::get('/super_user/user_list_sorted_articleverified', 'super_userController@user_list_sorted_articleverified')->name('super_user.user_list_sorted_articleverified');
        Route::post('/super_user/user_list_sorted_articleverified', 'super_userController@increase_level');
        Route::get('/super_user/user_list_sorted_articlereported', 'super_userController@user_list_sorted_articlereported')->name('super_user.user_list_sorted_articlereported');
        Route::post('/super_user/user_list_sorted_articlereported', 'super_userController@increase_level');
        Route::get('/super_user/user_list_sorted_comments', 'super_userController@user_list_sorted_comments')->name('super_user.user_list_sorted_comments');
        Route::post('/super_user/user_list_sorted_articlereported', 'super_userController@increase_level');
        Route::get('/super_user/delete_post', 'super_userController@delete_post')->name('super_user.delete_post');
        Route::post('/super_user/delete_post', 'super_userController@delete_articles');
        Route::get('/super_user/notice/see', 'super_userController@see_notice_render')->name('super_user.notice.see');
        Route::post('/super_user/notice/see', 'super_userController@delete_notice');
        Route::get('/searchValueNoticeAd','super_userController@searchnoticead');    
        Route::get('/super_user/create_post', 'super_userController@create_post_render')->name('super_user.create_ideal_post'); 
        Route::post('/super_user/create_post', 'super_userController@store_ideal_post');
        Route::get('/super_user/mod_block', 'super_userController@userlist_block_mod_render')->name('super_user.user_list_block_mod');
        Route::post('/super_user/mod_block', 'super_userController@userlist_block_mod');  
    });
});


Route::get('/user/showprofile/{user_id}','UserController@showProfile')->name('user.showprofile');


Route::get('/logout','LogoutController@index')->name('logout.index');
