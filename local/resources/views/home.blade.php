<!DOCTYPE html>
<html lang="en">

<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <!-- Meta, title, CSS, favicons, etc. -->
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <title>Course Learning System</title>

  <!-- Bootstrap -->
  <link href="{{URL::asset('vendors/bootstrap/dist/css/bootstrap.min.css')}}" rel="stylesheet">
  <!-- Font Awesome -->
  <link href="{{URL::asset('vendors/font-awesome/css/font-awesome.min.css')}}" rel="stylesheet">
  <!-- NProgress -->
  <link href="{{URL::asset('vendors/nprogress/nprogress.css')}}" rel="stylesheet">
  <!-- Link Swiper's CSS -->
  <link href="{{URL::asset('vendors/dist/css/swiper.min.css')}}" rel="stylesheet">
  <!-- Theme style -->
  <link rel="stylesheet" href="{{URL::asset('vendors/dist/css/AdminLTE.min.css')}}">
  <!-- AdminLTE Skins. Choose a skin from the css/skins
         folder instead of downloading all of them to reduce the load. -->
  <link rel="stylesheet" href="{{URL::asset('vendors/dist/css/skins/_all-skins.min.css')}}">


  <!-- Custom Theme Style -->
  <link href="{{URL::asset('vendors/build/css/custom.min.css')}}" rel="stylesheet">

  <!-- Slider styles -->
  <style>
    .card {
      /* Add shadows to create the "card" effect */
      box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
      transition: 0.3s;
      width: 30%;
      padding: 5px;
      max-width: 30%;
      float: left;
    }


    /* On mouse-over, add a deeper shadow */
    .card:hover {
      box-shadow: 0 10px 18px 0 rgba(42, 63, 84, 1);
    }

    a.custom-card,
    a.custom-card:hover {
      color: inherit;
    }

    /* Add some padding inside the card container */
    .container {
      padding: 2px 16px;
      margin: auto;
    }

    .swiper-container {
      width: 100%;
      padding-top: 100px;
      padding-bottom: 100px;
    }

    .swiper-slide {
      background-position: center;
      background-size: cover;
      height: inherit;
      max-width: 40%;
      max-height: 40%;

      /* Center slide text vertically */
      display: -webkit-box;
      display: -ms-flexbox;
      display: -webkit-flex;
      display: flex;
      -webkit-box-pack: center;
      -ms-flex-pack: center;
      -webkit-justify-content: center;
      justify-content: center;
      -webkit-box-align: center;
      -ms-flex-align: center;
      -webkit-align-items: center;
      align-items: center;

    }

    .swiper-pagination-bullet {
      width: 20px;
      height: 20px;
      text-align: center;
      line-height: 20px;
      font-size: 12px;
      color: #000;
      opacity: 1;
      background: rgba(0, 0, 0, 0.2);
    }

    .swiper-pagination-bullet-active {
      color: #fff;
      background: #007aff;
    }



    @media only screen and (max-width: 500px) {
      .card{
        width: 100%;
        max-width: 100%;
        float: none;
      }
    }
  </style>

</head>

<body class="nav-sm">
  <div class="container body">
    <div class="main_container">
      <div class="col-md-3 left_col">
        <div class="left_col scroll-view">
          <div class="navbar nav_title" style="border: 0;">
            <a href="{{ url('/home')}}" class="site_title"><i class="fa fa-code"></i> <span>Course Learning
                System</span></a>
          </div>

          <div class="clearfix"></div>

          <!-- menu profile quick info -->
          <div class="profile clearfix">
            <div class="profile_pic">
              <img src="{{URL::asset('images/foto/'.Session::get('foto'))}}" alt="..." class="img-circle profile_img">
            </div>
            <div class="profile_info">
              <h2>{{Session::get('login')}}</h2>
              <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
            </div>
          </div>
          <!-- /menu profile quick info -->

          <br />

          <!-- sidebar menu -->
          <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
            <div class="menu_section">
              <!-- <h3>Level 1</h3> -->
              <ul class="nav side-menu">
                <li><a href="{{ url('/home')}}"><i class="fa fa-home"></i> Home </a></li>

                <li><a href="{{ url('/comment')}}"><i class="fa fa-bullhorn"></i> Messages </a></li>
                <!-- <li><a href="{{ url('/project')}}"><i class="fa fa-edit"></i> Project</a></li> -->
                <li><a href="{{ url('/contact')}}"><i class="fa fa-desktop"></i> Contact</a></li>
                <li><a href="{{ url('/calendar')}}"><i class="fa fa-table"></i> Calendar</a></li>
                <li><a href="{{ url('/leaderboard')}}"><i class="fa fa-bar-chart-o"></i> Leaderboard </a></li>
                <!-- <li><a href="{{ url('/inbox')}}"><i class="fa fa-clone"></i> Inbox </a></li> -->
                <li><a href="{{ url('/assignment')}}"><i class="fa fa-tasks"></i> Assignment </a></li>
                <li><a href="{{ url('/tournament')}}"><i class="fa fa-trophy"></i> Tournament </a></li>
                <!-- <li><a href="{{ url('/resources')}}"><i class="fa fa-archive"></i> Resources </a></li> -->
                <li><a href="{{ url('/livestream')}}"><i class="fa fa-youtube-play"></i> Livestream </a></li>
                <li><a href="{{ url('/forumTitleMK')}}"><i class="fa fa-comment-o"></i> Forum </a></li>
                <!-- <li><a href="{{ url('/achievement')}}"><i class="fa fa-star"></i> Achievement </a></li> -->
                <!--<li><a href="{{ url('/forecasting')}}"><i class="fa fa-line-chart"></i> Forcasting </a></li>

                  <li><a href="{{ url('/notification')}}"><i class="fa fa-bullhorn"></i> Notification </a></li>
                  <li><a href="{{ url('/event')}}"><i class="fa fa-gamepad"></i> Event </a></li>
                  -->
                <li><a href="{{ url('/courseRating0')}}"><i class="fa fa-sort-amount-asc"></i> Course Rating </a></li>
                <li><a href="{{ url('/group')}}"><i class="fa fa-users"></i> Group</a></li>
                <!--<li><a href="{{ url('/manage')}}"><i class="fa fa-hdd-o"></i> Manage Master Data </a></li>-->
              </ul>
            </div>
          </div>
          <!-- /sidebar menu -->

          <!-- /menu footer buttons -->
          <!-- <div class="sidebar-footer hidden-small">
              <a data-toggle="tooltip" data-placement="top" title="Settings">
                <span class="glyphicon glyphicon-cog" aria-hidden="true"></span>
              </a>
              <a data-toggle="tooltip" data-placement="top" title="FullScreen">
                <span class="glyphicon glyphicon-fullscreen" aria-hidden="true"></span>
              </a>
              <a data-toggle="tooltip" data-placement="top" title="Lock">
                <span class="glyphicon glyphicon-eye-close" aria-hidden="true"></span>
              </a>
              <a data-toggle="tooltip" data-placement="top" title="Logout" href="login.html">
                <span class="glyphicon glyphicon-off" aria-hidden="true"></span>
              </a>
            </div> -->
          <!-- /menu footer buttons -->
        </div>
      </div>

      <!-- top navigation -->
      <div class="top_nav">
        <div class="nav_menu">
          <nav>
            <div class="nav toggle">
              <a id="menu_toggle"><i class="fa fa-bars"></i></a>
            </div>

            <ul class="nav navbar-nav navbar-right">
              <li class="">
                <a href="{{url('/profile')}}" class="user-profile dropdown-toggle" data-toggle="dropdown"
                  aria-expanded="false">
                  <img src="{{URL('images/foto/'.Session::get('foto'))}}" alt="">{{Session::get('login')}}
                  <span class=" fa fa-angle-down"></span>
                </a>
                <ul class="dropdown-menu dropdown-usermenu pull-right">
                  <li><a href="{{url('/profile')}}"> Profile</a></li>
                  <!-- <li>
                      <a href="javascript:;">
                        <span class="badge bg-red pull-right">50%</span>
                        <span>Settings</span>
                      </a>
                    </li> -->
                  <!-- <li><a href="javascript:;">Help</a></li> -->

                  <li><a href="{{url('/logout')}}"><i class="fa fa-sign-out pull-right"></i> Log Out</a></li>
                </ul>
              </li>

              <!-- <li role="presentation" class="dropdown">
                  <a href="javascript:;" class="dropdown-toggle info-number" data-toggle="dropdown" aria-expanded="false">
                    <i class="fa fa-flag-o"></i>
                    <span class="badge bg-red">9</span>
                  </a>
                  <ul id="menu1" class="dropdown-menu list-unstyled msg_list" role="menu">

                  </ul>
                </li> -->


              <li class=" center" style="margin-top: 1%">
                <?php
                    // $notificationpost = DB::table('forumpost')
                    // ->where('forumpost.createdby',SESSION::get('nrp'))
                    // // ->join('forumcomment','forumcomment.post_id','forumpost.post_id')
                    // // ->join('forumreply','forumreply.comment_id','forumcomment.comment_id')
                    // ->orderby('forumpost.createdby','DESC')
                    // ->get();
                    // $lastWeek = date('Y-m-d', strtotime("-7 day", date('Y-m-d')));
                    $date = new Carbon\Carbon; //  DateTime string will be 2014-04-03 13:57:34
                    $user = SESSION::GET('nrp');
                    $date->subWeek();
                    $notificationcomment = DB::table('forumcomment')
                    ->join('forumreply','forumreply.comment_id','forumcomment.comment_id')
                    ->where('forumcomment.createdby',SESSION::GET('nrp'))
                    ->where('forumreply.createdby','!=',SESSION::get('nrp'))
                    ->where('forumreply.status',1)
                    ->where('forumcomment.status',1)
                    ->where('forumreply.timestamp','>',$date)
                    ->orderby('forumreply.timestamp','DESC')
                    ->groupby('forumcomment.post_id')
                    ->distinct()
                    ->get();

                    $notificationassignment = DB::table('assignment')
                    ->select('*','assignment.timestamp')
                    ->leftjoin('submission',function ($join) {
                     $join->on('assignment.id', '=', 'submission.assignmentId')
                     ->where('submission.createdby',SESSION::GET('nrp'));
                     })
                    ->join('pertemuan','assignment.idPertemuan','pertemuan.idPertemuan')
                    ->join('masterdkbs','pertemuan.masterdkbs_idMasterDKBS','masterdkbs.idMasterDKBS')
                    ->join('detaildkbs','masterdkbs.idMasterDKBS','detaildkbs.masterdkbs_idMasterDKBS')
                    ->where('detaildkbs.mahasiswa_NRP',$user)
                    ->where('submission.id', null)
                    ->groupby('assignment.id')
                    ->get();
                    
                    $notificationcourserating = DB::select('select * from pertemuan p join masterdkbs m on p.masterdkbs_idMasterDKBS = m.idMasterDKBS join matakuliah mk on m.matakuliah_kodeMK = mk.kodeMK where p.idPertemuan not in (select pertemuan_idPertemuan from answer a where a.mahasiswa_nrp = ' . $user . ') AND p.tanggal <= "' . date('Y-m-d') . '" AND p.masterdkbs_idMasterDKBS in (select masterdkbs_idMasterDKBS from detaildkbs where mahasiswa_NRP = '.$user.') order by p.idPertemuan');

                    ?>
                <div class="dropdown">
                  <button class="btn btn-default dropdown-toggle" type="button" data-toggle="dropdown">

                    <?php if($notificationassignment == '[]' && $notificationcomment == '[]'): ?>
                    <i class="fa fa-bell-o" aria-hidden="false"></i>
                    <?php else: ?>
                    <i class="fa fa-bell" aria-hidden="false"></i>
                    <?php endif; ?>

                    <span class="badge badge-danger" id="bell"></span>
                    <span class="caret"></span></button>
                  <ul class="dropdown-menu" >
                    <div  style="display:inline-block;padding:7px">
                    <?php foreach($notificationcomment as $nc):  ?>
                    <li class="notif">
                      <a href="{{url('/forumThread/'.$nc->post_id.'?page=1')}}">
                        <p>{{ $nc->createdby }} Replies Your Comment</p>
                        <p>{{date('d-F-Y H:i:s', strtotime( $nc->timestamp)) }}</p>
                        <hr class="solid">
                      </a>
                    </li>
                    <?php endforeach; ?>
                    <?php foreach($notificationassignment  as $as):  ?>
                    <li class="notif"><a href="{{url('/assignment')}}">
                        <p> Assignment <b>{{ $as->title }}</b> Not Done</p>
                        <p>{{date('d-F-Y H:i:s', strtotime( $as->timestamp)) }}</p>
                        <hr class="solid">
                      </a></li>
                    <?php endforeach; ?>
                    <?php foreach($notificationcourserating  as $ncr):  ?>
                    <li class="notif"><a href="{{url('/courseRating0')}}">
                        <p> Course Rating <b>{{$ncr->namaMK." "}}</p>
                        <p>{{ $ncr->namaPertemuan }}</b> Not Filled</p>
                        <hr class="solid">
                      </a></li>
                    <?php endforeach; ?>
                    </div>
                  </ul>
                </div>
              </li>
            </ul>
          </nav>
        </div>
      </div>
      <!-- /top navigation -->

      <!-- page content -->
      <div class="right_col" role="main">
        <div class="">
          <div class="page-title">
            <div class="title_left">
              <h3>Blended Learning</h3>
            </div>
          </div>

          <div class="clearfix"></div>
          <!--  -->
          <div>

            <!--  -->

            <!-- Swiper -->
            <div class="swiper-container">
              <div class="swiper-wrapper">

                <?php foreach ($slider as $sli): ?>
                <div class="swiper-slide"><img src="{{URL::asset('images/slider/'.$sli->fileName)}}" width="100%"
                    height="100%"></div>
                <?php endforeach; ?>


              </div>
              <!-- Add Pagination -->
              <div class="swiper-pagination"></div>
            </div>

            <!-- Swiper JS -->
            <script src="{{asset('vendors/dist/js/swiper.min.js')}}"></script>

            <!-- Initialize Swiper -->
            <script>
              var swiper = new Swiper('.swiper-container', {
                 effect: 'coverflow',
                 grabCursor: true,
                 centeredSlides: true,
                 slidesPerView: 'auto',
           	     spaceBetween: 30,
                 centeredSlides: true,
           	     loop: true,
                 autoplay: {
                   delay: 5500,
                   disableOnInteraction: false,
                 },
                 coverflowEffect: {
                   rotate: 50,
                   stretch: 0,
                   depth: 100,
                   modifier: 1,
                   slideShadows : true,
                 },
                 pagination: {
                   el: '.swiper-pagination',
                   clickable: true,
                   renderBullet: function (index, className) {
                     return '<span class="' + className + '">' + (index + 1) + '</span>';
                   },
                 },
               });
            </script>
            <br>
            <br>
            <div style="padding: 5px; align:center">
              <?php $count = 1; 
                $today = date("d-m-Y");?>
              <?php foreach ($dataMK as $dtmk ): ?>
                <a href="{{asset('homeDetail/'.$count.'/'.$dtmk->kodeMK.'/'.$dtmk->kelas)}}" class="custom-card">
                  <div class="card">
                    <img src="{{URL::asset('images/cover/'.$count.'.png')}}" alt="Avatar" style="width:100%">
                    <div class="container">
                      <h4><b>{{ $dtmk->kodeMK }} -
                          {{ $dtmk->namaMK }} ( {{ $dtmk->kelas }} )</b></h4>
                      <?php foreach ($assign as $ass ): 
                        // dd(strtotime($ass->valid_end));
                        if($ass->masterdkbs_idMasterDKBS == $dtmk->idMasterDKBS && strtotime($ass->valid_end) >= strtotime($today)){ ?>
                      <p>{{$ass->title}} - {{$ass->valid_end}}<p>
                          <?php }
                        ?>
                          <?php endforeach ?>
                    </div>
                  </div>
                </a>
                <?php $count += 1; ?>
                <?php endforeach ?>
            </div>
            <br>
            <br>
            <!-- TO DO List -->
            <div class="box box-primary">
              <form method="POST" action="{{URL('/home')}}">
                <div class="box-header">
                  <i class="ion ion-clipboard"></i>

                  <h3 class="box-title">To Do List</h3>


                </div>
                <!-- /.box-header -->
                <div class="box-body">
                  <!-- See dist/js/pages/dashboard.js to activate the todoList plugin -->
                  <ul class="todo-list">
                    <?php foreach ($todo as $td): ?>
                    <li>
                      <!-- checkbox -->
                      <!-- <input type="checkbox" value="check[]" name="check[]" id="check[]"> -->
                      <!-- todo text -->
                      <?php if ($td->status == "done"): ?>
                      <span class="text"><del>{!! $td->task !!}</del></span>
                      <?php else: ?>
                      <span class="text">{!! $td->task !!}</span>
                      <?php endif; ?>

                      <!-- Emphasis label -->
                      <small class="label label-danger"><i class="fa fa-clock-o"></i>
                        {{$td->created_at->diffForHumans($sekarang)}} </small>
                      <!-- General tools such as edit or delete-->
                      <div class="tools">
                        <a href="{{URL('/home/check/'.$td->id)}}"><button type="button"><i
                              class="fa fa-check"></i></i></button></a>
                        <a href="{{URL('/home/edit/'.$td->id)}}"><button type="button"><i
                              class="fa fa-edit"></i></button></a>
                        <a href="{{URL('/home/delete/'.$td->id)}}"><button type="button"><i
                              class="fa fa-trash-o"></i></i></button></a>
                      </div>
                    </li>
                    <?php endforeach; ?>

                  </ul>
                </div>
                <!-- /.box-body -->
                <div class="box-footer clearfix no-border">
                  <div align="center">
                    {!! $todo->links() !!}
                  </div>

                  <div class="form-group">
                    <label>Task TODO</label><br />
                    <input type="text" name="task" id="task" size="100" />
                    <button type="submit" class="btn btn-default pull-right"><i class="fa fa-plus"></i> Add
                      item</button>

                  </div>

                </div>
                {{ csrf_field() }}
              </form>
            </div>
            <!-- /.box -->

            <!-- Recent activities -->
            <!-- <div class="row">
              <div class="col-md-4 col-sm-4 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>Recent Activities <small>Sessions</small></h2>
                    <ul class="nav navbar-right panel_toolbox">
                      <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                      </li>
                      <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-wrench"></i></a>
                        <ul class="dropdown-menu" role="menu">
                          <li><a href="#">Settings 1</a>
                          </li>
                          <li><a href="#">Settings 2</a>
                          </li>
                        </ul>
                      </li>
                      <li><a class="close-link"><i class="fa fa-close"></i></a>
                      </li>
                    </ul>
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">
                    <div class="dashboard-widget-content">

                    <ul class="list-unstyled timeline widget">
                      <li>
                        <div class="block">
                          <div class="block_content">
                            <h2 class="title">
                                              <a>Who Needs Sundance When You’ve Got&nbsp;Crowdfunding?</a>
                                          </h2>
                            <div class="byline">
                              <span>13 hours ago</span> by <a>Jane Smith</a>
                            </div>
                            <p class="excerpt">Film festivals used to be do-or-die moments for movie makers. They were where you met the producers that could fund your project, and if the buyers liked your flick, they’d pay to Fast-forward and… <a>Read&nbsp;More</a>
                            </p>
                          </div>
                        </div>
                      </li>
                      <li>
                        <div class="block">
                          <div class="block_content">
                            <h2 class="title">
                                              <a>Who Needs Sundance When You’ve Got&nbsp;Crowdfunding?</a>
                                          </h2>
                            <div class="byline">
                              <span>13 hours ago</span> by <a>Jane Smith</a>
                            </div>
                            <p class="excerpt">Film festivals used to be do-or-die moments for movie makers. They were where you met the producers that could fund your project, and if the buyers liked your flick, they’d pay to Fast-forward and… <a>Read&nbsp;More</a>
                            </p>
                          </div>
                        </div>
                      </li>
                      <li>
                        <div class="block">
                          <div class="block_content">
                            <h2 class="title">
                                              <a>Who Needs Sundance When You’ve Got&nbsp;Crowdfunding?</a>
                                          </h2>
                            <div class="byline">
                              <span>13 hours ago</span> by <a>Jane Smith</a>
                            </div>
                            <p class="excerpt">Film festivals used to be do-or-die moments for movie makers. They were where you met the producers that could fund your project, and if the buyers liked your flick, they’d pay to Fast-forward and… <a>Read&nbsp;More</a>
                            </p>
                          </div>
                        </div>
                      </li>
                      <li>
                        <div class="block">
                          <div class="block_content">
                            <h2 class="title">
                                              <a>Who Needs Sundance When You’ve Got&nbsp;Crowdfunding?</a>
                                          </h2>
                            <div class="byline">
                              <span>13 hours ago</span> by <a>Jane Smith</a>
                            </div>
                            <p class="excerpt">Film festivals used to be do-or-die moments for movie makers. They were where you met the producers that could fund your project, and if the buyers liked your flick, they’d pay to Fast-forward and… <a>Read&nbsp;More</a>
                            </p>
                          </div>
                        </div>
                      </li>
                    </ul>
                  </div>
                  </div>
                </div>
              </div> -->

            <!-- start of weather widget -->
            <!-- <div class="col-md-4 col-sm-4 col-xs-12">
            <div class="x_panel">
              <div class="x_title">
                <h2>Daily active users <small>Sessions</small></h2>
                <ul class="nav navbar-right panel_toolbox">
                  <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                  </li>
                  <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-wrench"></i></a>
                    <ul class="dropdown-menu" role="menu">
                      <li><a href="#">Settings 1</a>
                      </li>
                      <li><a href="#">Settings 2</a>
                      </li>
                    </ul>
                  </li>
                  <li><a class="close-link"><i class="fa fa-close"></i></a>
                  </li>
                </ul>
                <div class="clearfix"></div>
              </div>
              <div class="x_content">
                <div class="row">
                  <div class="col-sm-12">
                    <div class="temperature"><b>Monday</b>, 07:30 AM
                      <span>F</span>
                      <span><b>C</b></span>
                    </div>
                  </div>
                </div>
                <div class="row">
                  <div class="col-sm-4">
                    <div class="weather-icon">
                      <canvas height="84" width="84" id="partly-cloudy-day"></canvas>
                    </div>
                  </div>
                  <div class="col-sm-8">
                    <div class="weather-text">
                      <h2>Bandung<br><i>Partly Cloudy Day</i></h2>
                    </div>
                  </div>
                </div>
                <div class="col-sm-12">
                  <div class="weather-text pull-right">
                    <h3 class="degrees">23</h3>
                  </div>
                </div>

                <div class="clearfix"></div>

                <div class="row weather-days">
                  <div class="col-sm-2">
                    <div class="daily-weather">
                      <h2 class="day">Mon</h2>
                      <h3 class="degrees">25</h3>
                      <canvas id="clear-day" width="32" height="32"></canvas>
                      <h5>15 <i>km/h</i></h5>
                    </div>
                  </div>
                  <div class="col-sm-2">
                    <div class="daily-weather">
                      <h2 class="day">Tue</h2>
                      <h3 class="degrees">25</h3>
                      <canvas height="32" width="32" id="rain"></canvas>
                      <h5>12 <i>km/h</i></h5>
                    </div>
                  </div>
                  <div class="col-sm-2">
                    <div class="daily-weather">
                      <h2 class="day">Wed</h2>
                      <h3 class="degrees">27</h3>
                      <canvas height="32" width="32" id="snow"></canvas>
                      <h5>14 <i>km/h</i></h5>
                    </div>
                  </div>
                  <div class="col-sm-2">
                    <div class="daily-weather">
                      <h2 class="day">Thu</h2>
                      <h3 class="degrees">28</h3>
                      <canvas height="32" width="32" id="sleet"></canvas>
                      <h5>15 <i>km/h</i></h5>
                    </div>
                  </div>
                  <div class="col-sm-2">
                    <div class="daily-weather">
                      <h2 class="day">Fri</h2>
                      <h3 class="degrees">28</h3>
                      <canvas height="32" width="32" id="wind"></canvas>
                      <h5>11 <i>km/h</i></h5>
                    </div>
                  </div>
                  <div class="col-sm-2">
                    <div class="daily-weather">
                      <h2 class="day">Sat</h2>
                      <h3 class="degrees">26</h3>
                      <canvas height="32" width="32" id="cloudy"></canvas>
                      <h5>10 <i>km/h</i></h5>
                    </div>
                  </div>
                  <div class="clearfix"></div>
                </div>
              </div>
            </div>
          </div> -->
            <!-- end of weather widget -->

            <!--Top profiles -->
            <!-- <div class="col-md-4 col-sm-4 col-xs-12">
                        <div class="x_panel">
                          <div class="x_title">
                            <h2>Top Profiles <small></small></h2>
                            <ul class="nav navbar-right panel_toolbox">
                              <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                              </li>
                            </ul>

                          </div>
                          <div class="x_content">

                            <ul class="list-unstyled top_profiles scroll-view">
                              <?php foreach ($leaderboard as $lead): ?>
                                <li class="media event">
                                  <a class="pull-left border-green profile_thumb">
                                    <i class="fa fa-user green"></i>
                                  </a>
                                  <div class="media-body">
                                    <a class="title" href="#">{{$lead->nama}}</a>
                                    <p><strong>{{$lead->nrp}}</strong></p>
                                    <p> {{$lead->emas}} <small> Emas</small></p>
                                    <p> {{$lead->perak}} <small> Perak</small></p>
                                    <p> {{$lead->perunggu}} <small> Perunggu</small></p>
                                    <p> Total {{$lead->total}} Poin </p>
                                  </div>
                                </li>
                              <?php endforeach; ?>
                            </ul>

                          </div>
                        </div>
                      </div> -->
            <!-- End top profiles -->

          </div>
        </div>

        <!-- /page content -->

        <!-- footer content -->
        <footer>
          <div class="pull-right">
            1472088 - Steven Yong
            1772044 - Roy Parsaoran
            1772046 - Ariyanto Sani
          </div>
          <div class="clearfix"></div>
        </footer>
        <!-- /footer content -->

      </div>
    </div>
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
    <script>
      var x = document.getElementsByClassName("notif").length.toString();
      document.getElementById("bell").innerHTML = x;
      $.notify(x+" New Notification","info");
  
    </script>


    <!-- AdminLTE App -->
    <script src="{{asset('vendors/dist/js/adminlte.min.js')}}"></script>
    <!-- AdminLTE dashboard demo (This is only for demo purposes) -->
    <script src="{{asset('vendors/dist/js/pages/dashboard.js')}}"></script>
    <!-- AdminLTE for demo purposes -->
    <script src="{{asset('vendors/dist/js/demo.js')}}"></script>





</body>

</html>