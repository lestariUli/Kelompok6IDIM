<div class="container mt-3">

    <div class="row">
      <div class="col-lg-6">
        <?php Flasher::flash(); ?>
      </div>
    </div>

    <div class="row mb-3">
      <div class="col-lg-6">
        <button type="button" class="btn btn-primary tombolTambahData" data-toggle="modal" data-target="#formModal">
          Tambah Data Pelanggan
        </button>
      </div>
    </div>
  
    <div class="row">
        <div class="col-lg-6">
          <h3>Daftar Pelanggan</h3>
          <table class="table table-hover">
                <thead>
                    <tr>
                        <th scope="col">Nama Pelanggan</th>
                        <th scope="col">Alamat</th>
                        <th scope="col">Nomor Handphone</th>
                        <th scope="col">ACTION</th>
                    </tr>
                </thead>
                <tbody>
                    <?php $i = 1; ?>
                    <?php foreach( $data['br'] as $br ) : ?>
                    <tr>
                        <td><?= $br['namaPelanggan'];?></td>
                        <td><?= $br['alamatPelanggan'];?></td>
                        <td> <?= $br['noHpPelanggan'];?></td>
                        <td>
                         <a href="<?= BASEURL; ?>/pelanggan/hapus/<?= $br['idPelanggan']; ?>" class="badge badge-danger float-right" onclick="return confirm('yakin?');">hapus</a>
                  <a href="<?= BASEURL; ?>/pelanggan/ubahDetail/<?= $br['idPelanggan']; ?>" class="badge badge-primary float-right">Ubah</a>
                        </td>
                    </tr>
                    <?php $i++; ?>
                    <?php endforeach; ?>
                </tbody>
    </table>
         
          </ul>      
        </div>
    </div>

</div>


<!-- Modal -->
<div class="modal fade" id="formModal" tabindex="-1" role="dialog" aria-labelledby="formModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="formModalLabel">Tambah Data Pelanggan</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        
        <form action="<?= BASEURL; ?>/pelanggan/tambah" method="post">
          <input type="hidden" name="IdPelanggan" id="IdPelanggan">
          <div class="form-group">
            <label for="NamaPelanggan">NamaPelanggan</label>
            <input type="text" class="form-control" id="NamaPelanggan" name="NamaPelanggan" placeholder="Input Nama Pelanggan">
          </div>

          <div class="form-group">
            <label for="NoTelp">NoTelp</label>
            <input type="text" class="form-control" id="NoTelp" name="NoTelp" placeholder="Input Nomor Telepon">
          </div>

          <div class="form-group">
            <label for="NoTelp">Alamat</label>
            <input type="text" class="form-control" id="alamatPelanggan" name="alamatPelanggan" placeholder="Input Alamat">
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




