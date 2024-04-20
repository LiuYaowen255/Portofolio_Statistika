#Tugas Besar Kasir SQL
CREATE DATABASE FurniCraftt;
USE FurniCraftt;

# Normalisasi Tahap 3 (3NF)
CREATE TABLE Produk(
ID_Produk INT PRIMARY KEY NOT NULL,
Nama_Produk VARCHAR(50) NOT NULL,
Harga_Satuan INT NOT NULL,
Jumlah_Stok INT NOT NULL,
Informasi_Spesifikasi VARCHAR(10000) NOT NULL
);

CREATE TABLE Pelanggan(
Nomor_Faktur INT PRIMARY KEY NOT NULL,
Nama_Pelanggan VARCHAR(100) NOT NULL,
Nomor_Telepon_Pelanggan VARCHAR(13) NOT NULL,
Alamat_Pelanggan VARCHAR(100) NOT NULL
);

CREATE TABLE Kasir(
ID_Kasir INT PRIMARY KEY NOT NULL,
Nama_Kasir VARCHAR(50) NOT NULL
);

CREATE TABLE Pembelian(
Nomor_Faktur INT NOT NULL,
ID_Produk INT NOT NULL,
Pilihan_Warna VARCHAR(20) NOT NULL,
Biaya_Pengiriman INT NOT NULL,
Jumlah_Pembelian INT NOT NULL,
Tanggal_Pembelian DATE NOT NULL,
Pembayaran VARCHAR(50) NOT NULL,
ID_Kasir INT NOT NULL,
FOREIGN KEY (ID_Kasir) REFERENCES Kasir(ID_Kasir),
FOREIGN KEY (Nomor_Faktur) REFERENCES Pelanggan(Nomor_Faktur),
FOREIGN KEY (ID_Produk) REFERENCES Produk(ID_Produk),
PRIMARY KEY (ID_Produk, Tanggal_Pembelian)
);


INSERT INTO Produk VALUES
(101, "Meja ZenDesk", 1300000, 50, "Dimensi: 140 cm x 70 cm x 75 cm
Material: Kayu solid dengan kaki logam
Desain: Modern dan fungsional
Fitur: Permukaan tahan gores, desain modular"),
(102, "Meja Harmony", 1500000, 55, "Dimensi: 150 cm x 80 cm x 85 cm
Material: Kayu jati dengan kaki logam
Desain: Modern dan fungsional
Fitur: Permukaan tahan gores, desain modular"),
(103, "Meja FuturaCraft", 1250000, 53, "Dimensi: 120 cm x 60 cm x 75 cm.
Material: Daur ulang kayu solid dengan lapisan kaca tempered.
Desain: Minimalis dengan tepi pahat unik.
Fitur Antimainstream: Meja dilengkapi dengan teknologi pengisian nirkabel (wireless charging) di permukaan meja untuk mendukung kebutuhan perangkat elektronik."),
(104, "Meja MinimalCraft", 1350000, 35, "Dimensi: 120 cm x 60 cm x 75 cm
Material: Kayu solid dengan lapisan pelindung anti gores.
Desain: Minimalis dengan kaki logam hitam.
Fitur: Permukaan tahan gores, desain modular."),
(105, "Meja NordicElegance", 1400000, 68, "Dimensi: 140 cm x 70 cm x 80 cm
Material: Kayu oak dengan finishing natural.
Desain: Elegan dengan detail kaki terukir.
Fitur: Laci penyimpanan tersembunyi, desain ergonomis."),
(106, "Meja VintageCharm", 1200000, 59, "Dimensi: 110 cm x 55 cm x 70 cm
Material: Kayu jati tua dengan tampilan vintage.
Desain: Klasik dengan ukiran tangan.
Fitur: Permukaan anti air, desain unik dengan tekstur kayu."),
(107, "Lemari Summit", 500000, 47, "Dimensi: 180 cm x 90 cm x 40 cm
Material: Panel partikel tahan lama
Penyimpanan: Rak internal yang dapat disesuaikan
Desain: Minimalis dengan pegangan logam"),
(108, "Lemari Elegant", 750000, 40, "Dimensi: 200 cm x 90 cm x 55 cm 
Material: Panel partikel tahan lama
Penyimpanan: Rak internal yang dapat disesuaikan
Desain: Minimalis dengan pegangan logam"),
(109, "Lemari UrbanFusion", 600000, 57, "Dimensi: 180 cm x 90 cm x 40 cm
Material: Panel partikel tahan lama dengan lapisan kaca matte.
Desain: Minimalis dengan pintu geser transparan.
Fitur: Rak internal yang dapat disesuaikan."),
(110, "Lemari  ModernBlend", 800000, 34, "Dimensi: 200 cm x 100 cm x 55 cm
Material: Kayu solid dengan lapisan furnitur glossy.
Desain: Modern dengan sudut-sudut tajam.
Fitur: Laci penyimpanan yang dapat dikunci, desain elegan."),
(111, "Lemari RetroHarmony", 750000, 33, "Dimensi: 150 cm x 50 cm x 75 cm
Material: Kayu jati dengan warna retro.
Desain: Kombinasi retro dan modern.
Fitur: Pintu geser dengan motif artistik."),
(112, "Lemari VortexLiving", 550000, 51, "Dimensi: 160 cm x 100 cm x 45 cm.
Material: Baja tahan karat dengan panel kaca geser.
Desain: Futuristik dengan pencahayaan LED otomatis.
Fitur Antimainstream: Sistem pintar dengan sensor gerak untuk membuka pintu otomatis dan pencahayaan LED yang berubah warna sesuai waktu."),
(113, "Kursi UrbanRelax", 320000, 25, "Dimensi: 60 cm x 70 cm x 80 cm
Material: Kulit sintetis berkualitas tinggi
Desain: Ergonomis dengan detail jahitan
Kaki: Logam berlapis krom"),
(114, "Kursi Nova", 400000, 41, "Dimensi: 62 cm x 72 cm x 82 cm
Material: Kulit sintetis berkualitas tinggi dengan lapisan tambahan untuk kenyamanan
Desain: Ergonomis dengan detail jahitan presisi untuk penampilan yang eksklusif
Kaki: Logam tahan karat berlapis krom, desain kaki bintang dengan roda untuk mobilitas yang mudah"),
(115, "Kursi ContemporaryComfort", 450000, 56, "Dimensi: 65 cm x 70 cm x 80 cm
Material: Kulit sintetis berkualitas tinggi dengan lapisan busa tebal.
Desain: Ergonomis dengan detail jahitan presisi.
Kaki: Logam berlapis krom."),
(116, "Kursi ScandiRelax", 420000, 34, "Dimensi: 60 cm x 75 cm x 85 cm
Material: Kayu solid dengan bantalan kain linen.
Desain: Scandinavian dengan sudut-sudut lembut.
Kaki: Kayu solid warna alami."),
(117, "Kursi BohoVibe", 500000, 57, "Dimensi: 70 cm x 65 cm x 78 cm
Material: Rotan sintetis dengan bantalan kain etnik.
Desain: Bohemian dengan detail anyaman.
Kaki: Logam hitam dengan aksen emas."),
(118, "Kursi StellarSeating", 550000, 48, "Dimensi: 70 cm x 80 cm x 85 cm.
Material: Kombinasi kulit sintetis berwarna galaksi dengan rangka logam anti karat.
Desain: Ergonomis dengan detail jahitan luar biasa.
Fitur Antimainstream: Terintegrasi dengan teknologi pembaca sidik jari untuk mengatur posisi duduk yang paling nyaman dan penyesuaian pemanasan."),
(119, "Tempat Tidur HavenBeds", 2300000, 67, "Ukuran: Queen (160 cm x 200 cm)
Bahan: Rangka kayu solid dengan pelapis kain
Desain: Platform dengan kepala tempat tidur terbuka
Fitur: Penyimpanan tersembunyi di bawah tempat tidur"),
(120, "Tempat Tidur Elite", 1800000, 43, "Ukuran: Single (120 cm x 200 cm)
Bahan: Rangka kayu solid dengan pelapis kain
Desain: Platform dengan kepala tempat tidur terbuka
Fitur: Penyimpanan tersembunyi di bawah tempat tidur"),
(121, "Tempat Tidur DreamyHaven", 2000000, 75, "Ukuran: Queen (160 cm x 200 cm)
Material: Rangka kayu solid dengan pelapis kain linen.
Desain: Platform dengan kepala tempat tidur terbuka.
Fitur: Penyimpanan tersembunyi di bawah tempat tidur."),
(122, "Tempat Tidur Sleek", 2500000, 66, "Ukuran: King (180 cm x 200 cm)
Material: Rangka logam dengan pelapis kulit sintetis.
Desain: Minimalis dengan kaki logam tajam.
Fitur: Sistem penyangga luar biasa."),
(123, "Tempat Tidur CozyRetreat", 1600000, 54, "Ukuran: Double (140 cm x 190 cm)
Material: Rangka kayu dengan bantalan kain berbulu.
Desain: Classic dengan aksen kancing.
Fitur: Kepala tempat tidur yang dapat disesuaikan."),
(124, "Tempat Tidur CelestialDreams", 2200000, 39, "Ukuran: King (180 cm x 200 cm).
Material: Rangka kayu solid dengan headboard berbentuk portal abstrak.
Desain: Mewah dengan aksen lampu LED yang dapat diubah warna.
Fitur Antimainstream: Sistem proyeksi langit-langit bintang yang dapat disesuaikan untuk menciptakan suasana mimpi yang unik."),
(125, "Wastafel ZenDrains", 473000, 56, "Dimensi: 60 cm x 40 cm
Material: Keramik berkualitas tinggi
Desain: Wastafel atas meja dengan tepi tipis
Instalasi: Meja atau dinding"),
(126, "Wastafel AquaFlow", 583000, 39, "Dimensi: 70 cm x 50 cm
Material: Keramik berkualitas tinggi
Desain: Wastafel atas meja dengan tepi tipis
Instalasi: Meja atau dinding"),
(127, "Wastafel Kohler", 550000, 59, "Dimensi: 60 cm x 42 cm
Material: Porselen
Desain: Wastafel atas meja dengan tepi berbentuk oval
Fitur: Permukaan tahan noda, mudah dibersihkan"),
(128, "Wastafel Elfa", 500000, 57, "Dimensi: 60 cm x 40 cm
Material: Keramik
Desain: Modern dengan tepian melengkung
Fitur: Overlow, mudah dibersihkan"),
(129, "Wastafel Shelves", 450000, 49, "Dimensi: 55 cm x 38 cm
Material: Tempered glass
Desain: Transparan dengan motif alam
Fitur: Anti gores, ringan"),
(130, "Wastafel String", 425000, 45, "Dimensi: 50 cm x 35 cm
Material: Stainless steel
Desain: Minimalis dengan sudut tajam
Fitur: Anti karat, kedap air"),
(131, "Wastafel Mountain", 625000, 55, "Dimensi: 70 cm x 45 cm
Material: Porselen
Desain: Klasik dengan pahatan detail
Fitur: Permukaan tahan gores, tahan lama"),
(132, "Wastafel CPP", 725000, 57, "Dimensi: 80 cm x 50 cm.
Material: Porselen berkualitas tinggi dengan lapisan anti gores.
Desain: Wastafel atas meja dengan tepi tipis dan kurva elegan.
Fitur: Teknologi kontrol air dengan sensor sentuh, mengatur volume air dan suhu dengan gerakan intuitif."),
(133, "Sofa CozyNook", 725000, 18, "Dimensi: 220 cm x 90 cm x 80 cm
Material: Kain linen tahan lama
Desain: Chesterfield modern dengan kaki kayu
Kursi tambahan: Bantal tambahan untuk kenyamanan"),
(134, "Sofa RedVelvet", 645000, 48, "Dimensi: 220 cm x 90 cm x 80 cm
Material: Kain linen tahan lama
Desain: Chesterfield modern dengan kaki kayu"),
(135, "Sofa Ashley", 640000, 36, "Dimensi: 210 cm x 95 cm x 70 cm
Material: Velvet
Desain: Retro dengan kaki kayu
Fitur: Bantal lebar, tahan lama"),
(136, "Sofa Ethan", 600000, 47,  "Dimensi: 200 cm x 90 cm x 80 cm
Material: Kain beludru
Desain: Elegan dengan kaki logam
Fitur: Bantal tambahan, struktur kokoh"),
(137, "Sofa Allen", 550000, 53, "Dimensi: 180 cm x 85 cm x 75 cm
Material: Kulit sintetis
Desain: Modern dengan lengan tipis
Fitur: Dukungan punggung ergonomis, teknologi anti-noda"),
(138, "Sofa West", 610000, 48, "Dimensi: 220 cm x 100 cm x 85 cm
Material: Linen
Desain: Rustik dengan jahitan terlihat
Fitur: Bahan ramah lingkungan, bantalan empuk"),
(139, "Bufet Savory", 379000, 44, "Dimensi: 150 cm x 45 cm x 80 cm
Material: Kayu solid dengan lapisan furnitur
Desain: Modern minimalis
Fitur: Pintu geser, laci penyimpanan, kaki logam"),
(140, "Bufet Delight", 325000, 43, "Dimensi: 140 cm x 45 cm x 65 cm
Material: Kayu solid dengan lapisan furnitur
Desain: Modern skandinavia
Fitur: Pintu geser, laci penyimpanan, kaki logam"),
(141, "Bufet Duravit", 330000, 48, "Dimensi: 135 cm x 55 cm x 75 cm
Material: Particle board
Desain: Simpel dengan lapisan matte
Fitur: Laci kedap suara, rak terbuka tambahan"),
(142, "Bufet Blanco", 315000, 53, "Dimensi: 120 cm x 40 cm x 80 cm
Material: Kayu veneer
Desain: Klasik dengan kaki geser
Fitur: Laci tahan berat, rak tersembunyi"),
(143, "Bufet Basset", 400000, 47, "Dimensi: 150 cm x 45 cm x 85 cm
Material: MDF dengan lapisan melamin
Desain: Modern dengan pintu geser
Fitur: Ruang penyimpanan luas, desain anti gores"),
(144, "Bufet Palliser", 430000, 48, "Dimensi: 180 cm x 50 cm x 90 cm
Material: Solid wood
Desain: Elegan dengan pahatan artistik
Fitur: Pintu kaca transparan, rak anggur terintegrasi"),
(145, "Rak Dinding Zenith", 210000, 48, "Dimensi: 100 cm x 30 cm x 20 cm
Material: Kayu laminasi
Desain: Rak floating dengan penyangga tersembunyi
Penggunaan: Menampilkan dekorasi atau buku"),
(146, "Rak Dinding ModShelves", 460000, 50, "Dimensi: 100 cm x 60 cm x 50 cm
Material: Kayu jati
Desain: Rak floating dengan penyangga tersembunyi
Penggunaan: Menampilkan dekorasi atau buku"),
(147, "Rak Dinding Wayfair", 450000, 52, "Dimensi: 70 cm x 30 cm x 25 cm
Material: Aluminium
Desain: Floating dengan lampu LED tersembunyi
Fitur: Desain modern, mudah dipasang"),
(148, "Rak Dinding Barrel", 420000, 53, "Dimensi: 60 cm x 20 cm x 30 cm
Material: Kayu solid
Desain: Minimalis dengan pola geometris
Fitur: Mudah dipasang, tahan lama"),
(149, "Rak Dinding Pottery", 500000, 48, "Dimensi: 80 cm x 25 cm x 35 cm
Material: MDF (Medium Density Fiberboard)
Desain: Futuristik dengan kombinasi warna
Fitur: Rak terbuka, penyimpanan multi-level"),
(150, "Rak Dinding BarnLevel", 430000, 44, "Dimensi: 50 cm x 15 cm x 40 cm
Material: Baja tahan karat
Desain: Industrial dengan pipa terbuka
Fitur: Dapat diatur ulang, mudah dibersihkan");


SELECT * FROM Produk;

INSERT INTO Pelanggan VALUES
(201, "Amelia Tan", 08156789101, "Jl. Diponegoro No. 17"),
(202, "Dian Surya", 08219875432, "Jl. Jemursari No. 11"),
(203, "Hendra Wijaya", 08567891234, "Jl. Arif Rahman Hakim No. 21"),
(204, "Maya Putri", 08676541098, "Jl. Ngagel Jaya No. 61"),
(205, "Natasha Dewi", 08774567890, "Jl. Tenggilis Mejoyo No. 45"),
(206, "Rizki Pratama", 08993216543, "Jl. Semolowaru Utara No. 51"),
(207, "Taylor Swift", 08318765432, "Jl. Mulyosari Utara No. 92"),
(208, "Zayn Malik", 08882109876, "Jl. Keputih Selatan No. 81");

SELECT * FROM Pelanggan;

INSERT INTO Kasir VALUES
(5001, "Olaf"),
(5002, "Anna"),
(5003, "Elsa");

SELECT * FROM Kasir;

INSERT INTO Pembelian VALUES
(201, 101, "Merah", 50000, 2, "2022-07-18", "Transfer Bank Mandiri", 5001),
(201, 125, "Putih", 50000, 1, "2022-07-18", "Transfer Bank Mandiri", 5001),
(202, 101, "Merah", 35000, 3, "2022-08-09", "Transfer Bank Mandiri", 5002),
(203, 107, "Putih", 50000, 1, "2022-08-19", "Tunai", 5001),
(203, 113, "Coklat", 50000, 1, "2022-08-19", "Tunai", 5001),
(204, 133, "Hitam", 50000, 1, "2022-09-03", "Tunai", 5001),
(204, 119, "Abu-Abu", 50000, 1, "2022-09-03", "Tunai", 5001),
(205, 113, "Coklat", 0, 1, "2022-09-19", "Transfer Bank BCA", 5002),
(206, 119, "Putih", 35000, 1, "2022-10-07", "Transfer Bank BCA", 5003),
(207, 114, "Coklat", 0, 1, "2022-10-10", "Transfer Bank Mandiri", 5003),
(208, 139, "Hijau", 50000, 3, "2022-11-07", "Tunai", 5002);

SELECT * FROM Pembelian;

# Grand Total
SELECT
    Pelanggan.Nama_Pelanggan,
    Pembelian.Nomor_Faktur,
    SUM(Pembelian.Jumlah_Pembelian * Produk.Harga_Satuan) + MAX(Pembelian.Biaya_Pengiriman) AS Grand_Total
FROM Pembelian
JOIN Produk ON Pembelian.ID_Produk = Produk.ID_Produk
JOIN Pelanggan ON Pembelian.Nomor_Faktur = Pelanggan.Nomor_Faktur
GROUP BY Pelanggan.Nama_Pelanggan, Pembelian.Nomor_Faktur;

#Format Tabel untuk Nota Pembelian
SELECT
    Pelanggan.Nama_Pelanggan AS Nama,
    Pembelian.Nomor_Faktur,
    Pelanggan.Alamat_Pelanggan AS Alamat,
    GROUP_CONCAT(DISTINCT Pembelian.Tanggal_Pembelian) AS Tanggal,
    GROUP_CONCAT(DISTINCT Produk.Nama_Produk) AS Produk,
    GROUP_CONCAT(DISTINCT Pembelian.Pilihan_Warna) AS Warna,
	GROUP_CONCAT(DISTINCT Pembelian.Jumlah_Pembelian) AS Jumlah,
    GROUP_CONCAT(DISTINCT Produk.Harga_Satuan) AS Harga,
    GROUP_CONCAT(DISTINCT Pembelian.Biaya_Pengiriman) AS Ongkir,
    SUM(Pembelian.Jumlah_Pembelian * Produk.Harga_Satuan) + MAX(Pembelian.Biaya_Pengiriman) AS Grand_Total,
    GROUP_CONCAT(DISTINCT Pembelian.ID_Kasir) AS ID_Kasir,
    GROUP_CONCAT(DISTINCT Pembelian.Pembayaran) AS Metode_Pembayaran
FROM Pembelian
JOIN Produk ON Pembelian.ID_Produk = Produk.ID_Produk
JOIN Pelanggan ON Pembelian.Nomor_Faktur = Pelanggan.Nomor_Faktur
JOIN Kasir ON Pembelian.ID_Kasir = Kasir.ID_Kasir
GROUP BY Pelanggan.Nama_Pelanggan, Pembelian.Nomor_Faktur
HAVING Pembelian.Nomor_Faktur = 201;

SELECT
    Pelanggan.Nama_Pelanggan AS Nama,
    Pembelian.Nomor_Faktur,
    Pelanggan.Alamat_Pelanggan AS Alamat,
    GROUP_CONCAT(DISTINCT Pembelian.Tanggal_Pembelian) AS Tanggal,
    GROUP_CONCAT(DISTINCT Produk.Nama_Produk) AS Produk,
    GROUP_CONCAT(DISTINCT Pembelian.Pilihan_Warna) AS Warna,
	GROUP_CONCAT(DISTINCT Pembelian.Jumlah_Pembelian) AS Jumlah,
    GROUP_CONCAT(DISTINCT Produk.Harga_Satuan) AS Harga,
    GROUP_CONCAT(DISTINCT Pembelian.Biaya_Pengiriman) AS Ongkir,
    SUM(Pembelian.Jumlah_Pembelian * Produk.Harga_Satuan) + MAX(Pembelian.Biaya_Pengiriman) AS Grand_Total,
    GROUP_CONCAT(DISTINCT Pembelian.ID_Kasir) AS ID_Kasir,
    GROUP_CONCAT(DISTINCT Pembelian.Pembayaran) AS Metode_Pembayaran
FROM Pembelian
JOIN Produk ON Pembelian.ID_Produk = Produk.ID_Produk
JOIN Pelanggan ON Pembelian.Nomor_Faktur = Pelanggan.Nomor_Faktur
JOIN Kasir ON Pembelian.ID_Kasir = Kasir.ID_Kasir
GROUP BY Pelanggan.Nama_Pelanggan, Pembelian.Nomor_Faktur
HAVING Pembelian.Nomor_Faktur = 202;

#Format nota dengan stored procedure
DELIMITER //

CREATE PROCEDURE DetailPembelian(IN invoiceNumber INT)
BEGIN
    SELECT
        Pelanggan.Nama_Pelanggan AS Nama,
        Pembelian.Nomor_Faktur,
        Pelanggan.Alamat_Pelanggan AS Alamat,
        GROUP_CONCAT(DISTINCT Pembelian.Tanggal_Pembelian) AS Tanggal,
        GROUP_CONCAT(DISTINCT Produk.Nama_Produk) AS Produk,
        GROUP_CONCAT(DISTINCT Pembelian.Pilihan_Warna) AS Warna,
        GROUP_CONCAT(DISTINCT Pembelian.Jumlah_Pembelian) AS Jumlah,
        GROUP_CONCAT(DISTINCT Produk.Harga_Satuan) AS Harga,
        GROUP_CONCAT(DISTINCT Pembelian.Biaya_Pengiriman) AS Ongkir,
        SUM(Pembelian.Jumlah_Pembelian * Produk.Harga_Satuan) + MAX(Pembelian.Biaya_Pengiriman) AS Grand_Total,
        GROUP_CONCAT(DISTINCT Pembelian.ID_Kasir) AS ID_Kasir,
        GROUP_CONCAT(DISTINCT Pembelian.Pembayaran) AS Metode_Pembayaran
    FROM Pembelian
    JOIN Produk ON Pembelian.ID_Produk = Produk.ID_Produk
    JOIN Pelanggan ON Pembelian.Nomor_Faktur = Pelanggan.Nomor_Faktur
    JOIN Kasir ON Pembelian.ID_Kasir = Kasir.ID_Kasir
    WHERE Pembelian.Nomor_Faktur = invoiceNumber
    GROUP BY Pelanggan.Nama_Pelanggan, Pembelian.Nomor_Faktur;
END //

DELIMITER ;

CALL DetailPembelian(201);


#Menampilkan barang yang terjual
SELECT DISTINCT
    Produk.ID_Produk,
    Produk.Nama_Produk
FROM Pembelian
LEFT JOIN Produk ON Pembelian.ID_Produk = Produk.ID_Produk
LEFT JOIN Pelanggan ON Pembelian.Nomor_Faktur = Pelanggan.Nomor_Faktur;


#Menampilkan barang yang belum terjual
SELECT DISTINCT
    Produk.ID_Produk,
    Produk.Nama_Produk
FROM Produk
LEFT JOIN Pembelian ON Produk.ID_Produk = Pembelian.ID_Produk
WHERE Pembelian.ID_Produk IS NULL;


#Menampilkan barang yang dibeli berdasarkan metode pembayaran
SELECT DISTINCT
    Produk.ID_Produk,
    Produk.Nama_Produk,
    Pembelian.Pembayaran,
    Pelanggan.Nama_Pelanggan
FROM Produk
LEFT JOIN Pembelian ON Produk.ID_Produk = Pembelian.ID_Produk
LEFT JOIN Pelanggan ON Pembelian.Nomor_Faktur = Pelanggan.Nomor_Faktur
WHERE Pembelian.Pembayaran = "Tunai";
