@extends('layouts.app')

@section('title')
        Login Page
@endsection

@section('content')

  
 <div class="main">

<section class="sign-in">
           <div class="container">
               <div class="signin-content">

                   <div class="signin-image">
                       <figure><img src="{{ asset('img/map.gif') }}" alt="sing up image" style="width: 650px;height:250px;margin-top: 50px;"></figure>
                       <a class="signup-image-link">Created by IT Department</a>
                   </div>

                  

                   <div class="signin-form">
                       <h2 class="form-title">Sign In</h2>

                       <form method="POST" class="register-form" id="login-form" action="{{ route('login') }}">
                       @csrf
                           <div class="form-group">
                               <label for="username"><i class="zmdi zmdi-account material-icons-name"></i></label>
                               <input type="text" name="username" id="username" class="@error('username') is-invalid @enderror" placeholder="User Name"/>

                               @error('username')
                                    <span class="invalid-feedback" role="alert">
                                    &nbsp;&nbsp;<strong><i class="zmdi zmdi-alert-circle"></i>&nbsp;&nbsp;{{ $message }}</strong>
                                    </span>
                                @enderror
                           </div>

                               

                           <div class="form-group">
                               <label for="password"><i class="zmdi zmdi-lock"></i></label>
                               <input type="password" name="password" id="password" lass="@error('password') is-invalid @enderror" placeholder="Password"/>

                               @error('password')
                                    <span class="invalid-feedback" role="alert">
                                        <strong><i class="zmdi zmdi-alert-circle"></i>&nbsp;&nbsp;{{ $message }}</strong>
                                    </span>
                                @enderror
                           </div>

                           

                           <div class="form-group">
                               <input type="checkbox" name="remember-me" id="remember-me" class="agree-term" />
                               <label for="remember-me" class="label-agree-term"><span><span></span></span>Remember me</label>
                           </div>
                           <div class="form-group form-button">
                               <input type="submit" name="signin" id="signin" class="form-submit" value="Log in"/>
                           </div>
                       </form>
                       <div class="social-login">
                           <span class="social-label">Or login with</span>
                           <ul class="socials">
                               <li><a href="#"><i class="display-flex-center zmdi zmdi-facebook"></i></a></li>
                               <li><a href="#"><i class="display-flex-center zmdi zmdi-twitter"></i></a></li>
                               <li><a href="#"><i class="display-flex-center zmdi zmdi-google"></i></a></li>
                           </ul>
                       </div>
                   </div>
               </div>
           </div>
       </section>


</div>

@endsection
