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

            <div>
              <h1 class="col-lg-6">Submission</h1>
              <p class="pull-right h4 text-danger "><b>- Empty = Tidak Mengumpulkan </b></p>
              <p class="pull-right h4"> <b> Not Graded = Belum Dinilai - </b> </p>
            </div>
            <table id="datatables" class="table table-hover table-striped">
              <thead class="bg-primary">
                <tr>
                  <th>
                    NRP
                  </th>
                  <th>Name</th>

                  <th>
                    Submit At
                  </th>

                  <th>
                    Grade
                  </th>
                </tr>
              </thead>
              <?php
              foreach($submission  as $sub){ ?>
              <tr>
                <td>{{ $sub->nrp }}</td>
                <td>{{ $sub->namaMhs }}</td>
                <?php $submissionn = DB::table('submission')
                ->select('*','submission.*')
                ->join('assignment','submission.assignmentId','assignment.id')
                ->where('submission.createdby',$sub->nrp)
                ->where('assignment.id',$idAssignment)
                ->first();  ?>
                <td>
                  <?php if ( isset($submissionn->timestamp)) {?>
                  {{ date('d/M/Y H:i:s', strtotime( $submissionn->timestamp))}}
                  <?php if($submissionn->timestamp > $submissionn->valid_end){ ?><p class="text-danger"> Submitted Late</p> <?php } ?>
                  <?php
                  } ?>
                </td>

                <td>
                 <?php
                 if(isset($submissionn)){ ?>
                  <a href="#" data-toggle="tooltip" data-placement="top" title="Click To Edit" class="nilai" data-type="number" data-pk="{{ $sub->id }}"
                    data-url="{{ url('assignmentDosen/'.($submissionn->id ? $submissionn->id  : "NULL").'/'.$idAssignment.'/'.$sub->nrp) }}"
                    data-title="Masukan Nilai Baru"><?php if($submissionn->nilai < 0 ){ ?>Not
                    Graded<?php } else{ ?>{{ $submissionn->nilai }} <?php } ?></a>
                    <?php 
                 }else { ?>
                 <a href="#" data-toggle="tooltip" data-placement="top" title="Click To Edit" class="nilai" data-type="number" data-pk="{{ $sub->id }}"
                    data-url="{{ url('assignmentDosen/'."NULL".'/'.$idAssignment.'/'.$sub->nrp) }}"
                    data-title="Masukan Nilai Baru"></a>
                 
                 <?php } ?>
                </td>
              </tr>
              <?php } ?>
            </table>

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
  $(document).ready(function(){
        var table = $('#datatables').DataTable({
        paging:false,
        dom: 'Bfrtip',
            buttons: [    'copy', 'csv', 'excel', 'pdf', 'print'],
    });
    });

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
$(document).ready(function(){
  $('[data-toggle="tooltip"]').tooltip();   
});
</script>

@endsection
</body>

</html>
