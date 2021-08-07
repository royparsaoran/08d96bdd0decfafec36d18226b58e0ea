@extends('layouts.dosen')

@section('css')
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
{{-- CKEDITOR --}}
<script src="vendors/ckeditor/ckeditor/ckeditor.js"></script>

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
            <h2>Insert Forum Post</h2>
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
                    <h1 style="Text-align:Center;"><b>Create New Post</b> </h1>
                  </div>
                  <form action="forumNewPostMK" method="POST" enctype="multipart/form-data">
                    <div class="form-group">
                      <h2><b>Title:</b> </h2>
                      <select name="iddkbs" required="" class="form-control">
                          <option  selected value> -- Select a Title -- </option>
                        <?php foreach($title as $t): ?>
                        <option value="{{$t->semester }}|{{ $t->kodeMK }}">{{ $t->title }}
                        </option>
                        <?php endforeach; ?>
                      </select>
                    </div>
                    <hr>
                    <div class="form-group">
                      <textarea name="post" id="textarea1" type="text" class="form-control" rows="5"
                        placeholder="Write your post here" required=""></textarea>
                    </div>
                    <div class="row">
                      <div class="form group col-xs-6"><input type="file" name="img" class="file" value="Chose Image">
                      </div>
                      <div class="form group col-xs-6"> <button type="submit" class="btn btn-primary pull-right btn-round"><i
                            class="fa fa-send-o"></i> Submit</button></div>
                    </div>
                    <p class="text-danger">Insert. *Max Size : 2 Megabyte</p>
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
</script>
<!-- jQuery first, then Bootstrap JS -->
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.bundle.min.js"></script>
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
@endsection
</body>

</html>
