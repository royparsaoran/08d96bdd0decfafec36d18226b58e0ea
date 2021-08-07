@extends('layouts.master')

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
<style>
  .panelpost {
    border-radius: 25px 25px 25px 25px;
    /* border-radius: 15px 15px 0px 0px; */
    box-shadow: rgba(0, 0, 0, 0.3) 7px 7px 7px;
  }

  .panel {
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

  #comment_important {
    background-color: #ffe3e3;
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
          <h2>Forum Thread</h2>
          <ul class="nav navbar-right panel_toolbox">
            <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
            </li>
          </ul>
          <div class="clearfix"></div>
        </div>
        <div class="x_content">
          <?php if($title->valid_start !==null && $title->valid_end!==null && $title->valid_start != $title->valid_end) { ?>
            <p><b> Valid Date : {{  date('d-F-Y H:i:s', strtotime($title->valid_start)) }} -
                {{  date('d-F-Y H:i:s', strtotime($title->valid_end))  }} </b></p>
            <?php } ?>
          <?php if(count($topics) == 0): ?>
          <div class="navbar ">
            <button class="btn btn-dark btn-round" onclick="openTab('Public')">Comment</button>
            <button class="btn btn-dark btn-round" onclick="openTab('Group')">Group Comment</button>

          </div>
          <?php endif; ?>
          <div id="Public" class="w3-container tab">
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
            <div class="alert alert-danger alert-dismissible fade in">
              <ul>
                @foreach ($errors->all() as $error)
                <li>{{ $error }}</li>
                @endforeach
              </ul>
            </div>
            @endif
            <?php if($page == 1 || $page==null){?>
            <div class="panel panelpost panel-primary">

              <div class="panel-heading">
                <h1 style="color:white;text-align:center;width:100%;word-wrap: break-word;"> <b> {{ $title->title }}
                  </b>
                </h1>
              </div>

              <div class="panel-body">

                <div class="media">
                  <?php if($title->idDKBS == '0'){?> <p>Topics:
                    <?php foreach ($topics as $tp):
                    if($tp->status==1){?>
                    <a href="{{  URL::asset('forumTag/'.$tp->topic_id ) }}" class="btn btn-default btn-round"
                      style="border-radius:12px;">{{$tp->title}}</a>
                    <?php }endforeach;?></p>
                  <?php }?>
                  <div class="post" style="background-color:white;">
                    <div class="post-heading" style="margin-left:-1%">
                      <div class="pull-left image">
                        <img src="{{URL::asset('images/foto/'.$title->foto)}}" class="img-circle avatar"
                          alt="user profile image">
                      </div>
                      <div class="pull-left meta">
                        <div class="title h6">
                          <a href="{{ url('profile/'.$title->nik)  }}"><b>{{ $title->namaDosen }}</b></a>
                        </div>
                        <h6 class="text-muted time">{{ date('H:i:s', strtotime($title->timestamp))}}
                          <b>{{ date('d-F-Y', strtotime($title->timestamp))}}</b></h6>
                      </div>
                    </div>
                  </div>
                  <h4 style="margin-left:15px;">{!! $title->body !!}</h4>
                  @if ($title->img != "")
                  <img src=" {!!  URL::asset('files/forum/'.$title->img)  !!}" alt="" width="40%;">
                  @endif
                </div>
              </div>
            </div>
            <?php }?>
            {{-- Title End --}}
            {{-- Body Start --}}
            <?php $i=0; foreach ($comments as $co) : ?>

            <div class="panel panel-white post panel-shadow" <?php if($co->important == 0): ?>
              id="comment_{{ (++$i % 2 ? "odd" : "even") }}" <?php else: ?> id="comment_important" <?php endif;?>>
              <div class="post-heading">
                <div class="pull-left image">
                  <img src="{{URL::asset('images/foto/'.$co->foto)}}" href="{{asset('profile/'.$co->nrp)}}"
                    class="img-circle avatar" alt="user profile image">
                </div>
                <div class="pull-left meta">
                  <div class="title h6">
                    <a href="{{asset('profile/'.$co->nrp)}}"> <b>{{$co->nama}}</b></a>
                    <?php if($co->idpertemuan != null):
                    $p = DB::table('pertemuan')->where('idPertemuan',$co->idpertemuan)->first(); ?>
                    For Classwork {{ $p->namaPertemuan }}
                    <?php endif; ?>
                  </div>
                  <h6 class="text-muted time">{{ date('H:i:s', strtotime($co->timestamp))}}
                    <b>{{ date('d-F-Y', strtotime($co->timestamp))}}</b>
                    <?php if($co->timestamp > $title->valid_end && $co->valid_start != $title->valid_end && $title->valid_end != 0): ?>
                    <button class="btn btn-danger btn-xs ">*Late</button>
                    <?php endif; ?>
                    <?php if($co->valid_start != $co->valid_end){ ?>
                       Valid Date : <p class="btn btn-warning btn-xs">{{ date('d-F-Y H:i:s', strtotime($co->valid_start))}}</p> <p class="btn btn-warning btn-xs"> {{ date('d-F-Y H:i:s', strtotime($co->valid_end))}}</p>
                    <?php } ?>
                </div>
                <?php if($login==$co->createdby) {?>

                {{-- Modal --}}
                <div id="commentModal_{{$co->comment_id }}" class="modal fade in">
                  <div class="modal-dialog">
                    <div class="modal-content">
                      <div class="modal-header">
                        <h4>Delete Confirmation</h4>
                      </div>
                      <div class="modal-body">
                        <h4>Are You Sure?</h4>
                      </div>

                      <div class="modal-footer">
                        <button class="btn btn-primary btn-round" data-dismiss="modal"> Cancel</button>
                        <a href="{{ URL::asset('/forumThread/delete/'.$co->comment_id)  }}" class="btn btn-danger btn-round">
                          OK</a>
                      </div>

                    </div><!-- /.modal-content -->
                  </div><!-- /.modal-dalog -->
                </div><!-- /.modal -->

                <a data-toggle="modal" href="#commentModal_{{ $co->comment_id }}" class="hover"><span
                    class="glyphicon glyphicon-trash pull-right" style="color:red;"></span></a>
                <?php } ?>
              </div>
              <div class="post-description">
                {!! $co->body !!}
                <?php  if($co->img != "" || pathinfo($co->img, PATHINFO_EXTENSION) != 'jpg' || pathinfo($co->img, PATHINFO_EXTENSION) != 'png' ): ?>
                <a href="{{ URL::asset('files/forum/'.$co->img) }}">{{  $co->img }}</a>
                <?php else: ?>
                <img src=" {!!  URL::asset('files/forum/'.$co->img)  !!}" alt="" width="20%;">
                <?php endif; ?>
              </div>
              <div class="post-footer">
                <?php if($currentdatetime > $co->valid_start && $currentdatetime < $co->valid_end || $co->valid_start == $co->valid_end): ?>
                <form action="{{ URL('/forumThread/reply/'.$co->comment_id) }}" enctype="multipart/form-data"
                  method="POST">
                  <div class="form group col-xs-10">
                    <input type="file" name="file" class="file" value="Chose File">
                  </div>
                  <div class="form group col-xs-2">
                    <label class="pull-right" for="comment_{{ $co->comment_id }}"> Private Reply </label>
                    <input type="checkbox" id="comment_{{ $co->comment_id }}" name="privatereply" class="pull-right"
                    style="margin-right: 2%" value="true"></div>
                  <div class="input-group">
                    <input class="form-control" name="body" placeholder="Reply Comment" type="text">
                    <span class="input-group-addon">
                      <a href="#" onclick="$(this).closest('form').submit()"><i class="fa fa-edit"></i></a>
                      {{ csrf_field() }}
                    </span>
                  </div>
                </form>
                <?php endif; ?>
                <?php
                $replies = DB::table('forumreply')
                ->leftjoin('mahasiswa', 'mahasiswa.nrp', '=', 'forumreply.createdby')
                ->leftjoin('dosen', 'dosen.nik', '=', 'forumreply.createdby')
                ->select('forumreply.*', DB::raw('IFNULL(dosen.nik,mahasiswa.nrp) as nrp'), DB::raw('IFNULL(mahasiswa.namaMhs,dosen.namaDosen) as nama'), DB::raw('IFNULL(mahasiswa.foto,dosen.foto) as foto'))
                ->where('forumreply.status', '=', 1)
                ->groupby('forumreply.reply_id')
                ->where('forumreply.comment_id', $co->comment_id )
                ->get();
                $count = $replies->count();
              if($count > 0) :?>
                <a data-toggle="collapse" class="showreply" href="#collapse_{{ $co->comment_id }}"><b>Show/Hide
                    Replies</b></a>
                <?php endif;?>

                {{-- Reply Start --}}
                <div id="collapse_{{ $co->comment_id }}" class="panel-collapse collapse">
                  <?php foreach ($replies as $re):
                 if( $re->private==1 && SESSION::GET('nrp')==$co->createdby || $re->createdby==$login){?>
                  <ul class="comments-list">
                    <li class="comment">
                      <a class="pull-left" href="#">
                        <img class="avatar" src="{{URL::asset('images/foto/'.$re->foto)}}" alt="avatar">
                      </a>
                      <div class="comment-body">
                        <div class="comment-heading">
                          <h4 class="user">
                            <a href="{{asset('profile/'.$re->nrp)}}">
                              {{ $re->nama }}
                              </a>

                          </h4>
                          <h5 class="time">{{ date('H:i:s', strtotime($re->timestamp))}}
                          <b>{{ date('d-F-Y', strtotime($re->timestamp))}}</b></h5><?php if( $re->private==1){?> <b>*Private Reply</b> <?php } ?>

                          <?php if($login==$re->createdby) {?>

                          {{-- Modal --}}
                          <div id="replyModal_{{ $re->reply_id  }}" class="modal fade in">
                            <div class="modal-dialog">
                              <div class="modal-content">
                                <div class="modal-header">
                                  <h4>Delete Confirmation</h4>
                                </div>
                                <div class="modal-body">
                                  <h4>Are You Sure?</h4>
                                </div>

                                <div class="modal-footer">
                                  <button class="btn btn-primary btn-round" data-dismiss="modal"> Cancel</button>
                                  <a href="{{ URL::asset('/forumThread/deletereply/'.$re->reply_id)  }}"
                                    class="btn btn-danger btn-round">
                                    OK</a>
                                </div>

                              </div><!-- /.modal-content -->
                            </div><!-- /.modal-dalog -->
                          </div><!-- /.modal -->
                          <a data-toggle="modal" href="#replyModal_{{ $re->reply_id }}" class="hover"><span
                              class="glyphicon glyphicon-trash pull-right" style="color:red;"></span></a>
                          <?php } ?>
                        </div>
                        <p>{{$re->body}}</p>
                        <?php  if($re->file != ""): ?>
                        <a href="{{ URL::asset('files/forum/'.$re->file) }}">{{  $re->file }}</a>
                        <?php endif; ?>
                      </div>
                    </li>
                  </ul>
                  <?php }
                  elseif($re->private==0){  ?>
                  <ul class="comments-list">
                    <li class="comment">
                      <a class="pull-left" href="#">
                        <img class="avatar" src="{{URL::asset('images/foto/'.$re->foto)}}" alt="avatar">
                      </a>
                      <div class="comment-body">
                        <div class="comment-heading">
                          <h4 class="user">
                            <a href="{{asset('profile/'.$re->nrp)}}">
                              {{ $re->nama }}</a>
                          </h4>
                          <h5 class="time">{{ date('H:i:s', strtotime($re->timestamp))}}
                            <b>{{ date('d-F-Y', strtotime($re->timestamp))}}</b></h5>

                          <?php if($login==$re->createdby) {?>

                          {{-- Modal --}}
                          <div id="replyModal_{{ $re->reply_id  }}" class="modal fade in">
                            <div class="modal-dialog">
                              <div class="modal-content">
                                <div class="modal-header">
                                  <h4>Delete Confirmation</h4>
                                </div>
                                <div class="modal-body">
                                  <h4>Are You Sure?</h4>
                                </div>

                                <div class="modal-footer">
                                  <button class="btn btn-primary btn-round" data-dismiss="modal"> Cancel</button>
                                  <a href="{{ URL::asset('/forumThread/deletereply/'.$re->reply_id)  }}"
                                    class="btn btn-danger btn-round">
                                    OK</a>
                                </div>

                              </div><!-- /.modal-content -->
                            </div><!-- /.modal-dalog -->
                          </div><!-- /.modal -->
                          <a data-toggle="modal" href="#replyModal_{{ $re->reply_id }}" class="hover"><span
                              class="glyphicon glyphicon-trash pull-right" style="color:red;"></span></a>
                          <?php } ?>
                        </div>
                        <p>{{$re->body}}</p>
                        <?php  if($re->file != ""): ?>
                        <a href="{{ URL::asset('files/forum/'.$re->file) }}">{{  $re->file }}</a>
                        <?php endif; ?>
                      </div>
                    </li>
                  </ul>
                  <?php } endforeach;?>
                </div>
                {{-- Reply End --}}
              </div>
            </div>
            <?php endforeach; ?>

            <div class="text-center">
              {{ $comments->links() }}
            </div>
            <hr>
            <?php
            use Carbon\Carbon;
            $timestampnow = Carbon::now('Asia/Jakarta')->toDateTimeString();
            if($title->valid_start < $timestampnow ){ ?>
            <h4><b>Comment:</b></h4>

            <form class="form-group" method="POST" enctype="multipart/form-data">
              <textarea name="body" id="textarea1" type="text" class="form-control" rows="5"
                placeholder="Write your comment here" required=""></textarea>
              <br>
              <div class="row">
                <div class="form group col-xs-6"><input type="file" name="img" class="file" value="Chose Image"></div>
                <div class="form group col-xs-6"> <button type="submit" class="btn btn-primary pull-right btn-round"><i
                      class="fa fa-send-o"></i> Submit</button>
                </div>
              </div>

              <p class="text-danger">Insert. *Max Size : 2 Megabyte</p>

              {{-- <button type="reset" class="tn btn-danger">Reset</button> --}}

              {{ csrf_field() }}
            </form>

            <?php } ?>
          </div>
          <div id="Group" class="w3-container tab" style="display:none;">

            {{-- Body Start --}}
            <?php  foreach ($groupcomments as $co) : ?>

            <div class="panel panel-white post panel-shadow" id="comment">
              <div class="post-heading">
                <div class="pull-left image">
                  <img src="{{URL::asset('images/foto/'.$co->foto)}}" href="{{asset('profile/'.$co->nrp)}}"
                    class="img-circle avatar" alt="user profile image">
                </div>
                <div class="pull-left meta">
                  <div class="title h6">
                    <a href="{{asset('profile/'.$co->nrp)}}"> <b>{{$co->nama}}</b></a>

                  </div>
                  <h6 class="text-muted time">{{ date('H:i:s', strtotime($co->timestamp))}}
                    <b>{{ date('d-F-Y', strtotime($co->timestamp))}}</b> </h6>
                </div>
                <?php if($login==$co->createdby) {?>
                {{-- Modal --}}
                <div id="commentModal_{{$co->comment_id }}" class="modal fade in">
                  <div class="modal-dialog">
                    <div class="modal-content">
                      <div class="modal-header">
                        <h4>Delete Confirmation</h4>
                      </div>
                      <div class="modal-body">
                        <h4>Are You Sure?</h4>
                      </div>
                      <div class="modal-footer">
                        <button class="btn btn-primary btn-round" data-dismiss="modal"> Cancel</button>
                        <a href="{{ URL::asset('/forumThread/delete/'.$co->comment_id)  }}" class="btn btn-danger btn-round">
                          OK</a>
                      </div>
                    </div><!-- /.modal-content -->
                  </div><!-- /.modal-dalog -->
                </div><!-- /.modal -->
                <a data-toggle="modal" href="#commentModal_{{ $co->comment_id }}" class="hover"><span
                    class="glyphicon glyphicon-trash pull-right" style="color:red;"></span></a>
                <?php } ?>
              </div>
              <div class="post-description">
                {!! $co->body !!}
                @if ($co->img != "")
                <img src=" {!!  URL::asset('files/forum/'.$co->img)  !!}" alt="" width="40%;">
                @endif
              </div>
              <div class="post-footer">
                <form action="{{ URL('/forumThread/reply/'.$co->comment_id) }}" method="POST">
                  <div class="input-group">
                    <input class="form-control" name="body" placeholder="Reply Comment" type="text">
                    <span class="input-group-addon">
                      <a href="#" onclick="$(this).closest('form').submit()"><i class="fa fa-edit"></i></a>
                      {{ csrf_field() }}
                    </span>
                  </div>
                </form>
                <?php
                  $replies = DB::table('forumreply')
                ->leftjoin('mahasiswa', 'mahasiswa.nrp', '=', 'forumreply.createdby')
                ->leftjoin('dosen', 'dosen.nik', '=', 'forumreply.createdby')
                ->select('forumreply.*', DB::raw('IFNULL(dosen.nik,mahasiswa.nrp) as nrp'), DB::raw('IFNULL(mahasiswa.namaMhs,dosen.namaDosen) as nama'), DB::raw('IFNULL(mahasiswa.foto,dosen.foto) as foto'))
                ->where('forumreply.status', '=', 1)
                ->groupby('forumreply.reply_id')
                ->where('forumreply.comment_id', $co->comment_id )
                ->get();
            $count = $replies->count();
                if($count > 0) :?>
                <a data-toggle="collapse" class="showreply" href="#collapse_{{ $co->comment_id }}"><b>Show/Hide
                    Replies</b></a>
                <?php endif; ?>
                {{-- Reply Start --}}
                <div id="collapse_{{ $co->comment_id }}" class="panel-collapse collapse">
                  <?php foreach ($replies as $re):
                    if($co->comment_id==$re->comment_id){?>
                  <ul class="comments-list">
                    <li class="comment">
                      <a class="pull-left" href="#">
                        <img class="avatar" src="{{URL::asset('images/foto/'.$re->foto)}}" alt="avatar">
                      </a>
                      <div class="comment-body">
                        <div class="comment-heading">
                          <h4 class="user">
                            <a href="{{asset('profile/'.$re->nrp)}}">
                              {{ $re->nama }}</a>
                          </h4>
                          <h5 class="time">{{ date('H:i:s', strtotime($re->timestamp))}}
                            <b>{{ date('d-F-Y', strtotime($re->timestamp))}}</b></h5>
                          <?php if($login==$re->createdby) {?>
                          {{-- Modal --}}
                          <div id="replyModal_{{ $re->reply_id  }}" class="modal fade in">
                            <div class="modal-dialog">
                              <div class="modal-content">
                                <div class="modal-header">
                                  <h4>Delete Confirmation</h4>
                                </div>
                                <div class="modal-body">
                                  <h4>Are You Sure?</h4>
                                </div>
                                <div class="modal-footer">
                                  <button class="btn btn-primary btn-round" data-dismiss="modal"> Cancel</button>
                                  <a href="{{ URL::asset('/forumThread/deletereply/'.$re->reply_id)  }}"
                                    class="btn btn-danger btn-round">
                                    OK</a>
                                </div>
                              </div><!-- /.modal-content -->
                            </div><!-- /.modal-dalog -->
                          </div><!-- /.modal -->
                          <a data-toggle="modal" href="#replyModal_{{ $re->reply_id }}" class="hover"><span
                              class="glyphicon glyphicon-trash pull-right" style="color:red;"></span></a>
                          <?php } ?>
                        </div>
                        <p>{{$re->body}}</p>
                      </div>
                    </li>
                  </ul>
                  <?php } endforeach;?>
                </div>
                {{-- Reply End --}}
              </div>
            </div>
            <?php endforeach; ?>
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

<!-- AdminLTE App -->
<script src="{{asset('vendors/dist/js/adminlte.min.js')}}"></script>
<!-- AdminLTE dashboard demo (This is only for demo purposes) -->
<script src="{{asset('vendors/dist/js/pages/dashboard.js')}}"></script>
<!-- AdminLTE for demo purposes -->
<script src="{{asset('vendors/dist/js/demo.js')}}"></script>

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
      { name: 'insert', groups: [ 'insert' ] },
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

<script>
  function openTab(tabName) {
    var i;
    var x = document.getElementsByClassName("tab");
    for (i = 0; i < x.length; i++) {
      x[i].style.display = "none";
    }
    document.getElementById(tabName).style.display = "block";
  }
</script>
@endsection
</body>

</html>
