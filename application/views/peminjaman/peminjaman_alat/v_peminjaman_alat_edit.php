<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');?>
<?php
    $row = fetch_single_row($edit);
?>

<div class="box-body big">
    <?php echo form_open('',array('name'=>'faddmenugrup','class'=>'form-horizontal','role'=>'form'));?>
        
        <div class="form-group">
            <label class="col-sm-4 control-label">Id Peminjaman</label>
            <div class="col-sm-8">
            <?php echo form_hidden('id_peminjaman',$row->id_peminjaman); ?>
            <?php echo form_input(array('name'=>'id_peminjaman','value'=>$row->id_peminjaman,'class'=>'form-control'));?>
            <?php echo form_error('id_peminjaman');?>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Tanggal Pinjam</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'tanggal_pinjam','value'=>$row->tanggal_pinjam,'type'=>'date','class'=>'form-control'));?>
            <?php echo form_error('tanggal_pinjam');?>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Tanggal Kembali</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'tanggal_kembali','value'=>$row->tanggal_kembali,'type'=>'date','class'=>'form-control'));?>
            <?php echo form_error('tanggal_kembali');?>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Jumlah</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'jumlah','value'=>$row->jumlah,'class'=>'form-control'));?>
            <?php echo form_error('jumlah');?>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Id Barang</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'id_barang','value'=>$row->id_barang,'class'=>'form-control'));?>
            <?php echo form_error('id_barang');?>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Status</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'status','value'=>$row->status,'class'=>'form-control'));?>
            <?php echo form_error('status');?>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Nama Peminjam</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'nama_peminjam','value'=>$row->nama_peminjam,'class'=>'form-control'));?>
            <?php echo form_error('nama_peminjam');?>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Kebutuhan</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'kebutuhan','value'=>$row->kebutuhan,'class'=>'form-control'));?>
            <?php echo form_error('kebutuhan');?>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Simpan</label>
            <div class="col-sm-8 tutup">
            <?php
            echo button('send_form(document.faddmenugrup,"peminjaman/peminjaman_alat/show_editForm/","#divsubcontent")','Simpan','btn btn-success')." ";
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
