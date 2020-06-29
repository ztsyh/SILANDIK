<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');?>
<?php
    $row = fetch_single_row($edit);
?>

<div class="box-body big">
    <?php echo form_open('',array('name'=>'faddmenugrup','class'=>'form-horizontal','role'=>'form'));?>
        
        <div class="form-group">
            <label class="col-sm-4 control-label">Id Peminjaman</label>
            <div class="col-sm-8">
            <?php echo form_hidden('id',$row->id); ?>
            <?php echo form_input(array('name'=>'id','value'=>$row->id,'class'=>'form-control'));?>
            <?php echo form_error('id');?>
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
            <label class="col-sm-4 control-label">Nomor Induk</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'no_induk','value'=>$row->no_induk,'class'=>'form-control'));?>
            <?php echo form_error('no_induk');?>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Status User</label>
            <div class="col-sm-8">
            <select name="status_user" id=""class="form-control">
            <?php if ($row->status_user == 'bebas_tanggungan') {
                echo '<option value="Bebas Tanggungan">bebas_tanggungan</option>';
                echo '<option value="Memiliki Tanggungan">memiliki_tanggungan</option>';
            }else {
                echo '<option value="Bebas Tanggungan">bebas_tanggungan</option>';
                echo '<option value="Memiliki Tanggungan">memiliki_tanggungan</option>';
            }
            ?>
            </select>
            <?php echo form_error('status_user');?>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Kategori Peminjaman</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'kategori_peminjaman','value'=>$row->kategori_peminjaman,'class'=>'form-control'));?>
            <?php echo form_error('kategori_peminjaman');?>
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
            <label class="col-sm-4 control-label">Simpan</label>
            <div class="col-sm-8 tutup">
            <?php
            echo button('send_form(document.faddmenugrup,"kelola/jatuh_tempo/show_editForm/","#divsubcontent")','Simpan','btn btn-success')." ";
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