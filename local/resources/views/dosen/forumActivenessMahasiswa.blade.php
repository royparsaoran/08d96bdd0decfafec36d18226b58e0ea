@extends('layouts.dosen')

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
        <h3>Forum</h3>
      </div>
    </div>

    <div class="clearfix"></div>

    <div class="row">
      <div class="col-md-12 col-sm-12 col-xs-12">
        <div class="x_panel">
          <div class="x_title">
            <h2>
              {{ $title->title }}
            </h2>
            <ul class="nav navbar-right panel_toolbox">
              <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
              </li>

            </ul>
            <div class="clearfix"></div>
          </div>
          <div class="x_content">
            {{-- <!-- row --> --}}
            <table id="datatable-buttons" class="table table-bordered table-striped" style="table-layout: fixed;">
              <thead class="bg-primary">
                <th>NRP/NIK</th>
                <th>NAMA</th>
                <th>COMMENT</th>
                <th>REPLY</th>
                {{-- <th></th> --}}
              </thead>
              <?php foreach ($data as $dt): ?>
              <tr>
                <td>
                  <b>
                    <a
                      href="{{ URL::asset('forumActivenessDetail').'/'.$title->post_id.'/'.$dt->createdby }}">{{ $dt->createdby }}</a>
                  </b>
                </td>
                <?php $nama = DB::table('dosen')
                ->select('namaDosen as NAMA')
                ->where('dosen.nik',$dt->createdby)
                ->first();
                if($nama==null){
                  $nama = DB::table('mahasiswa')
                ->select('namaMhs as NAMA')
                ->where('mahasiswa.nrp',$dt->createdby)
                ->first();
                } ?>
                <td> {{ $nama->NAMA }} </td>
                <td>
                  <?php $comment= DB::table('forumcomment')
                  ->selectRAW('COUNT(forumcomment.comment_id) as countcomment')
                  ->where('forumcomment.createdby',$dt->createdby)
                  ->where('forumcomment.status',1)
                  ->where('forumcomment.post_id',$title->post_id)
                  ->first(); ?>
                  {{ $comment->countcomment}}
                </td>
                <?php
                $reply= DB::table('forumreply')
                  ->selectRAW('COUNT(forumreply.reply_id) as countreply')
                  ->where('forumreply.createdby',$dt->createdby)
                  ->where('forumreply.status',1)
                  ->join('forumcomment','forumcomment.comment_id','forumreply.comment_id')
                  ->where('forumcomment.status',1)
                  ->where('forumcomment.post_id',$title->post_id)
                  ->first();
                   ?>
                <td>{{ $reply->countreply}}</td>
              </tr>
              <?php endforeach; ?>
            </table>
            <hr>
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
<script>
  $(document).ready( function () {
      $("#datatable2-buttons").dataTable( {
        dom: "Bfrtip",
                buttons: [{
                        extend: "copy",
                        className: "btn-sm"
                    },
                    {
                        extend: "csv",
                        className: "btn-sm"
                    },
                    {
                        extend: "excel",
                        className: "btn-sm"
                    },
                    {
                        extend: "pdfHtml5",
                        className: "btn-sm"
                    },
                    {
                        extend: "print",
                        className: "btn-sm"
                    },
                ],
                responsive: true
      } );
  } );
</script>
@endsection
</body>

</html>
