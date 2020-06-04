<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');?>

<?php
    $row = fetch_single_row($edit_menu);
    $allowed_level = remove_empty_values(explode('+',$row->allowed_level));
?>
<div class="box-body big">
        <?php echo form_open('',array('name'=>'feditmenu','class'=>'form-horizontal','role'=>'form'));?>

        <div class="form-group">
            <label class="col-sm-3 control-label">Nama Menu</label>
            <div class="col-sm-9">
            <?php echo form_hidden('id',$row->id); ?>
            <?php echo form_input(array('name'=>'nama','value'=>$row->nama,'class'=>'form-control','style'=>'width:250px'));?>
            <?php echo form_error('nama', '<span class="error-span">', '</span>');?>
         </div>
          </div>
        <div class="form-group">
            <label class="col-sm-3 control-label">
                Deskripsi</label>
            <div class="col-sm-9">
            <?php echo form_input(array('name'=>'deskripsi','value'=>$row->deskripsi,'class'=>'form-control','style'=>'width:350px'));?>
            <?php echo form_error('deskripsi', '<span class="error-span">', '</span>');?>
        </div>
          </div>
          <div class="form-group">
            <label class="col-sm-3 control-label">
                URI</label>
            <div class="col-sm-9">
            <?php echo form_input(array('name'=>'url','value'=>$row->url,'class'=>'form-control','style'=>'width:250px'));?>
            <?php echo form_error('url', '<span class="error-span">', '</span>');?>
        </div>
          </div>
          <div class="form-group">
            <label class="col-sm-3 control-label">
             Aktif</label>
            <div class="col-sm-9">
            <?php echo form_dropdown('aktif',array('1'=>'Ya','0'=>'Tidak'),$row->aktif,'class="form-control"');?>
            <?php echo form_error('aktif', '<span class="error-span">', '</span>');?>
        </div>
          </div>
           <div class="form-group">
            <label class="col-sm-3 control-label">
                Diizinkan Untuk Level</label>
            <div class="col-sm-9">
                <?php echo form_multiselect('allowed_level[]',$allowed,$allowed_level,'class="form-control"');?>
                <?php echo form_error('alias', '<span class="error-span">', '</span>');?>
          </div>
          </div>
          <div class="form-group">
            <label class="col-sm-3 control-label">
                Grup Menu</label>
            <div class="col-sm-9">
            <?php echo form_dropdown('grup',$grup,$row->grup,'class="form-control"');?>
            <?php echo form_error('grup', '<span class="error-span">', '</span>');?>
        </div>
          </div>
          <div class="form-group">
            <label class="col-sm-3 control-label">
                Urutan</label>
            <div class="col-sm-9">
            <?php echo form_input(array('name'=>'urutan','value'=>$row->urutan,'class'=>'form-control','style'=>'width:50px'));?>
            <?php echo form_error('urutan', '<span class="error-span">', '</span>');?>
        </div>
          </div>
            <div class="form-group">
            <label class="col-sm-3 control-label">
                Update data</label>
            <div class="col-sm-9">
            <?php echo button('send_form(document.feditmenu,"cms/manage/edit_menu/'.$row->id.'","#content")','Update','btn btn-success');?>
        </div>
            </div>
            </div>
    </form>
