<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;
use Auth;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        $userpermission = Auth::user()->permission;
        $usercompany = Auth::user()->company;
        
        

        return view('home')
        ->with('permission', $userpermission)
        ->with('company',$usercompany);
    }

   
}
