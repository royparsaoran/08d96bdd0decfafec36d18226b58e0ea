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
<link href="{{URL::asset('vendors/datatables.net-bs/css/dataTables.bootstrap.min.css')}}" rel="stylesheet">
<link href="{{URL::asset('vendors/datatables.net-buttons-bs/css/buttons.bootstrap.min.css')}}" rel="stylesheet">
<link href="{{URL::asset('vendors/datatables.net-fixedheader-bs/css/fixedHeader.bootstrap.min.css')}}" rel="stylesheet">
<link href="{{URL::asset('vendors/datatables.net-responsive-bs/css/responsive.bootstrap.min.css')}}" rel="stylesheet">
<link href="{{URL::asset('vendors/datatables.net-scroller-bs/css/scroller.bootstrap.min.css')}}" rel="stylesheet">
{{-- CKEDITOR --}}
<script src="{{asset('vendors/ckeditor/ckeditor/ckeditor.js')}}"></script>
<!-- Datatables -->
<link href="{{URL::asset('vendors/datatables.net-bs/css/dataTables.bootstrap.min.css')}}" rel="stylesheet">
<link href="{{URL::asset('vendors/datatables.net-buttons-bs/css/buttons.bootstrap.min.css')}}" rel="stylesheet">
<link href="{{URL::asset('vendors/datatables.net-fixedheader-bs/css/fixedHeader.bootstrap.min.css')}}" rel="stylesheet">
<link href="{{URL::asset('vendors/datatables.net-responsive-bs/css/responsive.bootstrap.min.css')}}" rel="stylesheet">
<link href="{{URL::asset('vendors/datatables.net-scroller-bs/css/scroller.bootstrap.min.css')}}" rel="stylesheet">
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

  .btn span.glyphicon {
    opacity: 0;
  }

  .btn.active span.glyphicon {
    opacity: 1;
  }

  .margincheckbox {
    margin-top: -1.5%;
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

          {{-- Title End --}}
          {{-- Body Start --}}
          <form class="form-group" method="POST" enctype="multipart/form-data">
            <table class="table display table-bordred table-striped  table-hover" id="datatable">
              <p class="bg-primary">
                <thead>
                  <tr class="bg-primary">
                    <th scope="col">NRP</th>
                    <th scope="col">Nama</th>
                    <th scope="col">Kelas : </th>
                    <th scope="col">Select</th>
                  </tr>
                </thead>
              </p>
              <tbody>
                <?php foreach ($mahasiswa as $m) : ?>
                <tr>
                  <td>{{$m->nrp}}</td>
                  <td>{{$m->namaMhs}}</td>
                  <td>{{ $m->kelas }}</td>
                  <td>
                    {{-- <div class="btn-group margincheckbox" data-toggle="buttons">
                      <label class="btn btn-primary " class="option">
                        <span class="glyphicon glyphicon-ok"></span>
                        <input type="checkbox"  name="list[]" value="{{$m->nrp}}" autocomplete="off">
                      </label>
                    </div> --}}
                    <input type="checkbox"  name="list[]" value="{{$m->nrp}}" autocomplete="off">
                  </td>
                </tr>
                <?php endforeach; ?>
              </tbody>
              <tfoot>
                <tr class="bg-primary">
                  <th colspan="3" style="text-align:center">Select All </th>
                  <th>
                    {{-- <div class="btn-group margincheckbox" data-toggle="buttons">
                      <label class="btn btn-info " >
                        <span class="glyphicon glyphicon-ok"></span>
                        <input type="checkbox"  value="">
                      </label>
                    </div> --}}
                    <input type="checkbox" id="selectAll"  value="">
                  </th>
                </tr>
              </tfoot>
            </table>
            {{-- Body End --}}

            <hr>
            <h4><b>Comment:</b></h4>


            <textarea name="body" id="textarea1" type="text" class="form-control" rows="5"
              placeholder="Write your comment here" required=""></textarea>
            <br>
            <div class="row">
              <div class="form group col-xs-6"><input type="file" name="img" class="file" value="Chose Image"></div>
              <div class="form group col-xs-6"> <button type="submit" class="btn btn-primary pull-right"><i
                    class="fa fa-send-o"></i> Submit</button></div>
            </div>

            <p class="text-danger">Insert. *Max Size : 2 Megabyte</p>

            {{-- <button type="reset" class="tn btn-danger">Reset</button> --}}

            {{ csrf_field() }}
          </form>

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
<!-- AdminLTE App -->
<script src="{{asset('vendors/dist/js/adminlte.min.js')}}"></script>
<!-- AdminLTE dashboard demo (This is only for demo purposes) -->
<script src="{{asset('vendors/dist/js/pages/dashboard.js')}}"></script>
<!-- AdminLTE for demo purposes -->
<script src="{{asset('vendors/dist/js/demo.js')}}"></script>
<!-- Custom Theme Scripts -->
<script src="{{asset('vendors/build/js/custom.min.js')}}"></script>

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
    "paging": false,
    "orderCellsTop": true,
    initComplete: function () {

            this.api().columns(2).every( function () {
                var column = this;
                var select = $('<select class="bg-white" ><option value=""></option></select>')
                    .appendTo( $(column.header()) )
                    .on( 'change', function () {
                        var val = $.fn.dataTable.util.escapeRegex(
                            $(this).val()
                        );
                        column
                            .search( val ? '^'+val+'$' : '', true, false )
                            .draw();
                    } );

                column.data().unique().sort().each( function ( d, j ) {
                    select.append( '<option value="'+d+'">'+d+'</option>' )
                } );
            } );
        },
} );
// $("#selectAll").click(function(){
//         $("option").prop('checked', $(this).prop('checked'));
//         $("label").addClass("active");
// });
// $("option").click(function() {
//     if (!$("#selectAll").prop("checked")) {
//         $("#selectAll").prop("checked", false);
//         $("label").removeClass("active");
//     }
// });
$("#selectAll").click(function(){
        $("input[type=checkbox]").prop('checked', $(this).prop('checked'));

});
$("input[type=checkbox]").click(function() {
    if (!$(this).prop("checked")) {
        $("#selectAll").prop("checked", false);
    }
});
</script>

@endsection
</body>

</html>
