@extends('layouts.dosen')

@section('css')
<!-- Bootstrap 3.3.7 -->
<link rel="stylesheet" href="{{ URL::asset('vendors/bower_components/bootstrap/dist/css/bootstrap.min.css') }}">
<!-- Font Awesome -->
<link rel="stylesheet" href="
{{ URL::asset('vendors/bower_components/font-awesome/css/font-awesome.min.css') }}">


<!-- Custom Theme Style -->
<link href="
{{ URL::asset('vendors/build/css/custom.min.css') }}" rel="stylesheet">

<style>
  /* Hiding the checkbox, but allowing it to be focused */
  .badgebox {
    opacity: 0;
  }

  .badgebox+.badge {
    /* Move the check mark away when unchecked */
    text-indent: -999999px;
    /* Makes the badge's width stay the same checked and unchecked */
    width: 27px;

  }


  .badgebox:focus+.badge {
    /* Set something to make the badge looks focused */
    /* This really depends on the application, in my case it was: */

    /* Adding a light border */
    box-shadow: inset 0px 0px 5px;
    /* Taking the difference out of the padding */
  }

  .badgebox:checked+.badge {
    /* Move the check mark back when checked */
    text-indent: 0;
  }
</style>
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
                  <form action="forumNewPost" method="POST" enctype="multipart/form-data">
                    <div class="form-group">
                      <h2><b>Title:</b> </h2>
                      <input name="title" type="text" class="form-control" id="usr"
                        placeholder="Give your post a title." required="">
                    </div>
                    <hr>
                    <div>
                      <h2><b>Topics:</b> </h2>
                      <?php foreach ($topics as $to):if($to->status==1){ ?>

                      <label for="default.{{ $to->topic_id }}" class="btn btn-primary btn-round">{{ $to->title }} <input
                          name="topic[]" type="checkbox" id="default.{{ $to->topic_id }}" class="badgebox"
                          value={{$to->topic_id}}><span class="badge">&check;</span></label>

                      <?php }endforeach; ?>
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
