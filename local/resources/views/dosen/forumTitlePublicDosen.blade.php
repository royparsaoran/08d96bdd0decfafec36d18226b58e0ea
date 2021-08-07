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
<style>
  .custab {
    /* border: 2px solid #ccc;
    padding: 5px; */
    box-shadow: 3px 3px 3px #ccc;
    transition: 0.5s;
  }

  .custab:hover {

    border: 2px solid #ccc;
    padding: 5px;
    box-shadow: 5px 5px 5px #ccc;
    transition: 0.5s;
  }

  .headertb {
    color: aliceblue;
    background: #7F7FD5;
    /* fallback for old browsers */
    background: -webkit-linear-gradient(to right, #5FFBF1, #7BA9FF, #5FFBF1);
    /* Chrome 10-25, Safari 5.1-6 */
    background: linear-gradient(to right, #5FFBF1, #7BA9FF, #5FFBF1);
    height: 50px;
    text-align: center;
    margin-bottom: 1%;
    border-radius: 15px 15px 15px 15px;
    -moz-box-shadow: -2px 3px 33px -15px rgba(0, 0, 0, 0.75);
    box-shadow: -2px 3px 33px -15px rgba(0, 0, 0, 0.75);
  }

  /* .dataTables_filter, */
  .dataTables_info {
    display: none;
  }

  .dataTables_length {
    display: none;
  }
</style>
@endsection

@section('content')

<!-- page content -->
<div class="right_col" role="main">
  <div class="page-title">
    <div class="title_left">
      <h3>Forum</h3>
    </div>
  </div>
  <div class="clearfix"></div>

  <div class="row">
    <div class="col-md-12">
      <div class="x_panel">
        <div class="x_title">
          <h2>Forum Umum</h2>
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
          {{--  --}}
          <div class="col-12">
            <span>
              <a href="forumNewPost" class="btn btn-primary btn-round"><b>+</b>
                Create
                Post</a>
              <a href="forumManageTopics" class="btn btn-primary btn-round"><b>+</b>
                Manage
                Topic</a>
            </span>
          </div>
          <div class="headertb">
            <h1> <b>Forum Umum</b></h1>
          </div>
          <table id="datatable" class="table table-hover" style="table-layout: fixed;">

            <thead>
              <tr class="custab active">
                <th scope="col" style="width:5%; " class="info"></th>
                <th scope="col" style="width:45%; " class="info">Title:</th>
                <th scope="col" style="width:10%; " class="info">Comment</th>
                <th scope="col" style="width:15%; " class="info">Last Comment</th>
                <th scope="col" style="width:15%; " class="info">Created by</th>
                <th scope="col" style="width:10%; " class="info">Created at</th>
                <th scope="col" style="width:5%; " class="info"></th>
              </tr>

            </thead>
            <?php foreach ($posts as $to):  ?>
            <tr class="custab active">
              <td style=""> <span class="fa fa-comments" style="font-size:36px"></span></td>
              <td style="">
                <a href="{{URL::asset('forumThreadDosen/'.$to->post_id) }}">
                  <h2 style="word-wrap:break-word;"><b>{{ $to->title }}</b>
                  </h2>
                </a>
              </td>
              <td style=" text-style:center;"> {{ $to->comment}}</td>
              <td style=" ">
                <?php if($to->commenttimestamp>$to->timestamp){ ?>
                <div>{{ date('d/M/Y', strtotime($to->commenttimestamp))}}</div>
                <div>{{ date('H:i:s ', strtotime($to->commenttimestamp))}}</div>
                <?php } else{?>

                <div>{{ date('d/M/Y', strtotime($to->timestamp))}}</div>
                <div>{{ date('H:i:s ', strtotime($to->timestamp))}}</div>
                @php
                }
                @endphp
              </td>
              <td style=" ">{{$to->namaDosen}}
              </td>
              <td style=" ">
                <div>{{ date('d/M/Y', strtotime($to->timestamp))}}</div>
                <div>{{ date('H:i:s ', strtotime($to->timestamp))}}</div>
              </td>
              <?php if($login==$to->createdby) {?>
              {{-- Modal --}}
              <div id="myModal_{{ $to->post_id }}" class="modal fade in">a
                <div class="modal-dialog">
                  <div class="modal-content">
                    <div class="modal-header">
                      <h4>Delete Confirmation</h4>
                    </div>
                    <div class="modal-body">
                      <h4>Are You Sure?</h4>
                    </div>

                    <div class="modal-footer">
                      <button class="btn  btn-danger btn-round" data-dismiss="modal"> Cancel</button>
                      <a href="{{ URL::asset('forumDosen/delete/'.$to->post_id) }}" class="btn btn-primary btn-round">
                        OK</a>
                    </div>

                  </div><!-- /.modal-content -->
                </div><!-- /.modal-dalog -->
              </div><!-- /.modal -->

              <td class="xs"><a data-toggle="modal" href="#myModal_{{ $to->post_id }}" id="alert-demo"
                  name="remove_levels">
                  <span class="glyphicon glyphicon-trash btn-lg btn-round" style="color:red;"></span></td>
              <?php }else{ ?>
              <td class="xs"></td>
              <?php }?>
            </tr>
            <?php  endforeach; ?>
          </table>

          <a type="button" class="btn btn-primary btn-lg pull-left btn-round"
            href="{{ URL::asset('/forumTitleMKDosen') }}">
            <i class="glyphicon glyphicon-chevron-left"></i>Forum Mata Kuliah</a>
          {{--  --}}
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
  $('#datatable').dataTable( {
  "pageLength": 5,
  "language": {
    search: 'Filter',
    searchPlaceholder: 'Keyword...'
},
"dom": '<"top"i>rt<"bottom"flp><"clear">',
} );
</script>
@endsection
</body>

</html>
