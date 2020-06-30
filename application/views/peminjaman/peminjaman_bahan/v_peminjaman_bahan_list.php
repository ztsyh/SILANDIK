<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');?>

    <div class="row" id="form_pembelian">
      <div class="col-lg-12">
        <div class="box box-danger">
          <div class="box-header with-border">
            <h3 class="box-title">Peminjaman Bahan</h3>

            <div class="box-tools pull-right">
            <?php
              $sesi = from_session('level');
              if ($sesi == '1' || $sesi == '2' || $sesi == '3' || $sesi == '6') {
                echo button('load_silent("peminjaman/peminjaman_bahan/form/base","#modal")','Add New peminjaman','btn btn-success');
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
                <th>Id peminjaman</th>
                <th>Nama Peminjam</th>
                <th>Tanggal Pijam</th>
                <th>Tanggal Kembali</th>
                <th>Jumlah</th>
                <th>Id Barang</th>
                <th>Status</th>
                <th>Kebutuhan</th>
                <th>Act</th>
              </thead>
              <tbody>
          <?php 
          $i = 1;
          foreach($peminjaman_bahan->result() as $row): ?>
          <tr>
            <td align="center"><?=$i++?></td>
            <td align="center"><?=$row->id_peminjaman?></td>
            <td align="center"><?=$row->nama_peminjam?></td>
            <td align="center"><?=date('j F Y',strtotime($row->tanggal_pinjam))?></td>
            <td align="center"><?=date('j F Y',strtotime($row->tanggal_kembali))?></td>
            <td align="center"><?=$row->jumlah?></td>
            <td align="center"><?=$row->id_barang?></td>
            <td align="center"><?=$row->status?></td>
            <td align="center"><?=$row->kebutuhan?></td>
            <td align="center">
            <?php
              $sesi = from_session('level');
              if ($sesi == '1' || $sesi == '4' || $sesi == '5' || $sesi == '6'|| $sesi == '7'|| $sesi == '8') {
                echo button('load_silent("peminjaman/peminjaman_bahan/form/sub/'.$row->id_peminjaman.'","#modal")','','btn btn-info fa fa-edit','data-toggle="tooltip" title="Edit"');
              } else {
                # code...
              }
              echo button('load_silent("peminjaman/peminjaman_bahan/delete/'.$row->id_peminjaman.'","#content")','','btn btn-danger fa fw fa-trash','data-toggle="tooltip" title="Hapus"');
              ?>
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
