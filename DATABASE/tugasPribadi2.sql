create database tugasPribadi2;
use tugasPribadi2;

-- soal 1 --
-- tabel hak akses --
create TABLE HakAkses (
    IdAkses int NOT NULL Primary key,
    NamaAkses varchar(255) NOT NULL,
    Keterangan varchar(255)
);
-- table pengguna --
CREATE TABLE Pengguna (
    IdPengguna int NOT NULL primary key,
    NamaPengguna varchar(250) NOT NULL,
    Password varchar(250) NOT NULL,
    NamaDepan varchar(250) NOT NULL,
    NamaBelakang varchar(250) NOT NULL,
    NoHp int(15) not null,
    Alamat varchar(500) not null,
    IdAkses int ,
    FOREIGN KEY (IdAkses) REFERENCES hakakses(IdAkses)
);
-- table barang --
CREATE TABLE Barang (
    IdBarang int NOT NULL primary key,
    NamaBarang varchar(250) NOT NULL,
    Keterangan varchar(250) NOT NULL,
    Satuan int not null,
    IdPengguna int,
    FOREIGN KEY (IdPengguna) REFERENCES pengguna(IdPengguna)
);
-- table pembelian
CREATE TABLE Pembelian (
    IdPembelian int NOT NULL primary key auto_increment,
    JumlahPembelian int not null,
    HargaBeli double not null ,
    IdPengguna int,
    FOREIGN KEY (IdPengguna) REFERENCES pengguna(IdPengguna)
);
-- table penjualan --
CREATE TABLE Penjualan (
    IdPenjualan int NOT NULL primary key,
    JumlahPenjualan int not null,
    HargaJual double not null,
    IdPengguna int,
    FOREIGN KEY (IdPengguna) REFERENCES pengguna(IdPengguna)
);
-- soal 2 --
Select * from hakakses; 
Select * from pengguna;
select * from barang;
-- soal 3 --
-- Hak Akses --
INSERT INTO hakakses (`IdAkses`, `NamaAkses`, `Keterangan`) VALUES 
(2, 'Write', 'Dapat Write Database'), 
(3, 'Delete', 'Dapat Delete Database'),
(4, 'Update', 'Dapat Update atabase'),
(5, 'Read', 'Dapat Read Database'),
(6, 'WD', 'Dapat Write Delete Database'),
(7, 'WU', 'Dapat Write Update Database'),
(8, 'DU', 'Dapat Delete Update Database'),
(9, 'DR', 'Dapat Delete Read Database'),
(10, 'WRD', 'Dapat Write Read Delete Database'),
(11, 'WDU', 'Dapat Write, Delete, Update Database');
-- Pengguna --
INSERT INTO pengguna (`IdPengguna`, `NamaPengguna`, `Password`, `NamaDepan`, `NamaBelakang`, `NoHp`, `Alamat`, `IdAkses`) VALUES
('1', 'Lestari', 'lili123', 'Tari', 'Uli', 082277268, 'Tangerang', 2),
('2', 'Anto Singa', 'lili123', 'Anto', 'Sinaga', 08227726, 'Tangerang', 3),
('3', 'Akta Siska', 'lili123', 'Akta', 'Siska', 08223326, 'Tangerang', 2),
('4', 'Marito Khol', 'lili123', 'Marito', 'Khol', 08227732, 'Tangerang', 2),
('5', 'Leny Jess', 'lili123', 'Leny', 'Jess', 082277968, 'Tangerang', 2),
('6', 'Tiara No Limit', 'lili123', 'Tiara', 'No Limit', 08227729, 'Tangerang', 6),
('7', 'Andini Situmeang', 'lili123', 'Andini', 'Situmeang', 08227721, 'Tangerang', 2),
('8', 'Ziva Aska', 'lili123', 'Ziva', 'Aska', 082244268, 'Tangerang', 11),
('9', 'Lasina usilia', 'lili123', 'Lasina', 'Usilia', 082245668, 'Tangerang', 11),
('10', 'Akila Lala', 'lili123', 'Akila', 'Lala', 082277243, 'Tangerang', 9);
-- Barang --
INSERT INTO `barang` (`IdBarang`, `NamaBarang`, `Keterangan`, `Satuan`, `IdPengguna`) VALUES 
('1', 'Minyak Goreng', 'Minyak Goreng', '1', '9'),
('2', 'Mouse Pink', 'Mouse Pink', '1', '10'),
('3', 'Boneka', 'Boneka', '1', '9'),
('4', 'Spray', 'Spray 200m', '2', '8'),
('5', 'Meja Belajar', 'Meja Belajar', '2', '8'),
('6', 'Buku Dogeng anak anak', 'Buku Dogeng anak anak', '10', '4'),
('7', 'Baju Yellow Uniqlo', 'Baju Yellow Uniqlo', '1', '8'),
('8', 'Sunslik', 'Shampo Anti Dandruf', '1', '4'),
('9', 'Ikat Pinggang Wanita', 'Ikat Pinggang', '2', '8'),
('14', 'Ikat Rambut', 'Ikat Rambut', '3', '10');

-- Soal 4 --
Select * from penjualan;
Select * from pembelian;
-- Soal 5 --
-- Data Penjualan --
INSERT INTO penjualan (`IdPenjualan`, `JumlahPenjualan`, `HargaJual`, `IdPengguna`) VALUES 
('1', '1', 10.000, '5'),
('2', '1', 240.000, '5'),
('3', '1', 100.000, '5'),
('4', '1', 180.000, '5'),
('5', '1', 108.000, '5'),
('6', '1', 107.000, '5'),
('7', '1', 166.000, '5'),
('8', '1', 43.000, '5'),
('9', '1', 88.000, '5'),
('10', '1', 90.000, '7'),
('11', '1', 40.000, '7'),
('12', '1', 170.000, '7'),
('13', '1', 150.000, '7'),
('14', '1', 10.000, '7'),
('15', '1', 50.000, '7'),
('16', '1', 100.000, '7'),
('17', '1', 180.000, '7'),
('18', '1', 180.000, '3'),
('19', '1', 110.000, '3'),
('20', '1', 30.000, '3');

-- Data dummy pembelian --
insert into pembelian (`JumlahPembelian`, `HargaBeli`, `Idpengguna`) values
(1, 200.000, 2),
(2, 130.000, 2),
(3, 270.000, 2),
(4, 260.000, 2),
(5, 230.000, 2),
(1, 210.000, 3),
(1, 100.000, 3),
(1, 990.000, 3),
(1, 690.000, 3),
(1, 633.000, 7),
(1, 255.000, 7),
(1, 456.000, 7),
(1, 255.000, 7),
(1, 267.000, 3),
(1, 765.000, 2),
(1, 773.000, 2),
(2, 524.000, 2),
(5, 933.500, 3),
(1, 543.550, 3),
(1, 222.620, 3);

select * from barang;
-- Soal 6 --
SELECT SUM(brg.Satuan) STOCK, pg.NamaPengguna, SUM(pj.HargaJual) - SUM(pm.HargaBeli) Keuntungan 
FROM barang brg,pembelian pm,penjualan pj,pengguna pg
WHERE brg.IdPengguna = pm.IdPengguna 
AND brg.IdPengguna = pj.IdPengguna 
AND brg.IdPengguna = pg.IdPengguna;

-- Tugas Kelompok --
-- soal 1 --
-- table supplier --
create table SUPPLIER(
	idSupplier int not null auto_increment primary key,
	namaSuplier varchar(250) not null,
    alamatSupplier varchar(500) not null,
    noHpSupplier int not null,
    idBarang int not null,
    FOREIGN KEY (idBarang) REFERENCES barang(IdBarang)
);
-- table pelanggan --
create table pelanggan(
	idPelanggan int not null auto_increment primary key,
	namaPelanggan varchar(250) not null,
    alamatPelanggan varchar(500) not null,
    noHpPelanggan int not null,
    IdPembelian int not null,
	FOREIGN KEY (IdPembelian) REFERENCES pembelian(IdPembelian)
);

-- dummy data supplier --
insert into supplier (`namaSuplier`, `alamatSupplier`, `noHpSupplier`, `idBarang`) values 
('Toko Indah Jaya','Jln. BSD Raya', '093883292', 1),
('Toko Indah Jaya','Jln. BSD Raya', '093883932', 1),
('Toko Indah Jaya','Jln. BSD Raya', '093883292', 1),
('Toko Indah Jaya','Jln. BSD Raya', '093883292', 1),
('Toko Indah Jaya','Jln. BSD Raya', '093883292', 1),
('Toko Abadi','Jln. BSD Raya', '093883292', 2),
('Toko Abadi','Jln. BSD Raya', '093883292', 14),
('Toko Abadi','Jln. BSD Raya', '093883292', 2),
('Toko Abadi','Jln. BSD Raya', '093883292', 5),
('Toko Abadi','Jln. BSD Raya', '093883292', 2),
('Toko Unilevar','Jln. BSD Pagedangan', '0938832292', 3),
('Toko Wings wings','Jln. BSD Raya 12', '093883292', 4),
('Toko Unilevar','Jln. BSD Pagedangan', '0938832292', 3),
('Toko Unilevar','Jln. BSD Pagedangan', '0938832292', 3),
('Toko Wings wings','Jln. BSD Raya 12', '093883292', 4),
('Toko Wings wings','Jln. BSD Raya 12', '093883292', 4),
('Toko Shopyyyaa','Jln. Damai Centika No. 18, Bekasi', '093883292', 14),
('Toko Shopyyyaa','Jln. Damai Centika No. 18, Bekasi', '093883292', 8),
('Toko Shopyyyaa','Jln. Damai Centika No. 18, Bekasi', '093883292', 7),
('Toko Shopyyyaa','Jln. Damai Centika No. 18, Bekasi', '093883292', 5);

-- dummy data pelanggan --
insert into pelanggan (`namaPelanggan`, `alamatPelanggan`, `noHpPelanggan`, `idPembelian`) values 
('pelanggan 1', 'jalan camar 1', '0812345801', '1'),
('pelanggan 2', 'jalan camar 2', '0812345802', '2'),
('pelanggan 3', 'jalan camar 3', '0812345603', '3'),
('pelanggan 4', 'jalan camar 4', '0812347804', '4'),
('pelanggan 5', 'jalan camar 5', '0812367805', '5'),
('pelanggan 6', 'jalan camar 6', '0812567806', '6'),
('pelanggan 7', 'jalan camar 7', '0812345607', '7'),
('pelanggan 8', 'jalan camar 8', '0812346708', '8'),
('pelanggan 9', 'jalan camar 9', '0812567809', '9'),
('pelanggan 10', 'jalan camar 10', '0834567810', '10'),
('pelanggan 11', 'jalan camar 11', '0812467811', '11'),
('pelanggan 12', 'jalan camar 12', '081234812', '12'),
('pelanggan 13', 'jalan camar 13', '0812345678', '13'),
('pelanggan 14', 'jalan camar 14', '0812567814', '14'),
('pelanggan 15', 'jalan camar 15', '0812567815', '15'),
('pelanggan 16', 'jalan camar 16', '0812347816', '16'),
('pelanggan 17', 'jalan camar 17', '0812345817', '17'),
('pelanggan 18', 'jalan camar 18', '0812345618', '18'),
('pelanggan 19', 'jalan camar 19', '0812345619', '19'),
('pelanggan 20', 'jalan camar 20', '0812345820', '20');

-- soal 3 --
select * from supplier;
select * from pelanggan;
select * from pembelian;