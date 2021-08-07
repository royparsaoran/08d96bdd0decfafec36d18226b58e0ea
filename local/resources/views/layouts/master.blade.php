<!DOCTYPE html>
<html lang="en">

<head>
  <meta name="csrf-token" content="{{csrf_token()}}">
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <!-- Meta, title, CSS, favicons, etc. -->
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Course Learning System </title>

  @yield('css')

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
          <div class="sidebar-footer hidden-small">
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
          </div>
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
                  <img src="{{URL::asset('images/foto/'.Session::get('foto'))}}" alt=""> {{Session::get('login')}}
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
                    <i class="fa fa-bell-o"></i>
                    <span class="badge bg-yellow">6</span>
                  </a>
                  <ul id="menu1" class="dropdown-menu list-unstyled msg_list" role="menu">
                    <li>
                      <a>
                        <span class="image"><img src="{{Url('images/user.png')}}" alt="Profile Image" /></span>
                        <span>
                          <span>{{Session::get('login')}}</span>
                          <span class="time">3 mins ago</span>
                        </span>
                        <span class="message">
                          Film festivals used to be do-or-die moments for movie makers. They were where...
                        </span>
                      </a>
                    </li>
                    <li>
                      <a>
                        <span class="image"><img src="images/user.png" alt="Profile Image" /></span>
                        <span>
                          <span>{{Session::get('login')}}</span>
                          <span class="time">3 mins ago</span>
                        </span>
                        <span class="message">
                          Film festivals used to be do-or-die moments for movie makers. They were where...
                        </span>
                      </a>
                    </li>
                    <li>
                      <a>
                        <span class="image"><img src="images/user.png" alt="Profile Image" /></span>
                        <span>
                          <span>{{Session::get('login')}}</span>
                          <span class="time">3 mins ago</span>
                        </span>
                        <span class="message">
                          Film festivals used to be do-or-die moments for movie makers. They were where...
                        </span>
                      </a>
                    </li>
                    <li>
                      <a>
                        <span class="image"><img src="images/user.png" alt="Profile Image" /></span>
                        <span>
                          <span>{{Session::get('login')}}</span>
                          <span class="time">3 mins ago</span>
                        </span>
                        <span class="message">
                          Film festivals used to be do-or-die moments for movie makers. They were where...
                        </span>
                      </a>
                    </li>
                    <li>
                      <div class="text-center">
                        <a>
                          <strong>See All Alerts</strong>
                          <i class="fa fa-angle-right"></i>
                        </a>
                      </div>
                    </li>
                  </ul>
                </li> -->

              <!-- <li role="presentation" class="dropdown">
                  <a href="javascript:;" class="dropdown-toggle info-number" data-toggle="dropdown" aria-expanded="false">
                    <i class="fa fa-envelope-o"></i>
                    <span class="badge bg-green">4</span>
                  </a>
                  <ul id="menu1" class="dropdown-menu list-unstyled msg_list" role="menu">
                    <li>
                      <a>
                        <span class="image"><img src="images/img.jpg" alt="Profile Image" /></span>
                        <span>
                          <span>Steven Yong</span>
                          <span class="time">3 mins ago</span>
                        </span>
                        <span class="message">
                          Film festivals used to be do-or-die moments for movie makers. They were where...
                        </span>
                      </a>
                    </li>
                    <li>
                      <a>
                        <span class="image"><img src="images/img.jpg" alt="Profile Image" /></span>
                        <span>
                          <span>Steven Yong</span>
                          <span class="time">3 mins ago</span>
                        </span>
                        <span class="message">
                          Film festivals used to be do-or-die moments for movie makers. They were where...
                        </span>
                      </a>
                    </li>
                    <li>
                      <a>
                        <span class="image"><img src="images/img.jpg" alt="Profile Image" /></span>
                        <span>
                          <span>Steven Yong</span>
                          <span class="time">3 mins ago</span>
                        </span>
                        <span class="message">
                          Film festivals used to be do-or-die moments for movie makers. They were where...
                        </span>
                      </a>
                    </li>
                    <li>
                      <a>
                        <span class="image"><img src="images/img.jpg" alt="Profile Image" /></span>
                        <span>
                          <span>Steven Yong</span>
                          <span class="time">3 mins ago</span>
                        </span>
                        <span class="message">
                          Film festivals used to be do-or-die moments for movie makers. They were where...
                        </span>
                      </a>
                    </li>
                    <li>
                      <div class="text-center">
                        <a>
                          <strong>See All Alerts</strong>
                          <i class="fa fa-angle-right"></i>
                        </a>
                      </div>
                    </li>
                  </ul>
                </li> -->

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
                  <ul class="dropdown-menu">
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

      @yield('content')

      <!-- footer content -->
      <footer>
        <div class="pull-right">
          1472088 - Steven Yong <br>
          1772044 - Roy Parsaoran <br>
          1772046 - Ariyanto Sani <br>
        </div>
        <div class="clearfix"></div>
      </footer>
      <!-- /footer content -->
    </div>
  </div>


  @yield('js')
  <script src="{{ URL::asset('vendors/notify/notify.js') }}"></script>
  <script>
    var x = document.getElementsByClassName("notif").length.toString();
    document.getElementById("bell").innerHTML = x;
    $.notify(x+" New Notification","info");

  </script>
  @yield('footer')

</body>

</html>
