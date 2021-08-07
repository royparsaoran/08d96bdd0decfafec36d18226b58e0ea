@extends('layouts.dosen')

@section('css')
    <!-- Bootstrap -->
    <link href="{{URL::asset('vendors/bootstrap/dist/css/bootstrap.min.css')}}" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="{{URL::asset('vendors/font-awesome/css/font-awesome.min.css')}}" rel="stylesheet">
    <!-- NProgress -->
    <link href="{{URL::asset('vendors/nprogress/nprogress.css')}}" rel="stylesheet">
    <!-- bootstrap-daterangepicker -->
    <link href="{{URL::asset('vendors/bootstrap-daterangepicker/daterangepicker.css')}}" rel="stylesheet">
    <!-- Animate.css -->
    <link href="{{URL::asset('vendors/animate.css/animate.min.css')}}" rel="stylesheet">
    <!-- bootstrap-datetimepicker -->
    <link href="{{URL::asset('vendors/bootstrap-datetimepicker/build/css/bootstrap-datetimepicker.css')}}" rel="stylesheet">
    <!-- Datatables -->
    <link href="{{URL::asset('vendors/datatables.net-bs/css/dataTables.bootstrap.min.css')}}" rel="stylesheet">
    <link href="{{URL::asset('vendors/datatables.net-buttons-bs/css/buttons.bootstrap.min.css')}}" rel="stylesheet">
    <link href="{{URL::asset('vendors/datatables.net-fixedheader-bs/css/fixedHeader.bootstrap.min.css')}}" rel="stylesheet">
    <link href="{{URL::asset('vendors/datatables.net-responsive-bs/css/responsive.bootstrap.min.css')}}" rel="stylesheet">
    <link href="{{URL::asset('vendors/datatables.net-scroller-bs/css/scroller.bootstrap.min.css')}}" rel="stylesheet">
    <!-- Custom Theme Style -->
    <link href="{{URL::asset('vendors/build/css/custom.min.css')}}" rel="stylesheet">
@endsection

@section('content')
<!-- page content -->
  <div class="right_col" role="main">
    <div class="">
      <div class="page-title">
        <div class="title_left">
          <h3>Form Wizards</h3>
        </div>
      </div>
      <div class="clearfix"></div>

      <div class="row">

        <div class="col-md-12 col-sm-12 col-xs-12">
          <div class="x_panel">
            <div class="x_title">
              <h2>Create Tournament</h2>
              <ul class="nav navbar-right panel_toolbox">
                <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                </li>
              </ul>
              <div class="clearfix"></div>
            </div>
            <div class="x_content">

              <div class="" role="tabpanel" data-example-id="togglable-tabs">
                <ul id="myTab" class="nav nav-tabs bar_tabs" role="tablist">
                  <li role="presentation" class="active"><a href="#tab_content1" id="home-tab" role="tab" data-toggle="tab" aria-expanded="true">Tournament List</a></li>
                  <li role="presentation" class=""><a href="#tab_content2" role="tab" id="profile-tab" data-toggle="tab" aria-expanded="false">Create Tournament</a></li>
                  <br/>
                </ul>
                <div id="myTabContent" class="tab-content">

                  <div role="tabpanel" class="tab-pane fade active in" id="tab_content1" aria-labelledby="home-tab">

                    <form method="POST" action="/tournamentDosen" >
                       <table id="datatable" class="table table-striped table-bordered">
                         <thead>
                           <tr>
                             <th>Nama Tournament</th>
                             <th>Tanggal Tournament</th>
                             <th>Pembuat Tournament</th>
                             <th>Status</th>
                             <th>Poin</th>
                             <th>Tempat</th>
                             <th>Jenis</th>
                             <th>Kondisi</th>
                             <th>Start</th>
                             <th>Finish</th>
                             <th>Duration</th>
                             <th>Update</th>
                             <th>Delete</th>

                           </tr>
                         </thead>


                         <tbody>

                           <?php foreach ($alltournament as $tour): ?>
                             <tr>
                               <td>{{$tour->namaTournament}}</td>
                               <td>{{ date('d-M-Y', strtotime($tour->tanggalTournament))}}</td>
                               <td>{{$tour->creator}}</td>
                               <td>{{$tour->status}}</td>
                               <td>{{$tour->point}}</td>
                               <td>{{$tour->tempat}}</td>
                               <td>{{$tour->jenis}}</td>
                               <td>{{$tour->kondisi}}</td>
                               <td>{{ date('H:i:s', strtotime($tour->start))}}</td>
                               <td>{{ date('H:i:s', strtotime($tour->finish))}}</td>
                               <td>{{ date('H:i:s', strtotime($tour->duration))}}</td>
                               <?php if ($tour->creator == Session::get('login')): ?>
                                 <td class=" "><a href="{{Url('/tournamentDosen/edit/'.$tour->id)}}"><button type="button" class="btn btn-warning">Update</button></a></td>
                                 <td class=" "><a href="{{Url('/tournamentDosen/delete/'.$tour->id)}}"><button type="button" class="btn btn-danger">Delete</button></a></td>
                               <?php else: ?>
                                 <td></td>
                                 <td></td>
                               <?php endif; ?>

                             </tr>
                           <?php endforeach; ?>


                         </tbody>
                       </table>
                     </form>
                     @if ($errors->any())
                     <div class="alert alert-danger alert-dismissible fade in" role="alert">
                         <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">×</span>
                         </button>
                               @foreach ($errors->all() as $error)
                                   {{ $error }}
                               @endforeach
                       </div>
                   @endif

                     @if(Session::has('createTournament'))
                     <div class="alert alert-success alert-dismissible fade in" role="alert">
                       <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">×</span>
                       </button>
                       {{Session::get('createTournament')}}
                     </div>
                     @endif

                     @if(Session::has('deleteTournament'))
                     <div class="alert alert-danger alert-dismissible fade in" role="alert">
                       <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">×</span>
                       </button>
                       {{Session::get('deleteTournament')}}
                     </div>
                     @endif


                  </div>

                  <div role="tabpanel" class="tab-pane fade" id="tab_content2" aria-labelledby="profile-tab">

                    {!! Form::open(['method' => 'POST' , 'action' => ['tournamentDosenController@create'],'class' =>"form-horizontal form-label-left" ,"novalidate",'files'=>true ,'enctype'=> "multipart/form-data"] ) !!}
                    <div class="item form-group">
                      <label class="control-label col-md-3 col-sm-3 col-xs-12" for="namaTournament">Nama Tournament<span class="required">*</span>
                      </label>
                      <div class="col-md-6 col-sm-6 col-xs-12">
                        <input id="namaTournament" class="form-control col-md-7 col-xs-12" name="namaTournament" placeholder="" required="required" type="text" >
                      </div>
                    </div>
                    <div class="item form-group">
                      <label class="control-label col-md-3 col-sm-3 col-xs-12" for="tanggalTournament">Tanggal Tournament <span class="required">*</span>
                      </label>
                      <div class="col-md-6 col-sm-6 col-xs-12">
                          <div class='input-group date' id='myDatepicker2'>
                            <input type='text' id="tanggalTournament" name="tanggalTournament" placeholder="Day-Month-Year" class="form-control" required="required"  />
                            <span class="input-group-addon">
                               <span class="glyphicon glyphicon-calendar"></span>
                            </span>
                          </div>
                      </div>
                    </div>
                    <div class="item form-group">
                      <label class="control-label col-md-3 col-sm-3 col-xs-12" for="status">Status Tournament <span class="required">*</span>
                      </label>
                      <div class="col-md-6 col-sm-6 col-xs-12">
                        <select class="form-control" required="required" id="status" name="status">
                            <option value="free" selected>Free</option>
                            <option value="paid">Paid</option>
                        </select>
                      </div>
                    </div>
                    <div class="item form-group">
                      <label class="control-label col-md-3 col-sm-3 col-xs-12" for="jenis">Jenis<span class="required">*</span>
                      </label>
                      <div class="col-md-6 col-sm-6 col-xs-12">
                        <select class="form-control" required="required" id="jenis" name="jenis">
                            <option value="solo" selected>Solo (Perseorangan)</option>
                            <option value="team">Team (Berkelompok)</option>
                        </select>
                      </div>
                    </div>
                    <div class="item form-group">
                      <label class="control-label col-md-3 col-sm-3 col-xs-12" for="tempat">Tempat <span class="required">*</span>
                      </label>
                      <div class="col-md-6 col-sm-6 col-xs-12">
                        <input type="text" id="tempat" name="tempat" required="required" class="form-control col-md-7 col-xs-12" >
                      </div>
                    </div>
                    <div class="item form-group">
                      <label class="control-label col-md-3 col-sm-3 col-xs-12" for="point">Poin<span class="required">*</span>
                      </label>
                      <div class="col-md-6 col-sm-6 col-xs-12">
                        <input type="number" id="point" name="point" required="required" placeholder="" class="form-control col-md-7 col-xs-12" min="0" max="1000" >
                      </div>
                    </div>
                    <div class="item form-group">
                      <label class="control-label col-md-3 col-sm-3 col-xs-12" for="gambar">Gambar<span class="required">*</span>
                      </label>
                      <div class="col-md-6 col-sm-6 col-xs-12">
                        <input id="gambar" type="file" name="gambar" required="required" class="optional form-control col-md-7 col-xs-12" >
                      </div>
                    </div>

                    <div class="item form-group">
                      <label class="control-label col-md-3 col-sm-3 col-xs-12" for="start">Start Time<span class="required">*</span>
                      </label>
                      <div class="col-md-6 col-sm-6 col-xs-12">
                        <div class="form-group">
                          <div class='input-group date' id='datetimepicker6'>
                                <input type='text' id="start" name="start" placeholder="Month-Day-Year" class="form-control" required="required"  />
                            <span class="input-group-addon">
                               <span class="glyphicon glyphicon-calendar"></span>
                            </span>
                          </div>
                        </div>
                      </div>
                    </div>

                    <div class="item form-group">
                      <label class="control-label col-md-3 col-sm-3 col-xs-12" for="finish">Finish Time<span class="required">*</span>
                      </label>
                      <div class="col-md-6 col-sm-6 col-xs-12">
                        <div class="form-group">
                          <div class='input-group date' id='datetimepicker7'>
                                <input type='text' id="finish" name="finish" placeholder="Month-Day-Year" class="form-control" required="required"  />
                            <span class="input-group-addon">
                               <span class="glyphicon glyphicon-calendar"></span>
                            </span>
                          </div>
                        </div>
                      </div>
                    </div>

                    <div class="item form-group">
                      <label class="control-label col-md-3 col-sm-3 col-xs-12" for="duration"> Duration <span class="required">*</span>
                      </label>
                      <div class="col-md-6 col-sm-6 col-xs-12">
                        <div class="form-group">
                          <div class='input-group date' id='myDatepicker3'>
                                <input type='text' id="duration" name="duration" placeholder="Jam:Menit:Detik" class="form-control" required="required" />
                            <span class="input-group-addon">
                               <span class="glyphicon glyphicon-calendar"></span>
                            </span>
                          </div>
                        </div>
                      </div>
                    </div>

                    <div class="item form-group">
                      <label class="control-label col-md-3 col-sm-3 col-xs-12" for="namaMK">Mata Kuliah <span class="required">*</span>
                      </label>
                      <div class="col-md-6 col-sm-6 col-xs-12">
                        <select class="form-control" required="required" id="namaMK" name="namaMK">
                          <option></option>
                          <optgroup label="Nama Mata Kuliah">
                          <?php foreach ($matkul as $mk): ?>
                              <option value="{{$mk->namaMK}}">  {{$mk->kodeMK}} - {{$mk->namaMK}} - SKS({{$mk->sks}}) - Semester({{$mk->semester}}) </option>
                          <?php endforeach; ?>
                          </optgroup>
                        </select>
                      </div>
                    </div>

                    <div class="item form-group">
                      <label class="control-label col-md-3 col-sm-3 col-xs-12" for="banksoal">Bank Soal <span class="required">*</span>
                      </label>
                      <div class="col-md-6 col-sm-6 col-xs-12">
                        <select class="form-control" required="required" id="banksoal" name="banksoal">
                          <option></option>
                          <optgroup label="Kumpulan Soal">
                          <?php foreach ($banksoal as $bank): ?>
                              <option value="{{$bank->id}}">  {{$bank->namaSoal}} - {{$bank->tipeSoal}} - Butir Soal({{$bank->jumlahSoal}}) - Tahun Terbit({{date("Y", strtotime($bank->tahunTerbit))}}) </option>
                          <?php endforeach; ?>
                          </optgroup>
                        </select>
                      </div>
                    </div>

                    <div class="item form-group">
                      <label class="control-label col-md-3 col-sm-3 col-xs-12" for="about">About<span class="required">*</span>
                      </label>
                      <div class="col-md-6 col-sm-6 col-xs-12">
                        <textarea id="about" required="required" name="about" class="form-control col-md-7 col-xs-12" rows="5"></textarea>
                      </div>
                    </div>

                    <div class="ln_solid"></div>
                    <div class="form-group">
                      <div class="col-md-6 col-md-offset-3">
                        <div align="center">
                          <button type="submit" class="btn btn-primary">Cancel</button>
                          <button id="send" type="submit" class="btn btn-success">Submit</button>
                        </div>
                      </div>
                    </div>
                    {{csrf_field()}}
                    {!! Form::close() !!}



                  </div>



                </div>
              </div>




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
<script src="{{asset('vendors/jquery/dist/jquery.min.js')}}"></script>
<!-- Bootstrap -->
<script src="{{asset('vendors/bootstrap/dist/js/bootstrap.min.js')}}"></script>
<!-- FastClick -->
<script src="{{asset('vendors/fastclick/lib/fastclick.js')}}"></script>
<!-- NProgress -->
<script src="{{asset('vendors/nprogress/nprogress.js')}}"></script>
<!-- bootstrap-daterangepicker -->
<script src="{{asset('vendors/moment/min/moment.min.js')}}"></script>
<script src="{{asset('vendors/bootstrap-daterangepicker/daterangepicker.js')}}"></script>
<!-- bootstrap-datetimepicker -->
<script src="{{asset('vendors/bootstrap-datetimepicker/build/js/bootstrap-datetimepicker.min.js')}}"></script>
<!-- validator -->
<script src="{{asset('vendors/validator/validator.js')}}"></script>
<!-- Datatables -->
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

<!-- Custom Theme Scripts -->
<script src="{{asset('vendors/build/js/custom.min.js')}}"></script>
<script>
    $('#myDatepicker').datetimepicker({
        format: 'DD-MMM-YYYY HH:mm:ss '
    });

    $('#myDatepicker2').datetimepicker({
        format: 'DD-MMM-YYYY'
    });

    $('#myDatepicker3').datetimepicker({
        format: 'HH:mm:ss '
    });

    $('#myDatepicker4').datetimepicker({
        ignoreReadonly: true,
        allowInputToggle: true
    });

    $('#datetimepicker6').datetimepicker();

    $('#datetimepicker7').datetimepicker({
        useCurrent: false
    });

    $("#myDatepicker2").on("dp.change", function(e) {
        $('#datetimepicker6').data("DateTimePicker").minDate(e.date);
    });

    $("#datetimepicker6").on("dp.change", function(e) {
        $('#datetimepicker7').data("DateTimePicker").minDate(e.date);
    });

    $("#datetimepicker7").on("dp.change", function(e) {
        $('#datetimepicker6').data("DateTimePicker").maxDate(e.date);
    });


</script>
@endsection
  </body>
</html>
