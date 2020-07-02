<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');?>
<?php
    $row = fetch_single_row($edit);
?>

<div class="box-body big">
    <?php echo form_open('',array('name'=>'faddmenugrup','class'=>'form-horizontal','role'=>'form'));?>

        <div class="form-group">
            <label class="col-sm-4 control-label">Kategori</label>
            <div class="col-sm-8">
            <?php echo form_hidden('id',$row->id); ?>
            <?php echo form_dropdown('kategori',$kategori,$row->kategori,'id="master_kategori" class="form-control select2"');?>
            <?php echo form_error('kategori', '<span class="error-span">', '</span>'); ?>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Merk</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'merk','value'=>$row->merk,'class'=>'form-control'));?>
            <?php echo form_error('merk');?>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Seri</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'seri','value'=>$row->seri,'class'=>'form-control'));?>
            <?php echo form_error('seri');?>
            </div>
        </div>
        <div class="form-group">
                <label class="col-sm-2 control-label" for="userfile">Gambar</label>
                <div class="col-sm-8">
                <?php echo form_upload(array('name'=>'ufile','id'=>'ufile','class'=>'form-control'));?>
                <!-- <span id='info'></span></label> -->
                </div>
            </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">SOP Pengoperasian</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'sop_pengoperasian','value'=>$row->sop_pengoperasian,'class'=>'form-control'));?>
            <?php echo form_error('sop_pengoperasian');?>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">SOP Pemeliharaan</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'sop_pemeliharaan','value'=>$row->sop_pemeliharaan,'class'=>'form-control'));?>
            <?php echo form_error('sop_pemeliharaan');?>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">SOP Pemeriksaan</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'sop_pemeriksaan','value'=>$row->sop_pemeriksaan,'class'=>'form-control'));?>
            <?php echo form_error('sop_pemeriksaan');?>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">SOP Kalibrasi</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'sop_kalibrasi','value'=>$row->sop_kalibrasi,'class'=>'form-control'));?>
            <?php echo form_error('sop_kalibrasi');?>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">SOP Uji Fungsi</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'sop_uji_fungsi','value'=>$row->sop_uji_fungsi,'class'=>'form-control'));?>
            <?php echo form_error('sop_uji_fungsi');?>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Stok</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'stok','value'=>$row->stok,'class'=>'form-control'));?>
            <?php echo form_error('stok');?>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Stok Minimal</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'stok_minimal','value'=>$row->stok_minimal,'class'=>'form-control'));?>
            <?php echo form_error('stok_minimal');?>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Simpan</label>
            <div class="col-sm-8 tutup">
            <?php
            echo button('send_form(document.faddmenugrup,"kelola/kelola_seri/show_editForm/","#divsubcontent")','Simpan','btn btn-success')." ";
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