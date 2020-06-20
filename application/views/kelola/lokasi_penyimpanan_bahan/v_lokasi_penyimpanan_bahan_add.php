<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');?>

<div class="box-body big">
    <?php echo form_open('',array('name'=>'faddmenugrup','class'=>'form-horizontal','role'=>'form'));?>
        

        <div class="form-group">
            <label class="col-sm-4 control-label">No</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'no','class'=>'form-control'));?>
            <?php echo form_error('no');?>
            <span id="check_data"></span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">ID Penyimpanan</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'id','class'=>'form-control'));?>
            <?php echo form_error('id');?>
            <span id="check_data"></span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Kode Bahan</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'kode_bahan','class'=>'form-control'));?>
            <?php echo form_error('kode_bahan');?>
            <span id="check_data"></span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Kode Rak</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'kode_rak','class'=>'form-control'));?>
            <?php echo form_error('kode_rak');?>
            <span id="check_data"></span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Urutan</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'urutan','class'=>'form-control'));?>
            <?php echo form_error('urutan');?>
            <span id="check_data"></span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Simpan</label>
            <div class="col-sm-8 tutup">
            <?php echo button('send_form(document.faddmenugrup,"kelola/lokasi_penyimpanan_bahan/show_addForm/","#divsubcontent")','Simpan','btn btn-success')."";?>
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