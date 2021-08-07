@extends('layouts.dosen')

@section('css')

<!-- Bootstrap -->
<link href="{{URL::asset('vendors/bootstrap/dist/css/bootstrap.min.css')}}" rel="stylesheet">
<!-- Font Awesome -->
<link href="{{URL::asset('vendors/font-awesome/css/font-awesome.min.css')}}" rel="stylesheet">
<!-- NProgress -->
<link href="{{URL::asset('vendors/nprogress/nprogress.css')}}" rel="stylesheet">
<!-- iCheck -->
<link href="{{URL::asset('vendors/iCheck/skins/flat/green.css')}}" rel="stylesheet">
<!-- Switchery -->
<link href="{{URL::asset('vendors/switchery/dist/switchery.min.css')}}" rel="stylesheet">
<!-- Datatables -->
<link href="{{URL::asset('vendors/datatables.net-bs/css/dataTables.bootstrap.min.css')}}" rel="stylesheet">
<link href="{{URL::asset('vendors/datatables.net-buttons-bs/css/buttons.bootstrap.min.css')}}" rel="stylesheet">
<link href="{{URL::asset('vendors/datatables.net-fixedheader-bs/css/fixedHeader.bootstrap.min.css')}}" rel="stylesheet">
<link href="{{URL::asset('vendors/datatables.net-responsive-bs/css/responsive.bootstrap.min.css')}}" rel="stylesheet">
<link href="{{URL::asset('vendors/datatables.net-scroller-bs/css/scroller.bootstrap.min.css')}}" rel="stylesheet">
<!-- Custom Theme Style -->
<link href="{{URL::asset('vendors/build/css/custom.min.css')}}" rel="stylesheet">

<style type="text/css">
	#nilai {
		font-size: 100px;
	}
</style>
@endsection

@section('content')
<!-- page content -->
<div class="right_col" role="main">
	<div class="">
		<div class="page-title">
			<div class="title_left">
				<h3>Administrasi <small></small></h3>
			</div>
		</div>

		<div class="clearfix"></div>


		<div class="col-md-12 col-sm-12 col-xs-12">
			<div class="x_panel">
				<div class="x_title">
					<h2><small></small></h2>
					<ul class="nav navbar-right panel_toolbox">
						<li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
						</li>
					</ul>
					<div class="clearfix"></div>
				</div>
				<div class="x_content">
					<form method="POST" action="{{url('administrasiDosen')}}">
						{{csrf_field()}}


						<label for="heard">Mata Kuliah :</label>
						<select class="btn btn-primary dropdown-toggle" name="idmaster" id="namaMK">
							<option value="" style="text-align: center;">--Pilih--</option>
							<?php foreach ($dataMK as $dtmk ): ?>

							<option value="{{ $dtmk->idMasterDKBS }}" name="idmaster">{{ $dtmk->kodeMK }} -
								{{ $dtmk->namaMK }} ( {{ $dtmk->kelas }} )</option>

							<?php endforeach ?>
							<div align="right"><input type="submit" name="Submit" class="btn btn-round btn-primary"
									value="GO" id="btngo"></div>
						</select>
					</form>

					<?php if (count($namaMK2)==0): ?>
					<span style="color: red;text-align:left">
						<p title="please select option in dropdown">Empty Data</p>
					</span>
					<div class="" role="tabpanel" data-example-id="togglable-tabs" hidden>
						<?php else: ?>

						<div class="" role="tabpanel" data-example-id="togglable-tabs">
							<?php endif ?>
							<br>
							<br>
							<br>
							<?php foreach ($namaMK2 as $nmk2 ): ?>
							<div style="background-color: #2a3f54">
								<h1 style="text-align: center ;color:white">{{ $nmk2->namaMK }} ({{ $nmk2->kelas }})
								</h1>
							</div>
							<?php endforeach ?>
							<ul id="myTab" class="nav nav-tabs bar_tabs" role="tablist">

								<li role="presentation" class="active"><a href="#tab_content1" id="home-tab" role="tab"
										data-toggle="tab" aria-expanded="true">Absensi</a></li>
								<li role="presentation" class=""><a href="#tab_content2" role="tab" id="profile-tab"
										data-toggle="tab" aria-expanded="false">Nilai</a></li>
								<br />
							</ul>
							<div id="myTabContent" class="tab-content">

								<div role="tabpanel" class="tab-pane fade active in" id="tab_content1"
									aria-labelledby="home-tab">

									<table id="datatable-buttons"
										class="table table-striped table-bordered bulk_action">
										<thead>
											<tr>
												<th rowspan="2">NRP</th>
												<th rowspan="2">Nama</th>
												<th colspan="{{count($pertemuan)}}" style="text-align:center">Pertemuan
												</th>
											</tr>
											<tr>
												<?php $x=1; ?>
												<?php foreach ($pertemuan as $prt ): ?>
												<th title="{{ $prt->namaPertemuan }} ({{ $prt->tanggal }})"
													style="text-align:center">
													{{ $x }}</th>
												<?php $x+=1; ?>
												<?php endforeach ?>
												<th>Total</th>
											</tr>
										</thead>
										<tbody>
											<?php foreach ($dataMhs as $nm ): ?>
											<tr>
												<?php $total = 0;?>
												<td>
													<!-- 	<a-->
													<!--href="{{ URL::asset('forumActivenessDetail').'/Reply/'.$nm->nrp }}" title="View Forum Reply">{{ $nm->nrp }}</a>-->
													{{ $nm->nrp }}

												</td>

												<td>
													<a href="{{asset('profileDosen/'.$nm->nrp)}}" title="View Profile">
														{{ $nm->namaMhs }}
													</a>
												</td>
												<?php foreach ($pertemuan as $prt ): ?>
												<td style="text-align:center">
													<?php 
												$count = 0;
												foreach ($dataAbsen as $da) {
													if ($da->createdby ==  $nm->nrp && $da->idpertemuan == $prt->idPertemuan) {
														$count++;
													}
												}
												
												foreach ($dataAssign as $da) {
													if ($da->createdby ==  $nm->nrp && $da->idPertemuan == $prt->idPertemuan) {
														$count++;
													}
												}
												$awal  = date('Y-m-d H:i:s', strtotime("$prt->tanggal $prt->jamMulai"));
												$akhir = date('Y-m-d H:i:s', strtotime("$prt->tanggal $prt->jamBerakir"));
												// dd($dataCR);
												foreach ($dataCR as $dcr) {
													
													if ($dcr->mahasiswa_NRP ==  $nm->nrp && $dcr->pertemuan_idPertemuan == $prt->idPertemuan && $dcr->timestamp>=$awal && $dcr->timestamp<=$akhir) {
														$count++;
													}
												}
												$temp=false;
												$val=0;
												foreach ($dataAdmin as $d) {
													if ($d->nrp ==  $nm->nrp && $d->idPertemuan == $prt->idPertemuan) {
														$temp=true;
														$val=$d->status;
													}
												}
												if($temp==false){
													if ($count>0) { ?>
													<span style="color: green;">
														<b>&#10004;</b>
														<?php $total++;?>
													</span>

													<?php }else{ ?>
													<span style="color: red;">
														<b>&#10008;</b>
													</span>
													<?php 
													}
												}else{
													if ($val==1) { ?>
													<span style="color: green;">
														<b>&#10004;</b>
														<?php $total++;?>
													</span>

													<?php }else{ ?>
													<span style="color: red;">
														<b>&#10008;</b>
													</span>
													<?php 
													}
												}
												
											 ?>
												</td>
												<?php endforeach ?>
												<td>
													{{$total}}
												</td>
											</tr>

											<?php endforeach ?>
										</tbody>
									</table>
									<br>
									<br>
									<br>
									<br>
									<div class="panel panel-default card">
										<div style="background-color: #2a3f54">
											<h1 style="text-align: center ;color:white">Update Kehadiran
											</h1>
										</div>
										<div class="panel-body post-body">
											<form class="form-inline" method="POST"
												action="{{url('administrasiDosen/processed')}}">
												{{csrf_field()}}
												<div class="form-group">
													<label for="heard">Mahasiswa :</label>
													<select class="btn btn-primary dropdown-toggle" name="nrp" id="nrp">
														<option value="" style="text-align: center;">--Pilih--</option>
														<?php foreach ($dataMhs as $nm ): ?>
														<option value="{{ $nm->nrp }}" name="nrp">
															{{ $nm->nrp }} - {{ $nm->namaMhs }}
														</option>
														<?php endforeach ?>
													</select>
												</div>
												<div class="form-group">
													<label for="heard">Pertemuan :</label>
													<select class="btn btn-primary dropdown-toggle" name="idPertemuan"
														id="idPertemuan">
														<option value="" style="text-align: center;">--Pilih--</option>
														<?php foreach ($pertemuan as $prt): ?>
														<option value="{{ $prt->idPertemuan }}" name="idPertemuan">
															{{$prt->namaPertemuan}}
														</option>
														<?php endforeach ?>
													</select>
												</div>
												<div class="form-group">
													<label for="heard">Kehadiran:</label>
													<select class="btn btn-primary dropdown-toggle" name="kehadiran"
														id="kehadiran">
														<option value="" style="text-align: center;">--Pilih--</option>
														<option value="hadir">Hadir</option>
														<option value="absen">Absen</option>
													</select>
												</div>
												<div class="form-group" style="align-content: right"><button
														type="submit" class="btn btn-round btn-primary"
														style="vertical-align: middle">Update</button></div>
											</form>
										</div>
									</div>
								</div>

								<div role="tabpanel" class="tab-pane fade" id="tab_content2"
									aria-labelledby="profile-tab">

									<table id="datatable-buttons" class="table table-striped table-bordered bulk_action"
										style="width:100%">
										<thead>
											<tr>
												<th rowspan="2">NRP</th>
												<th rowspan="2">Nama</th>
												<th colspan="{{count($assign)}}" style="text-align:center">Assignment
												</th>
											</tr>
											<tr>
												<?php $x=1; ?>
												<?php foreach ($assign as $ass ): ?>
												<th title="{{ $ass->title }}" style="text-align:center">{{ $x }}</th>
												<?php $x+=1; ?>
												<?php endforeach ?>
											</tr>
										</thead>
										<tbody>
											<?php foreach ($dataMhs as $nm ): ?>
											<tr>
												<td>
													<a href="#">{{ $nm->nrp }}</a>

												</td>
												<td>
													<a href="{{asset('profileDosen/'.$nm->nrp)}}" title="View Profile">
														{{ $nm->namaMhs }}
													</a>
												</td>
												<?php foreach ($assign as $ass ): ?>
												<td style="text-align:center">
													<?php foreach ($submission as $sub ): ?>
													<?php if($sub->assignmentId == $ass->id && $sub->pengirim == $nm->nrp){ ?>
													<?php if($sub->nilai == "-1"){ ?>
													{{"Belum Dinilai"}}
													<?php }else{ ?>
													{{$sub->nilai}}
													<?php } ?>
													<?php } 
											endforeach ?>
												</td>
												<?php endforeach ?>
											</tr>


											<?php endforeach ?>
										</tbody>
									</table>

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
		<script type="text/javascript">
			$(document).ready(function(){
					$('#namaMK').change(function(){
						console.log($(this).val());
						$("#btngo").prop('disabled', false);
	
					})
				})
		</script>
		<!-- Forecasting -->
		<script src="{{asset('vendors/forecasting/forecasting.js')}}"></script>
		<!-- jQuery -->
		<script src="{{asset('vendors/jquery/dist/jquery.min.js')}}"></script>
		<!-- Bootstrap -->
		<script src="{{asset('vendors/bootstrap/dist/js/bootstrap.min.js')}}"></script>
		<!-- FastClick -->
		<script src="{{asset('vendors/fastclick/lib/fastclick.js')}}"></script>
		<!-- NProgress -->
		<script src="{{asset('vendors/nprogress/nprogress.js')}}"></script>
		<!-- iCheck -->
		<script src="{{asset('vendors/iCheck/icheck.min.js')}}"></script>
		<!-- Switchery -->
		<script src="{{asset('vendors/switchery/dist/switchery.min.js')}}"></script>
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


		<!-- Custom Theme Scripts -->
		<script src="{{asset('vendors/build/js/custom.min.js')}}"></script>
		@endsection
		</body>

		</html>