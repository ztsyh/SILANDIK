
<div class="col-md-12">
          <!-- Widget: user widget style 1 -->
          <div class="box box-widget widget-user">
            <!-- Add the bg color to the header using any of the bg-* classes -->
            <!-- <div class="widget-user-header bg-black" style="background: url('<?php echo base_url();?>assets/img/photo1.png') center center;height:320px;"> -->
             <!--  <h3 class="widget-user-username"><?=from_session('nama')?></h3>
              <h5 class="widget-user-desc"><?=from_session('nama_level')?></h5>
            </div>
            <div class="widget-user-image"> -->

            
            </div>
            <div class="box-footer">
              <div class="row">
                <div class="col-sm-12 border-right">
                  <div class="description-block">
                    <?php
                  $avatar = parse_avatar(from_session('gambar'),from_session('nama'),40,'img-circle');
                ?>
                <?php echo $avatar; ?>
                    <h5 class="description-header">SELAMAT DATANG DI <?php echo $this->config->item('project')?></h5>
                    <span class="description-text"><?php echo button('load_silent("cms/user/show_editForm_user/'.from_session('id').'","#content")','Update Profil','btn bg-red','data-toggle="tooltip" title="Update Profil"');?> 
						</span>
                  </div>
                  <!-- /.description-block -->
                </div>
                
                <!-- /.col -->
              </div>
              <!-- /.row -->
            </div>
          </div>
          <!-- /.widget-user -->
        </div>


<section class="content-header">
  <h1>Home
    <small>Sistem Informasi Laboratorium Pendidikan</small>
</h1>
<ol class="breadcrumb">
  <li><a href="#"><i class="fa fa-dasboard"></i></a></li>
  <li class="active">Dashboard</li>
</ol>
</section>

<!.. Main content ..>
<section class="content">

<div class="row">
  <div class="col-md-3 col-sm-6 col-xs-12">
    <div class="info-box">
      <span class="info-box-icon bg-aqua"><i class="fa fa-flask"></i></span>

      <div class="info-box-content">
        <span class="info-box-text">Tipe Lab</span>
        <span class="info-box-number"><?=$this->fungsi->count_tipelab()?></span>
</div>
<!-- /.info-box-content -->
</div>
<!-- /.info-box -->
</div>
<!-- /.col -->
<div class="row">
  <div class="col-md-3 col-sm-6 col-xs-12">
    <div class="info-box">
      <span class="info-box-icon bg-red"><i class="fa fa-book"></i></span>

      <div class="info-box-content">
        <span class="info-box-text">Mata Kuliah</span>
        <span class="info-box-number"><?=$this->fungsi->count_matakuliah()?></span>
</div>
<!-- /.info-box-content -->
</div>
<!-- /.info-box -->
</div>
<!-- /.col -->
<div class="row">
  <div class="col-md-3 col-sm-6 col-xs-12">
    <div class="info-box">
      <span class="info-box-icon bg-blue"><i class="fa fa-wrench"></i></span>

      <div class="info-box-content">
        <span class="info-box-text">Nama Alat</span>
        <span class="info-box-number"><?=$this->fungsi->count_namaalat()?></span>
</div>
<!-- /.info-box-content -->
</div>
<!-- /.info-box -->
</div>
<!-- /.col -->
<div class="row">
  <div class="col-md-3 col-sm-6 col-xs-12">
    <div class="info-box">
      <span class="info-box-icon bg-yellow"><i class="fa fa-archive"></i></span>

      <div class="info-box-content">
        <span class="info-box-text">Nama Bahan</span>
        <span class="info-box-number"><?=$this->fungsi->count_namabahan()?></span>
</div>
<!-- /.info-box-content -->
</div>
<!-- /.info-box -->
</div>
<!-- /.col -->

</section>