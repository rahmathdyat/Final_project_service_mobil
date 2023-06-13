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

SELECT * FROM customer WHERE nama_customer = 'Yonis Fadil';
SELECT * FROM customer;

UPDATE customer SET telp_customer = '085812231159' WHERE id_customer = 'CUST214';
SELECT * FROM customer;

INSERT INTO `servism`.`customer` (`id_customer`, `id_servis`, `nama_customer`, `telp_customer`, `alamat_customer`) VALUES ('CUST215', 'SERV006', 'Riyanto', '085712131141', 'Cibitung');
SELECT * FROM customer;

DELETE FROM customer WHERE id_customer = 'CUST215'; 
SELECT * FROM customer;
