<div class="container-fluid">
<div><h4><strong>DAFTAR MENU</strong></h4></div>

    <div class="row text-center mt-4">
        <?php foreach($gambar_depan as $gbr) : ?>
        <div class="card ml-3 mb-3" style="width: 18rem;">
            <img class="card-img-top" src="<?php echo base_url().'/upload/'.$gbr->gambar?>" alt="Card image cap" width="150px">
            <div class="card-body">
            <h4 class="card-title mb-1"><?php echo $gbr->nama_gambar?></h4>
            <?php echo anchor('master/tipe_lab/'. $gbr->id, '<div class="btn btn-sm btn-primary">Menuju Menu</div>')  ?>

            </div>
        </div>

        <?php endforeach ?>
    </div>
</div>