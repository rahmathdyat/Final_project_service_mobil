CREATE DATABASE Servism;

USE Servism;

CREATE TABLE servis (
    id_servis VARCHAR(50) NOT NULL PRIMARY KEY,
    id_mekanik VARCHAR(50) NOT NULL,
    Id_customer VARCHAR(50) NOT NULL,
    tgl_servis DATE NOT NULL,
    servis_deskripsi TEXT NOT NULL,
    keterangan VARCHAR(100) NOT NULL
);

INSERT INTO `servism`.`servis` (`id_servis`, `id_mekanik`, `Id_customer`, `tgl_servis`, `servis_deskripsi`, `keterangan`) VALUES ('SERV001', 'MK101', 'CUST210', '2022-10-18', 'Penggantian Oli ', 'SELESAI');
INSERT INTO `servism`.`servis` (`id_servis`, `id_mekanik`, `Id_customer`, `tgl_servis`, `servis_deskripsi`, `keterangan`) VALUES ('SERV002', 'MK102', 'CUST211', '2022-10-18', 'Penggantian Ban Depan - Belakang', 'SELESAI');
INSERT INTO `servism`.`servis` (`id_servis`, `id_mekanik`, `Id_customer`, `tgl_servis`, `servis_deskripsi`, `keterangan`) VALUES ('SERV003', 'MK103', 'CUST212', '2022-10-19', 'Pengecekan Rem Dan Penggantian Aki', 'SELESAI');
INSERT INTO `servism`.`servis` (`id_servis`, `id_mekanik`, `Id_customer`, `tgl_servis`, `servis_deskripsi`, `keterangan`) VALUES ('SERV004', 'MK104', 'CUST213', '2022-10-19', 'Servis Bulanan - 10.000 KM', 'DALAM PROSES');
INSERT INTO `servism`.`servis` (`id_servis`, `id_mekanik`, `Id_customer`, `tgl_servis`, `servis_deskripsi`, `keterangan`) VALUES ('SERV005', 'MK105', 'CUST214', '2022-10-19', 'Cat Duko pada Bumper ', 'DALAM PROSES');

SELECT * FROM servis;

CREATE TABLE part (
    id_part VARCHAR(50) NOT NULL PRIMARY KEY,
    id_servis VARCHAR(50) NOT NULL,
    nama_part TEXT NOT NULL,
    jumlah_part VARCHAR(50) NOT NULL,
    harga_part DECIMAL NOT NULL
);

INSERT INTO `servism`.`part` (`id_part`, `id_servis`, `nama_part`, `jumlah_part`, `harga_part`) VALUES ('8966', 'SERV001', 'Oli Regular', '1', '150000');
INSERT INTO `servism`.`part` (`id_part`, `id_servis`, `nama_part`, `jumlah_part`, `harga_part`) VALUES ('8990', 'SERV002', 'Ban ', '4', '300000');
INSERT INTO `servism`.`part` (`id_part`, `id_servis`, `nama_part`, `jumlah_part`, `harga_part`) VALUES ('7723', 'SERV003', 'Minyak Rem dan Aki', '2', '200000');
INSERT INTO `servism`.`part` (`id_part`, `id_servis`, `nama_part`, `jumlah_part`, `harga_part`) VALUES ('6619', 'SERV004', 'Oli Regular, Aki dan Filter Udara dan AC ', '1', '450000');
INSERT INTO `servism`.`part` (`id_part`, `id_servis`, `nama_part`, `jumlah_part`, `harga_part`) VALUES ('8993', 'SERV005', 'Cat Duco', '1', '50000');

SELECT * FROM part;

CREATE TABLE mekanik (
    id_mekanik VARCHAR(50) NOT NULL PRIMARY KEY,
    id_servis VARCHAR(50) NOT NULL,
    nama_mekanik TEXT NOT NULL,
    telp_mekanik VARCHAR(50) DEFAULT NULL,
    alamat_mekanik VARCHAR(50) DEFAULT NULL
);

INSERT INTO `servism`.`mekanik` (`id_mekanik`, `id_servis`, `nama_mekanik`, `telp_mekanik`, `alamat_mekanik`) VALUES ('MK101', 'SERV001', 'Rahmat ', '081234567890', 'Cikarang');
INSERT INTO `servism`.`mekanik` (`id_mekanik`, `id_servis`, `nama_mekanik`, `telp_mekanik`, `alamat_mekanik`) VALUES ('MK102', 'SERV002', 'Farhan', '087780993231', 'Cikarang');
INSERT INTO `servism`.`mekanik` (`id_mekanik`, `id_servis`, `nama_mekanik`, `telp_mekanik`, `alamat_mekanik`) VALUES ('MK103', 'SERV003', 'Pipi', '085679056671', 'Cibitung');
INSERT INTO `servism`.`mekanik` (`id_mekanik`, `id_servis`, `nama_mekanik`, `telp_mekanik`, `alamat_mekanik`) VALUES ('MK104', 'SERV004', 'Satria', '081669707372', 'Tambun');
INSERT INTO `servism`.`mekanik` (`id_mekanik`, `id_servis`, `nama_mekanik`, `telp_mekanik`, `alamat_mekanik`) VALUES ('MK105', 'SERV005', 'Syahril', '085780809090', 'Cikarang');

SELECT * FROM mekanik;

CREATE TABLE customer (
    id_customer VARCHAR(50) NOT NULL PRIMARY KEY,
    id_servis VARCHAR(50) NOT NULL,
    nama_customer TEXT NOT NULL,
    telp_customer VARCHAR(50) DEFAULT NULL,
    alamat_customer VARCHAR(50) DEFAULT NULL
);

INSERT INTO `servism`.`customer` (`id_customer`, `id_servis`, `nama_customer`, `telp_customer`, `alamat_customer`) VALUES ('CUST210', 'SERV001', 'Bayu Aruan', '085899234471', 'Karawang');
INSERT INTO `servism`.`customer` (`id_customer`, `id_servis`, `nama_customer`, `telp_customer`, `alamat_customer`) VALUES ('CUST211', 'SERV002', 'Mess Kholik', '082133667078', 'Bekasi');
INSERT INTO `servism`.`customer` (`id_customer`, `id_servis`, `nama_customer`, `telp_customer`, `alamat_customer`) VALUES ('CUST212', 'SERV003', 'Pascal Nicky', '082219187079', 'Jakarta');
INSERT INTO `servism`.`customer` (`id_customer`, `id_servis`, `nama_customer`, `telp_customer`, `alamat_customer`) VALUES ('CUST213', 'SERV004', 'Nduru Serius', '085864362121', 'Depok');
INSERT INTO `servism`.`customer` (`id_customer`, `id_servis`, `nama_customer`, `telp_customer`, `alamat_customer`) VALUES ('CUST214', 'SERV005', 'Yonis Fadil', '087888889000', 'Tangerang');

SELECT * FROM customer;

CREATE TABLE transaksi (
    id_transaksi VARCHAR(50) NOT NULL PRIMARY KEY,
    id_servis VARCHAR(50) NOT NULL,
    tgl_transaksi DATE NOT NULL,
    jumlah VARCHAR(50) DEFAULT NULL,
    harga DECIMAL NOT NULL
);

INSERT INTO `servism`.`transaksi` (`id_transaksi`, `id_servis`, `tgl_transaksi`, `jumlah`, `harga`) VALUES ('TR1', 'SERV001', '2022-10-18', '1', '150000');
INSERT INTO `servism`.`transaksi` (`id_transaksi`, `id_servis`, `tgl_transaksi`, `jumlah`, `harga`) VALUES ('TR2', 'SERV002', '2022-10-18', '4', '300000');
INSERT INTO `servism`.`transaksi` (`id_transaksi`, `id_servis`, `tgl_transaksi`, `jumlah`, `harga`) VALUES ('TR3', 'SERV003', '2022-10-19', '2', '200000');
INSERT INTO `servism`.`transaksi` (`id_transaksi`, `id_servis`, `tgl_transaksi`, `jumlah`, `harga`) VALUES ('TR4', 'SERV004', '2022-10-19', '1', '450000');
INSERT INTO `servism`.`transaksi` (`id_transaksi`, `id_servis`, `tgl_transaksi`, `jumlah`, `harga`) VALUES ('TR5', 'SERV005', '2022-10-19', '1', '50000');

SELECT * FROM transaksi;

CREATE TABLE pembayaran (
    id_pembayaran VARCHAR(50) NOT NULL PRIMARY KEY,
    id_servis VARCHAR(50) NOT NULL,
    tgl_pembayaran DATE NOT NULL,
    nominal DECIMAL NOT NULL,
    metode_pembayaran VARCHAR(50) NOT NULL
);

INSERT INTO `servism`.`pembayaran` (`id_pembayaran`, `id_servis`, `tgl_pembayaran`, `nominal`, `metode_pembayaran`) VALUES ('PAY1', 'SERV001', '2022-10-18', '150000', 'CASH');
INSERT INTO `servism`.`pembayaran` (`id_pembayaran`, `id_servis`, `tgl_pembayaran`, `nominal`, `metode_pembayaran`) VALUES ('PAY2', 'SERV002', '2022-10-18', '1200000', 'TF BCA');
INSERT INTO `servism`.`pembayaran` (`id_pembayaran`, `id_servis`, `tgl_pembayaran`, `nominal`, `metode_pembayaran`) VALUES ('PAY3', 'SERV003', '2022-10-19', '400000', 'TF BCA');
INSERT INTO `servism`.`pembayaran` (`id_pembayaran`, `id_servis`, `tgl_pembayaran`, `nominal`, `metode_pembayaran`) VALUES ('PAY4', 'SERV004', '2022-10-19', '450000', 'QRIS');
INSERT INTO `servism`.`pembayaran` (`id_pembayaran`, `id_servis`, `tgl_pembayaran`, `nominal`, `metode_pembayaran`) VALUES ('PAY5', 'SERV005', '2022-10-19', '50000', 'DANA');

SELECT * FROM pembayaran;

SELECT servis.id_servis AS "Nama Servis", servis.tgl_servis AS "Tanggal", servis_deskripsi,
part.id_part, part.nama_part, mekanik.nama_mekanik, customer.nama_customer,
pembayaran.nominal, pembayaran.metode_pembayaran
FROM servis
INNER JOIN part ON servis.id_servis = part.id_servis
INNER JOIN mekanik ON servis.id_servis = mekanik.id_servis
INNER JOIN customer ON servis.id_servis = customer.id_servis
INNER JOIN pembayaran ON servis.id_servis = pembayaran.id_servis;

SELECT * FROM customer WHERE nama_customer = 'Yonis Fadil';
UPDATE customer SET telp_customer = '085812231159' WHERE id_customer = 'CUST214';
INSERT INTO `servism`.`customer` (`id_customer`, `id_servis`, `nama_customer`, `telp_customer`, `alamat_customer`) VALUES ('CUST215', 'SERV006', 'Riyanto', '085712131141', 'Cibitung');
SELECT * FROM customer;
DELETE FROM customer WHERE id_customer = 'CUST215'; 
