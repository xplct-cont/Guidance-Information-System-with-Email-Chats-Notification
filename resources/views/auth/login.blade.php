@extends('layouts.layout')

@section('content')


<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>{{ config('app.name') }}</title>

    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1.0, maximum-scale=1, user-scalable=no" name="viewport">

    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/css/all.min.css"
          integrity="sha512-0S+nbAYis87iX26mmj/+fWt1MmaKCv80H+Mbo+Ne7ES4I6rxswpfnC6PxmLiw33Ywj2ghbtTw0FkLbMWqh4F7Q=="
          crossorigin="anonymous"/>

    <!-- AdminLTE -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/admin-lte/3.0.5/css/adminlte.min.css"
          integrity="sha512-rVZC4rf0Piwtw/LsgwXxKXzWq3L0P6atiQKBNuXYRbg2FoRbSTIY0k2DxuJcs7dk4e/ShtMzglHKBOJxW8EQyQ=="
          crossorigin="anonymous"/>

    <!-- iCheck -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/icheck-bootstrap/3.0.1/icheck-bootstrap.min.css"
          integrity="sha512-8vq2g5nHE062j3xor4XxPeZiPjmRDh6wlufQlfC6pdQ/9urJkU07NM0tEREeymP++NczacJ/Q59ul+/K2eYvcg=="
          crossorigin="anonymous"/>

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
 
</head>
<body>
     
<div class="container" style="margin-top:50px;">
    
    <div class="d-flex justify-content-center">
        <h3 class="text-center" style="font-size: 26px;">Guidance Information System<br>
            <br>
         </h3>
    </div>


    <div class="row justify-content-center">
        <div class="col-md-6">

            
            <div class="card shadow-lg rounded" >
                <div class="card-header bg-dark shadow-lg rounded d-flex justify-content-between" >
                    <img src="/images/image17.png" class=" shadow-lg rounded-circle" style="height: 100px; width:100px; margin:auto;">
                    <h3 class="text-center" style="font-size: 18px; margin:auto;color: white ">PANGANGAN NATIONAL HIGH SCHOOL <br>
                        <p class="text-center" style="font-size: 15px; color: whitesmoke;">Talisay, Calape, Bohol</p> 
                    </h3>
                
                </div>

                <div class="card-body">
                    <form method="POST" action="{{ route('login') }}">
                        @csrf

                        <div class="row mb-3">
                            <label for="email" class="col-md-4 col-form-label text-md-end">{{ __('Email Address') }}</label>
                            <div class="col-md-6"> 
                                <input id="email" type="email" class="form-control  @error('email') is-invalid @enderror" placeholder="example@gmail.com" name="email" value="{{ old('email') }}" required autocomplete="email" autofocus>
                                @error('email')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>

                        <div class="row mb-3">
                            <label for="password" class="col-md-4 col-form-label text-md-end">{{ __('Password') }}</label>

                            <div class="col-md-6">
                                <input id="password" type="password" class="form-control @error('password') is-invalid @enderror" name="password" required autocomplete="current-password">
                                <span class="d-flex justify-content-end mt-1"><i class="fas fa-eye text-danger" aria-hidden="true" id="eye" onclick="toggle()"></i></span>
                                @error('password')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>

                        <div class="row mb-3">
                            <div class="col-md-6 offset-md-4">
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" name="remember" id="remember" {{ old('remember') ? 'checked' : '' }}>

                                    <label class="form-check-label" for="remember">
                                        {{ __('Remember Me') }}
                                    </label>
                                   
                                </div>
                            </div>
                        </div>



                        
                        <div class="row mb-0 ">
                            <div class="col-md-6 offset-md-4 d-flex justify-content-end">
                                <button type="submit" class="btn btn-primary ">
                                    {{ __('Login') }} <span class="fas fa-sign-in-alt"></span>
                                </button>
                               


                        
                               
                        </div>
                        @if (Route::has('password.request'))
                        <a class="btn btn-link" href="{{ route('password.request') }}">
                            {{ __('Forgot Your Password?') }}
                        </a>
                    @endif
                        <p class="mb-0 d-flex justify-content-center">
                            <a href="{{ route('register') }}" class="text-center" style="color:black; font-size: 14px; margin:auto;">Register an account</a>
                           
                        </p>
                    </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

<footer class="sticky-footer">
    <div class="container ">
        <div class="copyright text-center">
            <span style="color:dimgray;">&copy; Pangangan National High School 2022</span>
        </div>
    </div>
</footer>

<script src="https://cdnjs.cloudflare.com/ajax/libs/admin-lte/3.0.5/js/adminlte.min.js"
        integrity="sha512-++c7zGcm18AhH83pOIETVReg0dr1Yn8XTRw+0bWSIWAVCAwz1s2PwnSj4z/OOyKlwSXc4RLg3nnjR22q0dhEyA=="
        crossorigin="anonymous"></script>
    
        <script>
            var state = false;
            function toggle(){
                if(state){
                    document.getElementById(
                        'password'
                    ).setAttribute("type", "password");
                    state = false;
                }else{
                    document.getElementById(
                        'password'
                    ).setAttribute("type", "text");
                    state = true;
                }
            }
        </script>
    </body>
</html>
@endsection

