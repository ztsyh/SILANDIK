<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');?>
<?php
    if($user_edit->num_rows() == 0) die;
    $row = $user_edit->row();

    $allowed_level = remove_empty_values(explode('+',$row->level));
    ?>


<div class="box-body big">
    <?php echo form_open('',array('name'=>'fedituser','class'=>'form-horizontal','role'=>'form'));?>
      <div class="form-group">
        <label class="col-sm-3 control-label">NIP</label>
        <div class="col-sm-9">
          <?php echo form_hidden('nip',$row->nip);?>
          <?php echo form_input(array('name'=>'','value'=>$row->nip,'disabled'=>'','class'=>'form-control','style'=>'width:250px'));?>
          <?php echo form_error('nip', '<span class="error-span">', '</span>'); ?>
        </div>
      </div>
      <div class="form-group">
        <label class="col-sm-3 control-label">Prefilage</label>
        <div class="col-sm-9">
          <?php echo form_multiselect('level[]',$levels,$allowed_level,'class="form-control"');?>
          <?php echo form_error('level[]', '<span class="error-span">', '</span>'); ?>
        </div>
      </div>
      <div class="form-group">
        <label class="col-sm-3 control-label">Aktif</label>
        <div class="col-sm-9">
          <?php echo form_dropdown('status_aktif',array('1'=>'Ya','0'=>'Tidak'),$status,'class="form-control"');?>
          <?php echo form_error('status_aktif', '<span class="error-span">', '</span>'); ?>
        </div>
      </div>
      <div class="form-group">
        <label class="col-sm-3 control-label">Simpan</label>
        <div class="col-sm-9">
          <?php echo button('send_form(document.fedituser,"cms/manage/edit_user/'.$row->nip.'","#content")','Update','btn btn-success');?>
        </div>
      </div>
     </form>
</div>
</div>