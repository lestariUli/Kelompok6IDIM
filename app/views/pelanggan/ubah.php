<div>
<form action="<?= BASEURL; ?>/pelanggan/ubah" method="post">
          <input type="hidden" name="IdPelanggan" id="IdPelanggan" value="<?= $data['br']['IdPelanggan']; ?>">
          <div class="form-group">
            <label for="NamaPelanggan">Nama Pelanggan</label>
            <input type="text" class="form-control" id="NamaPelanggan" name="NamaPelanggan" value="<?= $data['br']['NamaPelanggan']; ?>">
          </div>

          <div class="form-group">
            <label for="NoTelp">Nomor Handphone</label>
            <input type="number" class="form-control" id="NoTelp" name="NoTelp" value="<?= $data['br']['NoTelp']; ?>">
          </div>

      </div>
      <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
          <button type="submit" class="btn btn-primary">Ubah</button>
        </form>
</div>