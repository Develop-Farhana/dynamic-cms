<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class FrontController extends Controller
{
    //
    public function index()
    {
      return view ('index');
    }

    public function aboutPage()
    {
        return view ('about');
    }

    public function servicePage()
    {
        return view ('service');

    }

    public function projectPage()
    {
        return view ('project');
    }

    public function contactPage()
    {
        return view ('contact');
    }
       

    public function teamPage()
    {
        return view ('team');
    }

    public function testimonialPage()
    {
        return view (' testimonial');
    }

    


}
