@extends('layouts.dosen')

@section('css')
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!-- Bootstrap -->
<link href="{{URL::asset('vendors/bootstrap/dist/css/bootstrap.min.css')}}" rel="stylesheet">
<!-- Font Awesome -->
<link href="{{URL::asset('vendors/font-awesome/css/font-awesome.min.css')}}" rel="stylesheet">
<!-- NProgress -->
<link href="{{URL::asset('vendors/nprogress/nprogress.css')}}" rel="stylesheet">
<!-- iCheck -->
<link href="{{URL::asset('vendors/iCheck/skins/flat/green.css')}}" rel="stylesheet">
<!-- bootstrap-progressbar -->
<link href="{{URL::asset('vendors/bootstrap-progressbar/css/bootstrap-progressbar-3.3.4.min.css')}}" rel="stylesheet">
<!-- Datatables -->
<link href="{{URL::asset('vendors/datatables.net-bs/css/dataTables.bootstrap.min.css')}}" rel="stylesheet">
<link href="{{URL::asset('vendors/datatables.net-buttons-bs/css/buttons.bootstrap.min.css')}}" rel="stylesheet">
<link href="{{URL::asset('vendors/datatables.net-fixedheader-bs/css/fixedHeader.bootstrap.min.css')}}" rel="stylesheet">
<link href="{{URL::asset('vendors/datatables.net-responsive-bs/css/responsive.bootstrap.min.css')}}" rel="stylesheet">
<link href="{{URL::asset('vendors/datatables.net-scroller-bs/css/scroller.bootstrap.min.css')}}" rel="stylesheet">


<!-- Custom styling plus plugins -->
<link href="{{URL::asset('vendors/build/css/custom.min.css')}}" rel="stylesheet">

<style type="text/css">
.judul
{
  font-size: 25px;
}
.bucket
{
   border-collapse: collapse;
   border-spacing: 0;
   width: 100%;
   overflow-x:auto;
   border: 1px solid ;
}
.flag
{
  background-color: black;
  color:white;
  border-color: white;
}
pre
{
    background-color: lavender;
    font-size: 15px;
    font-weight:bold;
}

th, td
{
   text-align: left;
   padding: 10px;
}
#progressBar {
  width: 90%;
  margin: 10px auto;
  height: 22px;
  background-color: #0A5F44;
}

#progressBar div {
  height: 100%;
  text-align: right;
  padding: 0 10px;
  line-height: 22px; /* same as #progressBar height if we want text middle aligned */
  width: 0;
  background-color: #CBEA00;
  box-sizing: border-box;
}
</style>

@endsection

@section('content')
<!-- page content -->
<div class="right_col" role="main">
  <div class="">
    <div class="page-title">
      <div class="title_left">
        <h3>Tournament</h3>
      </div>
    </div>

    <div class="clearfix"></div>

    <div class="row">
   <div class="col-md-12 col-sm-12 col-xs-12">
     <div class="x_panel">
       <div class="x_title">
         <h2>Tournament Exam</h2>
         <ul class="nav navbar-right panel_toolbox">
           <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
           </li>

           </ul>
             <div class="clearfix"></div>
          </div>
          <div class="x_content">

            <div class="" role="tabpanel" data-example-id="togglable-tabs">
          <ul id="myTab" class="nav nav-tabs bar_tabs" role="tablist">
            <li role="presentation" class="active"><a href="#tab_content1" id="home-tab" role="tab" data-toggle="tab" aria-expanded="true">Exam</a></li>
            <!-- <li role="presentation" class=""><a href="#tab_content2" role="tab" id="profile-tab" data-toggle="tab" aria-expanded="false">Answer List</a></li> -->

            <br/>
          </ul>
          <div id="myTabContent" class="tab-content">

            <div role="tabpanel" class="tab-pane fade active in" id="tab_content1" aria-labelledby="home-tab">

              <div class="col-md-12 col-sm-12 col-xs-12">
                   <div align="left"><b>Start :</b> {{ date('d-M-Y H:i:s', strtotime($tournament->start)) }}</div>
                   <div align="left"><b>Finish :</b>{{ date('d-M-Y H:i:s', strtotime($tournament->finish)) }}</div>
                   <div align="center" class="judul"><b>{{$tournament->namaTournament}}</b></div>
                   <div id="progressBar">
                     <div></div>
                   </div>
             <div align="center" id="durasi"></div>
           <hr/>

          </div>
          <div class="col-md-12 col-sm-12 col-xs-12">
           <div align="Left" class="judul"><b>{{$banksoal->namaSoal}} (
             <?php if ($banksoal->tipeSoal == "gabungan"): ?>
              <font color="red"> Pilihan Ganda [{{count($totalPg)}}] + Isian [{{count($totalIsian)}}]   </font>
             <?php elseif($banksoal->tipeSoal == "isian"): ?>
              <font color="red">  Isian </font>
             <?php elseif($banksoal->tipeSoal == "pg"): ?>
              <font color="red">  Pilihan Ganda </font>
             <?php elseif($banksoal->tipeSoal == "isiancheck"): ?>
              <font color="red">  Isian Check</font>
            <?php elseif($banksoal->tipeSoal == "gabungancheck"): ?>
             <font color="red">  Gabungan Check</font>
             <?php endif; ?>
             )</b></div>
           <hr/>



<?php if ($banksoal->tipeSoal == "pg"): ?>

<!-- Pilihan ganda -->
{!! Form::open(['method' => 'POST' , 'action' => ['tournamentController@answerPG',$tournament->id]]  ) !!}
<?php foreach ($soalpg as $pg): ?>
<pre>
{!! $pg->soal !!}
<br/>
</pre>
<div align="center">
 {!! $soalpg->links() !!}
</div>
<div>
<label class="control-label col-md-3 col-sm-3 col-xs-12" for="jumlahSoal">Pilihlah :</label><br/>
<div class="radio">
 <label>
   <input type="radio" class="flat" name="iCheck" value="{{$pg->a}}" > {{$pg->a}}
 </label>
</div>
<div class="radio">
 <label>
   <input type="radio" class="flat" name="iCheck" value="{{$pg->b}}" > {{$pg->b}}
 </label>
</div>
<div class="radio">
 <label>
   <input type="radio" class="flat" name="iCheck" value="{{$pg->c}}" > {{$pg->c}}
 </label>
</div>
<div class="radio">
 <label>
   <input type="radio" class="flat" name="iCheck"  value="{{$pg->d}}"> {{$pg->d}}
 </label>
</div>
<div class="radio">
 <label>
   <input type="radio" class="flat" name="iCheck" value="{{$pg->e}}" > {{$pg->e}}
 </label>
</div>
</div>
<?php endforeach; ?>
<?php foreach ($soalpg as $soals): ?>
  <input type="hidden" id="idsoalpg" name="idsoalpg" value="{!! $soals->id !!}">
<?php endforeach; ?>
<!-- <div align="right">
<input class="btn btn-primary" type="reset" value="Reset">
<a href="{{Url('/tournament/exam/pg/'.$tournament->id)}}"><button class="btn btn-primary" type="submit" >Answer</button></a>
</div> -->
{!! Form::close()!!}



<!-- Isian -->
<?php elseif ($banksoal->tipeSoal == "isian"): ?>
{!! Form::open(['method' => 'POST' , 'action' => ['tournamentController@answerIsian',$tournament->id]]  ) !!}
<?php foreach ($soalisian as $isi): ?>
<pre>
{!! $isi->soal !!}
<br/>
</pre>
<?php endforeach; ?>
<div align="center">
 {!! $soalisian->links() !!}
</div>
<div>
<label class="control-label col-md-3 col-sm-3 col-xs-12" for="jumlahSoal">Jawaban Isian</label><br/>
<textarea id="jawabanisian" name="jawabanisian" class="form-control col-md-7 col-xs-12" rows="4" cols="150"></textarea>
</div>
<?php foreach ($soalisian as $soals): ?>
  <input type="hidden" id="idsoalisian" name="idsoalisian" value="{!! $soals->id !!}">
<?php endforeach; ?>
<!-- <div align="right">
<input class="btn btn-primary" type="reset" value="Reset">
<a href="{{Url('/tournament/exam/isi/'.$tournament->id)}}"><button class="btn btn-primary" type="submit" >Answer</button></a>
</div> -->
{!! Form::close()!!}


 <!-- End Isian -->

 <!-- Isian Check-->
<?php elseif ($banksoal->tipeSoal == "isiancheck"): ?>
{!! Form::open(['method' => 'POST' , 'action' => ['tournamentController@answerIsian',$tournament->id]]  ) !!}
<?php foreach ($soalisian as $isi): ?>
<pre>
{!! $isi->soal !!}
<br/>
</pre>
<?php endforeach; ?>
<div align="center">
{!! $soalisian->links() !!}
</div>
<div>
<label class="control-label col-md-3 col-sm-3 col-xs-12" for="jumlahSoal">Jawaban Isian</label><br/>
<textarea id="jawabanisian" name="jawabanisian" class="form-control col-md-7 col-xs-12" rows="4" cols="150"></textarea>
</div>
<?php foreach ($soalisian as $soals): ?>
  <input type="hidden" id="idsoalisian" name="idsoalisian" value="{!! $soals->id !!}">
<?php endforeach; ?>
<!-- <div align="right">
<input class="btn btn-primary" type="reset" value="Reset">
 <a href="{{Url('/tournament/exam/isi/'.$tournament->id)}}"><button class="btn btn-primary" type="submit" >Answer</button></a>
 </div> -->
 {!! Form::close()!!}


  <!-- End Isian Check -->

<!-- Gabungan -->
<?php elseif ($banksoal->tipeSoal == "gabungan"): ?>
{!! Form::open(['method' => 'POST' , 'action' => ['tournamentController@answerPG',$tournament->id]]  ) !!}
<label>Pilihan Ganda</label>
<?php foreach ($soalpg as $pg): ?>
<pre>
{!! $pg->soal !!}
<br/>
</pre>
<div align="center">
 {!! $soalpg->appends(['soalpg' => $soalpg->currentPage()])->links() !!}
</div>
<label class="control-label col-md-3 col-sm-3 col-xs-12" for="jumlahSoal">Pilihlah :</label><br/>
<div class="radio">
 <label>
   <input type="radio" class="flat" name="iCheck" > {{$pg->a}}
 </label>
</div>
<div class="radio">
 <label>
   <input type="radio" class="flat" name="iCheck" > {{$pg->b}}
 </label>
</div>
<div class="radio">
 <label>
   <input type="radio" class="flat" name="iCheck" > {{$pg->c}}
 </label>
</div>
<div class="radio">
 <label>
   <input type="radio" class="flat" name="iCheck" > {{$pg->d}}
 </label>
</div>
<div class="radio">
 <label>
   <input type="radio" class="flat" name="iCheck" > {{$pg->e}}
 </label>
</div>
<?php foreach ($soalpg as $soals): ?>
  <input type="hidden" id="idsoalpg" name="idsoalpg" value="{!! $soals->id !!}">
<?php endforeach; ?>
<!-- <div align="right">
<input class="btn btn-primary" type="reset" value="Reset">
<a href="{{Url('/tournament/exam/pg/'.$tournament->id)}}"><button class="btn btn-primary" type="submit" >Answer</button></a>
</div> -->
{!! Form::close()!!}

<?php endforeach; ?>
<div class="ln_solid"></div>
{!! Form::open(['method' => 'POST' , 'action' => ['tournamentController@answerIsian',$tournament->id]]  ) !!}
<label>Isian</label>
<?php foreach ($soalisian as $isi): ?>
<pre>
{!! $isi->soal !!}
<br/>
</pre>
<?php endforeach; ?>
<div align="center">
 {!! $soalisian->appends(['soalisian' => $soalisian->currentPage()])->links() !!}
</div>
<label class="control-label col-md-3 col-sm-3 col-xs-12" for="jumlahSoal">Jawaban Isian</label><br/>
<div class="col-md-6 col-sm-6 col-xs-12">
  <textarea id="jawabanisian" name="jawabanisian" class="form-control col-md-7 col-xs-12" rows="4" cols="150"></textarea>
</div>
<?php foreach ($soalisian as $soals): ?>
  <input type="hidden" id="idsoalisian" name="idsoalisian" value="{!! $soals->id !!}">
<?php endforeach; ?>
<!-- <div align="right">
<input class="btn btn-primary" type="reset" value="Reset">
<a href="{{Url('/tournament/exam/isi/'.$tournament->id)}}"><button class="btn btn-primary" type="submit" >Answer</button></a>
</div> -->
{!! Form::close()!!}

<div class="ln_solid"></div>




<!-- End Gabugnan -->

<!-- Gabungan Check-->
<?php elseif ($banksoal->tipeSoal == "gabungancheck"): ?>
{!! Form::open(['method' => 'POST' , 'action' => ['tournamentController@answerPG',$tournament->id]]  ) !!}
<label>Pilihan Ganda</label>
<?php foreach ($soalpg as $pg): ?>
<pre>
{!! $pg->soal !!}
<br/>
</pre>
<div align="center">
{!! $soalpg->appends(['soalpg' => $soalpg->currentPage()])->links() !!}
</div>
<label class="control-label col-md-3 col-sm-3 col-xs-12" for="jumlahSoal">Pilihlah :</label><br/>
<div class="radio">
 <label>
   <input type="radio" class="flat" name="iCheck" > {{$pg->a}}
 </label>
</div>
<div class="radio">
 <label>
   <input type="radio" class="flat" name="iCheck" > {{$pg->b}}
 </label>
</div>
<div class="radio">
 <label>
   <input type="radio" class="flat" name="iCheck" > {{$pg->c}}
 </label>
</div>
<div class="radio">
 <label>
   <input type="radio" class="flat" name="iCheck" > {{$pg->d}}
 </label>
</div>
<div class="radio">
 <label>
   <input type="radio" class="flat" name="iCheck" > {{$pg->e}}
 </label>
</div>
<?php foreach ($soalpg as $soals): ?>
  <input type="hidden" id="idsoalpg" name="idsoalpg" value="{!! $soals->id !!}">
<?php endforeach; ?>
<!-- <div align="right">
<input class="btn btn-primary" type="reset" value="Reset">
<a href="{{Url('/tournament/exam/pg/'.$tournament->id)}}"><button class="btn btn-primary" type="submit" >Answer</button></a>
</div> -->
{!! Form::close()!!}

<?php endforeach; ?>
<div class="ln_solid"></div>
{!! Form::open(['method' => 'POST' , 'action' => ['tournamentController@answerIsian',$tournament->id]]  ) !!}
<label>Isian</label>
<?php foreach ($soalisian as $isi): ?>
<pre>
{!! $isi->soal !!}
<br/>
</pre>
<?php endforeach; ?>
<div align="center">
 {!! $soalisian->appends(['soalisian' => $soalisian->currentPage()])->links() !!}
</div>
<label class="control-label col-md-3 col-sm-3 col-xs-12" for="jumlahSoal">Jawaban Isian</label><br/>
<div class="col-md-6 col-sm-6 col-xs-12">
  <textarea id="jawabanisian" name="jawabanisian" class="form-control col-md-7 col-xs-12" rows="4" cols="150"></textarea>
</div>
<?php foreach ($soalisian as $soals): ?>
  <input type="hidden" id="idsoalisian" name="idsoalisian" value="{!! $soals->id !!}">
<?php endforeach; ?>
<!-- <div align="right">
<input class="btn btn-primary" type="reset" value="Reset">
<a href="{{Url('/tournament/exam/isi/'.$tournament->id)}}"><button class="btn btn-primary" type="submit" >Answer</button></a>
</div> -->
{!! Form::close()!!}

<div class="ln_solid"></div>


<?php endif; ?>
<!-- End Gabugnan Check -->



            </div>
          </div>

            <div role="tabpanel" class="tab-pane fade" id="tab_content2" aria-labelledby="profile-tab">



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
      <!-- Timer Countdown -->
      <script type="text/javascript">
      // Set the date we're counting down to
      var countDownDate = new Date("{{$tournament->finish}}").getTime();

      // Update the count down every 1 second
      var x = setInterval(function() {

      // Get todays date and time
      var now = new Date().getTime();

      // Find the distance between now an the count down date
      var distance = countDownDate - now ;

      // Time calculations for days, hours, minutes and seconds

      var days = Math.floor(distance / (1000 * 60 * 60 * 24));
      var hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
      var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
      var seconds = Math.floor((distance % (1000 * 60)) / 1000);

      // var hours =Math.floor(distance/60);
      // var sisa = distance%60;
      // var minutes =Math.floor(sisa);
      // var seconds = Math.floor(sisa/3600);

      // Output the result in an element with id="durasi"
      document.getElementById("durasi").innerHTML = days + "d " + hours + "h "
      + minutes + "m " + seconds + "s " ;


      // If the count down is over, write some text
      if (distance < 0) {
          clearInterval(x);
          document.getElementById("durasi").innerHTML = "EXPIRED";
      }
  }, 1000);


//Prograsss bar
  function progress(timeleft, timetotal, $element) {
  var progressBarWidth = timeleft * $element.width() / timetotal;
  $element.find('div').animate({ width: progressBarWidth }, 500).html(timeleft + " seconds to go");
  if(timeleft > 0) {
      setTimeout(function() {
          progress(timeleft - 1, timetotal, $element);
      }, 1000);
  }
  };

  progress({{$totalDuration}}, {{$totalDuration}}, $('#progressBar'));

  </script>


  <!-- jQuery -->
  <script src="{{ asset('vendors/jquery/dist/jquery.min.js')}}"></script>
  <!-- Bootstrap -->
  <script src="{{ asset('vendors/bootstrap/dist/js/bootstrap.min.js')}}"></script>
  <!-- FastClick -->
  <script src="{{ asset('vendors/fastclick/lib/fastclick.js')}}"></script>
  <!-- NProgress -->
  <script src="{{ asset('vendors/nprogress/nprogress.js')}}"></script>
  <!-- iCheck -->
  <script src="{{ asset('vendors/iCheck/icheck.min.js')}}"></script>
  <!-- bootstrap-progressbar -->
  <script src="{{ asset('vendors/bootstrap-progressbar/bootstrap-progressbar.min.js')}}"></script>
  <!-- Datatables -->
  <script src="{{ asset('vendors/datatables.net/js/jquery.dataTables.min.js')}}"></script>
  <script src="{{ asset('vendors/datatables.net-bs/js/dataTables.bootstrap.min.js')}}"></script>
  <script src="{{ asset('vendors/datatables.net-buttons/js/dataTables.buttons.min.js')}}"></script>
  <script src="{{ asset('vendors/datatables.net-buttons-bs/js/buttons.bootstrap.min.js')}}"></script>
  <script src="{{ asset('vendors/datatables.net-buttons/js/buttons.flash.min.js')}}"></script>
  <script src="{{ asset('vendors/datatables.net-buttons/js/buttons.html5.min.js')}}"></script>
  <script src="{{ asset('vendors/datatables.net-buttons/js/buttons.print.min.js')}}"></script>
  <script src="{{ asset('vendors/datatables.net-fixedheader/js/dataTables.fixedHeader.min.js')}}"></script>
  <script src="{{ asset('vendors/datatables.net-keytable/js/dataTables.keyTable.min.js')}}"></script>
  <script src="{{ asset('vendors/datatables.net-responsive/js/dataTables.responsive.min.js')}}"></script>
  <script src="{{ asset('vendors/datatables.net-responsive-bs/js/responsive.bootstrap.js')}}"></script>
  <script src="{{ asset('vendors/datatables.net-scroller/js/dataTables.scroller.min.js')}}"></script>
  <script src="{{ asset('vendors/jszip/dist/jszip.min.js')}}"></script>
  <script src="{{ asset('vendors/pdfmake/build/pdfmake.min.js')}}"></script>
  <script src="{{ asset('vendors/pdfmake/build/vfs_fonts.js')}}"></script>

  <!-- Custom Theme Scripts -->
  <script src="{{ asset('vendors/build/js/custom.min.js')}}"></script>

@endsection
  </body>
</html>
