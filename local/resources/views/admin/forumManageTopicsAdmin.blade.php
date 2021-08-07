@extends('layouts.admin')

@section('css')
<link href="//cdnjs.cloudflare.com/ajax/libs/x-editable/1.5.0/bootstrap3-editable/css/bootstrap-editable.css"
  rel="stylesheet" />
<meta name="csrf-token" content="{{ csrf_token() }}">
<!-- Bootstrap 3.3.7 -->
<link rel="stylesheet" href="vendors/bower_components/bootstrap/dist/css/bootstrap.min.css">
<!-- Font Awesome -->
<link rel="stylesheet" href="vendors/bower_components/font-awesome/css/font-awesome.min.css">
<!-- Ionicons -->
<link rel="stylesheet" href="vendors/bower_components/Ionicons/css/ionicons.min.css">
<!-- Theme style -->
<link rel="stylesheet" href="vendors/dist/css/AdminLTE.min.css">
<!-- AdminLTE Skins. Choose a skin from the css/skins
  folder instead of downloading all of them to reduce the load. -->
<link rel="stylesheet" href="vendors/dist/css/skins/_all-skins.min.css">
<!-- Custom Theme Style -->
<link href="vendors/build/css/custom.min.css" rel="stylesheet">
<!-- Datatables -->
<link href="{{URL::asset('vendors/datatables.net-bs/css/dataTables.bootstrap.min.css')}}" rel="stylesheet">
<link href="{{URL::asset('vendors/datatables.net-buttons-bs/css/buttons.bootstrap.min.css')}}" rel="stylesheet">
<link href="{{URL::asset('vendors/datatables.net-fixedheader-bs/css/fixedHeader.bootstrap.min.css')}}" rel="stylesheet">
<link href="{{URL::asset('vendors/datatables.net-responsive-bs/css/responsive.bootstrap.min.css')}}" rel="stylesheet">
<link href="{{URL::asset('vendors/datatables.net-scroller-bs/css/scroller.bootstrap.min.css')}}" rel="stylesheet">
<style>
  .trash {
    color: rgb(209, 91, 71);
  }

  .flag {
    color: rgb(248, 148, 6);
  }

  .panel-body {
    padding: 0px;
  }

  .panel-footer .pagination {
    margin: 0;
  }

  .panel .glyphicon,
  .list-group-item .glyphicon {
    margin-right: 5px;
  }

  .panel-body .radio,
  .checkbox {
    display: inline-block;
    margin: 0px;
  }

  .panel-body input[type=checkbox]:checked+label {
    text-decoration: line-through;
    color: rgb(128, 144, 160);
  }

  .list-group-item:hover,
  a.list-group-item:focus {
    text-decoration: none;
    background-color: rgb(245, 245, 245);
  }

  .list-group {
    margin-bottom: 0px;
  }
</style>
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
            <h2>Manage Topics</h2>
            <ul class="nav navbar-right panel_toolbox">
              <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a> </li>
            </ul>
            <div class="clearfix"></div>
          </div>
          <div class="x_content">

            <div class="container">
              <div class="row">
                <div class="col-md">
                  <div class="panel panel-primary">
                    <div class="panel-heading">
                      <span class="glyphicon glyphicon-list"></span>Topic Lists

                    </div>
                    <div class="panel-body">
                      <ul class="list-group">

                        <?php foreach ($topics as $to) :

                      if ($to->status==1) {                              ?>
                        <li class="list-group-item">
                          <label>
                            <a href="#" class="title" data-type="text" data-pk="{{ $to->topic_id }}"
                              data-url="forumManageTopicsAdmin/{{ $to->topic_id }}/edit"
                              data-title="Masukan Title Baru">{{ $to->title }}</a>
                          </label>

                          {{-- <div class="pull-right action-buttons">
                            <a href="forumManageTopicsAdmin/delete/{{ $to->topic_id }}" class="trash"><span
                                class="glyphicon glyphicon-trash"></span></a>
                          </div> --}}

                        <a data-toggle="modal" href="#Modal{{ $to->topic_id }}" class="hover"><span
                          class="glyphicon glyphicon-trash pull-right" style="color:red;"></span></a>
                                   {{-- Modal --}}
                        <div id="Modal{{ $to->topic_id }}" class="modal fade in">
                          <div class="modal-dialog">
                            <div class="modal-content">
                              <div class="modal-header">
                                <h4>Delete Confirmation</h4>
                              </div>
                              <div class="modal-body">
                                <h4>Are You Sure?</h4>
                              </div>

                              <div class="modal-footer">
                                <button class="btn btn-primary" data-dismiss="modal"> Cancel</button>
                                <a href="forumManageTopicsAdmin/delete/{{ $to->topic_id }}"
                                  class="btn btn-danger">
                                  OK</a>
                              </div>

                            </div><!-- /.modal-content -->
                          </div><!-- /.modal-dalog -->
                        </div><!-- /.modal -->
                          <div class="pull-right action-buttons">
                            <form style="display:none;" id="panel{{ $to->topic_id }}"
                              action="forumManageTopicsAdmin/edit/{{ $to->topic_id }}" method="post">
                              {{ csrf_field() }}
                              <input name="title" type="text" value="{{ $to->title }}">
                              <input type="submit" value="Post">
                            </form>
                          </div>
                        </li>
                        <?php }endforeach;?>
                      </ul>
                    </div>
                    <div class="panel-footer">
                      <div class="row">
                        <div class="col-md-6">
                          <h6>
                            Total Count <span class="label label-info">@php echo $total @endphp</span></h6>
                        </div>
                        <div class="col-md">
                          <ul class="pagination pagination-sm pull-right">
                            {{ $topics->links() }}
                          </ul>
                        </div>
                      </div>
                    </div>
                  </div>
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
<!-- jQuery 3 -->
<script src="vendors/bower_components/jquery/dist/jquery.min.js"></script>
<!-- Bootstrap 3.3.7 -->
<script src="vendors/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
<!-- FastClick -->
<script src="vendors/bower_components/fastclick/lib/fastclick.js"></script>
<!-- AdminLTE App -->
<script src="vendors/dist/js/adminlte.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="vendors/dist/js/demo.js"></script>
<!-- Custom Theme Scripts -->
<script src="vendors/build/js/custom.min.js"></script>
{{--  --}}
<script src="//cdnjs.cloudflare.com/ajax/libs/x-editable/1.5.0/bootstrap3-editable/js/bootstrap-editable.min.js">
</script>
<script type="text/javascript">
  $(document).ready(function() {
      $('.title').editable();
      });
      $.ajaxSetup({
      headers: {
        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
      }
      });
</script>
@endsection
</body>

</html>
