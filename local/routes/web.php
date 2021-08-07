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

// Route::get('/', function () {
//     return view('/login');
// });
//
// Route::get('/login', function () {
//     return view('/login');
// });
// Route::get('checkphp',function(){
//   phpinfo();
// });
//login Controller
Route::get('login/google', 'LoginController@redirectToProvider');
Route::get('login/google/callback', 'LoginController@handleProviderCallback');
Route::get('/', 'LoginController@index');
Route::get('/login', 'LoginController@index');
Route::post('/login', 'LoginController@verify');
Route::get('/logout', 'LoginController@logout');

//Register Controller
Route::get('/register', 'RegisterController@index');
Route::post('/register', 'RegisterController@create');

Route::group(['middleware' => 'checkuser'], function () {

    //Home Controller
    Route::get('/home', 'homeController@index');
    Route::post('/home', 'homeController@todo');
    Route::get('/home/delete/{id}', 'homeController@delete');
    Route::get('/home/check/{id}', 'homeController@check');
    Route::get('/home/edit/{id}', 'homeController@edit');
    Route::put('/home/update/{id}', 'homeController@update');
    Route::get('/homeDosen', 'homeController@indexDosen');

    //Profile Controller
    Route::get('/profile', 'profileController@index');
    Route::get('/profileDosen', 'profileController@indexDosen');
    Route::get('/profileAdmin', 'profileController@indexAdmin');
    Route::get('/profile/edit/{id}', 'profileController@edit');
    Route::get('/profile/editDosen/{id}', 'profileController@editDosen');
    Route::put('/profile/update/{id}', 'profileController@updateMahasiswa');
    Route::put('/profile/updateDosen/{id}', 'profileController@updateDosen');

    //Group
    Route::get('/groupDosen', 'groupController@indexDosen')->middleware('checkroles');
    Route::post('/groupDosen', 'groupController@indexDosen')->middleware('checkroles');
    // Route::get('/groupDosen/{semester}/{kodeMK}/{kelas}', 'groupController@indexDosen')->middleware('checkroles');
    // Route::post('/groupDosen/{semester}/{kodeMK}/{kelas}', 'groupController@indexDosen')->middleware('checkroles');


    Route::post('/insertGroupDosen', 'groupController@indexInsertGroupDosen')->middleware('checkroles');
    Route::post('/insertGenerateGroup', 'groupController@insertGenerateGroup')->middleware('checkroles');
    Route::post('/insertDataGroup', 'groupController@InsertGroupDosen')->middleware('checkroles');
    Route::post('/submitEditDataGroup', 'groupController@edit')->middleware('checkroles');
    Route::post('/graphGroupDosen', 'groupController@indexGraph')->middleware('checkroles');
    Route::post('/predictGroupDosen', 'groupController@indexPredict')->middleware('checkroles');
    Route::get('/groupDosen/delete/{id}', 'groupController@delete')->middleware('checkroles');
    Route::get('/groupDosen/reset/{id}', 'groupController@reset')->middleware('checkroles');
    Route::get('/groupDosen/edit/{id}', 'groupController@indexEdit')->middleware('checkroles');
    Route::get('/groupDosen/deleteMessages/{id}', 'groupController@deleteComment')->middleware('checkroles');
    Route::get('/group', 'groupController@index');
    Route::post('/group', 'groupController@index');
    Route::post('/group/store', 'groupController@insertComment');
    
    Route::get('/groupAdmin', 'groupController@indexAdmin')->middleware('checkadmin');
    Route::post('/groupAdmin', 'groupController@indexAdmin')->middleware('checkadmin');
    Route::post('/insertDataGroupAdmin', 'groupController@InsertGroupAdmin')->middleware('checkadmin');
    Route::post('/insertGroupAdmin', 'groupController@indexInsertGroupAdmin')->middleware('checkadmin');
    Route::post('/submitEditDataGroupAdmin', 'groupController@editAdmin')->middleware('checkadmin');
    Route::get('/groupAdmin/delete/{id}', 'groupController@deleteAdmin')->middleware('checkadmin');
    Route::get('/groupAdmin/edit/{id}', 'groupController@indexEditAdmin')->middleware('checkadmin');
    Route::get('/manageMethod', 'groupController@manageMethod')->middleware('checkadmin');
    Route::get('/editMethod', 'groupController@editMethod')->middleware('checkadmin');
    Route::post('/editMethod', 'groupController@editMethod')->middleware('checkadmin');

    // Course
    Route::get('/courses', 'coursesController@index')->middleware('checkadmin');
    Route::post('/courses/import', 'coursesController@import')->middleware('checkadmin');
    Route::get('/courses/export', 'coursesController@export')->middleware('checkadmin');

    // Log
    Route::get('/logsAdmin', 'logsController@index')->middleware('checkadmin');
    Route::get('/logsDosen', 'logsController@indexDosen')->middleware('checkroles');

    //Super Admin Controller
    Route::post('/superadmin/importMahasiswa', 'superAdminController@importMahasiswa')->middleware('checkadmin');
    Route::get('/superadmin/exportMahasiswa', 'superAdminController@exportMahasiswa')->middleware('checkadmin');
    Route::post('/superadmin/importDosen', 'superAdminController@importDosen')->middleware('checkadmin');
    Route::get('/superadmin/exportDosen', 'superAdminController@exportDosen')->middleware('checkadmin');
    Route::get('/superadmin', 'superAdminController@index')->middleware('checkadmin');
    Route::post('/superadmin', 'superAdminController@insert')->middleware('checkadmin');
    Route::get('/superadmin/{id}', 'superAdminController@edit')->middleware('checkadmin');
    Route::get('/superadmin/mahasiswa/{id}', 'superAdminController@editMahasiswa')->middleware('checkadmin');
    Route::get('/superadmin/dosen/{id}', 'superAdminController@editDosen')->middleware('checkadmin');
    Route::put('/superadmin/{id}', 'superAdminController@update')->middleware('checkadmin');
    Route::put('/superadmin/mahasiswa/{id}', 'superAdminController@updateMahasiswa')->middleware('checkadmin');
    Route::put('/superadmin/dosen/{id}', 'superAdminController@updateDosen')->middleware('checkadmin');
    Route::get('/superadmin/delete/{id}', 'superAdminController@delete')->middleware('checkadmin');
    Route::get('/superadmin/delete/mahasiswa/{id}', 'superAdminController@deleteMahasiswa')->middleware('checkadmin');
    Route::get('/superadmin/delete/dosen/{id}', 'superAdminController@deleteDosen')->middleware('checkadmin');
    Route::get('/superadmin/insert/{id}', 'superAdminController@insert')->middleware('checkadmin');

    //SuperAdmin Tournament Register
    //Route::get('/tournamentRegister','superAdminRegisterController@register')->middleware('checkroles');
    Route::get('/superadminTournamentRegister/delete/{id}/{id2}', 'superAdminRegisterController@deleteTournamentRegister')->middleware('checkadmin');
    Route::get('/superadminTournamentRegister', 'superAdminRegisterController@index')->middleware('checkadmin');
    Route::get('/tournamentAdmin/register/{id}', 'superAdminRegisterController@detailRegister')->middleware('checkadmin');
    Route::get('/tournamentAdmin/registered/{id}', 'superAdminRegisterController@detailPeserta')->middleware('checkadmin');
    Route::post('/tournamentAdminRegisterTeam/{id}', 'superAdminRegisterController@insertTeam')->middleware('checkadmin');
    Route::post('/tournamentAdminRegister', 'superAdminRegisterController@insertRegister')->middleware('checkadmin');
    Route::get('/tournamentAdminAddMahasiswa', 'superAdminRegisterController@addMahasiswa')->middleware('checkadmin');
    Route::post('/tournamentAdminAddMahasiswa/insert', 'superAdminRegisterController@insertMahasiswa')->middleware('checkadmin');

    //Slider
    Route::get('/slider', 'sliderController@index');
    Route::post('/slider', 'sliderController@create');
    Route::get('/slider/edit/{id}', 'sliderController@edit');
    Route::put('/slider/update/{id}', 'sliderController@update');
    Route::get('/slider/delete/{id}', 'sliderController@delete');

    //DKBS
    Route::get('/dkbs', 'dkbsController@index')->middleware('checkadmin');
    Route::post('/dkbs/import', 'dkbsController@import')->middleware('checkadmin');
    Route::post('/dkbs/import2', 'dkbsController@import2')->middleware('checkadmin');
    Route::get('/dkbs/export', 'dkbsController@export')->middleware('checkadmin');
    Route::get('/dkbs/delete', 'dkbsController@delete')->middleware('checkadmin');

    //Contact Controllers
    Route::get('/contact', 'contactController@index');
    Route::get('/contactDosen', 'contactController@indexDosen')->middleware('checkroles');

    //Leaderbaord Controllers
    Route::get('/leaderboard', 'leaderboardController@index');
    Route::get('/leaderboard/{id}', 'leaderboardController@detailMhs');
    Route::get('/leaderboardDosen', 'leaderboardController@indexDosen')->middleware('checkroles');
    Route::get('/leaderboardDosen/{id}', 'leaderboardController@detail')->middleware('checkroles');

    //Tournament Controllers
    Route::get('/tournament', 'tournamentController@index');
    Route::get('/tournament/{id}', 'tournamentController@form');
    Route::post('/tournamentteam', 'tournamentController@create');
    Route::get('/tournament/tutorial/{id}', 'tournamentController@tutorial')->middleware('checktournament');
    Route::get('/tournament/exam/{id}', 'tournamentController@exam')->middleware('checktournament');
    Route::get('/tournament/exam/gabungan/{id}', 'tournamentController@examGabungan')->middleware('checktournament');
    Route::post('/tournament/exam/{id}', 'tournamentController@answer')->middleware('checktournament');
    Route::post('/tournament/exam/pg/{id}', 'tournamentController@answerPG')->middleware('checktournament');
    Route::get('/tournament/exam/show/{id}', 'tournamentController@show')->name('exam.show')->middleware('checktournament');
    Route::get('/tournament/exam/response/{id}', 'tournamentController@response')->name('exam.response')->middleware('checktournament');
    Route::get('/tournament/exam/download/{id}', 'tournamentController@download')->name('exam.download')->middleware('checktournament');
    // Route::post('/tournament/exam/{id}?soalpg={id2}','tournamentController@answerPGCOBA');
    Route::post('/tournament/exam/isi/{id}', 'tournamentController@answerIsian')->middleware('checktournament');
    Route::get('/tournament/score/{id}', 'tournamentController@scoreboard')->middleware('checktournament');

    Route::get('/tournament/score/coba/{id}', 'tournamentController@score')->middleware('checktournament');

    Route::post('/tournament/score/{id}', 'tournamentController@score')->middleware('checktournament');
    Route::get('/tournament/score/check/{id}', 'tournamentController@scoreboard')->middleware('checktournament');
    Route::post('/tournament/score/check/{id}', 'tournamentController@scoreCheck')->middleware('checktournament');
    Route::get('/tournamentDosen', 'tournamentDosenController@index')->middleware('checkroles');
    Route::post('/tournamentDosen', 'tournamentDosenController@create')->middleware('checkroles');
    Route::get('/tournamentDosen/delete/{id}', 'tournamentDosenController@delete')->middleware('checkroles');
    Route::get('/tournamentDosen/edit/{id}', 'tournamentDosenController@edit')->middleware('checkroles');
    Route::put('/tournamentDosen/update/{id}', 'tournamentDosenController@update')->middleware('checkroles');
    Route::get('/tournament2', 'tournamentDosenController@indexDosen')->middleware('checkroles');
    Route::get('/tournamentCheck', 'tournamentDosenController@indexCheck')->middleware('checkroles');
    Route::get('/tournamentCheck/peserta/{id}', 'tournamentDosenController@indexPeserta')->middleware('checkroles');
    Route::get('/tournamentCheck/jawabanpeserta/{id}', 'tournamentDosenController@indexJawabanPeserta')->middleware('checkroles');
    Route::get('/tournamentCheck/jawabanpeserta/keterangan/{id}/{id2}', 'tournamentDosenController@keterangan')->middleware('checkroles');
    Route::post('/tournamentCheck/jawabanpeserta/keterangan/update/{id}/{id2}', 'tournamentDosenController@keteranganUpdate')->middleware('checkroles');
    Route::get('/tournamentCheck/jawabanpeserta/true/{id}', 'tournamentDosenController@judgeTrue')->middleware('checkroles');
    Route::get('/tournamentCheck/jawabanpeserta/show/{id}', 'tournamentDosenController@show')->name('file.show')->middleware('checkroles');
    Route::get('/tournamentCheck/jawabanpeserta/download/{id}', 'tournamentDosenController@download')->name('file.download')->middleware('checkroles');
    Route::get('/tournamentCheck/jawabanpeserta/response/{id}', 'tournamentDosenController@response')->name('file.response')->middleware('checkroles');
    Route::get('/tournament2/{id}', 'tournamentDosenController@formDosen')->middleware('checkroles');
    Route::get('/tournamentRegister', 'tournamentDosenController@register')->middleware('checkroles');
    Route::get('/tournamentDosen/register/{id}', 'tournamentDosenController@detailRegister')->middleware('checkroles');
    Route::get('/tournamentDosen/registered/{id}', 'tournamentDosenController@detailPeserta')->middleware('checkroles');
    Route::post('/tournamentRegisterTeam/{id}', 'tournamentDosenController@insertTeam')->middleware('checkroles');
    Route::post('/tournamentRegister', 'tournamentDosenController@insertRegister')->middleware('checkroles');
    Route::get('/tournament/scoreDosen/{id}', 'tournamentDosenController@scoreboard')->middleware('checkroles');
    Route::get('/tournament2/exam/{id}', 'tournamentDosenController@exam')->middleware('checkroles');
    Route::post('/tournament2/score/{id}', 'tournamentDosenController@score')->middleware('checkroles');
    Route::post('/tournament2/score/leaderboard/{id}', 'tournamentDosenController@scoreLeaderboard')->middleware('checkroles');

    //Resources Controllers
    Route::get('/resources', 'resourcesController@index');

    //Livestream Controllers
    Route::get('/livestream', 'livestreamController@index');
    Route::post('/livestream', 'livestreamController@create');
    Route::get('/livestreamDosen', 'livestreamController@indexDosen');
    Route::post('/livestreamDosen', 'livestreamController@createDosen');

    //Forecasting Controllers
    Route::get('/forecasting', 'forecastingController@index');
    Route::post('/forecasting', 'forecastingController@createGayaBelajar');
    Route::get('/forecastingDosen', 'forecastingController@indexDosen');

    //Bank Soal Controllers
    Route::get('/bankSoalDosen', 'bankSoalController@index')->middleware('checkroles');
    Route::post('/bankSoalDosen', 'bankSoalController@createSoal')->middleware('checkroles');
    Route::get('/bankSoalDosen/edit/{id}', 'bankSoalController@editSoal')->middleware('checkroles');
    Route::post('/bankSoalDosen/update/{id}', 'bankSoalController@updateSoal')->middleware('checkroles');
    Route::get('/bankSoalDosen/delete/{id}', 'bankSoalController@deleteSoal')->middleware('checkroles');
    Route::get('/bankSoal/form/{id}', 'tournamentController@form')->middleware('checkroles');
    Route::get('/bankSoal/show/{id}', 'bankSoalController@showSoal')->middleware('checkroles');
    Route::post('/bankSoal/add/{id}', 'bankSoalController@addSoal')->middleware('checkroles');
    Route::post('/bankSoal/add/salin/{id}', 'bankSoalController@salinSoal')->middleware('checkroles');
    Route::post('/bankSoal/add/pg/{id}', 'bankSoalController@addSoalPG')->middleware('checkroles');
    Route::post('/bankSoal/add/isi/{id}', 'bankSoalController@addSoalIsian')->middleware('checkroles');
    Route::get('/bankSoal/edit/pg/{id}/{id2}', 'bankSoalController@editSoalPG')->middleware('checkroles');
    Route::get('/bankSoal/edit/isi/{id}/{id2}', 'bankSoalController@editSoalIsian')->middleware('checkroles');
    Route::post('/bankSoal/update/pg/{id}/{id2}', 'bankSoalController@updateSoalPG')->middleware('checkroles');
    Route::post('/bankSoal/update/isi/{id}/{id2}', 'bankSoalController@updateSoalIsian')->middleware('checkroles');
    Route::get('/bankSoal/delete/pg/{id}/{id2}', 'bankSoalController@deleteSoalPG')->middleware('checkroles');
    Route::get('/bankSoal/delete/isi/{id}/{id2}', 'bankSoalController@deleteSoalIsian')->middleware('checkroles');

    //Calendar Controller
    Route::get('/calendar', 'calendarController@index');
    Route::get('/calendarDosen', 'calendarController@indexDosen')->middleware('checkroles');
    Route::get('/calendarAdmin', 'calendarController@indexAdmin')->middleware('checkadmin');

    //Facebook
    Route::get('/facebook', 'calendarController@indexAdmin')->middleware('checkadmin');

    // Route::get('/livestream2', function () {
    //     return view('livestream2');
    // });

    // Route::get('/home2', function () {
    //     return view('home2');
    // });
    //
    // Route::get('/resources', function () {
    //     return view('resources');
    // });
    //
    // Route::get('/achievement', function () {
    //     return view('achievement');
    // });
    //
    //
    // Route::get('/forum', function () {
    //     return view('forum');
    // });
    //
    // Route::get('/profile', function () {
    //     return view('profile');
    // });
    // Route::get('/project', function () {
    //     return view('project');
    // });
    // Route::get('/projectDetail', function () {
    //     return view('projectDetail');
    // });
    //
    // Route::get('/inbox', function () {
    //     return view('inbox');
    // });
    // Route::get('/calendar', function () {
    //     return view('calendar');
    // });
    //
    //
    // Route::get('/try', function () {
    //     return view('try');
    // });
    // Route::get('/tryLeader', function () {
    //     return view('tryLeader');
    // });
    // Route::get('/calendar2', function () {
    //     return view('calendar2');
    // });
    // Route::get('/coba', function () {
    //     return view('/blog/coba');
    // });
    //
    // Route::get('/event', function () {
    //     return view('/event');
    // });
    //
    // Route::get('/manage', function () {
    //     return view('/manage');
    // });
    //
    Route::get('/courseRatingDosen', 'courseRatingController@indexDosen')->middleware('checkroles');
    Route::get('/courseRatingDosen2', 'courseRatingController@indexDosen2')->middleware('checkroles');
    Route::get('/courseRatingDosen3', 'courseRatingController@indexDosen3')->middleware('checkroles');
    Route::get('/courseRatingDosen4', 'courseRatingController@indexDosen4')->middleware('checkroles');
    Route::post('/courseRatingDosen', 'courseRatingController@indexDosen')->middleware('checkroles');
    Route::post('/courseRatingDosen2', 'courseRatingController@indexDosen2')->middleware('checkroles');
    Route::post('/courseRatingDosen3', 'courseRatingController@indexDosen3')->middleware('checkroles');
    Route::post('/courseRatingDosen4', 'courseRatingController@indexDosen4')->middleware('checkroles');
    Route::post('/courseRatingDosen/processed', 'courseRatingController@search')->middleware('checkroles');

    Route::get('/syllabusDosen', 'syllabusController@indexDosen')->middleware('checkroles');

    Route::post('/syllabusDosen', 'syllabusController@indexDosen')->middleware('checkroles');

    Route::post('/syllabusDosen/store/{id}', 'syllabusController@insert')->middleware('checkroles');
    // Route::get('/syllabusDosen/edit/{idPertemuan}','syllabusController@edit');
    // Route::post('/syllabusDosen/update/{idPertemuan}','syllabusController@update');
    Route::post('/syllabusDosen/{idPertemuan}/edittanggal', 'syllabusController@edittanggal')->middleware('checkroles');
    Route::post('/syllabusDosen/{idPertemuan}/editwaktu', 'syllabusController@editwaktu')->middleware('checkroles');
    Route::post('/syllabusDosen/{idPertemuan}/editnama', 'syllabusController@editnama')->middleware('checkroles');

    Route::get('/comment', 'commentController@index');

    Route::post('/comment/store', 'commentController@insert');

    // Route::get('/comment', function () {
    //      return view('/comment');
    //  });

    Route::get('/commentDosen', 'commentController@commentDosen')->middleware('checkroles');
    Route::post('/commentDosen', 'commentController@commentDosen')->middleware('checkroles');
    Route::get('/commentDosen/read/{id}', 'commentController@read')->middleware('checkroles');

    Route::get('/courseRating', 'courseRatingController@index');

    Route::get('/courseRating0', 'courseRatingController@index0');
    Route::post('/courseRating0/processed', 'courseRatingController@insert');

    Route::get('/courseRatingD1', function () {
        return view('/courseRatingD1');
    });

    Route::get('/administrasiDosen', 'administrasiController@index')->middleware('checkroles');
    Route::post('/administrasiDosen', 'administrasiController@index')->middleware('checkroles');
    Route::get('/profileDosen/{nrp}', 'administrasiController@profileDosen')->middleware('checkroles');
    Route::post('/administrasiDosen/processed', 'administrasiController@insert')->middleware('checkroles');

    Route::get('/crAdmin', function () {
        return view('/crAdmin');
    });
    Route::get('/crAdmin2', function () {
        return view('/crAdmin2');
    });

    Route::get('/homeDosenDetail/{count}/{kodeMK}/{kelas}', 'homeController@indexDosenDetail')->middleware('checkroles');
    Route::post('/homeDosenDetail/{count}/{kodeMK}/{kelas}', 'homeController@indexDosenDetail')->middleware('checkroles');
    Route::get('/homeDetail/{count}/{kodeMK}/{kelas}', 'homeController@indexDetail');
    Route::post('/homeDetail/{count}/{kodeMK}/{kelas}', 'homeController@indexDetail')->middleware('checkroles');

    // Assignment

    Route::GET('/assignment', 'assignmentController@index');
    Route::GET('/assignmentEdit/{id}', 'assignmentController@editAssignmentIndex');
    Route::POST('/assignmentEdit/{id}', 'assignmentController@editAssignmentEdit');
    Route::POST('/assignment', 'assignmentController@insertSubmission');
    Route::GET('/assignmentDosen', 'assignmentController@indexDosen')->middleware('checkroles');
    Route::POST('/assignmentDosen', 'assignmentController@insertAssignment')->middleware('checkroles');
    Route::POST('/assignmentDosen/selectMK', 'assignmentController@selectMK');
    Route::POST('/assignment/selectMK', 'assignmentController@selectMKMhs');
    Route::POST('/assignmentDosen/{id}/{idAssignment}/{nrp}', 'assignmentController@editNilai')->middleware('checkroles');


    Route::GET('/assignmentComment/{id}', 'assignmentController@indexComment');
    Route::POST('/assignmentComment/{id}', 'assignmentController@insertComment');
    Route::POST('/assignment/editSubmission/{id}', 'assignmentController@editSubmission');
    Route::POST('/assignmentCommentDosen/{id}', 'assignmentController@insertComment')->middleware('checkroles');
    Route::GET('/assignmentCommentDosen/delete/{id}', 'assignmentController@deleteComment')->middleware('checkroles');
    Route::GET('/assignmentComment/delete/{id}', 'assignmentController@deleteComment');
    Route::GET('/assignmentCommentDosen/{id}', 'assignmentController@indexCommentDosen')->middleware('checkroles');
    Route::GET('/assignmentDosen/detail/{id}', 'assignmentController@indexDetailNilai')->middleware('checkroles');
    //Forum
    // MK
    Route::get('/forumTitleMK', 'forumTitleController@indexMK');
    Route::get('/forumTitleListM/{id}', 'forumTitleController@indexTitleList2');
    Route::get('/groupcomment/{id}', 'forumGroupcommentController@index')->middleware('checkroles');
    Route::post('/groupcomment/{id}', 'forumGroupcommentController@insert')->middleware('checkroles');
    // Route::post('/forumTitleMK/search', 'forumTitleController@SearchMK');

    // Public
    Route::get('/forumTitlePublic', 'forumTitleController@indexPublic');
    Route::get('/forumTag/{id}', 'forumTagController@index');
    Route::post('/forumTitlePublic/search', 'forumTitleController@SearchPublic');
    //
    Route::get('/forumThread/{id}', 'forumThreadController@index');
    Route::get('/forum/livestream/{id}', 'forumThreadController@indexLivestream');
    Route::post('/forumThread/{id}', 'forumThreadController@insert');
    Route::post('/forumThread/reply/{id}', 'forumThreadController@insertReply');
    Route::get('/forumThread/delete/{id}', 'forumThreadController@delete');
    Route::get('/forumThread/deletereply/{id}', 'forumThreadController@deletereply');
    Route::get('/profile/{nrp}', 'forumThreadController@profile');
    //
    // Dosen Controller

    // MK
    Route::GET('/forumTitleMKDosen', 'forumTitleController@indexMKDosen')->middleware('checkroles');
    Route::GET('/forumThreadDosen/livestream/{id}', 'forumThreadController@indexLivestream')->middleware('checkroles');
    Route::GET('/forumNewPostMK', 'forumNewPostController@indexMK')->middleware('checkroles');
    Route::POST('/forumNewPostMK', 'forumNewPostController@insertMK')->middleware('checkroles');
    Route::GET('/forumnNewPostMKTitle/{id}', 'forumNewPostController@indexTitleMK')->middleware('checkroles');
    Route::POST('/forumnNewPostMKTitle/{id}', 'forumNewPostController@insertTitleMK')->middleware('checkroles');
    Route::GET('/forumEditpost/{id}', 'forumNewPostController@indexEditPost')->middleware('checkroles');
    Route::POST('/forumEditpost/{id}', 'forumNewPostController@editPost')->middleware('checkroles');
    Route::POST('/groupcommentlist', 'forumGroupcommentController@indexAnother')->middleware('checkroles');
    Route::POST('/insertanothergroup', 'forumGroupcommentController@insertAnother')->middleware('checkroles');
    Route::GET('/forumTitleList/{id}', 'forumTitleController@indexTitleList')->middleware('checkroles');
    Route::GET('/forumActiveness', 'forumActivenessController@index')->middleware('checkroles');
    Route::GET('/forumActivenessMahasiswa/{id}', 'forumActivenessController@indexMahasiswa')->middleware('checkroles');
    Route::GET('/forumActivenessDetail/{id}/{nrp}', 'forumActivenessController@indexDetail')->middleware('checkroles');
    //  Route::GET('/profileDosen/{nrp}', 'forumThreadController@profileDosen')->middleware('checkroles');
    // Public
    Route::GET('/forumTitlePublicDosen', 'forumTitleController@indexPublicDosen')->middleware('checkroles');
    Route::POST('/forumTitlePublicDosen/search', 'forumTitleController@searchPublicDosen')->middleware('checkroles');
    Route::GET('/forumNewPost', 'forumNewPostController@index')->middleware('checkroles');
    Route::post('/forumNewPost', 'forumNewPostController@insert')->middleware('checkroles');
    Route::get('/forumTitleListUmum/{id}', 'forumTitleController@indexTitleListUmum')->middleware('checkroles');
    Route::get('/forumManageTopics', 'forumManageTopicsController@index')->middleware('checkroles');
    Route::POST('/forumManageTopics', 'forumManageTopicsController@insert')->middleware('checkroles');
    Route::POST('/forumManageTopics/{id}/edit', 'forumManageTopicsController@edit')->middleware('checkroles');
    Route::get('/forumManageTopics/delete/{id}', 'forumManageTopicsController@delete')->middleware('checkroles');
    Route::GET('/forumTagDosen/{id}', 'forumTagController@indexDosen')->middleware('checkroles');
    Route::GET('/forumThreadDosen/{id}', 'forumThreadController@indexDosen')->middleware('checkroles');
    Route::post('/forumThreadDosen/{id}', 'forumThreadController@insertDosen')->middleware('checkroles');
    Route::post('/forumThreadDosen/reply/{id}', 'forumThreadController@insertReplyDosen')->middleware('checkroles');
    Route::GET('/forumThreadDosen/delete/{id}', 'forumThreadController@delete')->middleware('checkroles');
    Route::GET('/forumThreadDosen/deletereply/{id}', 'forumThreadController@deletereply')->middleware('checkroles');
    //
    Route::GET('/forumDosen/delete/{id}', 'forumTitleController@delete')->middleware('checkroles');
    //PJS
    Route::GET('/forumTitleAllDosen', 'forumTitleController@indexAllDosen')->middleware('checkpjs');
    Route::GET('/forumThreadPJS/{id}', 'forumThreadController@indexPJS')->middleware('checkpjs');
    // SuperAdmin Controller
    Route::GET('/forumTitleAdmin', 'forumTitleController@superAdminIndex')->middleware('checkadmin');
    Route::GET('/forumTitleAdmin/delete/{id}', 'forumTitleController@deleteAdmin')->middleware('checkadmin');
    Route::POST('/forumTitleAdmin/search', 'forumTitleController@searchAdmin')->middleware('checkadmin');
    Route::GET('/forumThreadAdmin/{id}', 'forumThreadController@indexAdmin')->middleware('checkadmin');
    Route::get('/forumManageTopicsAdmin', 'forumManageTopicsController@indexAdmin')->middleware('checkadmin');
    Route::POST('/forumManageTopicsAdmin/{id}/edit', 'forumManageTopicsController@edit')->middleware('checkadmin');
    Route::get('/forumManageTopicsAdmin/delete/{id}', 'forumManageTopicsController@delete')->middleware('checkadmin');
    Route::get('/forumTagAdmin/{id}', 'forumTagController@indexAdmin')->middleware('checkadmin');

    //Dashboard
    //Dosen
    Route::get('/dashboardDosen', 'dashboardController@indexDosen')->middleware('checkroles');
    // Notification
    Route::get('/notification/{id}', 'notificationController@notificationChange');
});
