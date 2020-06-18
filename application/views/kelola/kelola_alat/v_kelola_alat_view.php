<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');?>
<?php require_once ('application/views/dasbord.php') ?> 
    <div class="row" id="form_pembelian">
      <div class="col-lg-12">
        <div class="box box-primary">
          <div class="box-header with-border">
            <h3 class="box-title">Kelola Alat</h3>

            <div class="box-tools pull-right">
            </div>
          </div>
          <div class="box-body">
            <table width="100%" id="tableku" class="table table-striped">
              <thead>
                <th>No</th>
                <th>Nama alat</th>
                <th>Satuan</th>
                <th>Seri</th>
                <th>Stok</th>
                <th>Lokasi</th>
                <th>Pendanaan</th>
                <th>Harga</th>
                <th>Status</th>
                <th></th>
              </thead>
              <tbody>
              <?php 
          $i = 1;
          foreach($kelola_alat->result() as $row): ?>
          <tr>
            <td align="center"><?=$i++?></td>
            <td align="center"><?=$row->nama_alat?></td>
            <td align="center"><?=$row->nama_satuan?></td>
            <td align="center"><?=$row->seri?></td>
            <td align="center"><?=$row->stok?></td>
            <td align="center"><?=$row->lokasi?></td>
            <td align="center"><?=$row->sumber_pendanaan?></td>
            <td align="center"><?=$row->harga?></td>
            <td align="center"><?=$row->status?></td>
            <td align="center">
            
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
