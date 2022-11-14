@extends('layouts.layoutsidebar')

@section('content')
    {{-- @if (session('status'))
<h6 class="alert alert-success">
  {{session('status')}}
</h6>
@endif --}}
    @if ($message = Session::get('status'))
        <div class="alert alert-success alert-block">
            <button type="button" class="close" data-dismiss="alert" style="color:black;">×</button>
            <strong>{{ $message }}</strong>
        </div>
    @endif

    <div class="search" style="position:relative; top: 5px;">
        <div class="mx-auto" style="width:340px;">
            <form action="{{ route('charity-list') }}" method="GET" role="search">

                <div class="input-group">
                    <span class="input-group-btn mr-2 mt-0">
                        <button class="btn btn-info" type="submit" title="Search Name">
                            <span class="fas fa-search"></span>
                        </button>
                    </span>
                    <input type="text" class="form-control mr-2" name="charity" placeholder="Search Name" id="charity">
                    <a href="{{ route('charity-list') }}" class=" mt-0">
                        <span class="input-group-btn">
                            <button class="btn btn-danger" type="button" title="Refresh page">
                                <span class="fas fa-sync-alt"></span>
                            </button>
                        </span>
                    </a>
                </div>
            </form>
        </div>

        <a href="{{ url('/add-charity-student') }}" class="btn btn-primary ml-2" style="margin-top: 10px;"><span
                class="fas fa-user-graduate mr-1"></span>
            New Student
        </a>

        <div class="container col-md-12" style="position: relative; margin-top:1%;">

            <div class="row">
                <div class="col-lg-12">
                    <div class="">
                        <div class="card-header " style="height: 60px;">
                            <h4 class="text-center"
                                style="font-size: 22px; color:dimgray; font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;">
                                Grade 11 - Charity Students</h4>
                            {{-- <a href="{{url('add-new-wisdom-student')}}" class="btn btn-primary"><span class="fas fa-user-graduate mr-1"></span>
                          Add New Student
                      </a> --}}
                            {{-- <img src="/images/image17.png" class="user-image img-circle elevation-2 " alt="User Image"
                                style="width: 40px; height:40px; border-radius: 50%; background-color: #5bc0de; padding-left: 2px; padding-right:2px; padding-bottom:2px; padding-top: 2px;"> --}}
                        </div>



                        <div class="card-body">
                            <div class="" style="position: relative; top:-20px;">
                                <a class="btn btn-secondary mt-2 ml-2 mr-2" style=""
                                    href="{{ route('export_charityStudents_pdf') }}"><span class="text-danger fas fa-file-pdf"
                                        style="font-size: 15px;"></span> PDF</a>
                                <a href="/export_charityStudents_excel" class=" mt-2 ml-2 btn btn-secondary"><span
                                        class="text-success fas fa-file-excel" style="font-size: 15px;"></span> Excel</a>

                                <div class="d-flex justify-content-end">
                                    <p class="text-dark">Number of students : {{ $charity }}</p>
                                </div>
                            </div>

                            <form action="/multiple-delete" method="POST">
                                @csrf

                                <table class="table table-hover bg-light table-sm elevation-2"
                                    style="margin:auto; position:relative; top: -20px;">
                                    <thead class="bg-info rounded text-center ">
                                        <tr>
                                            <th scope="col">Records</th>
                                            <th scope="col">Last Name</th>
                                            <th scope="col"
                                                class="d-none d-md-table-cell d-lg-table-cell d-xl-table-cell"
                                                style="text-align: center">First Name</th>
                                            <th scope="col"
                                                class="d-none d-md-table-cell d-lg-table-cell d-xl-table-cell"
                                                style="text-align: center">Middle Name</th>
                                            <th scope="col"
                                                class="d-none d-md-table-cell d-lg-table-cell d-xl-table-cell"
                                                style="text-align: center">Year/Section</th>
                                            <th scope="col"
                                                class="d-none d-md-table-cell d-lg-table-cell d-xl-table-cell"
                                                style="text-align: center">Gender</th>
                                            <th scope="col"
                                                class="d-none d-md-table-cell d-lg-table-cell d-xl-table-cell"
                                                style="text-align: center">Email</th>
                                            <th scope="col"
                                                class="d-none d-md-table-cell d-lg-table-cell d-xl-table-cell"
                                                style="text-align: center">Parent/s Phone No.</th>
                                            <th scope="col"
                                                class="d-none d-md-table-cell d-lg-table-cell d-xl-table-cell"
                                                style="text-align: center">Address</th>
                                            <th scope="col">Edit</th>
                                            <th scope="col">Delete</th>

                                        </tr>
                                    </thead>

                                    <tbody>
                                        @forelse ($charityStudents as $charity)
                                            <tr class="text-center">

                                                <td><a href="{{ url('show-student-charity/' . $charity->id) }}"
                                                        class="btn btn-sm btn-success"><span
                                                            class="fas fa-mail-bulk"></span></a></td>
                                                <td>{{ $charity->lastname }}</td>
                                                <td class="d-none d-md-table-cell d-lg-table-cell d-xl-table-cell"
                                                    style="text-align: center">{{ $charity->firstname }}</td>
                                                <td class="d-none d-md-table-cell d-lg-table-cell d-xl-table-cell"
                                                    style="text-align: center">{{ $charity->middlename }}</td>
                                                <td class="d-none d-md-table-cell d-lg-table-cell d-xl-table-cell"
                                                    style="text-align: center">{{ $charity->year_section }}</td>
                                                <td class="d-none d-md-table-cell d-lg-table-cell d-xl-table-cell"
                                                    style="text-align: center">{{ $charity->gender }}</td>
                                                <td class="d-none d-md-table-cell d-lg-table-cell d-xl-table-cell"
                                                    style="text-align: center">{{ $charity->email }}</td>
                                                <td class="d-none d-md-table-cell d-lg-table-cell d-xl-table-cell"
                                                    style="text-align: center">{{ $charity->parent_num }}</td>
                                                <td class="d-none d-md-table-cell d-lg-table-cell d-xl-table-cell"
                                                    style="text-align: center">{{ $charity->address }}</td>
                                                <td><a href="{{ url('edit-charity-student/' . $charity->id) }}"
                                                        class="btn btn-warning btn-xs "><i
                                                            class="fas fa-user-edit text-dark"></i></a></td>
                                                <td><input type="checkbox" name="ids[]" value="{{ $charity->id }}"></td>
                                            </tr>

                                        @empty
                                            <tr>
                                                <td colspan="5" class="text-dark"><span
                                                        class="fas fa-exclamation-circle text-danger"></span> No Grade 11 -
                                                    Charity students found!</td>
                                            </tr>
                                        @endforelse
                                    </tbody>
                                </table>
                                <div class="d-flex justify-content-end mt-2">
                                    <button type="submit" class="btn btn-danger btn-sm" value="Delete Students">Delete
                                        Students</button>
                                </div>
                            </form>
                            <div class="div d-flex justify-content-center">
                                {{ $charityStudents->onEachSide(1)->links() }}
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    @endsection
