<?php 

class Suplier_model {
    private $table = 'suplier';
    private $db;

    public function __construct()
    {
        $this->db = new Database;
    }

    public function getAllSuplier()
    {
        $this->db->query('SELECT * FROM ' . $this->table);
        return $this->db->resultSet();
    }

    public function getSuplierById($idSupplier)
    {
        $this->db->query('SELECT * FROM ' . $this->table . ' WHERE idSupplier=:idSupplier');
        $this->db->bind('idSupplier', $idSupplier);
        return $this->db->single();
    }

    public function tambahDataSuplier($data)
    {
        $query = "INSERT INTO suplier
                    VALUES
                  (null,:namaSuplier, :alamatSupplier,null)";
        
        $this->db->query($query);
        $this->db->bind('namaSuplier', $data['namaSuplier']);
        $this->db->bind('alamatSupplier', $data['alamatSupplier']);
       // $this->db->bind('noHpSupplier', $data['noHpSupplier']);

        $this->db->execute();

        return $this->db->rowCount();;
    }

    public function hapusDataSuplier($idSupplier)
    {
        $query = "DELETE FROM suplier WHERE idSupplier= :idSupplier";
        
        $this->db->query($query);
        $this->db->bind('idSupplier', $idSupplier);

        $this->db->execute();

        return $this->db->rowCount();
    }


    public function ubahDataSuplier($data)
    {
        $query = "UPDATE suplier SET
                    namaSuplier = :namaSuplier,
                    Alamat = :Alamat,
                    -- noHpSupplier = :noHpSupplier
                  WHERE idSupplier = :idSupplier";
        
        $this->db->query($query);
        $this->db->bind('namaSuplier', $data['namaSuplier']);
        $this->db->bind('Alamat', $data['Alamat']);
        //$this->db->bind('noHpSupplier', $data['noHpSupplier']);
        $this->db->bind('idSupplier', $data['idSupplier']);

        $this->db->execute();

        return $this->db->rowCount();
    }



}