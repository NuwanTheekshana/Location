@extends('layout.app1')

@section('title')
   User Registration
@endsection


@extends('Layout.Nav')

@section('content')
<div class="container">



<p style="margin-left: 40px;">User Registration</p>
            <div class="card"  style="width:50%;margin-left: 40px;">
                <div class="card-body">

                    <form method="POST" action="{{ route('register') }}">
                        @csrf

                        <div class="form-group row">
                            <label for="name" class="col-md-4 col-form-label">{{ __('Name') }}</label>

                            <div class="col-md-7">
                                <input id="name" type="text" class="form-control @error('name') is-invalid @enderror" name="name" value="{{ old('name') }}" required autocomplete="name" autofocus>

                                @error('name')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="epf_no" class="col-md-4 col-form-label">{{ __('EPF No') }}</label>

                            <div class="col-md-7">
                                <input id="epf_no" type="text" class="form-control @error('epf_no') is-invalid @enderror" name="epf_no" value="{{ old('epf_no') }}" required autocomplete="epf_no">

                                @error('epf_no')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="email" class="col-md-4 col-form-label">{{ __('E-Mail Address') }}</label>

                            <div class="col-md-7">
                                <input id="email" type="email" class="form-control @error('email') is-invalid @enderror" name="email" value="{{ old('email') }}" required autocomplete="email">

                                @error('email')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="company" class="col-md-4 col-form-label">{{ __('Company') }}</label>

                            <div class="col-md-7">

                                <select id="company" class="form-control @error('company') is-invalid @enderror" name="company" value="{{ old('company') }}" required>
                                    <option value="">Select Company</option>
                                     <option value="HNBA">HNB Assurance PLC</option>
                                     <option value="HNBGI">HNB General Insurance LTD</option>
                                </select>
                                @error('company')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>


                        <div class="form-group row">
                            <label for="department" class="col-md-4 col-form-label">{{ __('Department') }}</label>

                            <div class="col-md-7">

                                <select id="department" class="form-control @error('department') is-invalid @enderror" name="department" value="{{ old('department') }}" required>
                                    <option value="">Select Department</option>
                                     <option value="ITD">IT Department</option>
                                     <option value="MKTD">Marketing Department</option>
                                </select>
                                @error('department')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="permission" class="col-md-4 col-form-label">{{ __('Permission') }}</label>

                            <div class="col-md-7">

                                <select id="permission" class="form-control @error('permission') is-invalid @enderror" name="permission" value="{{ old('permission') }}" required>
                                    <option value="">Select Permission</option>
                                    <option value="1">Admin User</option>
                                    <option value="2">Default User</option>
                                </select>
                                @error('permission')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>





                        <div class="form-group row">
                            <label for="password" class="col-md-4 col-form-label">{{ __('Password') }}</label>

                            <div class="col-md-7">
                                <input id="password" type="password" class="form-control @error('password') is-invalid @enderror" name="password" required autocomplete="new-password">

                                @error('password')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="password-confirm" class="col-md-4 col-form-label">{{ __('Confirm Password') }}</label>

                            <div class="col-md-6">
                                <input id="password-confirm" type="password" class="form-control" name="password_confirmation" required autocomplete="new-password">
                            </div>
                        </div>

                        
                            
                                <button type="submit" class="btn btn-primary">
                                    {{ __('Register') }}
                                </button>
                           
                       
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

@endsection
