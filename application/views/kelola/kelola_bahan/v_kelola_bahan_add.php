<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');?>

<div class="box-body big">
    <?php echo form_open('',array('name'=>'faddmenugrup','class'=>'form-horizontal','role'=>'form'));?>
        
        
    <div class="form-group">
            <label class="col-sm-4 control-label">Nama bahan</label>
            <div class="col-sm-8">
            <div class="form-gorup">
                <select class="form-control" name="nama_bahan">
                <?php foreach ($nama_bahan->result() as $nama_bahan): ?>
                    <option value="<?= $nama_bahan->id ?>"><?= $nama_bahan->nama_bahan ?></option>
                <?php endforeach; ?>
                </select>
                </div>
            <?php echo form_error('nama_bahan');?>
            <span id="check_data"></span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Satuan</label>
            <div class="col-sm-8">
            <div class="form-gorup">
                <select class="form-control" name="satuan">
                <?php foreach ($satuan->result() as $satuan): ?>
                    <option value="<?= $satuan->id ?>"><?= $satuan->nama_satuan ?></option>
                <?php endforeach; ?>
                </select>
                </div>
            <?php echo form_error('satuan');?>
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
            <label class="col-sm-4 control-label">Stok</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'stok','class'=>'form-control'));?>
            <?php echo form_error('stok');?>
            <span id="check_data"></span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Lokasi</label>
            <div class="col-sm-8">
            <div class="form-gorup">
                <select class="form-control" name="lokasi">
                <?php foreach ($lokasi->result() as $lokasi): ?>
                    <option value="<?= $lokasi->id ?>"><?= $lokasi->nama_penyimpanan ?></option>
                <?php endforeach; ?>
                </select>
                </div>
            <?php echo form_error('lokasi');?>
            <span id="check_data"></span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Pendanaan</label>
            <div class="col-sm-8">
            <div class="form-gorup">
                <select class="form-control" name="pendanaan">
                <?php foreach ($dana->result() as $dana): ?>
                    <option value="<?= $dana->id_pendanaan ?>"><?= $dana->sumber_pendanaan ?></option>
                <?php endforeach; ?>
                </select>
                </div>
            <?php echo form_error('pendanaan');?>
            <span id="check_data"></span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Harga</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'harga','class'=>'form-control'));?>
            <?php echo form_error('');?>
            <span id="check_data"></span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Status</label>
            <div class="col-sm-8">
            <select class="form-control" name="status" id="">
            <?php foreach ($status->result() as $status): ?>
            <option value="<?= $status->id ?>"><?= $status->status ?></option>
            <?php endforeach; ?>
            </select>
            <?php echo form_error('status');?>
            <span id="check_data"></span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Simpan?</label>
            <div class="col-sm-8 tutup">
            <?php
            echo button('send_form(document.faddmenugrup,"kelola/kelola_bahan/show_addForm/","#divsubcontent")','SimpanLah','btn btn-success')." ";
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
