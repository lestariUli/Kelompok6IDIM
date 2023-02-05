<div class="container mt-3">

    <div class="row">
      <div class="col-lg-6">
        <?php Flasher::flash(); ?>
      </div>
    </div>

    <div class="row mb-3">
      <div class="col-lg-6">
        <button type="button" class="btn btn-primary tombolTambahData" data-toggle="modal" data-target="#formModal">
          Tambah Data Suplier
        </button>
      </div>
    </div>

    <h3>Daftar Suplier</h3>

    <table class="table table-hover">
                <thead>
                    <tr>
                        <th scope="col">NamaSuplier</th>
                        <th scope="col">Alamat</th>
                        <th scope="col">Nomor HP Supplier</th>
                        <th scope="col">ACTION</th>
                    </tr>
                </thead>
                <tbody>
                    <?php $i = 1; ?>
                    <?php foreach( $data['br'] as $br ) : ?>
                    <tr>
                        <td><?= $br['namaSuplier'];?></td>
                        <td> <?= $br['alamatSupplier'];?></td>
                        <td><?= $br['noHpSupplier'];?></td>
                        <td>
                        <a href="<?= BASEURL;?>/suplier/hapus/<?= $br['idSupplier']; ?>" class="badge badge-danger float-right" onclick="return confirm('yakin?');">hapus</a>
                        <a href="<?= BASEURL;?>/suplier/ubahDetail/<?= $br['idSupplier']; ?>" class="badge badge-primary float-right">Ubah</a>
                        </td>
                    </tr>
                    <?php $i++; ?>
                    <?php endforeach; ?>
                </tbody>
    </table>

</div>


<!-- Modal -->
<div class="modal fade" id="formModal" tabindex="-1" role="dialog" aria-labelledby="formModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="formModalLabel">Tambah Data Penjualan</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        
        <form action="<?= BASEURL; ?>/suplier/tambah" method="post">
          <input type="hidden" name="IdSuplier" id="IdSuplier">
          <div class="form-group">
            <label for="NamaSuplier">Nama Suplier</label>
            <input type="text" class="form-control" id="NamaSuplier" name="NamaSuplier" placeholder="Input Nama Suplier">
          </div>

          <div class="form-group">
            <label for="Alamat">Alamat</label>
            <input type="text" class="form-control" id="Alamat" name="Alamat" placeholder="Input Alamat">
          </div>

          <div class="form-group">
            <label for="Alamat">Nomor HP Supplier</label>
            <input type="text" class="form-control" id="noHpSupplier" name="noHpSupplier" placeholder="Input Nomor Handphone">
          </div>

      </div>
      <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
          <button type="submit" class="btn btn-primary">Tambah Data</button>
        </form>
      </div>
    </div>
  </div>
</div>

<!-- modal edit -->




