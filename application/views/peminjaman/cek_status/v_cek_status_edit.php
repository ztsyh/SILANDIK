<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');?>

    <div class="row" id="form_pembelian">
      <div class="col-lg-12">
        <div class="box box-primary">
          <div class="box-header with-border">
            <h3 class="box-title"> Cek Status</h3>

            <div class="box-tools pull-right">
            <?php
              $sesi = from_session('level');
              if ($sesi == '1' || $sesi == '2' || $sesi == '3' || $sesi == '6') {
                echo button('load_silent("peminjaman/cek_status/form/base","#modal")','Add New Data Peminjaman','btn btn-success');
              } else {
                # code...
              }
              ?>
            </div>
          </div>
          <div class="box-body">
            <table width="100%" id="tableku" class="table table-striped">
              <thead>
                <th>No</th>
                <th>ID Peminjaman</th>
                <th>Kategori</th>
                <th>Tanggal Pinjam</th>
                <th>Tanggal kembali</th>
                <th>Status Peminjaman</th>
                <th>Status</th>
                <th>Act</th>
              </thead>
              <tbody>
              <?php 
          $i = 1;
          foreach($cek_status->result() as $row): ?>
          <tr>
            <td align="center"><?=$i++?></td>
            <td align="center"><?=$row->id_peminjaman?></td>
            <td align="center"><?=$row->kategori?></td>
            <td align="center"><?=$row->tgl_peminjaman?></td>
            <td align="center"><?=$row->tgl_kembali?></td>
            <td align="center"><?=$row->status_peminjaman?></td>
            <td align="center"><?=$row->status?></td>
            <td align="center">
            <?php
              $sesi = from_session('level');
              if ($sesi == '1' || $sesi == '2' || $sesi == '3' || $sesi == '6') {
            } 
            else {
                # code...
              }
            ?>
            <a href="<?= site_url('peminjaman/cek_status/view_print/'.$row->id) ?>" class="btn btn-warning" ><i class="fa fw fa-print"></i></a>

          </td>
        </tr>
      <?php endforeach;?>
      </tbody>
      </table>
    </div>

  </div>
<div>
</div>
<script type="text/javascript">
$(document).ready(function() {
  var table = $('#tableku').DataTable( {
    "ordering": false,
  } );
});
</script>
