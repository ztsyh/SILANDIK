<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');?>

    <div class="box-body big">
        <?php echo form_open('',array('name'=>'faddmenu','class'=>'form-horizontal','role'=>'form'));?>

        <div class="form-group">
            <label class="col-sm-3 control-label">Nama Menu</label>
            <div class="col-sm-9">
                <?php echo form_input(array('name'=>'nama','value'=>set_value('nama'),'class'=>'form-control','style'=>'width:250px'));?>
                <?php echo form_error('nama', '<span class="error-span">', '</span>'); ?>
            </div>
          </div>
        <div class="form-group">
            <label class="col-sm-3 control-label">
                Deskripsi</label>
            <div class="col-sm-9">
                <?php echo form_input(array('name'=>'deskripsi','value'=>set_value('deskripsi'),'class'=>'form-control','style'=>'width:350px'));?>
                <?php echo form_error('deskripsi', '<span class="error-span">', '</span>');?>
          </div>
          </div>
          <div class="form-group">
            <label class="col-sm-3 control-label">
                Alias</label>
            <div class="col-sm-9">
                <?php echo form_input(array('name'=>'alias','value'=>set_value('alias'),'class'=>'form-control','style'=>'width:150px'));?>
                <?php echo form_error('alias', '<span class="error-span">', '</span>');?>
          </div>
          </div>
          <div class="form-group">
            <label class="col-sm-3 control-label">
                Diizinkan Untuk Level</label>
            <div class="col-sm-9">
                <?php echo form_multiselect('allowed_level[]',$allowed,set_value('allowed_level[]'),'class="form-control"');?>
                <?php echo form_error('allowed_level', '<span class="error-span">', '</span>');?>
          </div>
          </div>
          <div class="form-group">
            <label class="col-sm-3 control-label">
                URI</label>
            <div class="col-sm-9">
                <?php echo form_input(array('name'=>'url','value'=>set_value('url'),'class'=>'form-control','style'=>'width:250px'));?>
                <?php echo form_error('url', '<span class="error-span">', '</span>');?>
          </div>
          </div>
          <div class="form-group">
            <label class="col-sm-3 control-label">
                Aktif</label>
            <div class="col-sm-9">
                <?php echo form_dropdown('aktif',array('1'=>'Ya','0'=>'Tidak'),set_value('aktif'),'class="form-control"');?>
                <?php echo form_error('aktif', '<span class="error-span">', '</span>');?>
          </div>
          </div>
          <div class="form-group">
            <label class="col-sm-3 control-label">
                Grup Menu</label>
            <div class="col-sm-9">
                <?php echo form_dropdown('grup',$grup,set_value('grup'),'class="form-control"');?>
                <?php echo form_error('grup', '<span class="error-span">', '</span>');?>
          </div>
          </div>
          <div class="form-group">
            <label class="col-sm-3 control-label">
                Urutan</label>
            <div class="col-sm-9">
                <?php echo form_input(array('name'=>'urutan','value'=>set_value('urutan'),'class'=>'form-control','style'=>'width:50px'));?>
                <?php echo form_error('urutan', '<span class="error-span">', '</span>');?>
          </div>
          </div>
            <div class="form-group">
            <label class="col-sm-3 control-label">
                Simpan data</label>
            <div class="col-sm-9">
                <?php
                    echo button('send_form(document.faddmenu,"cms/manage/add_menu/","#content")','Simpan','btn btn-success');
                    echo button('load_silent("cms/manage/menu","#content")','Batalkan','btn btn-danger');
                ?>
            </div>
            </div>
            </div>
    </form>
