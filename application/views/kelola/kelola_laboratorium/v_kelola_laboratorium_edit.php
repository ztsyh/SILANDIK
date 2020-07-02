<!-- Begin Page Content -->
<div class="container-fluid">

<!-- Page Heading -->
<div class="d-sm-flex align-items-center justify-content-between mb-4">
  <h1 class="h3 mb-0 text-gray-800">Pilih Merk Mobil</h1>
</div>

<div class="row">
<?php foreach ($merk as $m) {
  ?>

  <div class="col-xl-3 col-md-6 mb-4">
  <a href="<?= base_url(); ?>transaksi/editTampilMobil/<?= $m['idMerk']; ?>?id=<?= $get; ?>">
    <div class="card border-left-primary shadow h-100 py-2">
      <div class="card-body">
        <div class="row no-gutters align-items-center">
          <div class="col mr-2">
            
            <div class="h5 mb-0 font-weight-bold text-gray-800"><?= $m['namaMerk']; ?></div>
          </div>
          
        </div>
      </div>
    </div>
  </a>
  </div>
  <?php } ?>
</div>

</div>
<!-- /.container-fluid -->

</div>
<!-- End of Main Content -->
