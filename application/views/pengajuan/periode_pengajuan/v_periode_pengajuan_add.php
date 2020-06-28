<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');?>

<div class="box-body big">
    <?php echo form_open('',array('name'=>'faddmenugrup','class'=>'form-horizontal','role'=>'form'));?>
        
        
        <div class="form-group">
            <label class="col-sm-4 control-label">Id Pengajuan</label>
            <div class="col-sm-8">
            <input name="id" value="<?= $id; ?>" type="text" readonly="readonly" class="form-control">
            <?php echo form_error('id');?>
            <span id="check_data"></span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Semester</label>
            <div class="col-sm-8">
            <select name="semester" id=""class="form-control">
            <option value="Ganjil">Ganjil</option>
            <option value="Genap">Genap</option>
            </select>
            <?php echo form_error('semester');?>
            <span id="check_data"></span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Tanggal Pengajuan</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'tgl_pengajuan','type'=>'date','class'=>'form-control'));?>
            <?php echo form_error('tgl_pengajuan');?>
            <span id="check_data"></span>
            </div>
        </div>
        <div class="form-group">
                <label class="col-sm-4 control-label">Sumber Pendanaan</label>
                <div class="col-sm-8">
                  <?php echo form_dropdown('sumber_pendanaan',$sumber_pendanaan,set_value('id'),'id="sumber_pendanaan" class="form-control select2"');?>
                  <?php echo form_error('sumber_pendanaan', '<span class="error-span">', '</span>'); ?>
                </div>
            </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Tanggal Pendanaan Turun</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'tgl_pendanaan_turun','type'=>'date','class'=>'form-control'));?>
            <?php echo form_error('tgl_pendanaan_turun');?>
            <span id="check_data"></span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Pajak</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'pajak','class'=>'form-control'));?>
            <?php echo form_error('pajak');?>
            <span id="check_data"></span>
            </div>
        </div>
        <div class="form-group">
                <label class="col-sm-4 control-label">Status Pengajaun</label>
                <div class="col-sm-8">
                  <?php echo form_dropdown('status_pengajuan',$status_pengajuan,set_value('id'),'id="status_pengajuan" class="form-control select2"');?>
                  <?php echo form_error('status_pengajuan', '<span class="error-span">', '</span>'); ?>
                </div>
            </div>
        
        <div class="form-group">
            <label class="col-sm-4 control-label">Simpan</label>
            <div class="col-sm-8 tutup">
            <?php
            echo button('send_form(document.faddmenugrup,"pengajuan/periode_pengajuan/show_addForm/","#divsubcontent")','Simpan','btn btn-success')." ";
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