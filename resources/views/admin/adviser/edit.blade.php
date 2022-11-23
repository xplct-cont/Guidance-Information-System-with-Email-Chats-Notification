@extends('layouts.layoutsidebar')

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
            crossorigin="anonymous" />

        <!-- AdminLTE -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/admin-lte/3.0.5/css/adminlte.min.css"
            integrity="sha512-rVZC4rf0Piwtw/LsgwXxKXzWq3L0P6atiQKBNuXYRbg2FoRbSTIY0k2DxuJcs7dk4e/ShtMzglHKBOJxW8EQyQ=="
            crossorigin="anonymous" />

        <!-- iCheck -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/icheck-bootstrap/3.0.1/icheck-bootstrap.min.css"
            integrity="sha512-8vq2g5nHE062j3xor4XxPeZiPjmRDh6wlufQlfC6pdQ/9urJkU07NM0tEREeymP++NczacJ/Q59ul+/K2eYvcg=="
            crossorigin="anonymous" />


        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->

    </head>


    <body>
        {{-- @if (session('status'))
    <h6 class="alert alert-success"style="font-size: 20px;">
      {{session('status')}}
    </h6>
    @endif --}}
        @if ($message = Session::get('status'))
            <div class="alert alert-success alert-block">
                <button type="button" class="close" data-dismiss="alert" style="color:black;">×</button>
                <strong>{{ $message }}</strong>
            </div>
        @endif

        <h1
            style="color:dimgray; font-weight:regular; font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; font-size: 25px; position:relative; top: 20px; margin-left: 10px;">
            {{ $adviser->admin ? 'Administrator' : 'Adviser' }} Profile</h1>
        <br>
        <hr>

        <div class="row">

            <div class="col-md-5 d-flex justify-content-center" style="height: 283px; overflow:hidden;">
                <div class="d-flex justify-content-center">
                    <img src="/storage/users-avatar/{{ $adviser->avatar }}"
                        style=" width: 255px;height:255px;border-radius: 50%; float:left; ">

                </div>
                <p class="text-center" style="position:absolute;  top: 260px; color:black">{{ $adviser->advisory }} </p>
            </div>

            <div class="col-md-6 text-dark mx-auto">

                <div class="cold-md-4" style="height: 265px; margin-left: 10px; margin-top: 10px; margin-bottom: 100px;">
                    <h2 class="text-center" style="color:dimgray; font-size:20px; font-weight: normal;">
                        {{ $adviser->admin ? 'Administrator' : 'Adviser' }} Details</h2>
                    <hr>

                    <form action="{{ url('update-adviser/' . $adviser->id) }}" method="POST" accept-charset="UTF-8">
                        @csrf
                        @method('PUT')


                        <div class="input-group mb-3">
                            <label for="" style="color:dimgray;"><span
                                    class="fas fa-user input-group-text bg-secondary" style="width: 43px;"></span></label>
                            <input type="text" name="name" value="{{ $adviser->name }}" class="form-control" required>
                        </div>

                        <div class="input-group mb-3">
                            <label for="" style="color:dimgray;"><span class=" input-group-text bg-secondary"
                                    style="width: 43px;">ID</span></label>
                            <input type="text" name="adviser_id" value="{{ $adviser->adviser_id }}" class="form-control" required>
                        </div>

                        <div class="input-group mb-3">
                            <label for="" style="color:dimgray;"><span class="input-group-text bg-secondary"
                                    style="width: 43px;">As</span></label>
                            <input type="text" name="advisory" value="{{ $adviser->advisory }}" class="form-control"
                                required>
                        </div>


                        <div class="input-group mb-3">
                            <label for="" style="color:dimgray;"><span class="input-group-text bg-secondary"
                                    style="width: 43px;">Pn</span></label>
                            <input type="text" name="contact_no" value="{{ $adviser->contact_no }}" class="form-control"
                                required>
                        </div>

                        <div class="input-group mb-3">
                            <label for="" style="color:dimgray;"><span
                                    class="fas fa-envelope input-group-text bg-secondary"
                                    style="width: 43px;"></span></label>
                            <input type="text" name="email" value="{{ $adviser->email }}" class="form-control"
                                required>
                        </div>

                        <div class="input-group mb-3">
                            <label for="" style="color:dimgray;"><span class=" input-group-text bg-secondary"
                                    style="width: 55px;">Role</span></label>
                            <input type="text" name="admin"
                                value="{{ $adviser->admin ? 'Administrator' : 'Adviser' }}" class="form-control" readonly>
                        </div>


                        <p class="text-center" style="color: dimgray; font-weight: 500"><span class="fas fa-exclamation-triangle text-danger"></span> Select Role</p>
                        <div class="form-group text-dark d-flex justify-content-center">
                            <div class="maxl">
                                <label class="radio inline mr-5">
                                    <input type="radio" name="admin" value="1" {{ ($adviser->admin == '1' ? ' checked' : 'Unchecked') }}>
                                    <span>Administrator</span>
                                </label>
                                <label class="radio inline">
                                    <input type="radio" name="admin" value="0"  {{ ($adviser->admin == '0' ? ' checked' : 'Unchecked') }}>
                                    <span>Adviser</span>
                                </label>
                            </div>
                        </div>

                        <div class="mb-3">
                            <button type="submit" class="btn btn-success float-right btn-sm mb-3"><span
                                    class="fas fa-save"></span> Save Changes</button>

                        </div>
                    </form>



                </div>

            </div>

            <script src="https://cdnjs.cloudflare.com/ajax/libs/admin-lte/3.0.5/js/adminlte.min.js"
                integrity="sha512-++c7zGcm18AhH83pOIETVReg0dr1Yn8XTRw+0bWSIWAVCAwz1s2PwnSj4z/OOyKlwSXc4RLg3nnjR22q0dhEyA=="
                crossorigin="anonymous"></script>


    </body>

    </html>


    <style scoped>



    </style>
@endsection
