@extends('layouts.dosen')
@section('css')
@section('header')
<link href="//cdnjs.cloudflare.com/ajax/libs/x-editable/1.5.0/bootstrap3-editable/css/bootstrap-editable.css"
  rel="stylesheet" />
<meta name="csrf-token" content="{{ csrf_token() }}">
@endsection
<!-- Bootstrap -->
<link href="vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
<!-- Font 1 -->
<link href="vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
<!-- NProgress -->
<link href="vendors/nprogress/nprogress.css" rel="stylesheet">
<!-- bootstrap-progressbar -->
<link href="vendors/bootstrap-progressbar/css/bootstrap-progressbar-3.3.4.min.css" rel="stylesheet">
<!-- Custom Theme Style -->
<link href="vendors/build/css/custom.min.css" rel="stylesheet">
<link href="vendors/bootstrap-survey/css/scale.css" rel="stylesheet">
@endsection
@section('content')
<!-- page content -->
<div class="right_col" role="main">
  <div class="">
    <div class="page-title">
      <div class="title_left">
      </div>
    </div>
    <div class="clearfix"></div>
    <div class="row">
      <div class="col-md-12 col-sm-12 col-xs-12">
        <div class="x_panel">
          <div class="x_title">
            <ul class="nav navbar-right panel_toolbox">
              <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a></li>
              <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button"
                  aria-expanded="false"><i class="fa fa-wrench"></i></a></li>
              <li><a class="close-link"><i class="fa fa-close"></i></a></li>
            </ul>
            <div class="clearfix"></div>
          </div>
          <div class="x_content">
            <h1 align="center">Syllabus</h1>
            <div style="text-align: left; margin-bottom: 17px">
              <form method="POST" action="{{url('syllabusDosen')}}">
                {{csrf_field()}}
                <label for="heard">Mata Kuliah :</label>
                <select class="btn btn-primary dropdown-toggle" name="idmaster" id="namaMK">
                  <option value="" style="text-align: center;">--Pilih--</option>
                  <?php foreach ($dataMK as $dtmk ): 
                                ?>
                  <option value="{{ $dtmk->idMasterDKBS }}" name="idmaster">{{ $dtmk->kodeMK }} - {{ $dtmk->namaMK }} (
                    {{ $dtmk->kelas }} )</option>
                  <?php endforeach ?>
                  <div align="right"><input type="submit" name="Submit" class="btn btn-round btn-primary" value="GO"
                      id="btnnn" disabled=""></div>
            </div>
            </form>
            </select>
            <?php $id=0; ?>
            
            <?php foreach ($currentMK as $cmk ): ?>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <div style="background-color: #2a3f54;">
              <h1 style="text-align: center ;color:white">{{ $cmk->kodeMK }} - {{ $cmk->namaMK }} ( {{ $cmk->kelas }} )
              </h1>
            </div>
            <?php if (session('message') != null): ?>
            <div class="alert alert-success">
              <?php echo  session('message') ?>
            </div>
            <?php endif ?>
            <?php $id = $cmk->idMasterDKBS ; ?>
            <?php endforeach ?>
            <?php if (count($pertemuan)>=20): ?>
            <div class="x_content" hidden="">
              <div align="right">
                <?php if (count($currentMK)==0 ): ?>
                <button type="button" class="btn btn-succes" data-toggle="modal" data-target="#exampleModal"
                  disabled="">
                  +Add
                </button>
                <?php else: ?>
                <button type="button" class="btn btn-succes" data-toggle="modal" data-target="#exampleModal">
                  +Add
                </button>
                <?php endif ?>
                <?php else: ?>
                <div class="x_content">
                  <div align="right">
                    <?php if (count($currentMK)==0 || count($pertemuan)==20): ?>
                    <button type="button" class="btn btn-succes" data-toggle="modal" data-target="#exampleModal"
                      disabled="">
                      +Add
                    </button>
                    <?php else: ?>
                    <button type="button" class="btn btn-succes" data-toggle="modal" data-target="#exampleModal">
                      +Add
                    </button>
                    <?php endif ?>
                    <?php endif ?>
                  </div>
                  <table class="table table-hover" id="view">
                    <thead>
                      <tr>
                        <th style="padding-left: 5%">Nama Pertemuan</th>
                        <th>Tanggal Pertemuan</th>
                        <th>Waktu Pertemuan</th>
                      </tr>
                    </thead>
                    <?php foreach ($pertemuan as $dtp ): ?>
                    <tbody>
                      <tr>
                        <td style="padding-left: 5%"><a href="#" class="nama" data-type="text"
                            data-pk="{{ $dtp->idPertemuan }}" data-url="syllabusDosen/{{$dtp->idPertemuan}}/editnama"
                            data-title="Masukan Nama Pertemuan">{{ $dtp->namaPertemuan }}</a></td>
                        <td><a href="#" class="tanggal" data-type="date" data-pk="{{ $dtp->idPertemuan }}"
                            data-url="syllabusDosen/{{$dtp->idPertemuan}}/edittanggal"
                            data-title="Masukan Tanggal">{{date('d M Y', strtotime($dtp->tanggal))  }}</a></td>
                        <td><a href="#" class="waktu" data-type="text"
                          data-pk="{{ $dtp->idPertemuan }}" data-url="syllabusDosen/{{$dtp->idPertemuan}}/editwaktu"
                          data-title="Masukan Waktu Pertemuan">{{ $dtp->waktu }}</a></td>
                      </tr>
                      
                    </tbody>
                    <?php endforeach ?>
                  </table>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
<!-- /page content -->
<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
  aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title" id="exampleModalLabel">Input Syllabus</h1>
        <?php foreach ($currentMK as $cmk ): ?>
        <h5 align="left">{{ $cmk->kodeMK }} - {{ $cmk->namaMK }} ( {{ $cmk->kelas }} )</h5>
        <?php endforeach ?>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form method="POST" action="syllabusDosen/store/{{$id}}">
          {{csrf_field()}}
          <div class="form-group">
            <label for="namaPertemuan">Banyak Pertemuan</label>
            <input type="number" class="form-control" id="banyakPertemuan" name="banyakPertemuan" placeholder="16"
              required="">
          </div>
          <button type="submit" name="save" class="btn btn-primary">Submit</button>
        </form>
      </div>
    </div>
  </div>
</div>

@endsection

@section('js')
<!-- jQuery -->
<script src="vendors/jquery/dist/jquery.min.js"></script>
<!-- Bootstrap -->
<script src="vendors/bootstrap/dist/js/bootstrap.min.js"></script>
<!-- FastClick -->
<script src="vendors/fastclick/lib/fastclick.js"></script>
<!-- NProgress -->
<script src="vendors/nprogress/nprogress.js"></script>
<!-- Chart.js -->
<script src="vendors/Chart.js/dist/Chart.min.js"></script>
<!-- bootstrap-progressbar -->
<script src="vendors/bootstrap-progressbar/bootstrap-progressbar.min.js"></script>
<!-- jQuery Knob -->
<script src="vendors/jquery-knob/dist/jquery.knob.min.js"></script>
<!-- Custom Theme Scripts -->
<script src="vendors/build/js/custom.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/x-editable/1.5.0/bootstrap3-editable/js/bootstrap-editable.min.js">
</script>
<script type="text/javascript">
  $(document).ready(function() {
      $('.waktu').editable();
      });  
      $(document).ready(function() {
      $('.tanggal').editable();
      });  
      $(document).ready(function() {
      $('.nama').editable();
      });  
      $.ajaxSetup({
      headers: {
        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
      }
      });
      $(document).ready(function(){
        $('#namaMK').change(function(){
          console.log($(this).val());
          $("#btnnn").prop('disabled', false);
        })
      })
</script>
@endsection
</body>

</html>