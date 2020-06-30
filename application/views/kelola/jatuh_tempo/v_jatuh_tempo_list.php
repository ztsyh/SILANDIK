<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');?>

      <div class="col-lg-12">
        <div class="box box-danger">
          <div class="box-header with-border">
            <h3 class="box-title">Jatuh Tempo</h3>

            <div class="box-tools pull-right">
            <?php
              $sesi = from_session('level');
              if ($sesi == '1' || $sesi == '3' ) {
                echo button('load_silent("kelola/jatuh_tempo/form/base","#modal")','Tambah Data Jatuh Tempo','btn btn-success');
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
                <th>Id Peminjanan</th>
                <th>Nama Peminjam</th>
                <th>Nomor Induk</th>
                <th>Status User</th>
                <th>Kategori Peminjaman</th>
                <th>Tanggal Kembali</th>
                <th>Status</th>
                <th>Act</th>
              </thead>
              <tbody>
        <?php 
          $i = 1;
          foreach($jatuh_tempo->result() as $row): ?>
          <tr>
            <td align="center"><?=$i++?></td>
            <td align="center"><?=$row->id?></td>
            <td align="center"><?=$row->nama_peminjam?></td>
            <td align="center"><?=$row->no_induk?></td>
            <td align="center"><?=$row->status_user?></td>
            <td align="center"><?=$row->kategori_peminjaman?></td>
            <td align="center"><?=date('j F Y',strtotime($row->tanggal_kembali))?></td>
            <td align="center"><span class="badge bg-green">Ada</span></td>
            <td align="center">
            <?php
              $sesi = from_session('level');
              if ($sesi == '1' || $sesi == '4') {
                echo button('load_silent("kelola/jatuh_tempo/form/sub/'.$row->id.'","#modal")','','btn btn-info fa fw fa-edit','data-toggle="tooltip" title="Edit"');
              } else {
                # code...
              }
              ?>
               <?php echo button('load_silent("kelola/jatuh_tempo/delete/'.$row->id.'","#content")','','btn btn-danger fa fw fa-trash','data-toggle="tooltip" title="Hapus"');?> 
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