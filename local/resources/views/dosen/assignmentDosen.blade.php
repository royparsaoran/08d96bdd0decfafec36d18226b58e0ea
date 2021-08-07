@extends('layouts.dosen')

@section('css')
<link href="//cdnjs.cloudflare.com/ajax/libs/x-editable/1.5.0/bootstrap3-editable/css/bootstrap-editable.css"
  rel="stylesheet" />
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

<!-- bootstrap-datetimepicker -->
<link href="{{URL::asset('vendors/bootstrap-datetimepicker/build/css/bootstrap-datetimepicker.css')}}" rel="stylesheet">

<!-- bootstrap-datetimepicker -->
<script src="{{asset('vendors/bootstrap-datetimepicker/build/js/bootstrap-datetimepicker.min.js')}}"></script>
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
            {{-- <!-- row --> --}}
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
            <form action="{{ URL::asset('assignmentDosen/selectMK') }}" method="post">
              <label for="matakuliah" class="h4">Courses :</label>
              <select name="matakuliah" class="bg-primary form-control-static " id="matakuliah">
                <?php foreach($matakuliah as $mk){ ?>
                <option value="{{ $mk->idMasterDKBS }}">{{$mk->kodeMK.' - '.$mk->namaMK.' - '.$mk->kelas }}</option>
                <?php } ?>
              </select>
              {{ csrf_field() }}
              <button type="submit" class="btn-primary btn btn-round"> OK </button>
            </form>

            <?php if (!empty(Session::get('pertemuan'))) { ?>
			<div style="background-color: #2a3f54">
				<h1 style="text-align: center ;color:white">{{ Session::get('matakuliah')->kodeMK.' - '.Session::get('matakuliah')->namaMK.' - '.Session::get('matakuliah')->kelas }}</h2>
			</div>
            <form method="post" enctype="multipart/form-data">
              <label for="pertemuan" class="h4">Classwork</label>
              <select class="form-control" name="pertemuan" id="pertemuan" required>

                <option value="" selected disabled>-- Select --</option>
                <?php foreach(Session::get('pertemuan') as $p){ ?>
                <option value="{{ $p->idPertemuan }}">{{ $p->namaPertemuan }}</option>
                <?php  } ?>

              </select>
              <label for="#title" class="h4">Title </label>
              <input type="text" name="title" class="form-control" id="title" required>
              <label for="#instruction" class="h4">Instruction </label>
              <textarea class="form-control" name="instruction" rows="5" id="instruction"></textarea>
              <br>

              <div class="item form-group">
                <div class="col-md-6 col-sm-6 col-xs-6">
                  <div class="form-group">
                    <div class="input-group">
                      <label for="file" class="h4">Insert File </label>
                      <input type="file" name="file" class="form-control" id="file">
                    </div>
                  </div>
                </div>
                <div class="col-md-6 col-sm-6 col-xs-6">
                  <div class="form-group">
                    <label for="#end" class="h4">Due Date</label>
                    <div class='input-group date' id='end'>
                      <input type='text' id="finish" name="finish" placeholder="Year-Month-Day" class="form-control"
                        value="" />
                      <span class="input-group-addon">
                        <span class="glyphicon glyphicon-calendar"></span>
                      </span>
                    </div>
                  </div>
                </div>
              </div>

              <button type="submit" class="btn btn-primary pull-right btn-round"> Submit
                Assignment</span></button>
              {{ csrf_field() }}
            </form>
            <div class="alert alert-warning fade in">
              Note : Max Upload File Only One & Max Size File : 2 Megabyte
            </div>
            <hr>
            <h1> Assignment </h1>
            <table class="table table-hover table-striped" style="table-layout:;" id="datatable">
              <thead class="bg-primary">
                <tr>
                  <th>Classwork</th>
                  <th>
                    Title
                  </th>
                  <th>
                    Instruction
                  </th>
                  <th>
                    Created by
                  </th>
                  <th>
                    Created at
                  </th>
                  <th>
                    Valid Until
                  </th>
                  <th>Problem Item</th>
                  <th>Grade Detail</th>

                </tr>
              </thead>

              <?php
              $assignment = SESSION::GET('assignment');
              foreach ($assignment as $assign) {    ?>
              <tr>
                <td>{{ $assign->namaPertemuan }}</td>
                <td>{{ $assign->title }}</td>
                <td>{{ $assign->instruction }}</td>
                <td>{{ $assign->namaDosen }}</td>
                <td>{{ date('d/M/Y H:i:s', strtotime( $assign->timestamp))}}</td>
                <td>{{ date('d/M/Y H:i:s', strtotime( $assign->valid_end))}}</td>
                <td>
                  <?php if(!empty($assign->file)){ ?>
                  <a href="{{ URL::asset('files/forum/'.$assign->file) }}" download><button
                      class="btn btn-primary btn-round"><i class="fa fa-download"></i></button></a> <a
                    href="{{ URL::asset('files/forum/'.$assign->file) }}" target="_blank"><button
                      class="btn btn-light btn-round">Open</button></a>
                  <?php } ?>
                <td><a href="{{ url('assignmentDosen/detail/'.$assign->id) }}"><button
                      class="btn btn-primary btn-round">See Detail</button></a></td>
              </tr>
              <?php }  ?>
            </table>
            <hr>
            <h1>Submission</h1>
            <table class="table table-hover table-striped" id="datatable2">
              <thead class="bg-primary">
                <tr>
                  <th>
                    NRP
                  </th>
                  <th>Name</th>
                  <th>
                    Classwork
                  </th>
                  <th>Title Assignment</th>
                  <th>
                    Submit At
                  </th>
                  <th>
                    Submission File
                  </th>
                  <th>
                    URL
                  </th>
                  <th>
                    Grade
                  </th>
                  <th>
                    Private Comment
                  </th>
                </tr>
              </thead>

              <?php
               $submission = SESSION::GET('submission');
              foreach($submission  as $sub){ ?>
              <tr>
                <td>{{ $sub->nrp }}</td>
                <td>{{ $sub->namaMhs }}</td>
                <td>{{ $sub->namaPertemuan }}</td>
                <td>{{ $sub->title}}</td>
                <td>{{ date('d/M/Y H:i:s', strtotime( $sub->timestamp))}}
                  <?php if($sub->timestamp > $sub->valid_end){ ?><p class="text-danger"> Submitted Late</p> <?php } ?>
                </td>
                <td><?php if(!empty($sub->file)){ ?>
                  <a href="{{ URL::asset('files/forum/'.$sub->file) }}"
                    download="{{$sub->title." - ".$sub->nrp." ".$sub->namaMhs }}"><button
                      class="btn btn-primary btn-round"><i class="fa fa-download"></i></button></a> <a
                    href="{{ URL::asset('files/forum/'.$sub->file) }}" target="_blank"><button
                      class="btn btn-light btn-round">Open</button></a>
                  <?php } ?></td>
                <td>
                  <?php if ($sub->link !=null) { ?>
                  <a href="{{ $sub->link }}"><button class="btn btn-primary btn-round"><b>Link</b></button></a>
                  <?php
                  } ?>
                </td>
                <td> <a href="#" class="nilai" data-toggle="tooltip" data-placement="top" title="Click To Edit" data-type="number" data-pk="{{ $sub->id }}"
                    data-url="{{ URL::asset('assignmentDosen/'.($sub->id ? $sub->id  : "NULL").'/'.$sub->assignmentId.'/'.$sub->nrp) }}"
                    data-title="Masukan Nilai Baru"><?php if($sub->nilai < 0 ){ ?>Not
                    Graded<?php } else{ ?>{{ $sub->nilai }} <?php } ?></a></td>
                <td><a href="{{ asset('/assignmentCommentDosen/'.$sub->assignmentId) }}">See Comment</a></td>
              </tr>
              <?php } ?>
            </table>
            <?php
          } ?>
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
<!-- bootstrap-daterangepicker -->
<script src="{{asset('vendors/moment/min/moment.min.js')}}"></script>
<script src="{{asset('vendors/bootstrap-daterangepicker/daterangepicker.js')}}"></script>
<!-- bootstrap-datetimepicker -->
<script src="{{asset('vendors/bootstrap-datetimepicker/build/js/bootstrap-datetimepicker.min.js')}}"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/x-editable/1.5.0/bootstrap3-editable/js/bootstrap-editable.min.js">
</script>
<script type="text/javascript">


  $(document).ready(function () {
    $('.nilai').editable();
  });
  $.ajaxSetup({
    headers: {
      'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
    }
  });
  $('#end').datetimepicker({
    useCurrent: false,
    minDate: new Date(),
    format: 'YYYY-MM-DD HH:mm:ss '
  });
  $(document).ready(function () {
    $("#datatable2").dataTable({
      // "paging":false,
    });

  });
</script>

@endsection
</body>

</html>
