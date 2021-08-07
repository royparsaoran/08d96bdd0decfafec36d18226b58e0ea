@extends('layouts.dosen')

@section('css')
<meta charset="utf-8">
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
<link href="{{URL::asset('vendors/datatables.net-bRs/css/dataTables.bootstrap.min.css')}}" rel="stylesheet">
<link href="{{URL::asset('vendors/datatables.net-buttons-bs/css/buttons.bootstrap.min.css')}}" rel="stylesheet">
<link href="{{URL::asset('vendors/datatables.net-fixedheader-bs/css/fixedHeader.bootstrap.min.css')}}" rel="stylesheet">
<link href="{{URL::asset('vendors/datatables.net-responsive-bs/css/responsive.bootstrap.min.css')}}" rel="stylesheet">
<link href="{{URL::asset('vendors/datatables.net-scroller-bs/css/scroller.bootstrap.min.css')}}" rel="stylesheet">

{{-- CKEDITOR --}}
<script src="{{asset('vendors/ckeditor/ckeditor/ckeditor.js')}}"></script>
<style>
  .panelpost {
    border-radius: 25px 25px 25px 25px;
    /* border-radius: 15px 15px 0px 0px; */
    box-shadow: rgba(0, 0, 0, 0.3) 7px 7px 7px;
  }

  .panel {
    border-radius: 25px 25px 25px 25px;
  }

  .btn {
    border-radius: 25px 25px 25px 25px;
  }

  .panel .panel-heading {

    /* fallback for old browsers */
    background: -webkit-linear-gradient(to right, #667eea, #764ba2, #667eea);
    /* Chrome 10-25, Safari 5.1-6 */
    background: linear-gradient(to right, #667eea, #764ba2, #667eea);


    /* border-radius: 15px 15px 0px 0px; */
    border-radius: 25px 25px 25px 25px;
  }

  .media h4 {

    word-wrap: break-word;
  }

  #comment_odd {
    background-color: #fbfffb;
  }

  #comment_even {
    background-color: #fafbff;
  }

  .showreply {
    color: black;
  }

  .showreply:hover {
    color: black;
    text-decoration: underline;
  }

  .panel-shadow {
    box-shadow: rgba(0, 0, 0, 0.3) 7px 7px 7px;
  }

  .panel-white {
    border: 1px solid #dddddd;
  }

  .panel-white .panel-heading {
    color: #333;
    background-color: #fff;
    border-color: #ddd;
  }

  .panel-white .panel-footer {
    background-color: #fff;
    border-color: #ddd;
  }

  .post .post-heading {
    height: 95px;
    padding: 20px 15px;
  }

  .post .post-heading .avatar {
    width: 60px;
    height: 60px;
    display: block;
    margin-right: 15px;
  }

  .post .post-heading .meta .title {
    margin-bottom: 0;
  }

  .post .post-heading .meta .title a {
    color: black;
  }

  .post .post-heading .meta .title a:hover {
    color: #aaaaaa;
  }

  .post .post-heading .meta .time {
    margin-top: 8px;
    color: #999;
  }

  .post .post-image .image {
    width: 100%;
    height: auto;
  }

  .post .post-description {
    margin-left: 2%;
    margin-bottom: 2%;
    /* padding: 15px; */
  }

  .post .post-description p {
    font-size: 14px;
    width: 95%;
    word-wrap: break-word;
    color: black;
  }

  .post .post-description p img {
    max-width: 100%;
    height: 20px;

  }

  .post .post-description .stats {
    margin-top: 20px;
  }

  .post .post-description .stats .stat-item {
    display: inline-block;
    margin-right: 15px;
  }

  .post .post-description .stats .stat-item .icon {
    margin-right: 8px;
  }

  .post .post-footer {
    border-top: 1px solid #ddd;
    padding: 15px;
  }

  .post .post-footer .input-group-addon a {
    color: #454545;
  }

  .post .post-footer .comments-list {
    padding: 0;
    margin-top: 20px;
    list-style-type: none;
  }

  .post .post-footer .comments-list .comment {
    display: block;
    width: 97%;
  }

  .post .post-footer .comments-list .comment .avatar {
    width: 35px;
    height: 35px;
  }

  .post .post-footer .comments-list .comment .comment-heading {
    display: block;
    width: 100%;
  }

  .post .post-footer .comments-list .comment .comment-heading .user {
    font-size: 12px;
    font-weight: bold;
    display: inline;
    margin-top: 0;
    margin-left: 1%;
  }

  .post .post-footer .comments-list .comment .comment-heading .time {
    font-size: 12px;
    color: #aaa;
    margin-top: 0;
    display: inline;

  }

  .post .post-footer .comments-list .comment .comment-body {
    margin-left: 3%;
    word-wrap: break-word;
    width: 97%;
  }

  .comment-body p {
    color: black;
    margin-left: 1%;
  }

  .post .post-footer .comments-list .comment {
    margin-left: 2%;
  }

  .btn-link {
    border: none;
    outline: none;
    background: none;
    cursor: pointer;
    color: #0000EE;
    padding: 0;
    text-decoration: underline;
    font-family: inherit;
    font-size: inherit;
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
    <div class="col-md-12 col-sm-12 col-xs-12" style="background: #e8eaed;">
      <div class="x_panel">
        <div class="x_title">
          <h2>Insert Group Comment</h2>
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
          <h6>Insert For : {{ $mahasiswa }}</h6>
          <hr>
          <form class="form-group" action="{{ URL::asset('insertanothergroup') }}" method="POST" enctype="multipart/form-data">
            <input type="hidden" name="mahasiswa" value="{{ $mahasiswa }}">
            <input type="hidden" name="post_id" value="{{ $post_id }}">
            <textarea name="body" id="textarea1" type="text" class="form-control" rows="5"
              placeholder="Write your comment here" required=""></textarea>
            <br>
            <div class="row">
              <div class="form group col-xs-6"><input type="file" name="img" class="file" value="Chose Image"></div>
              <div class="form group col-xs-6"> <button type="submit" class="btn btn-primary pull-right"><i
                    class="fa fa-send-o"></i> Submit</button>
            </div>
            <p class="text-danger">Insert. *Max Size : 2 Megabyte</p>
            {{ csrf_field() }}
          </form>
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

<script>
  CKEDITOR.replace( 'textarea1', {
    customConfig: '/custom/ckeditor_config.js'
} );CKEDITOR.editorConfig = function( config ) {
	config.toolbarGroups = [
		{ name: 'basicstyles', groups: [ 'basicstyles', 'cleanup' ] },
		{ name: 'paragraph', groups: [ 'list', 'indent', 'blocks', 'align', 'bidi', 'paragraph' ] },
		{ name: 'links', groups: [ 'links' ] },
		{ name: 'insert', groups: [ 'insert' ] },
		{ name: 'colors', groups: [ 'colors' ] },
		{ name: 'styles', groups: [ 'styles' ] },
		{ name: 'document', groups: [ 'mode', 'document', 'doctools' ] },
		{ name: 'editing', groups: [ 'find', 'selection', 'spellchecker', 'editing' ] },
		'/',
		'/',
		{ name: 'forms', groups: [ 'forms' ] },
		{ name: 'clipboard', groups: [ 'clipboard', 'undo' ] },
		{ name: 'tools', groups: [ 'tools' ] },
		{ name: 'others', groups: [ 'others' ] },
		{ name: 'about', groups: [ 'about' ] }
	];

	config.removeButtons = 'Source,Save,Templates,NewPage,Preview,Print,CopyFormatting,Cut,Copy,Paste,PasteFromWord,PasteText,Undo,Redo,Find,Replace,SelectAll,Scayt,Form,Checkbox,Radio,TextField,Textarea,Select,Button,ImageButton,HiddenField,NumberedList,BulletedList,Outdent,Indent,Blockquote,CreateDiv,BidiLtr,BidiRtl,Language,Anchor,Flash,Table,HorizontalRule,Iframe,BGColor,About,ShowBlocks,Maximize';
};
</script>

<!-- AdminLTE App -->
<script src="{{asset('vendors/dist/js/adminlte.min.js')}}"></script>
<!-- AdminLTE dashboard demo (This is only for demo purposes) -->
<script src="{{asset('vendors/dist/js/pages/dashboard.js')}}"></script>
<!-- AdminLTE for demo purposes -->
<script src="{{asset('vendors/dist/js/demo.js')}}"></script>

@endsection
</body>

</html>
