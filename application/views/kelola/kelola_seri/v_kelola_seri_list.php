<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');?>

    <div class="row" id="form_pembelian">
      <div class="col-lg-12">
        <div class="box box-danger">
          <div class="box-header with-border">
            <h3 class="box-title">Kelola Seri</h3>

            <div class="box-tools pull-right">
            <?php
              $sesi = from_session('level');
              if ($sesi == '1' || $sesi == '2' || $sesi == '4') {
                echo button('load_silent("kelola/kelola_seri/form/base","#modal")','Tambah Seri Alat','btn btn-success');
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
                <th>Kategori</th>
                <th>Merk</th>
                <th>Seri</th>
                <th>Gambar</th>
                <th>SOP Pengoperasian</th>
                <th>SOP Pemeliharaan</th>
                <th>Stok</th>
                <th>Stok Minimal</th>
                <th>Status</th>
                <th>Act</th>
              </thead>
              <tbody>
          <?php 
          $i = 1;
          foreach($kelola_seri->result() as $row): ?>
          <tr>
            <td align="center"><?=$i++?></td>
            <td align="center"><?=$row->kategori?></td>
            <td align="center"><?=$row->merk?></td>
            <td align="center"><?=$row->seri?></td>
            <td align="center"><?=$row->gambar?></td>
            <td align="center"><?=$row->sop_pengoperasian?></td>
            <td align="center"><?=$row->sop_pemeliharaan?></td>
            <td align="center"><?=$row->stok?></td>
            <td align="center"><?=$row->stok_minimal?></td>
            <td align="center"><span class="badge bg-green">Ada</span></td>
            <td align="center">
            <?php
              $sesi = from_session('level');
              if ($sesi == '1' || $sesi == '2' || $sesi == '3' || $sesi == '6') {
                echo button('load_silent("kelola/kelola_seri/form/sub/'.$row->id.'","#modal")','','btn btn-info fa fa-edit','data-toggle="tooltip" title="Edit"');
              ?><a href="<?= site_url('kelola/kelola_inventaris') ?>" class="btn btn-warning"><i class="fa fa-search"></i></a>
              <?php
              } else {
                # code...
              }
              ?>
              <a href="<?= site_url('kelola/kelola_seri/delete/'.$row->id) ?>" class="btn btn-danger"
              onclick="return confirm('Anda yakin ingin menghapus seri?')"><i class="fa fa-trash"></i></a>

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