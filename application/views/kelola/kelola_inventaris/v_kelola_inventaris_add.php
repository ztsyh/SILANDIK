<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');?>

<div class="box-body big">
    <?php echo form_open('',array('name'=>'faddmenugrup','class'=>'form-horizontal','role'=>'form'));?>
        
        
        <div class="form-group">
            <label class="col-sm-4 control-label">Kode Inventaris</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'kode_inventaris','class'=>'form-control'));?>
            <?php echo form_error('kode_inventaris');?>
            <span id="check_data"></span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Kode Simak</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'kode_simak','class'=>'form-control'));?>
            <?php echo form_error('kode_simak');?>
            <span id="check_data"></span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Lokasi</label>
            <div class="col-sm-8">
            <?php echo form_dropdown('lokasi_penyimpanan',$lokasi_penyimpanan,set_value('id'),'id="lokasi_penyimpanan" class="form-control select2"');?>
            <?php echo form_error('lokasi_penyimpanan', '<span class="error-span">', '</span>'); ?>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Pendanaan</label>
            <div class="col-sm-8">
            <?php echo form_dropdown('sumber_pendanaan',$sumber_pendanaan,set_value('id'),'id="sumber_pendanaan" class="form-control select2"');?>
            <?php echo form_error('sumber_pendanaan', '<span class="error-span">', '</span>'); ?>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Harga</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'harga','class'=>'form-control'));?>
            <?php echo form_error('harga');?>
            <span id="check_data"></span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Tanggal Pembelian</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'tanggal_pembelian','type'=>'date','class'=>'form-control'));?>
            <?php echo form_error('tanggal_pembelian');?>
            <span id="check_data"></span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Kondisi</label>
            <div class="col-sm-8">
            <select name="kondisi" id=""class="form-control">
            <option value="Baik">Baik</option>
            <option value="Rusak">Rusak</option>
            </select>
            <?php echo form_error('kondisi');?>
            <span id="check_data"></span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Simpan</label>
            <div class="col-sm-8 tutup">
            <?php
            echo button('send_form(document.faddmenugrup,"kelola/kelola_inventaris/show_addForm/","#divsubcontent")','Save','btn btn-success')." ";
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