<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');?>
<?php
    $row = fetch_single_row($edit);
?>

<div class="box-body big">
    <?php echo form_open('',array('name'=>'faddmenugrup','class'=>'form-horizontal','role'=>'form'));?>
        
        <div class="form-group">
            <label class="col-sm-4 control-label">No</label>
            <div class="col-sm-8">
            <?php echo form_hidden('id',$row->id); ?>
            <?php echo form_input(array('name'=>'no','value'=>$row->no,'class'=>'form-control'));?>
            <?php echo form_error('no');?>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">ID Penyimpanan</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'id','value'=>$row->id,'class'=>'form-control'));?>
            <?php echo form_error('id');?>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Kode Alat</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'kode_alat','value'=>$row->kode_alat,'class'=>'form-control'));?>
            <?php echo form_error('kode_alat');?>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Kode Rak</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'kode_rak','value'=>$row->kode_rak,'class'=>'form-control'));?>
            <?php echo form_error('kode_rak');?>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Urutan</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'urutan','value'=>$row->urutan,'class'=>'form-control'));?>
            <?php echo form_error('urutan');?>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Simpan</label>
            <div class="col-sm-8 tutup">
            <?php
            echo button('send_form(document.faddmenugrup,"kelola/lokasi_penyimpanan_alat/show_editForm/","#divsubcontent")','Simpan','btn btn-success')." ";
            ?>
            </div>
        </div>
    </form>
</div>


<script type="text/javascript">
$(document).ready(function() {
    $(".select2").select2();
    $('.tutup').click(function(e) {  
        $('#myModal').modal('hide');
    });
});
</script>