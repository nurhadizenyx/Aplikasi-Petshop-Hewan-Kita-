-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 22 Jun 2023 pada 13.34
-- Versi server: 10.4.22-MariaDB
-- Versi PHP: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_bukawarung`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_admin`
--

CREATE TABLE `tb_admin` (
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(50) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `admin_telp` varchar(20) NOT NULL,
  `admin_email` varchar(50) NOT NULL,
  `admin_address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_admin`
--

INSERT INTO `tb_admin` (`admin_id`, `admin_name`, `user_name`, `password`, `admin_telp`, `admin_email`, `admin_address`) VALUES
(1, 'Indera Hermawan', 'admin', '202cb962ac59075b964b07152d234b70', '088215763542', 'indra@gmail.com', 'Badran Jt1 528, Jalan Tentara Rakyat Mataram Yogyakarta RT.51/RW.11, Bumijo, Jetis, Kota Yogayakarta'),
(3, 'surya', 'sur', '1234', '12312312424', 'azizirmawan396@gmail.com', 'sdasdasdsad');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_kategori`
--

CREATE TABLE `tb_kategori` (
  `kategori_id` int(11) NOT NULL,
  `kategori_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_kategori`
--

INSERT INTO `tb_kategori` (`kategori_id`, `kategori_name`) VALUES
(9, 'Sepatu'),
(10, 'Kaos Kaki'),
(11, 'Baju'),
(12, 'Jaket'),
(13, 'Celana'),
(16, 'Tas');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_produk`
--

CREATE TABLE `tb_produk` (
  `produk_id` int(11) NOT NULL,
  `kategori_id` int(11) NOT NULL,
  `produk_name` varchar(100) NOT NULL,
  `produk_price` int(11) NOT NULL,
  `produk_diskripsi` text NOT NULL,
  `produk_image` varchar(100) NOT NULL,
  `produk_status` tinyint(1) NOT NULL,
  `data_creat` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_produk`
--

INSERT INTO `tb_produk` (`produk_id`, `kategori_id`, `produk_name`, `produk_price`, `produk_diskripsi`, `produk_image`, `produk_status`, `data_creat`) VALUES
(7, 13, 'Celana pendek ', 45000, '<ul>\r\n	<li>GOOD QUALITY</li>\r\n	<li>BEST SELLER</li>\r\n	<li>HARGA MURAH</li>\r\n</ul>\r\n', 'produk1686483061.jpeg', 1, '2023-06-11 11:31:01'),
(8, 13, 'Celana panjang', 55000, '<ul>\r\n	<li>GOOD QUALITY</li>\r\n	<li>&nbsp;BEST SELLER</li>\r\n	<li>&nbsp;HARGA MURAH</li>\r\n</ul>\r\n', 'produk1686483321.jpg', 1, '2023-06-11 11:35:21'),
(9, 12, 'sweeter', 87000, '<p>NAMA PRODUK : OUTERWEAR PRIA SWEATER WATCHOUT OTO FLEECE VTSU-09<br />\r\nTYPE : REGULER<br />\r\n<br />\r\nDETAIL :<br />\r\n<br />\r\nDETAIL PRODUK : Bahan Flece Detail size : Panjang 70cm LD 110 cm pj tangan 60cm<br />\r\n<br />\r\nDETAIL UKURAN<br />\r\nDetail - LD - Pjg Baju<br />\r\nUkuran 1: 110 CM - 70 CM<br />\r\nBerat per pcs: 390 gram<br />\r\nBahan: FLEECE<br />\r\nkeunggulan: Bahan cenderung elastis, Bahan cepat kering, Memiliki kemampuan breathability yang cukup baik<br />\r\n<br />\r\nNOTE :<br />\r\n<br />\r\nHAPPY SHOPPING !!</p>\r\n', 'produk1686483443.jpg', 1, '2023-06-11 11:37:23'),
(10, 12, 'Hoodie', 99000, '<p>Hoodie Original:<br />\r\n- The material, cut, and the details have all evolved.<br />\r\n<br />\r\n- Vintage-inspired with a modern fit.<br />\r\n<br />\r\n- 100% French terry cotton, with a puffiness that adds further comfort to the materials.<br />\r\n<br />\r\n- This season&#39;s updated design features thicker yarns inspired by vintage sweats, making it a thicker, stronger fabric that feels more casual.<br />\r\n<br />\r\n- Just the right size or oversized, this relaxed cut is perfect for any style.<br />\r\n<br />\r\nUkuran :<br />\r\n<br />\r\n- S = M nya (Indonesia)<br />\r\n- M = L nya (Indonesia)<br />\r\n- L = XL nya (Indonesia)<br />\r\n- XL = XXL (Indonesia)<br />\r\n<br />\r\n* Jika Kekecilan / Kebesaran BISA DITUKAR, Tenang aja :D<br />\r\n<br />\r\n* Cek Foto Untuk Detail Sizenya<br />\r\n<br />\r\n* Semua Produk ORIGINAL langsung dari&nbsp; di Indonesia</p>\r\n', 'produk1686483525.jpg', 1, '2023-06-11 11:38:45'),
(11, 11, 'Bad Manners Black Short Tee', 125000, '<p>Official merchandise Bad Manners. Fabric : Black Combed 20s with plastisol screen print on graphic. Bonus corona finger or keychain ( random color and shape ) Available S, M, L, XL, XXL, XXXL. Size Chart: Panjang x Lebar S : 69 x 48 cm M : 72 x 52 cm L : 74 x 55 cm XL : 76 x 57 cm XXL : 80 x 62 cm XXXL : 83 x 67 cm Harap dibaca: 1. Pemesanan akan dilayani setiap hari Senin s/d Minggu 2. Tidak ada barang yang dikirim di hari yang sama. Barang akan dikirim keesokan harinya setelah melakukan pembayaran (kecuali pesanan Jumat-Minggu dikirim Senin) 3. Hari Sabtu dan Minggu hanya melayani pemesanan saja, tidak ada pengiriman barang. Mohon dimaklumi 4. Jam pengiriman kami adalah jam 5 sore, harap bersabar ya. Terima kasih.</p>\r\n', 'produk1686483655.jpg', 1, '2023-06-11 11:40:55'),
(12, 11, 'Berserah Diri Short Tee', 125000, '<p>Fabric : Combed 20s with plastisol screen print on graphic.</p>\r\n\r\n<p>Bonus corona finger or keychain ( random color and shape )</p>\r\n\r\n<p>Available S, M, L, XL, XXL, 3XL.</p>\r\n\r\n<p>Size Chart: Panjang x Lebar S : 69 x 48 cm M : 72 x 52 cm L : 74 x 55 cm XL : 76 x 57 cm XXL : 80 x 62 cm 3XL : 83 x 67 cm</p>\r\n\r\n<p>Harap dibaca:</p>\r\n\r\n<p>1. Pemesanan akan dilayani setiap hari Senin s/d Minggu</p>\r\n\r\n<p>2. Tidak ada barang yang dikirim di hari yang sama. Barang akan dikirim keesokan harinya setelah melakukan pembayaran (kecuali pesanan Jumat-Minggu dikirim Senin)</p>\r\n\r\n<p>3. Hari Sabtu dan Minggu hanya melayani pemesanan saja, tidak ada pengiriman barang. Mohon dimaklumi</p>\r\n\r\n<p>4. Jam pengiriman kami adalah jam 5 sore, harap bersabar ya.</p>\r\n\r\n<p>Terima kasih.</p>\r\n', 'produk1686483779.jpg', 1, '2023-06-11 11:42:59'),
(13, 10, 'Kaos Kaki Putis', 15000, '<p>Selamat berbelanja di Mohaki Official Semua motif yg bisa di pilih di variasi artinya barang tersedia ya! Cara Pemesan Banyak Motif :</p>\r\n\r\n<p>1. Pilih motif dan jumlahnya masukan ke dalam keranjang pesanan</p>\r\n\r\n<p>2. Bayar pesanan semua secara langsung agar masih dalam 1 ongkos kirim Catatan: *Tidak menerima pergantian motif di chat *Motif yg tidak masuk dalam variasi bisa dicantumkan di note/catatan order *Jika ada kendala terkait produk atau pengiriman bisa menghubugi admin untuk dibantu sampai selesai Karakteristik</p>\r\n\r\n<p>Produk:</p>\r\n\r\n<p>1. Kualiatas Bahan Terbaik</p>\r\n\r\n<p>2. Kuat Tidak Gampang Sobek</p>\r\n\r\n<p>3. Anti Gerah dan Bau</p>\r\n\r\n<p>4. Bahan Lentur Nyaman</p>\r\n\r\n<p>5. Sporty</p>\r\n\r\n<p>6. Casual</p>\r\n\r\n<p>7. Panjang 3/4 (Setengah Betis)</p>\r\n\r\n<p>8. All Size Petunjuk Perawatan Produk : &bull;Cuci dengan air maksimum 30&deg;C &bull;Jangan diperas dan disetrika &bull;Jangan menggunakan Pemutih &bull;Hindari Sinar Matahari</p>\r\n\r\n<p>Terima Kasih Selamat Berbelanja #KaosKakiPremium</p>\r\n', 'produk1686483917.jpg', 1, '2023-06-11 11:45:17'),
(14, 10, 'Kaos Kaki Berwarna', 20000, '<p>Selamat berbelanja di Mohaki Official Semua motif yg bisa di pilih di variasi artinya barang tersedia ya! Cara Pemesan Banyak Motif : 1. Pilih motif dan jumlahnya masukan ke dalam keranjang pesanan</p>\r\n\r\n<p>2. Bayar pesanan semua secara langsung agar masih dalam</p>\r\n\r\n<p>1 ongkos kirim Catatan: *Tidak menerima pergantian motif di chat *Motif yg tidak masuk dalam variasi bisa dicantumkan di note/catatan order *Jika ada kendala terkait produk atau pengiriman bisa menghubugi admin untuk dibantu sampai selesai Karakteristik</p>\r\n\r\n<p>Produk:</p>\r\n\r\n<p>1. Kualiatas Bahan Terbaik</p>\r\n\r\n<p>2. Kuat Tidak Gampang Sobek</p>\r\n\r\n<p>3. Anti Gerah dan Bau</p>\r\n\r\n<p>4. Bahan Lentur Nyaman</p>\r\n\r\n<p>5. Sporty</p>\r\n\r\n<p>6. Casual</p>\r\n\r\n<p>7. Panjang 3/4 (Setengah Betis)</p>\r\n\r\n<p>8. All Size Petunjuk Perawatan Produk : &bull;Cuci dengan air maksimum 30&deg;C &bull;Jangan diperas dan disetrika &bull;Jangan menggunakan Pemutih &bull;Hindari Sinar Matahari</p>\r\n\r\n<p>Terima Kasih Selamat Berbelanja #KaosKakiPremium</p>\r\n', 'produk1686483980.jpeg', 1, '2023-06-11 11:46:20'),
(15, 9, 'VANS AUTHENTIC', 350000, '<p>Sepatu Sneakers Pria Wanita VANS AUTHENTIC Hitam Grade Original<br />\r\n<br />\r\n- 100% Barang Baru BNIB<br />\r\n- Quality 100% Import Vietnam - MONEY BACK GUARANTEE<br />\r\n- Packing Bubble Wrap / Plastic Shrink<br />\r\n<br />\r\nORDER MASUK MAX JAM 17.00WIB<br />\r\n<br />\r\nHati2 Harga Murah !! Barang Tiruan Produksi Lokal, dengan Gambar yang sama , KUALITAS JAUH BERBEDA<br />\r\n<br />\r\nSHOPY ONLINE - Happy Shopping<br />\r\n<br />\r\nSepatu Sneakers Pria Wanita VANS AUTHENTIC Hitam Grade Original</p>\r\n', 'produk1686484115.jpg', 1, '2023-06-11 11:48:35'),
(16, 9, 'Converse High ', 400000, '<p>sepatu Converse high grade ori<br />\r\nPilhan warna Banyak :)<br />\r\nUmisex cocok untuk cewek dan cowok :)<br />\r\nDi jamin Kualitas oke !!!<br />\r\nUkuran 36&bull;37&bull;38&bull;39.40.41.42.43.44.45 size<br />\r\n<br />\r\nCek di etalase akun kami Produk yang kami sediakan merupakan produk pilihan dengan jaminan kualitas tinggi disertai dengan harga yang murah dan berkualitas<br />\r\n<br />\r\nUntuk mengetahui update sepatu-sepatu terbaru silahkan follow akun toko kami/ kunjungi toko kami cek di etalase kami banyak koleksi-koleksi sepatu berkualitas tentunya harga yang murah.</p>\r\n', 'produk1686484190.jpg', 1, '2023-06-11 11:49:50'),
(17, 13, 'Celana pendek ', 20000, '<p>hohohohohohhoho</p>\r\n', 'produk1686492646.jpeg', 0, '2023-06-11 14:10:46'),
(19, 16, 'Tas Ransel', 60000, '<p>harga bersahabat</p>\r\n', 'produk1686553266.jpg', 1, '2023-06-12 07:01:06');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indeks untuk tabel `tb_kategori`
--
ALTER TABLE `tb_kategori`
  ADD PRIMARY KEY (`kategori_id`);

--
-- Indeks untuk tabel `tb_produk`
--
ALTER TABLE `tb_produk`
  ADD PRIMARY KEY (`produk_id`),
  ADD KEY `kategori_id` (`kategori_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_admin`
--
ALTER TABLE `tb_admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `tb_kategori`
--
ALTER TABLE `tb_kategori`
  MODIFY `kategori_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `tb_produk`
--
ALTER TABLE `tb_produk`
  MODIFY `produk_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
