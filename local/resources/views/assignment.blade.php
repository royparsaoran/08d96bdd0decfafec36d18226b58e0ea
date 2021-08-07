@extends('layouts.master')

@section('css')
<!-- Bootstrap -->
<link href="{{URL::asset('vendors/bootstrap/dist/css/bootstrap.min.css')}}" rel="stylesheet">
<!-- Font Awesome -->
<link href="{{URL::asset('vendors/font-awesome/css/font-awesome.min.css')}}" rel="stylesheet">
<!-- NProgress -->
<link href="{{URL::asset('vendors/nprogress/nprogress.css')}}" rel="stylesheet">
<!-- iCheck -->
<link href="{{URL::asset('vendors/iCheck/skins/flat/green.css')}}" rel="stylesheet">

<!-- Custom Theme Style -->
<link href="{{URL::asset('vendors/build/css/custom.min.css')}}" rel="stylesheet">
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
        <h3>Assignment</h3>
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
            </ul>
            <div class="clearfix"></div>
          </div>
          <div class="x_content">
            @if(session()->has('success'))
            <div class="alert alert-success alert-dismissible fade in">
              {{ session()->get('success') }}
              <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
            </div>
            @endif
            @if(session()->has('fail'))
            <div class="alert alert-danger alert-dismissible fade in">
              {{ session()->get('fail') }}
              <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
            </div>
            @endif
            @if (count($errors) > 0)
            <div class="alert alert-danger">
              <ul>
                @foreach ($errors->all() as $error)
                <li>{{ $error }}</li>
                @endforeach
              </ul>
            </div>
            @endif
            {{-- <!-- row --> --}}
            <form action="{{ URL::asset('assignment/selectMK') }}" method="post">
              <label for="matakuliah" class="h4">Courses :</label>
              <select name="matakuliah" class="bg-primary form-control-static " id="matakuliah">
                <?php foreach($matakuliah as $mk){ ?>
                <option value="{{ $mk->idMasterDKBS }}">{{$mk->kodeMK.' - '.$mk->namaMK.' - '.$mk->kelas }}</option>
                <?php } ?>
              </select>
              {{ csrf_field() }}
              <button type="submit" class="btn-primary btn btn-round"> OK </button>
            </form>
            <?php
            $assignment = SESSION::GET('assignment');
            if(!empty($assignment)) {?>
            <p class="h2" style="margin-left: 30%;">
              <b>{{ Session::get('matakuliah')->kodeMK.' - '.Session::get('matakuliah')->namaMK.' - '.Session::get('matakuliah')->kelas }}</b>
            </p>
            <h1> Assignment </h1>
            <table class="table table-hover table-striped" id="datatable">
              <thead class="bg-primary">
                <tr>
                  <th>
                    Classwork
                  </th>
                  <th>
                    Title
                  </th>
                  <th>
                    Instruction
                  </th>

                  <th>
                    Assignment Created at
                  </th>
                  <th>Problem Item</th>
                  <th>Status</th>
                  <th>Grade</th>
                  <th>Private Comment</th>
                </tr>
              </thead>
              <?php foreach ($assignment as $assign) {    ?>
              <tr>
                <td>{{ $assign->namaPertemuan}}</td>
                <td>{{ $assign->title }}</td>
                <td>{{ $assign->instruction }}</td>
                <td>{{ date('d/M/Y H:i:s', strtotime( $assign->timestamp))}}</td>
                <td>
                  <?php if(!empty($assign->file)){ ?>
                  <a href="{{ URL::asset('files/forum/'.$assign->file) }}" download="{{ $assign->title }}"><button
                      class="btn btn-primary btn-round"><i class=" fa fa-download"></i></button></a> <a
                    href="{{ URL::asset('files/forum/'.$assign->file) }}" target="_blank"><button
                      class="btn btn-light">Open</button></a>
                  <?php } ?>
                </td>
                <td>
                  <?php
                  $check = DB::table('submission')
                  ->select('*','submission.*')
                  ->leftjoin('assignment','submission.assignmentId','assignment.id')
                  ->where('assignment.id',$assign->id)
                  ->where('submission.createdby',$login)
                  ->first();
                  if (isset($check)) { ?>
                  <p><a href="">Turn In</a> </p>
                  <?php
                 date_default_timezone_set('Asia/Jakarta');
                 $timezone = date('Y-m-d H:i:s', time()); ?>
                  <?php if ($assign->valid_end > $timezone) { ?>
                  <form action="{{ asset('assignment/editSubmission/'.$check->id) }}" method="post"
                    enctype="multipart/form-data">
                    <input type="text" class="form-control" placeholder="If You Need Link.." name="link"> <br><br>
                    <label for="file_{{ $assign->id }}" class="btn btn-primary btn-round"> <i class="fa fa-upload"></i>
                    </label>
                    <input type="file" style="display: none;" name="file" id="file_{{ $assign->id }}">
                    <input type="hidden" name="assignId" value="{{ $check->id }}">
                    <button type="submit" class="btn btn-warning btn-round">Change Submission</button>
                    {{ csrf_field() }}
                  </form>
                  <?php } ?>
                  <?php } else{ ?>
                  <form action="" method="post" enctype="multipart/form-data">
                    <input type="text" class="form-control" placeholder="If You Need Link.." name="link"> <br><br>
                    <label for="file_{{ $assign->id }}" class="btn btn-primary btn-round"> <i class="fa fa-upload"></i>
                    </label>
                    <input type="file" style="display: none;" name="file" id="file_{{ $assign->id }}">
                    <input type="hidden" name="id" value="{{ $assign->id }}">
                    <button type="submit" class="btn btn-warning btn-round">Turn In</button>
                    {{ csrf_field() }}
                  </form>
                  <?php }   ?>
                  <p class="h5 text-danger">Due Date : {{date('d/M/Y H:i:s', strtotime(  $assign->valid_end ))}}</p>
                </td>
                <td>
                  <?php if(!empty($check)){ ?>
                  <?php if($check->nilai <0) { ?>
                  Not Graded
                  <?php } else { ?>
                  <b>{{$check->nilai}}</b>
                  <?php } ?><?php } ?>
                </td>
                <td><a href="{{asset('/assignmentComment/'.$assign->id) }}">See Comment</a></td>
              </tr>
              <?php }  ?>
            </table>
            <hr>
            <div class="alert alert-warning fade in">
              Note : Max Upload File Only One & Max Size File : 2 Megabyte
            </div>
            <?php } ?>
            {{--  --}}
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
<!-- Custom Theme Scripts -->
<script src="{{asset('vendors/build/js/custom.min.js')}}"></script>
{{--  --}}

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
@endsection
</body>

</html>
