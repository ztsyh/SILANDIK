<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');?>
<?php   $row = fetch_single_row($edit);
   // $row = fetch_single_row($delete);
?>
<div class="box-body big">
    <?php echo form_open('',array('name'=>'feditmenugrup','class'=>'form-horizontal','role'=>'form'));?>        
    <div class="form-group">
            <label class="col-sm-4 control-label">Nama Lab</label>
            <div class="col-sm-8">
            <?php echo form_hidden('id',$row->id); ?>
            <?php echo form_input(array('name'=>'nama_lab','value'=>$row->nama_lab,'class'=>'form-control'));?>
            <?php echo form_error('nama_lab');?>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Alamat Lab</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'alamat_lab','value'=>$row->alamat_lab,'class'=>'form-control'));?>
            <?php echo form_error('alamat_lab');?>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Korlab</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'korlab','value'=>$row->korlab,'class'=>'form-control'));?>
            <?php echo form_error('korlab');?>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Laboran</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'laboran','value'=>$row->laboran,'class'=>'form-control'));?>
            <?php echo form_error('laboran');?>
            </div>
        </div>        
        <div class="form-group">
            <label class="col-sm-4 control-label">Status</label>
                <div class="col-sm-8">
                <?php echo form_dropdown('status',$status,$row->status,'id="status" class="form-control select2"');?>
                 <?php echo form_error('status', '<span class="error-span">', '</span>'); ?>
                </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Simpan</label>
            <div class="col-sm-8 tutup">
            <?php
            echo button('send_form(document.feditmenugrup,"kelola/laboratorium/show_editForm/","#divsubcontent")','Simpan','btn btn-success')." ";
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