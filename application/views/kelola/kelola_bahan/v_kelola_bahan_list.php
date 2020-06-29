<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');?>

    <div class="row" id="form_pembelian">
      <div class="col-lg-12">
        <div class="box box-danger">
          <div class="box-header with-border">
            <h3 class="box-title">Kelola Bahan</h3>

            <div class="box-tools pull-right">
            <?php
              $sesi = from_session('level');
              if ($sesi == '1' || $sesi == '2' || $sesi == '3' || $sesi == '6') {
                echo button('load_silent("kelola/kelola_bahan/form/base","#modal")','Add New Kelola Bahan','btn btn-success');
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
                <th>Nama Bahan</th>
                <th>Satuan</th>
                <th>Seri</th>
                <th>Stok</th>
                <th>Lokasi</th>
                <th>Pendanaan</th>
                <th>Harga</th>
                <th>Status</th>
                <th>Act</th>
              </thead>
              <tbody>
              <?php 
          $i = 1;
          foreach($kelola_bahan->result() as $row): ?>
          <tr>
            <td align="center"><?=$i++?></td>
            <td align="center"><?=$row->nama_bahan?></td>
            <td align="center"><?=$row->nama_satuan?></td>
            <td align="center"><?=$row->seri?></td>
            <td align="center"><?=$row->stok?></td>
            <td align="center"><?=$row->nama_penyimpanan?></td>
            <td align="center"><?=$row->sumber_pendanaan?></td>
            <td align="left">Rp. <?=number_format($row->harga)?></td>
            <td align="center"><span class="badge bg-green"><?=$row->status?></span></td>
            <td align="center">
            <?php
              $sesi = from_session('level');
              if ($sesi == '1' || $sesi == '2' || $sesi == '3' || $sesi == '6') {
                echo button('load_silent("kelola/kelola_bahan/form/sub/'.$row->id.'","#modal")','','btn btn-info fa fw fa-edit','data-toggle="tooltip" title="Edit"');
             
              }
               else {
                # code...
              }
              ?>
              <a href="<?= site_url('kelola/kelola_bahan/delete/'.$row->id) ?>" class="btn btn-danger" onclick="return confirm('Anda yakin ingin menghapus bahan ?')"><i class="fa fa-trash"></i></a>
            </td>
          </tr>
          

        <?php endforeach;?>
        </tbody>
            </table>
          </div>
        </div>
      </div>
    </div>
<script type="text/javascript">
  $(document).ready(function() {
    var table = $('#tableku').DataTable( {
      "ordering": false,
    } );
  });
</script>
