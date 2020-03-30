<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use App\User;

class userupdatecontroller extends Controller
{
    public function userdetails()
    {
        // $userdetails = User::all();
        $userdetails = User::where('delete_status','0')->get();

        return view('all_users')->with('userdetails',$userdetails);
    }

    public function updateusers(Request $request)
    {
       return redirect('all_users')->with('success','User Details update successfully..!');
    }

    public function user_delete(Request $request)
    {
        $id=$request->id;
        
        $delete_rec = User::find($id);
        $delete_rec->delete_status = "1";
        $delete_rec->update();

        

        return redirect()->back()->with('success', 'User Profile Delete Successfully..!');
    }

    public function user_change_password(Request $request)
    {
        $id = $request->id;
        $N_password = $request->N_password;
        $C_Password = $request->C_Password;

        

         $errors = [
         'N_password.required' => 'New Password is Required.',
         'C_Password.required' => 'Confirm Password is Required.',
         'N_password.max' => 'New Password may not be greater than 30 characters.',
         'C_Password.max' => 'Confirm Password may not be greater than 30 characters.',
         'N_password.min' => 'New Password must be at least 8 characters.',
         'C_Password.min' => 'Confirm Password must be at least 8 characters.',
         'C_Password.same' => 'New Password and Confirm Password do not match.',
         ];


         $this->validate($request, [
         'N_password' => 'required|max:30|min:8',
         'C_Password' => 'required|max:30|min:8|same:N_password',
         ],$errors);

         $change_password = Hash::make($N_password);

         $update_password = User::find($id);
         $update_password->password = $change_password;
         $update_password->update();
        
       return redirect()->back()->with('success', 'Password Change Successfully..!');
    }
}
