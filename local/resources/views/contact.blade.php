@extends('layouts.master')

@section('css')


    <!-- Bootstrap -->
    <link href="vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <!-- NProgress -->
    <link href="vendors/nprogress/nprogress.css" rel="stylesheet">
    <!-- iCheck -->
    <link href="vendors/iCheck/skins/flat/green.css" rel="stylesheet">

    <!-- bootstrap-progressbar -->
    <link href="vendors/bootstrap-progressbar/css/bootstrap-progressbar-3.3.4.min.css" rel="stylesheet">
    <!-- JQVMap -->
    <link href="vendors/jqvmap/dist/jqvmap.min.css" rel="stylesheet"/>
    <!-- bootstrap-daterangepicker -->
    <link href="vendors/bootstrap-daterangepicker/daterangepicker.css" rel="stylesheet">

    <!-- Custom Theme Style -->
    <link href="vendors/build/css/custom.min.css" rel="stylesheet">

@endsection

@section('content')
          <!-- page content -->
          <div class="right_col" role="main">
            <div class="">
              <div class="page-title">
                <div class="title_left">
                  <h3>Contacts Design</h3>
                </div>
              </div>

              <div class="clearfix"></div>

              <div class="row">
                <div class="col-md-12">
                  <div class="x_panel">
                    <div class="x_content">
                      <div class="" role="tabpanel" data-example-id="togglable-tabs">
                        <ul id="myTab" class="nav nav-tabs bar_tabs" role="tablist">
                          <li role="presentation" class="active"><a href="#tab_content1" id="home-tab" role="tab" data-toggle="tab" aria-expanded="true">Mahasiswa</a></li>
                          <li role="presentation" class=""><a href="#tab_content2" role="tab" id="profile-tab" data-toggle="tab" aria-expanded="false">Dosen</a></li>
                          <br/>
                        </ul>
                        <div id="myTabContent" class="tab-content">

                          <div role="tabpanel" class="tab-pane fade active in" id="tab_content1" aria-labelledby="home-tab">

                            <?php foreach ($mhs as $m): ?>
                              <div class="col-md-4 col-sm-4 col-xs-12 profile_details">
                                <div class="well profile_view">
                                  <div class="col-sm-12">
                                    <h4 class="brief"><i>{{$m->nik}}</i></h4>
                                    <div class="left col-xs-7">
                                      <h2>{{$m->namaMhs}}</h2>
                                      <ul class="list-unstyled">
                                        <li><i class="fa fa-male"></i> {{$m->role}} </li>
                                        <!-- <li><i class="fa fa-male"></i> {{$m->kota}} </li> -->
                                        <li><i class="fa fa-calendar"></i> {{$m->prodi}} </li>
                                        <li><i class="fa fa-globe"></i> {{$m->email}} </li>
                                        <!-- <li><i class="fa fa-globe"></i> {{$m->telephone}} </li> -->
                                        <li><i class="fa fa-globe"></i> {{ date('d-M-Y', strtotime($m->tanggalLahir)) }} </li>
                                        <!-- <li><i class="fa fa-globe"></i> {{$m->alamat}} </li> -->
                                        <li><i class="fa fa-globe"></i> {{$m->gender}} </li>
                                      </ul>
                                    </div>
                                    <div class="right col-xs-4 text-center">
                                      <img src="{{URL::asset('images/foto/'.$m->foto)}}" alt="" class="img-circle img-responsive " style="border:3px solid {{$m->warna}};" width="300px" height="400px" >
                                    </div>
                                  </div>
                                  <!-- <div class="col-xs-12 bottom text-center">
                                    <div class="col-xs-12 col-sm-6 emphasis">
                                      <button type="button" class="btn btn-primary btn-xs" href="{{Url('/profile')}}">
                                        <i class="fa fa-user"> </i> View Profile
                                      </button>
                                    </div>
                                  </div> -->
                                </div>
                              </div>
                            <?php endforeach; ?>

                          </div>

                          <div role="tabpanel" class="tab-pane fade" id="tab_content2" aria-labelledby="profile-tab">

                            <?php foreach ($dosen as $d): ?>
                              <div class="col-md-4 col-sm-4 col-xs-12 profile_details">
                                <div class="well profile_view">
                                  <div class="col-sm-12">
                                    <h4 class="brief"><i>{{$d->nik}}</i></h4>
                                    <div class="left col-xs-7">
                                      <h2>{{$d->namaDosen}}</h2>
                                      <ul class="list-unstyled">
                                        <li><i class="fa fa-male"></i> {{$d->role}} </li>
                                        <li><i class="fa fa-globe"></i> {{$d->email}} </li>
                                        <li><i class="fa fa-calendar"></i> {{$d->prodi}} </li>
                                      </ul>
                                    </div>
                                    <div class="right col-xs-5 text-center">
                                      <img src="{{URL::asset('images/foto/'.$d->foto)}}" alt="" class="img-circle img-responsive" width="300px" height="400px" style="border:3px solid {{$d->warna}};">
                                    </div>
                                  </div>
                                  <!-- <div class="col-xs-12 bottom text-center">
                                    <div class="col-xs-12 col-sm-6 emphasis">
                                      <button type="button" class="btn btn-primary btn-xs" href="{{Url('/profile')}}">
                                        <i class="fa fa-user"> </i> View Profile
                                      </button>
                                    </div>
                                  </div> -->
                                </div>
                              </div>
                            <?php endforeach; ?>


                          </div>


                        </div>
                      </div>


                        <div class="clearfix"></div>









                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <!-- /page content -->

@endsection

@section('js')

    <!-- jQuery -->
    <script src="vendors/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap -->
    <script src="vendors/bootstrap/dist/js/bootstrap.min.js"></script>
    <!-- FastClick -->
    <script src="vendors/fastclick/lib/fastclick.js"></script>
    <!-- NProgress -->
    <script src="vendors/nprogress/nprogress.js"></script>
    <!-- gauge.js -->
    <script src="vendors/gauge.js/dist/gauge.min.js"></script>
    <!-- bootstrap-progressbar -->
    <script src="vendors/bootstrap-progressbar/bootstrap-progressbar.min.js"></script>
    <!-- morris.js -->
    <script src="vendors/raphael/raphael.min.js"></script>
    <script src="vendors/morris.js/morris.min.js"></script>
    <!-- DateJS -->
    <script src="vendors/DateJS/build/date.js"></script>
    <!-- bootstrap-daterangepicker -->
    <script src="vendors/moment/min/moment.min.js"></script>
    <script src="vendors/bootstrap-daterangepicker/daterangepicker.js"></script>

    <!-- Custom Theme Scripts -->
    <script src="vendors/build/js/custom.min.js"></script>
@endsection
  </body>
</html>
