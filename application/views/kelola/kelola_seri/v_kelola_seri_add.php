<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');?>

<div class="box-body big">
    <?php echo form_open('',array('name'=>'faddmenugrup','class'=>'form-horizontal','role'=>'form'));?>
        
        <div class="form-group">
            <label class="col-sm-4 control-label">Kategori</label>
            <div class="col-sm-8">
            <?php echo form_dropdown('kategori',$kategori,set_value('id'),'id="master_kategori" class="form-control select2"');?>
            <?php echo form_error('kategori', '<span class="error-span">', '</span>'); ?>
            </div>
            </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Merk</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'merk','class'=>'form-control'));?>
            <?php echo form_error('merk');?>
            <span id="check_data"></span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Seri</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'seri','class'=>'form-control'));?>
            <?php echo form_error('seri');?>
            <span id="check_data"></span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-2 control-label" for="userfile">Gambar</label>
            <div class="col-sm-8">
            <?php echo form_upload(array('name'=>'ufile','id'=>'ufile'));?>
            <!-- <span id='info'></span></label> -->
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">SOP Pengoperasian</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'sop_pengoperasian','class'=>'form-control'));?>
            <?php echo form_error('sop_pengoperasian');?>
            <span id="check_data"></span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">SOP Pemeliharaan</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'sop_pemeliharaan','class'=>'form-control'));?>
            <?php echo form_error('sop_pemeliharaan');?>
            <span id="check_data"></span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">SOP Pemeriksaan</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'sop_pemeriksaan','class'=>'form-control'));?>
            <?php echo form_error('sop_pemeriksaan');?>
            <span id="check_data"></span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">SOP Kalibrasi</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'sop_kalibrasi','class'=>'form-control'));?>
            <?php echo form_error('sop_kalibrasi');?>
            <span id="check_data"></span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">SOP Uji Fungsi</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'sop_uji_fungsi','class'=>'form-control'));?>
            <?php echo form_error('sop_uji_fungsi');?>
            <span id="check_data"></span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Stok</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'stok','class'=>'form-control'));?>
            <?php echo form_error('stok');?>
            <span id="check_data"></span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Stok Minimal</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'stok_minimal','class'=>'form-control'));?>
            <?php echo form_error('stok_minimal');?>
            <span id="check_data"></span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Simpan</label>
            <div class="col-sm-8 tutup">
            <?php
            echo button('send_form(document.faddmenugrup,"kelola/kelola_seri/show_addForm/","#divsubcontent")','Save','btn btn-success')." ";
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