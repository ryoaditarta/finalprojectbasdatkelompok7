USE technologent;

CREATE TABLE pelanggan (
    id_pelanggan VARCHAR(255) PRIMARY KEY,
    nama_pelanggan VARCHAR(255),
    no_telp VARCHAR(15)
);

CREATE TABLE toko(
	nama_toko VARCHAR(255) PRIMARY KEY,
	telpon_toko VARCHAR(255),
	alamat_toko VARCHAR(255)
);

CREATE TABLE barang(
	kd_barang VARCHAR(255) PRIMARY KEY,
	gudang VARCHAR(255),
	tersedia_buku INT,
	tersedia_fisik INT, 
	nama_barang VARCHAR(255),
	harga_satuan INT,
	harga_pokok INT, 
	disc INT
);

CREATE TABLE nota(
	no_nota VARCHAR(255) PRIMARY KEY, 
	met_pembayaran VARCHAR(255),
	tgl_pembelian VARCHAR(255),
	garansi_bulan INT,
	garansi_hari INT,
	nama_pegawai VARCHAR(255)
);

CREATE TABLE rincian_transaksi (
    no_nota VARCHAR(255),
    kd_barang VARCHAR(255),
    jml_barang INT,
    harga INT,
    PRIMARY KEY (no_nota, kd_barang),
    FOREIGN KEY (no_nota) REFERENCES nota(no_nota),
    FOREIGN KEY (kd_barang) REFERENCES barang(kd_barang)
);





