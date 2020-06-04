<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');?>

<div class="box-body big">
    <?php echo form_open('',array('name'=>'fadduser','class'=>'form-horizontal','role'=>'form'));?>
      <div class="form-group">
        <label class="col-sm-3 control-label">NIP</label>
        <div class="col-sm-9">
          <?php echo form_input(array('name'=>'nip','value'=>set_value('nip'),'class'=>'form-control','role'=>'form','style'=>'width:250px'));?>
          <?php echo form_error('nip', '<span class="error-span">', '</span>'); ?>
        </div>
      </div>
      <div class="form-group">
        <label class="col-sm-3 control-label">Username</label>
        <div class="col-sm-9">
          <?php echo form_input(array('name'=>'username','value'=>set_value('username'),'class'=>'form-control','style'=>'width:150px'));?>
          <?php echo form_error('username', '<span class="error-span">', '</span>'); ?>
        </div>
      </div>
      <div class="form-group">
        <label class="col-sm-3 control-label">Password</label>
        <div class="col-sm-9">
          <?php echo form_password(array('name'=>'pass','value'=>set_value('pass'),'class'=>'form-control','style'=>'width:150px'));?>
          <?php echo form_error('pass', '<span class="error-span">', '</span>'); ?>
        </div>
      </div>
      <div class="form-group">
        <label class="col-sm-3 control-label">Konfirmasi Password</label>
        <div class="col-sm-9">
          <?php echo form_password(array('name'=>'password_conf','value'=>set_value('passwrd_conf'),'class'=>'form-control','style'=>'width:150px'));?>
          <?php echo form_error('password_conf', '<span class="error-span">', '</span>'); ?>
        </div>
      </div>
      <div class="form-group">
        <label class="col-sm-3 control-label">Prefilage</label>
        <div class="col-sm-9">
          <?php echo form_dropdown('level',$levels,set_value('level'),'class="form-control"');?>
          <?php echo form_error('level', '<span class="error-span">', '</span>'); ?>
        </div>
      </div>
      <div class="form-group">
        <label class="col-sm-3 control-label">Aktif</label>
        <div class="col-sm-9">
          <?php echo form_dropdown('status_aktif',array('1'=>'Ya','0'=>'Tidak'),set_value('status_aktif'),'class="form-control"');?>
          <?php echo form_error('status_aktif', '<span class="error-span">', '</span>'); ?>
        </div>
      </div>
      
      <div class="form-group">
        <label class="col-sm-3 control-label"></label>
        <div class="col-sm-9">
          <?php echo button('send_form(document.fadduser,"cms/manage/add_user/","#content")','Simpan','btn btn-success');?>
        </div>
      </div>
     </form>
</div>
<script type="text/javascript">

$('#tanggal_lahir').datepicker({
    format: 'mm/dd/yyyy',
    startDate: '-3d'
})
</script>