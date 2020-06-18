

    <div class="row" id="form_pembelian">
      <div class="col-lg-12">
        <div class="box box-primary">
            <div class="cel head-title">
                <h3>Status Peminjaman</h3>
                    <div>
                    <td>Universitas TarTar</td>
                    </div>
                    <div>
                    <td>WELERI</td>
                    </div>
                    <div>
                    <td>NO.Telp 0895264727</td>
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
                <th>Status Pinjam</th>
                <th></th>
              </thead>
              <tbody>
              <?php 
          $i = 1;
          foreach($id->result() as $row): ?>
          <tr>
            <td align="center"><?=$i++?></td>
            <td align="center"><?=$row->id_peminjaman?></td>
            <td align="center"><?=$row->kategori?></td>
            <td align="center"><?=$row->tgl_peminjaman?></td>
            <td align="center"><?=$row->tgl_kembali?></td>
            <td align="center"><span class="badge bg-green"><?=$row->status_peminjaman?></span></td>
            <td align="center">

            </td>
          </tr>
        <?php endforeach;?>
        </tbody>
        </table>
      </div>
      </div>
    </div>
    <div class="cel head-title">
                <h5>Terima Kasih Meminjam Alat Di Lab</h5>
    </div>
  <div>
</div>
<script type="text/javascript"> window.print(); 
</script>
