<?php

use App\Http\Controllers\AdminController;
use App\Http\Controllers\ContactController;
use App\Http\Controllers\Pagecontroller;
use App\Http\Controllers\PostController;
use App\Http\Controllers\FrontController;
use App\Http\Controllers\Basecontroller;
use Illuminate\Support\Facades\Route;

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



// Route::get('home',[FrontController::class,'index'])->name('home');
// Route::get('about-us',[FrontController::class,'aboutPage'])->name('about-us');
// Route::get('service',[FrontController::class,'servicePage'])->name('services');
// Route::get('project',[FrontController::class,'projectPage'])->name('projects');
// Route::get('contact-us',[FrontController::class,'contactPage'])->name('contact-us');

//pages

// Route::get('team', [FrontController::class, 'teamPage'])->name('teams');
// Route::get('testimonial', [FrontController::class, 'testimonialPage'])->name('testimonials');



Route::controller(AdminController::class)->group(function(){

    Route::get('login', 'index')->name('login');

    Route::get('registration', 'registration')->name('registration');

    Route::get('logout', 'logout')->name('logout');

    Route::post('validate_registration', 'validate_registration')->name('sample.validate_registration');

    Route::post('validate_login', 'validate_login')->name('sample.validate_login');

    Route::get('dashboard', 'dashboard')->name('dashboard');

});

Route::controller(PageController::class)->group(function(){
Route::get('/page-add', 'AddPage')->name('page-add');

Route::get('/company-page-add',  'ourcompany')->name('company.page.add');
Route::get('/blog-page-add',  'ourblog')->name('blog.page.add');

Route::post('/page-create',  'CreatePage')->name('page-create');


});

Route::get('/home', [BaseController::class, 'home']);
Route::get('/services', [BaseController::class, 'services']);
Route::get('/company', [BaseController::class, 'company']);
Route::get('/contact_us', [BaseController::class, 'contact_us']);
Route::get('/blogs', [BaseController::class, 'blog']);
Route::post('/contact-add', [ContactController::class, 'contact_store'])->name('contact.store');


Route::controller(PostController::class)->group(function(){

Route::get('/post-show',  'show')->name('post-show');
Route::get('/post-add',  'create')->name('post-add');
Route::get('/post-edit/{post_id?}',  'create')->name('post-edit');
Route::post('/post-add/{post_id?}',  'store')->name('post-store');
Route::post('/post-delete',  'delete')->name('post-delete');


});