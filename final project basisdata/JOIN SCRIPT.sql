SELECT servis.id_servis AS "Nama Servis", servis.tgl_servis AS "Tanggal", servis_deskripsi,
part.id_part, part.nama_part, mekanik.nama_mekanik, customer.nama_customer,
pembayaran.nominal, pembayaran.metode_pembayaran
FROM servis
INNER JOIN part ON servis.id_servis = part.id_servis
INNER JOIN mekanik ON servis.id_servis = mekanik.id_servis
INNER JOIN customer ON servis.id_servis = customer.id_servis
INNER JOIN pembayaran ON servis.id_servis = pembayaran.id_servis;


