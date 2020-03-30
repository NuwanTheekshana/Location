<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use App\Providers\RouteServiceProvider;
use App\User;
use Illuminate\Foundation\Auth\RegistersUsers;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;

class RegisterController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Register Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles the registration of new users as well as their
    | validation and creation. By default this controller uses a trait to
    | provide this functionality without requiring any additional code.
    |
    */

    use RegistersUsers;

    /**
     * Where to redirect users after registration.
     *
     * @var string
     */
    protected $redirectTo = RouteServiceProvider::HOME;

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
     * Get a validator for an incoming registration request.
     *
     * @param  array  $data
     * @return \Illuminate\Contracts\Validation\Validator
     */
    protected function validator(array $data)
    {
        
        return Validator::make($data, [
            'name' => ['required', 'string', 'max:255'],
            'epf_no' => ['required','unique:users','max:10','min:2'],
            'email' => ['required', 'string', 'email', 'max:255', 'unique:users'],
            'department' => ['required', 'string', 'max:255'],
            'company' => ['required', 'string', 'max:255'],
            'permission' => ['required'],
            'password' => ['required', 'string', 'min:8', 'confirmed'],
        ]);


    }

    /**
     * Create a new user instance after a valid registration.
     *
     * @param  array  $data
     * @return \App\User
     */
    protected function create(array $data)
    {

        


        $epf_no = $data['epf_no'];
        $department = $data['department'];

        $username = $department.".".$epf_no;

       

         User::create([
            'name' => $data['name'],
            'epf_No' => $data['epf_no'],
            'username' => $username,
            'email' => $data['email'],
            'company' => $data['company'],
            'department' => $data['department'],
            'permission' => $data['permission'],
            'delete_status' => "0",
            'password' => Hash::make($data['password']),
        ]);
      
        
    }


   
}
