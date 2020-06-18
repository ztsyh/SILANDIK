<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');?>
<?php
    $row = fetch_single_row($edit);
?>

<div class="box-body big">
    <?php echo form_open('',array('name'=>'faddmenugrup','class'=>'form-horizontal','role'=>'form'));?>
        
    <div class="form-group">
            <label class="col-sm-4 control-label">Nama Alat</label>
            <div class="col-sm-8">
            <div class="form-group">
            <?php echo form_hidden('id',$row->id); ?>
                <select class="form-control" name="nama_alat">
                <?php foreach ($nama_alat->result() as $nama_alat): ?>
                    <option value="<?= $nama_alat->id ?>"><?= $nama_alat->nama_alat ?></option>
                <?php endforeach; ?>
                </select>
            </div>
            <?php echo form_error('nama_alat');?>
            <span id="check_data"></span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Satuan</label>
            <div class="col-sm-8">
            <div class="form-group">
                <select class="form-control" name="satuan">
                <?php foreach ($satuan->result() as $satuan): ?>
                    <option value="<?= $satuan->id ?>" <?= $satuan->id == $row->satuan ? "selected" : null ?>><?= $satuan->nama_satuan ?></option>
                <?php endforeach; ?>
                </select>
            </div>
            <?php echo form_error('satuan_alat');?>
            <span id="check_data"></span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Seri</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'status','value'=>$row->seri,'class'=>'form-control'));?>
            <?php echo form_error('status');?>
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
            <?php echo form_input(array('name'=>'harga','value'=>$row->harga,'class'=>'form-control'));?>
            <?php echo form_error('harga');?>
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
            <label class="col-sm-4 control-label">Simpan</label>
            <div class="col-sm-8 tutup">
            <?php
            echo button('send_form(document.faddmenugrup,"kelola/kelola_alat/show_editForm/","#divsubcontent")','Simpan','btn btn-success')." ";
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
