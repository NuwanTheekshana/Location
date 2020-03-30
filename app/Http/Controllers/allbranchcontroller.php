<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\sendrequest;
use Auth;

class allbranchcontroller extends Controller
{
    public function index()
    {
        $user_company = Auth::user()->company;
        

        if(Auth::user()->permission == "1")
        {
            // $branch_data = sendrequest::all();

            $branch_data_hnba = sendrequest::where('company','HNBA')->where('delete_status','0')->get();
            $branch_data_hnbgi = sendrequest::where('company','HNBGI')->where('delete_status','0')->get();

          

            return view('update_find')
            ->with('branch_data_hnba', $branch_data_hnba)
            ->with('branch_data_hnbgi', $branch_data_hnbgi);
            
        }
        else
        {
            $branch_data = sendrequest::where('company',$user_company)->where('delete_status','0')->get();

            return view('update_find')
            ->with('branch_data', $branch_data);
        }


        
    }

}
