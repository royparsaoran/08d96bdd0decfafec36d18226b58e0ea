@extends('layouts.master')

@section('css')

    <!-- Bootstrap -->
    <link href="vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <!-- NProgress -->
    <link href="vendors/nprogress/nprogress.css" rel="stylesheet">
    <!-- bootstrap-progressbar -->
    <link href="vendors/bootstrap-progressbar/css/bootstrap-progressbar-3.3.4.min.css" rel="stylesheet">


    <!-- Custom Theme Style -->
    <link href="vendors/build/css/custom.min.css" rel="stylesheet">
@endsection

@section('content')
          <!-- page content -->
          <div class="right_col" role="main">
            <div class="">
              <div class="page-title">
                <div class="title_left">
                  <h3>Rating</h3>
                </div>
              </div>

              <div class="clearfix"></div>

              <div class="row">
                <div class="col-md-12 col-sm-12 col-xs-12">
                  <div class="x_panel">
                    <div class="x_title">
                      <h2>Course Rating</h2>
                      <ul class="nav navbar-right panel_toolbox">
                        <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                        </li>
                        <li class="dropdown">
                          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-wrench"></i></a>
                          <ul class="dropdown-menu" role="menu">
                            <li><a href="#">Settings 1</a>
                            </li>
                            <li><a href="#">Settings 2</a>
                            </li>
                          </ul>
                        </li>
                        <li><a class="close-link"><i class="fa fa-close"></i></a>
                        </li>
                      </ul>
                      <div class="clearfix"></div>
                    </div>
                    <div class="x_content">


                      <div style="text-align: center; margin-bottom: 17px">
                        <label for="heard">Pilih Mata Kuliah</label>
                        <select class="form-control input-sm" name="namaMK" id="namaMK" onchange="">
                          <option value="">-- Pilih --</option>
                          <?php foreach ($dataMK as $dtmk ): ?>

                          <option value="{{ $dtmk->idMasterDKBS }}" >{{ $dtmk->kodeMK }} - {{ $dtmk->namaMK }}</option>

                          <?php endforeach ?>
                        </select> 
                        <br/> 
                          <label for="heard">Pilih Pertemuan</label>
                          <select class="form-control input-sm" name="Pertemuan" id="Pertemuan" onchange="">
                            <option value="">-- Pilih --</option>
                            <?php foreach ($dataPertemuan as $dp): ?>
                              <option value="{{ $dp->idPertemuan }}" class="{{ $dp->masterdkbs_idMasterDKBS }}"> {{$dp->namaPertemuan}}</option>
                            <?php endforeach ?>
                          </select> 
                          <div align="right">
                            <br>
                                     <div align="right"><a href="{{ url('/courseRating0')}}"><button type="button" class="btn btn-round btn-primary">Next</button></a></div>
                                  </div>
                          <!-- <ul style="text-align: left;" class="list-group">
                            <li class="list-group-item "><a href="{{ url('/courseRating0')}}">Pertemuan 1 :  Introduksi dan Tipe Data(✔) </a></li>
                            <li class="list-group-item ">Pertemuan 2 :  Struktur Program Sederhana(✔) </li>
                            <li class="list-group-item ">Pertemuan 3 :  Analisa Kasus(✔)</li>
                            <li class="list-group-item ">Pertemuan 4 :  Quiz-1 & Review (tipe data, aksi sekuensial, analisa kasus)(✔) </li>
                            <li class="list-group-item ">Pertemuan 5 : Pengulangan dengan while dan for (bagian-1)(✔)</li>
                            <li class="list-group-item ">Pertemuan 6 : Pengulangan dengan while dan for (bagian-2)(X) </li> -->
                            <!--<li class="list-group-item ">Pertemuan 7 :  Fungsi(1)</li>
                            <li class="list-group-item ">Pertemuan 8 :  Fungsi(2) </li>
                            <li class="list-group-item ">Pertemuan 9 :  Array satu dimensi</li>
                            <li class="list-group-item ">Pertemuan 10 :  Array dua dimensi </li>
                            <li class="list-group-item ">Pertemuan 11 :  Searching dan Sorting </li>
                            <li class="list-group-item ">Pertemuan 12 :  Quiz-4 dan Review  </li>-->
                          <!-- </ul> -->
                            <!-- <ul class="verticle_bars list-inline">
                              <li>
                                <div class="progress vertical progress_wide bottom">
                                  <div class="progress-bar progress-bar-dark" role="progressbar" data-transitiongoal="38">38</div>
                                </div>
                              </li>
                              <li>
                                <div class="progress vertical progress_wide bottom">
                                  <div class="progress-bar progress-bar-info" role="progressbar" data-transitiongoal="80">80</div>
                                </div>
                              </li>
                              <li>
                                <div class="progress vertical progress_wide bottom">
                                  <div class="progress-bar progress-bar-danger" role="progressbar" data-transitiongoal="20">20</div>
                                </div>
                              </li>
                              <li>
                                <div class="progress vertical progress_wide bottom">
                                  <div class="progress-bar progress-bar-success" role="progressbar" data-transitiongoal="75">75</div>
                                </div>
                              </li>


                            </ul> -->
                          </div>
                          <div class="divider"></div>

                          <!-- <ul class="legend list-unstyled">
                            <li>
                              <p>
                                <span class="icon"><i class="fa fa-square dark"></i></span> <span class="name">Tidak hadir</span>
                              </p>
                            </li>
                            <li>
                              <p>
                                <span class="icon"><i class="fa fa-square blue"></i></span> <span class="name">Pass</span>
                              </p>
                            </li>
                            <li>
                              <p>
                                <span class="icon"><i class="fa fa-square red "></i></span> <span class="name">Not Pass</span>
                              </p>
                            </li>
                            <li>
                              <p>
                                <span class="icon"><i class="fa fa-square green"></i></span> <span class="name">Downloaded Resorces</span>
                              </p>
                            </li>
                          </ul> -->


                    </div>
                  </div>
                </div>
              </div>

              <!-- form input knob -->
              <!-- <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>Rating Precentage</h2>
                    <ul class="nav navbar-right panel_toolbox">
                      <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                      </li>
                      <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-wrench"></i></a>
                        <ul class="dropdown-menu" role="menu">
                          <li><a href="#">Settings 1</a>
                          </li>
                          <li><a href="#">Settings 2</a>
                          </li>
                        </ul>
                      </li>
                      <li><a class="close-link"><i class="fa fa-close"></i></a>
                      </li>
                    </ul>
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">
                    <div class="col-md-2">
                      <p>IN010 Dasar Pemrograman</p>
                      <input class="knob" data-width="110" data-height="120" data-displayPrevious=true data-fgColor="#26B99A" data-skin="tron" data-thickness=".2" value="100">
                    </div>
                    <div class="col-md-2">
                      <p>IN072 Pemrograman Berorientasi Objek A</p>
                      <input class="knob" data-width="110" data-height="120" data-displayPrevious=true data-fgColor="#26B99A" data-skin="tron" data-thickness=".2" value="60">
                    </div>
                    <div class="col-md-2">
                      <p>IN087 Algoritma dan Struktur data 1</p>
                      <input class="knob" data-width="110" data-height="120" data-displayPrevious=true data-fgColor="#26B99A" data-skin="tron" data-thickness=".2" value="60">
                    </div>
                    <div class="col-md-2">
                      <p>IN087 Algoritma dan Struktur data 2</p>
                      <input class="knob" data-width="110" data-height="120" data-displayPrevious=true data-fgColor="#26B99A" data-skin="tron" data-thickness=".2" value="75">
                    </div>
                    <div class="col-md-2">
                      <p>IN062 Strategi Algoritmik</p>
                      <input class="knob" data-width="110" data-height="120" data-displayPrevious=true data-fgColor="#26B99A" data-skin="tron" data-thickness=".2" value="80">
                    </div>
                    <div class="col-md-2">
                      <p>IN062 Strategi Algoritmik</p>
                      <input class="knob" data-width="110" data-height="120" data-displayPrevious=true data-fgColor="#26B99A" data-skin="tron" data-thickness=".2" value="90">
                    </div>
                    <div align="right"><button type="button" class="btn btn-round btn-primary">Submit</button></div>
                  </div>
                </div>
              </div> -->
              <!-- /form input knob -->

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
    <!-- Chart.js -->
    <script src="vendors/Chart.js/dist/Chart.min.js"></script>
    <!-- bootstrap-progressbar -->
    <script src="vendors/bootstrap-progressbar/bootstrap-progressbar.min.js"></script>
    <!-- jQuery Knob -->
    <script src="vendors/jquery-knob/dist/jquery.knob.min.js"></script>

    <!-- Custom Theme Scripts -->
    <script src="vendors/build/js/custom.min.js"></script>
    <script>
      let dataMK = $("#namaMK");
      dataMK.change(function(){
        $("#Pertemuan option").not('.' + $(this).val()).hide();
        $("." + $(this).val()).show();
      })
    </script>
@endsection
  </body>
</html>
