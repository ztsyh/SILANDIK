<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');?>

    <div class="box-body big">
        <?php echo form_open('',array('name'=>'fgantipass','class'=>'form-horizontal','role'=>'form'));?>

        <div class="form-group">
            <label class="col-sm-3 control-label">Password Lama</label>
            <div class="col-sm-9">
                <?php echo form_password(array('name'=>'password','value'=>set_value('password'),'class'=>'form-control','style'=>'width:250px'));?>

                <?php echo form_error('password', '<span class="error-span">', '</span>'); ?>
            </div>
          </div>
        <div class="form-group">
            <label class="col-sm-3 control-label">
                Password Baru</label>
            <div class="col-sm-9">
                <?php echo form_password(array('name'=>'password_b','value'=>set_value('password_b'),'class'=>'form-control','style'=>'width:350px'));?>
                <?php echo form_error('password_b', '<span class="error-span">', '</span>');?>
          </div>
          </div>
          <div class="form-group">
            <label class="col-sm-3 control-label">
                Konfirmasi Password</label>
            <div class="col-sm-9">
                <?php echo form_password(array('name'=>'password_conf','value'=>set_value('password_conf'),'class'=>'form-control','style'=>'width:150px'));?>
                <?php echo form_error('password_conf', '<span class="error-span">', '</span>');?>
          </div>
          </div>

            <div class="form-group">
            <label class="col-sm-3 control-label">
                Simpan data</label>
            <div class="col-sm-9">
                <?php
                    echo button('send_form(document.fgantipass,"cms/profile/ubah_password/","#content")','Simpan','btn btn-success');
                ?>
            </div>
            </div>
            </div>
    </form>
