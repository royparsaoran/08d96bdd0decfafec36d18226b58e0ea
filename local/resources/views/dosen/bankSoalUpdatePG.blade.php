@extends('layouts.dosen')

@section('css')
    <!-- Bootstrap -->
    <link href="{{URL::asset('vendors/bootstrap/dist/css/bootstrap.min.css')}}" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="{{URL::asset('vendors/font-awesome/css/font-awesome.min.css')}}" rel="stylesheet">
    <!-- NProgress -->
    <link href="{{URL::asset('vendors/nprogress/nprogress.css')}}" rel="stylesheet">
    <!-- bootstrap-daterangepicker -->
    <link href="{{URL::asset('vendors/bootstrap-daterangepicker/daterangepicker.css')}}" rel="stylesheet">
    <!-- Animate.css -->
    <link href="{{URL::asset('vendors/animate.css/animate.min.css')}}" rel="stylesheet">
    <!-- bootstrap-datetimepicker -->
    <link href="{{URL::asset('vendors/bootstrap-datetimepicker/build/css/bootstrap-datetimepicker.css')}}" rel="stylesheet">
    <!-- Custom Theme Style -->
    <link href="{{URL::asset('vendors/build/css/custom.min.css')}}" rel="stylesheet">
    <!-- iCheck -->
   <link href="{{URL::asset('vendors/iCheck/skins/flat/green.css')}}" rel="stylesheet">
   <!-- bootstrap-wysiwyg -->
   <link href="{{URL::asset('vendors/google-code-prettify/bin/prettify.min.css')}}" rel="stylesheet">
   <!-- Select2 -->
    <link href="{{URL::asset('vendors/select2/dist/css/select2.min.css')}}" rel="stylesheet">
   <!-- Datatables -->
   <link href="{{URL::asset('vendors/datatables.net-bs/css/dataTables.bootstrap.min.css')}}" rel="stylesheet">
   <link href="{{URL::asset('vendors/datatables.net-buttons-bs/css/buttons.bootstrap.min.css')}}" rel="stylesheet">
   <link href="{{URL::asset('vendors/datatables.net-fixedheader-bs/css/fixedHeader.bootstrap.min.css')}}" rel="stylesheet">
   <link href="{{URL::asset('vendors/datatables.net-responsive-bs/css/responsive.bootstrap.min.css')}}" rel="stylesheet">
   <link href="{{URL::asset('vendors/datatables.net-scroller-bs/css/scroller.bootstrap.min.css')}}" rel="stylesheet">

@endsection

@section('content')
<!-- page content -->
  <div class="right_col" role="main">
    <div class="">
      <div class="page-title">
        <div class="title_left">
          <h3>Bank Soal</h3>
        </div>
      </div>
      <div class="clearfix"></div>

      <div class="row">

        <div class="col-md-12 col-sm-12 col-xs-12">
          <div class="x_panel">
            <div class="x_title">
              <h2>{{$banksoal->namaSoal}}</h2>
              <ul class="nav navbar-right panel_toolbox">
                <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                </li>
              </ul>
              <div class="clearfix"></div>
            </div>
            <div class="x_content">


                    {!! Form::open(['method' => 'POST' , 'action' => ['bankSoalController@updateSoalPG',$banksoal->id,$curPG->id]  , 'class' => 'form-horizontal form-label-left','enctype'=> "multipart/form-data" ]  ) !!}

                                  <div class="form-group">
                                    <label>Title</label>
                                    <input type="text" class="form-control" id="titlepg" name="titlepg" required="required" value="{{$curPG->title}}">
                                  </div>

                                  <div class="form-group">
                                     <label>Soal Pilihan Ganda</label>
                                        <textarea name="soalpg" id="soalpg" rows="20" class="form-control" required="required" >{{$curPG->soal}}</textarea>
                                  </div>

                                  <div class="form-group">
                                    <label for="gambar">Gambar</label>
                                    <input id="gambar" type="file" name="gambar" value="{{$curPG->gambar}}" >
                                  </div>

                                  <div class="form-group">
                                    <label>A</label>
                                    <input type="text" required="required" class="form-control" placeholder="satu..." name="a" id="a" value="{{$curPG->a}}">
                                  </div>

                                  <div class="form-group">
                                    <label>B</label>
                                    <input type="text"  required="required" class="form-control" placeholder="dua..." name="b" id="b" value="{{$curPG->b}}">
                                  </div>

                                  <div class="form-group">
                                    <label>C</label>
                                    <input type="text" required="required" class="form-control" placeholder="tiga..." name="c" id="c" value="{{$curPG->c}}">
                                  </div>

                                  <div class="form-group">
                                    <label>D</label>
                                    <input type="text"  required="required" class="form-control" placeholder="empat..." name="d" id="d" value="{{$curPG->d}}">
                                  </div>

                                  <div class="form-group">
                                    <label>E</label>
                                    <input type="text"  required="required" class="form-control" placeholder="lima..." name="e" id="e" value="{{$curPG->e}}">
                                  </div>

                                  <div class="form-group">
                                    <label>Kunci Jawaban (<b><font color="red">CASE SENSITIVE</font></b>)</label>
                                    <input type="text"  required="required" class="form-control" placeholder="lima..." name="kunciJawabanpg" id="kunciJawabanpg" value="{{$curPG->kunciJawaban}}">
                                  </div>

                                  <div class="form-group">
                                    <label>Kategori</label>
                                    <select class="form-control" required="required" id="kategoripg" name="kategoripg" >
                                      <?php if ($curPG->kategori == "programming"): ?>
                                        <option value="programming" selected>Programming</option>
                                        <option value="jaringan">Jaringan</option>
                                        <option value="mulitmedia">Multimedia</option>
                                        <option value="sisteminformasi">Sistem Informasi</option>
                                        <option value="mobile">Mobile</option>
                                        <option value="game">Game</option>
                                        <option value="array">Array</option>
                                        <option value="perulangan">Perulangan</option>
                                        <option value="matriks">Matriks</option>
                                      <?php elseif ($curPG->kategori == "jaringan"): ?>
                                        <option value="programming">Programming</option>
                                        <option value="jaringan" selected>Jaringan</option>
                                        <option value="mulitmedia">Multimedia</option>
                                        <option value="sisteminformasi">Sistem Informasi</option>
                                        <option value="mobile">Mobile</option>
                                        <option value="game">Game</option>
                                        <option value="array">Array</option>
                                        <option value="perulangan">Perulangan</option>
                                        <option value="matriks">Matriks</option>
                                      <?php elseif ($curPG->kategori == "mulitmedia"): ?>
                                        <option value="programming">Programming</option>
                                        <option value="jaringan">Jaringan</option>
                                        <option value="mulitmedia" selected>Multimedia</option>
                                        <option value="sisteminformasi">Sistem Informasi</option>
                                        <option value="mobile">Mobile</option>
                                        <option value="game">Game</option>
                                        <option value="array">Array</option>
                                        <option value="perulangan">Perulangan</option>
                                        <option value="matriks">Matriks</option>
                                      <?php elseif ($curPG->kategori == "sisteminformasi"): ?>
                                        <option value="programming">Programming</option>
                                        <option value="jaringan">Jaringan</option>
                                        <option value="mulitmedia">Multimedia</option>
                                        <option value="sisteminformasi"selected>Sistem Informasi</option>
                                        <option value="mobile">Mobile</option>
                                        <option value="game">Game</option>
                                        <option value="array">Array</option>
                                        <option value="perulangan">Perulangan</option>
                                        <option value="matriks">Matriks</option>
                                      <?php elseif ($curPG->kategori == "mobile"): ?>
                                        <option value="programming">Programming</option>
                                        <option value="jaringan">Jaringan</option>
                                        <option value="mulitmedia">Multimedia</option>
                                        <option value="sisteminformasi">Sistem Informasi</option>
                                        <option value="mobile" selected>Mobile</option>
                                        <option value="game">Game</option>
                                        <option value="array">Array</option>
                                        <option value="perulangan">Perulangan</option>
                                        <option value="matriks">Matriks</option>
                                      <?php elseif ($curPG->kategori == "game"): ?>
                                        <option value="programming">Programming</option>
                                        <option value="jaringan">Jaringan</option>
                                        <option value="mulitmedia">Multimedia</option>
                                        <option value="sisteminformasi">Sistem Informasi</option>
                                        <option value="mobile">Mobile</option>
                                        <option value="game" selected>Game</option>
                                        <option value="array">Array</option>
                                        <option value="perulangan">Perulangan</option>
                                        <option value="matriks">Matriks</option>
                                      <?php elseif ($curPG->kategori == "array"): ?>
                                        <option value="programming">Programming</option>
                                        <option value="jaringan">Jaringan</option>
                                        <option value="mulitmedia">Multimedia</option>
                                        <option value="sisteminformasi">Sistem Informasi</option>
                                        <option value="mobile">Mobile</option>
                                        <option value="game">Game</option>
                                        <option value="array" selected>Array</option>
                                        <option value="perulangan">Perulangan</option>
                                        <option value="matriks">Matriks</option>
                                      <?php elseif ($curPG->kategori == "perulangan"): ?>
                                        <option value="programming">Programming</option>
                                        <option value="jaringan">Jaringan</option>
                                        <option value="mulitmedia">Multimedia</option>
                                        <option value="sisteminformasi">Sistem Informasi</option>
                                        <option value="mobile">Mobile</option>
                                        <option value="game">Game</option>
                                        <option value="array">Array</option>
                                        <option value="perulangan" selected>Perulangan</option>
                                        <option value="matriks">Matriks</option>
                                      <?php elseif ($curPG->kategori == "matriks"): ?>
                                        <option value="programming">Programming</option>
                                        <option value="jaringan">Jaringan</option>
                                        <option value="mulitmedia">Multimedia</option>
                                        <option value="sisteminformasi">Sistem Informasi</option>
                                        <option value="mobile">Mobile</option>
                                        <option value="game">Game</option>
                                        <option value="array">Array</option>
                                        <option value="perulangan">Perulangan</option>
                                        <option value="matriks" selected>Matriks</option>
                                      <?php endif; ?>
                                    </select>
                                  </div>

                                  <div class="form-group">
                                    <label>Level</label>
                                    <select class="form-control" required="required" id="levelpg" name="levelpg" >
                                      <?php if ($curPG->level == "easy"): ?>
                                        <option value="easy" selected="selected" >Easy</option>
                                        <option value="medium" >Medium</option>
                                        <option value="hard" >Hard</option>
                                      <?php elseif ($curPG->level == "medium"): ?>
                                        <option value="easy" >Easy</option>
                                        <option value="medium" selected >Medium</option>
                                        <option value="hard" >Hard</option>
                                      <?php elseif ($curPG->level == "hard"): ?>
                                        <option value="easy" >Easy</option>
                                        <option value="medium" >Medium</option>
                                        <option value="hard" selected>Hard</option>
                                      <?php endif; ?>
                                    </select>
                                  </div>


                                  <div align="right">
                                     <button type="submit" value="Update" id="btnUpdate" name="btnUpdate" class="btn btn-info">UPDATE</button>
                                  </div>

                              {!!Form::close()!!}

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
<!-- bootstrap-daterangepicker -->
<script src="{{asset('vendors/moment/min/moment.min.js')}}"></script>
<script src="{{asset('vendors/bootstrap-daterangepicker/daterangepicker.js')}}"></script>
<!-- bootstrap-datetimepicker -->
<script src="{{asset('vendors/bootstrap-datetimepicker/build/js/bootstrap-datetimepicker.min.js')}}"></script>
<!-- validator -->
<script src="{{asset('vendors/validator/validator.js')}}"></script>
<!-- iCheck -->
<script src="{{asset('vendors/iCheck/icheck.min.js')}}"></script>
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
<!-- bootstrap-wysiwyg -->
<script src="{{asset('vendors/bootstrap-wysiwyg/js/bootstrap-wysiwyg.min.js')}}"></script>
<script src="{{asset('vendors/jquery.hotkeys/jquery.hotkeys.js')}}"></script>
<script src="{{asset('vendors/google-code-prettify/src/prettify.js')}}"></script>
<!-- Select2 -->
<script src="{{asset('vendors/select2/dist/js/select2.full.min.js')}}"></script>
<!-- Autosize -->
<script src="{{asset('vendors/autosize/dist/autosize.min.js')}}"></script>
<!-- jQuery autocomplete -->
<script src="{{asset('vendors/devbridge-autocomplete/dist/jquery.autocomplete.min.js')}}"></script>
<!-- Parsley -->
<!-- <script src="{{asset('vendors/parsleyjs/dist/parsley.min.js')}}"></script> -->

<!-- Custom Theme Scripts -->
<script src="{{asset('vendors/build/js/custom.min.js')}}"></script>
<script type="text/javascript">



var select_all = document.getElementById("select_all"); //select all checkbox
var checkboxes = document.getElementsByClassName("checkbox"); //checkbox items

//select all checkboxes
select_all.addEventListener("change", function(e){
    for (i = 0; i < checkboxes.length; i++) {
        checkboxes[i].checked = select_all.checked;
    }
});


for (var i = 0; i < checkboxes.length; i++) {
    checkboxes[i].addEventListener('change', function(e){ //".checkbox" change
        //uncheck "select all", if one of the listed checkbox item is unchecked
        if(this.checked == false){
            select_all.checked = false;
        }
        //check "select all" if all checkbox items are checked
        if(document.querySelectorAll('.checkbox:checked').length == checkboxes.length){
            select_all.checked = true;
        }
    });
}

var select_all2 = document.getElementById("select_all2"); //select all checkbox
var checkboxes2 = document.getElementsByClassName("checkbox2"); //checkbox items

//select all checkboxes
select_all2.addEventListener("change", function(e){
    for (i = 0; i < checkboxes2.length; i++) {
        checkboxes2[i].checked = select_all2.checked;
    }
});


for (var i = 0; i < checkboxes2.length; i++) {
    checkboxes2[i].addEventListener('change', function(e){ //".checkbox" change
        //uncheck "select all", if one of the listed checkbox item is unchecked
        if(this.checked == false){
            select_all2.checked = false;
        }
        //check "select all" if all checkbox items are checked
        if(document.querySelectorAll('.checkbox2:checked').length == checkboxes2.length){
            select_all2.checked = true;
        }
    });
}


    $('#myDatepicker').datetimepicker();

    $('#myDatepicker2').datetimepicker({
        format: 'DD-MMM-YYYY'
    });

    $('#myDatepicker3').datetimepicker({
        format: 'HH:mm:ss A'
    });

    $('#myDatepicker4').datetimepicker({
        ignoreReadonly: true,
        allowInputToggle: true
    });
    $('#myDatepicker9').datetimepicker({
        format: 'DD/MM/YYYY'
    });

    $('#datetimepicker6').datetimepicker();

    $('#datetimepicker7').datetimepicker({
        useCurrent: false
    });

    $("#datetimepicker6").on("dp.change", function(e) {
        $('#datetimepicker7').data("DateTimePicker").minDate(e.date);
    });

    $("#datetimepicker7").on("dp.change", function(e) {
        $('#datetimepicker6').data("DateTimePicker").maxDate(e.date);
    });
</script>
@endsection
  </body>
</html>
