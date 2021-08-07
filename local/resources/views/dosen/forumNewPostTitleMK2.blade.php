@extends('layouts.dosen')

@section('css')
<!-- Bootstrap 3.3.7 -->
<!-- Bootstrap -->
<link href="{{URL::asset('vendors/bootstrap/dist/css/bootstrap.min.css')}}" rel="stylesheet">
<!-- Font Awesome -->
<link href="{{URL::asset('vendors/font-awesome/css/font-awesome.min.css')}}" rel="stylesheet">
<!-- NProgress -->
<link href="{{URL::asset('vendors/nprogress/nprogress.css')}}" rel="stylesheet">
<!-- iCheck -->
<link href="{{URL::asset('vendors/iCheck/skins/flat/green.css')}}" rel="stylesheet">
<!-- bootstrap-daterangepicker -->
<link href="{{URL::asset('vendors/bootstrap-daterangepicker/daterangepicker.css')}}" rel="stylesheet">
<!-- Animate.css -->
<link href="{{URL::asset('vendors/animate.css/animate.min.css')}}" rel="stylesheet">
<!-- bootstrap-datetimepicker -->
<link href="{{URL::asset('vendors/bootstrap-datetimepicker/build/css/bootstrap-datetimepicker.css')}}" rel="stylesheet">
<!-- Custom Theme Style -->
<link href="{{URL::asset('vendors/build/css/custom.min.css')}}" rel="stylesheet">

<!-- Datatables -->
<link href="{{URL::asset('vendors/datatables.net-bs/css/dataTables.bootstrap.min.css')}}" rel="stylesheet">
<link href="{{URL::asset('vendors/datatables.net-buttons-bs/css/buttons.bootstrap.min.css')}}" rel="stylesheet">
<link href="{{URL::asset('vendors/datatables.net-fixedheader-bs/css/fixedHeader.bootstrap.min.css')}}" rel="stylesheet">
<link href="{{URL::asset('vendors/datatables.net-responsive-bs/css/responsive.bootstrap.min.css')}}" rel="stylesheet">
<link href="{{URL::asset('vendors/datatables.net-scroller-bs/css/scroller.bootstrap.min.css')}}" rel="stylesheet">
{{-- CKEDITOR --}}
<script src="{{asset('vendors/ckeditor/ckeditor/ckeditor.js')}}"></script>

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
            <h2>Update Forum Post</h2>
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
            <div class="container my-3">
              <div class="row">
                <div class="col-12">
                  <div class="alert alert-info">
                    <h1 style="Text-align:Center;">
                      <?php if($post != null) : ?>
                      <b> Update Post</b>
                      <?php else :  ?>
                      <b> Create New Post</b>
                      <?php endif; ?>
                    </h1>
                  </div>
                  <form action="" method="POST" enctype="multipart/form-data">
                    <div class="form-group">
                      <h2><b>Title:</b> </h2>
                      <input name="title" type="text" class="form-control" id="usr"
                        placeholder="Give your post a title." required=""
                        value="<?php if($post->title != null): ?>{{ $post->title }} <?php endif; ?>">
                    </div>
                    <hr>
                    <div class="form-group">
                      <textarea name="post" id="textarea1" type="text" class="form-control" rows="5"
                        placeholder="Write your post here" required=""></textarea>
                    </div>
                    <div class="row">
                      <div class="form group col-xs-6"><input type="file" name="img" class="file"
                          value="<?php if($post->img != null): ?>{{ $post->img }} <?php endif; ?>">
                      </div>
                      <div class="form group col-xs-6"> <button type="submit"
                          class="btn btn-primary pull-right btn-round"><i class="fa fa-send-o"></i> Submit</button>
                      </div>
                    </div>
                    <p class="text-danger">Insert File. *Max Size : 2048</p>
                    <div class="item form-group">

                      </label>
                      <div class="col-md-6 col-sm-6 col-xs-12">
                        <div class="form-group">
                          <div class='input-group date' id='start'>
                            <input type='text' id="start" name="start" placeholder="Start Valid Date" class="form-control"
                              value="<?php if($post->valid_start != null): ?>{{ $post->valid_start }} <?php endif; ?>" />
                            <span class="input-group-addon">
                              <span class="glyphicon glyphicon-calendar"></span>
                            </span>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="item form-group">
                      </label>
                      <div class="col-md-6 col-sm-6 col-xs-12">
                        <div class="form-group">
                          <div class='input-group date' id='end'>
                            <input type='text' id="finish" name="finish" placeholder="End Valid Date"
                              class="form-control"
                              value="<?php if($post->valid_end != null): ?>{{ $post->valid_end }} <?php endif; ?>" />
                            <span class="input-group-addon">
                              <span class="glyphicon glyphicon-calendar"></span>
                            </span>
                          </div>
                        </div>
                      </div>
                    </div>
                    {{ csrf_field() }}
                  </form>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <input type="hidden" id="textbody" value="<?php if($post->body != null): ?>{{ $post->body }} <?php endif; ?>">
</div>
<!-- /page content -->
@endsection

@section('js')
<script>
  CKEDITOR.replace('textarea1', {
    customConfig: '/custom/ckeditor_config.js'
  });
  CKEDITOR.editorConfig = function (config) {
    config.toolbarGroups = [{
        name: 'basicstyles',
        groups: ['basicstyles', 'cleanup']
      },
      {
        name: 'paragraph',
        groups: ['list', 'indent', 'blocks', 'align', 'bidi', 'paragraph']
      },
      {
        name: 'links',
        groups: ['links']
      },
      // { name: 'insert', groups: [ 'insert' ] },
      {
        name: 'colors',
        groups: ['colors']
      },
      {
        name: 'styles',
        groups: ['styles']
      },
      {
        name: 'document',
        groups: ['mode', 'document', 'doctools']
      },
      {
        name: 'editing',
        groups: ['find', 'selection', 'spellchecker', 'editing']
      },
      '/',
      '/',
      {
        name: 'forms',
        groups: ['forms']
      },
      {
        name: 'clipboard',
        groups: ['clipboard', 'undo']
      },
      {
        name: 'tools',
        groups: ['tools']
      },
      {
        name: 'others',
        groups: ['others']
      },
      {
        name: 'about',
        groups: ['about']
      }
    ];

    config.removeButtons =
      'Source,Save,Templates,NewPage,Preview,Print,CopyFormatting,Cut,Copy,Paste,PasteFromWord,PasteText,Undo,Redo,Find,Replace,SelectAll,Scayt,Form,Checkbox,Radio,TextField,Textarea,Select,Button,ImageButton,HiddenField,NumberedList,BulletedList,Outdent,Indent,Blockquote,CreateDiv,BidiLtr,BidiRtl,Language,Anchor,Flash,Table,HorizontalRule,Iframe,BGColor,About,ShowBlocks,Maximize';
  };
  var textbody = document.getElementById('textbody').value;
CKEDITOR.instances['textarea1'].setData(textbody);
</script>
<!-- jQuery first, then Bootstrap JS -->
<script src="{{asset('vendors/jquery/dist/jquery.min.js')}}" type="text/javascript"></script>
<script src="{{asset('vendors/jquery/dist/jquery.timeago.js')}}" type="text/javascript"></script>
<!-- Bootstrap -->
<script src="{{asset('vendors/bootstrap/dist/js/bootstrap.min.js')}}"></script>
<!-- FastClick -->
<script src="{{asset('vendors/fastclick/lib/fastclick.js')}}"></script>
<!-- NProgress -->
<script src="{{asset('vendors/nprogress/nprogress.js')}}"></script>
<!-- Custom Theme Scripts -->
<script src="{{asset('vendors/build/js/custom.min.js')}}"></script>

<!-- AdminLTE App -->
<script src="{{asset('vendors/dist/js/adminlte.min.js')}}"></script>
<!-- AdminLTE dashboard demo (This is only for demo purposes) -->
<script src="{{asset('vendors/dist/js/pages/dashboard.js')}}"></script>
<!-- AdminLTE for demo purposes -->
<script src="{{asset('vendors/dist/js/demo.js')}}"></script>
<!-- bootstrap-daterangepicker -->
<script src="{{asset('vendors/moment/min/moment.min.js')}}"></script>
<script src="{{asset('vendors/bootstrap-daterangepicker/daterangepicker.js')}}"></script>
<!-- bootstrap-datetimepicker -->
<script src="{{asset('vendors/bootstrap-datetimepicker/build/js/bootstrap-datetimepicker.min.js')}}"></script>

<script>
  $('#start').datetimepicker({
    format: 'YYYY-MM-DD HH:mm:ss '
  });

  var date = new Date();
  $('#end').datetimepicker({
    useCurrent: false,
          minDate:date.setDate(date.getDate()-1),
      format: 'YYYY-MM-DD HH:mm:ss ',
      ignoreReadonly: false,
  });



  $("#start").on("dp.change", function(e) {
      $('#end').data("DateTimePicker").minDate(e.date);
  });

  $("#end").on("dp.change", function(e) {
      $('#start').data("DateTimePicker").maxDate(e.date);
  });


</script>
@endsection
</body>

</html>
