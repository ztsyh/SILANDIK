<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');?>
<div class="box-body big">
    <?php echo form_open('',array('name'=>'faddmenugrup','class'=>'form-horizontal','role'=>'form'));?>        
        <div class="form-group">
            <label class="col-sm-4 control-label">Nama Lab</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'nama_lab','class'=>'form-control'));?>
            <?php echo form_error('nama_lab');?>
            <span id="check_data"></span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Alamat Lab</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'alamat_lab','class'=>'form-control'));?>
            <?php echo form_error('alamat_lab');?>
            <span id="check_data"></span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Korlab</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'korlab','class'=>'form-control'));?>
            <?php echo form_error('korlab');?>
            <span id="check_data"></span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Laboran</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'laboran','class'=>'form-control'));?>
            <?php echo form_error('laboran');?>
            <span id="check_data"></span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Status</label>
             <div class="col-sm-8">
              <?php echo form_dropdown('status',$status,'id="status" class="form-control select2"');?>
              <?php echo form_error('status', '<span class="error-span">', '</span>'); ?>
            </div>
            </div>
        <div class="form-group">
            <label class="col-sm-4 control-label"></label>
            <div class="col-sm-8 tutup">
            <?php
            echo button('send_form(document.faddmenugrup,"kelola/laboratorium/show_addForm/","#divsubcontent")','simpan','btn btn-success')." ";
            ?>
            </div>
        </div>
    </form>
</div>
<script type="text/javascript">
    $(".select2").select2();
    $('.tutup').click(function(e) {  
        $('#myModal').modal('hide');
    });
</script>