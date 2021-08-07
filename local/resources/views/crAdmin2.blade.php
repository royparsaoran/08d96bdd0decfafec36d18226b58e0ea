@extends('layouts.admin')

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
                      <ul class="nav navbar-right panel_toolbox">
                        <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                        </li>
                        <li class="dropdown">
                          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-wrench"></i></a>
                          
                        </li>
                        <li><a class="close-link"><i class="fa fa-close"></i></a>
                        </li>
                      </ul>
                      <div class="clearfix"></div>
                    </div>
                            <div class="x_content">
                    <table id="datatable-keytable" class="table table-striped table-bordered">
                                 <thead>
                                   <tr>
                                     <th>No</th>
                                     <th>Pertanyaan</th>
                                     <th>TM</th>
                                     <th>KM</th>
                                     <th>M</th>
                                     <th>SM</th>
                                   </tr>
                                 </thead>
                                 <tbody>
                                  <tr>
                                    <td>
                                      1
                                    </td>
                                    <td>Apakah anda memahami materi yang diberikan melalui slide?</td>
                                    <td>1</td>
                                    <td>10</td>
                                    <td>10</td>
                                    <td>4</td>
                                  </tr>
                                  <tr>
                                    <td>
                                      2
                                    </td>
                                    <td>Apakah anda memahami penjelasan dosen untuk pertemuan minggu ini?</td>
                                    <td>0</td>
                                    <td>15</td>
                                    <td>5</td>
                                    <td>5</td>
                                  </tr>
                                  <tr>
                                    <td>
                                      3
                                    </td>
                                    <td>Apakah anda bisa mengerjakan latihan soal yang diberikan ?</td>
                                    <td>0</td>
                                    <td>5</td>
                                    <td>20</td>
                                    <td>0</td>
                                  </tr>
                                  <tr>
                                    <td>
                                      4
                                    </td>
                                    <td>Apakah anda bisa mengerjakan tugas yang diberikan?</td>
                                    <td>0</td>
                                    <td>10</td>
                                    <td>15</td>
                                    <td>0</td>
                                  </tr>
                                 </tbody>
                               </table>
                               <div class="form-group">
                                </div>
                              </div>
                              <div class="x_content">
                    <table id="datatable-keytable" class="table table-striped table-bordered">
                                 <thead>
                                   <tr>
                                     <th>No</th>
                                     <th>Komentar</th>
                                   </tr>
                                 </thead>
                                 <tbody>
                                   
                                      
                                   <tr>
                                       <td>1.</td>
                                       <td>Kurang Mengerti mengenai proses pengulangan</td>
                                      
                                   </tr>
                                   <tr>
                                       <td>2.</td>
                                       <td>Proses Pengulangan seperti apa?</td>
                                       
                                   </tr>
                                   
          
                                 </tbody>
                               </table>
                  <h5><a href="{{ url()->previous() }}"><u>< Back</u></a></h5>
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
@endsection
  </body>
</html>
