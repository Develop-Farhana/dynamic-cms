<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Page;
use App\Models\Post;

class Basecontroller extends Controller
{
    public function home()
    {
        $home = Page::where('page_title','home')->get();
        $post = Post::where('page_title','home')->get();
    	return view('home',['home'=>$home,'post'=>$post]);
    }

    public function services()
    {
        // $service= Page::where('page_title','service')->get();
        // $post = Post::where('page_title','company')->get();
    	// return view('service',['service'=>$service,'post'=>$post]);
        
    	return view('service');
    }

    public function company()
    {
        $company = Page::where('page_title','our_company')->get();
        $post = Post::where('page_title','our_company')->get();
    	return view('company',['our_company'=>$company,'post'=>$post]);
    	// return view('company');
    }
    public function blog()
    {
        $blog = Page::where('page_title','our_blog')->get();
        // dd( $blog);
        $post = Post::where('page_title','blog')->get();
    	return view('blog',['our_blog'=>$blog,'post'=>$post]);
    	// return view('company');
    }

    public function contact_us()
    {
    	return view('contact');
    }
}
