@extends('layouts.dosen')

@section('css')

<!-- Bootstrap -->
<link href="vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
<!-- Font 1 -->
<link href="vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
<!-- NProgress -->
<link href="vendors/nprogress/nprogress.css" rel="stylesheet">
<!-- bootstrap-progressbar -->
<link href="vendors/bootstrap-progressbar/css/bootstrap-progressbar-3.3.4.min.css" rel="stylesheet">
<!-- Custom Theme Style -->
<link href="vendors/build/css/custom.min.css" rel="stylesheet">
    <!-- Datatables --> 
<link href="{{URL::asset('vendors/datatables.net-bs/css/dataTables.bootstrap.min.css')}}" rel="stylesheet">
<link href="{{URL::asset('vendors/datatables.net-buttons-bs/css/buttons.bootstrap.min.css')}}" rel="stylesheet">
<link href="{{URL::asset('vendors/datatables.net-fixedheader-bs/css/fixedHeader.bootstrap.min.css')}}" rel="stylesheet">
<link href="{{URL::asset('vendors/datatables.net-responsive-bs/css/responsive.bootstrap.min.css')}}" rel="stylesheet">
<link href="{{URL::asset('vendors/datatables.net-scroller-bs/css/scroller.bootstrap.min.css')}}" rel="stylesheet">

@endsection

@section('content')
<!-- page content -->
<div class="right_col" role="main">
  <div class="">
    <div class="page-title">
      <div class="title_left">
        <h3>Messages</h3>
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
                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i
                    class="fa fa-wrench"></i></a>

              </li>
              <li><a class="close-link"><i class="fa fa-close"></i></a>
              </li>
            </ul>
            <div class="clearfix"></div>
          </div>
          <div class="x_content">

            <div class="row">
              <div class="col-sm-12">
                <?php if (session('message') != null): ?>
                <div class="alert alert-success">
                  <?php echo  session('message') ?>
                </div>
                <?php endif ?>
                <div>
                  <form method="POST" action="{{url('commentDosen')}}">
                      {{csrf_field()}}


                      <label for="heard">Mata Kuliah :</label>
                      <select class="btn btn-primary dropdown-toggle" name="kodeMK" id="namaMK">
                        <option value="" style="text-align: center;">--Pilih--</option>
                        <?php foreach ($dataMK as $dtmk ): ?>

                        <option value="{{ $dtmk->kodeMK }}" name="kodeMK">{{ $dtmk->kodeMK }} -
                          {{ $dtmk->namaMK }} </option>

                        <?php endforeach ?>



                      </select>
                      <label for="heard">Kelas :</label>
                      <select class="btn btn-primary dropdown-toggle" id="kelas" name="kelas" disabled="">
                        <option value="">-- Pilih --</option>
                        <?php foreach ($dataKelas as $dk): ?>
                        <option value="{{ $dk->kelas }}" class="{{ $dk->kodeMK }}">
                          {{$dk->kelas}}</option>

                        <?php endforeach ?>
                        <div align="right"><input type="submit" name="Submit" class="btn btn-round btn-primary"
                            value="GO" id="btngo" disabled=""></div>
                 
                  </form>
                  </select>
                </div>
                <div class="x_content">
                  <?php foreach ($data as $nmk2 ): ?>
                  <h3 align="center">{{ $nmk2->namaMK }} ({{ $nmk2->kelas }}) </h3 >
                  <?php break; ?>
                  <?php endforeach ?>
                <div class="card-box table-responsive">
                  <table  id="datatable-buttons" class="table table-bordered bulk_action">
                    <thead>
                      <tr>
                        <th>NRP</th>
                        <th>Komentar</th>
                        <!-- <th colspan="1"></th> -->
                      </tr>
                    </thead>
                    <tbody>
                      <?php foreach ($data as $dt ): 
                                        if($dt->messagesStatus==1){?>
                      <tr>
                        <td bgcolor="#ebebeb"><b>{{ $dt->pelapor }}</b></td>
                        <td bgcolor="#ebebeb"><b>{{ $dt->isiKomentar }}</b></td>
                        <!-- <td bgcolor="#ebebeb">
                          <a href="commentDosen/read/{{$dt->idKomentar}}"><b>read</b></a>
                        </td> -->
                      </tr>
                      <?php } else{ ?>
                      <td>{{ $dt->pelapor }}</td>
                      <td>{{ $dt->isiKomentar }}</td>
                      <!-- <td>
                        
                      </td> -->
                      </tr>
                      <?php } endforeach ?>
                    </tbody>
                  </table>
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
            <!-- Chart.js -->
            <script src="vendors/Chart.js/dist/Chart.min.js"></script>
            <!-- bootstrap-progressbar -->
            <script src="vendors/bootstrap-progressbar/bootstrap-progressbar.min.js"></script>
            <!-- jQuery Knob -->
            <script src="vendors/jquery-knob/dist/jquery.knob.min.js"></script>

            <!-- Custom Theme Scripts -->
            <script src="vendors/build/js/custom.min.js"></script>
            <script src="{{asset('vendors/datatables.net/js/jquery.dataTables.min.js')}}"></script>
            <script src="{{asset('vendors/datatables.net-bs/js/dataTables.bootstrap.min.js')}}"></script>
            <script src="{{asset('vendors/datatables.net-buttons/js/dataTables.buttons.min.js')}}"></script>
            <script src="{{asset('vendors/datatables.net-buttons-bs/js/buttons.bootstrap.min.js')}}"></script>
            <script src="{{asset('vendors/datatables.net-buttons/js/buttons.flash.min.js')}}"></script>
            <script src="{{asset('vendors/datatables.net-buttons/js/buttons.html5.min.js')}}"></script>
            <script src="{{asset('vendors/datatables.net-buttons/js/buttons.print.min.js')}}"></script>
            <script src="{{asset('vendors/datatables.net-fixedheader/js/dataTables.fixedHeader.min.js')}}"></script>
            <script src="{{asset('vendors/datatables.net-keytable/js/dataTables.keyTable.min.js')}}"></script>
            <script src="{{asset('vendors/datatables.net-responsive/js/dataTables.responsive.min.js')}}"></script>
            <script src="{{asset('vendors/datatables.net-responsive-bs/js/responsive.bootstrap.js')}}"></script>
            <script src="{{asset('vendors/datatables.net-scroller/js/dataTables.scroller.min.js')}}"></script>
            <script src="{{asset('vendors/jszip/dist/jszip.min.js')}}"></script>
            <script src="{{asset('vendors/pdfmake/build/pdfmake.min.js')}}"></script>
            <script src="{{asset('vendors/pdfmake/build/vfs_fonts.js')}}"></script>
            <script type="text/javascript">

              let dataMK = $("#namaMK");
                dataMK.change(function(){
                  $("#kelas option").not('.' + $(this).val()).hide();
                  $("." + $(this).val()).show();
                })

              $(document).ready(function(){
                $('#namaMK').change(function(){
                  console.log($(this).val());
                  $("#kelas").prop('disabled', false);
                })
              })
              $(document).ready(function(){
                $('#kelas').change(function(){
                  console.log($(this).val());
                  $("#btngo").prop('disabled', false);
                })
              })
              // let dataMK = $("#namaMK");
              //   dataMK.change(function(){
              //     $("#Kelas option").not('.' + $(this).val()).hide();
              //     $("." + $(this).val()).show();
              //   })
            </script>
            @endsection
            </body>

            </html>