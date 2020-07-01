<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');?>

<div class="box-body big">
    <?php echo form_open('',array('name'=>'faddmenugrup','class'=>'form-horizontal','role'=>'form'));?>
        
        <div class="form-group">
                <label class="col-sm-4 control-label">Nama Alat</label>
                <div class="col-sm-8">
                  <?php echo form_dropdown('nama_alat',$nama_alat,set_value('id'),'id="master_nama_alat" class="form-control select2"');?>
                  <?php echo form_error('nama_alat', '<span class="error-span">', '</span>'); ?>
                </div>
            </div>
        <div class="form-group">
                <label class="col-sm-4 control-label">Satuan</label>
                <div class="col-sm-8">
                  <?php echo form_dropdown('satuan',$satuan,set_value('id'),'id="master_satuan" class="form-control select2"');?>
                  <?php echo form_error('satuan', '<span class="error-span">', '</span>'); ?>
                </div>
            </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Simpan</label>
            <div class="col-sm-8 tutup">
            <?php
            echo button('send_form(document.faddmenugrup,"kelola/kelola_alat/show_addForm/","#divsubcontent")','Save','btn btn-success')." ";
            ?>
            </div>
        </div>
    </form>
</div>

<script type="text/javascript">
$(document).ready(function() {
    $('.tutup').click(function(e) {  
        $('#myModal').modal('hide');
    });
});
</script>