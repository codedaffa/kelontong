-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 16 Des 2020 pada 02.55
-- Versi server: 10.4.16-MariaDB
-- Versi PHP: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tokokelontong_db`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE `barang` (
  `id_barang` int(11) NOT NULL,
  `produk` varchar(32) NOT NULL,
  `jenis` varchar(32) NOT NULL,
  `harga` int(32) NOT NULL,
  `stock` int(11) NOT NULL,
  `satuan` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `barang`
--

INSERT INTO `barang` (`id_barang`, `produk`, `jenis`, `harga`, `stock`, `satuan`) VALUES
(1, 'INDOMIE', 'MIE', 3000, 98, 'KEMASAN'),
(2, 'MIE SEDAP', 'MIE', 3000, 50, 'KEMASAN'),
(3, 'SANTRI MIE', 'MIE', 1000, 70, 'KEMASAN'),
(4, 'POP MIE', 'MIE', 5000, 24, 'CUP'),
(5, 'MIE GELAS', 'MIE', 1000, 78, 'KEMASAN'),
(6, 'TELUR', 'BAHAN POKOK', 2000, 95, 'BUTIR'),
(7, 'BERAS', 'BAHAN POKOK', 5000, 10, 'KG'),
(8, 'MINYAK MAKAN', 'BAHAN POKOK', 5000, 7, 'KG'),
(9, 'POTATO', 'MAKANAN RINGAN', 2000, 20, 'KEMASAN'),
(10, 'PERMEN KARET', 'PERMEN', 1000, 64, 'DUA KEMASAN');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pegawai`
--

CREATE TABLE `pegawai` (
  `id_pegawai` int(11) NOT NULL,
  `nama_pegawai` varchar(32) NOT NULL,
  `username` varchar(32) NOT NULL,
  `password` varchar(32) NOT NULL,
  `no_telepon` varchar(13) NOT NULL,
  `alamat` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pegawai`
--

INSERT INTO `pegawai` (`id_pegawai`, `nama_pegawai`, `username`, `password`, `no_telepon`, `alamat`) VALUES
(1, 'MUHAMMAD DAFFA AL FARIZI', 'pegawai', 'pegawai', '081360633645', 'lhokseumawe'),
(1957301034, 'ADMIN', 'admin', 'admin', '082245642134', 'lhokseumawe');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembeli`
--

CREATE TABLE `pembeli` (
  `id_pembeli` int(11) NOT NULL,
  `nama_pembeli` varchar(32) NOT NULL,
  `username` varchar(32) NOT NULL,
  `password` varchar(32) NOT NULL,
  `no_telepon` varchar(13) NOT NULL,
  `alamat` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pembeli`
--

INSERT INTO `pembeli` (`id_pembeli`, `nama_pembeli`, `username`, `password`, `no_telepon`, `alamat`) VALUES
(1, 'WALI', 'user', 'user', '081360633645', 'lhokseumawe'),
(2, 'RIZIEQ', 'pembeli', 'pembeli', '081360633647', 'lhokseumawe');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` int(11) NOT NULL,
  `id_barang` int(11) NOT NULL,
  `produk` varchar(32) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `satuan` varchar(32) NOT NULL,
  `total_harga` int(32) NOT NULL,
  `id_pembeli` int(11) NOT NULL,
  `nama_pembeli` varchar(32) NOT NULL,
  `tanggal` date NOT NULL,
  `waktu` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `id_barang`, `produk`, `jumlah`, `satuan`, `total_harga`, `id_pembeli`, `nama_pembeli`, `tanggal`, `waktu`) VALUES
(138, 1, 'INDOMIE', 6, 'BUNGKUS', 18000, 2, 'RIZIEQ', '2020-12-15', '10:3:14 PM'),
(139, 4, 'POP MIE', 6, 'CUP', 30000, 1, 'WALI', '2020-12-15', '11:29:28 PM'),
(140, 10, 'PERMEN KARET', 2, 'DUA KEMASAN', 2000, 1, 'WALI', '2020-12-15', '11:29:42 PM'),
(141, 1, 'INDOMIE', 2, 'KEMASAN', 6000, 2, 'RIZIEQ', '2020-12-15', '11:38:19 PM'),
(142, 5, 'MIE GELAS', 2, 'KEMASAN', 2000, 2, 'RIZIEQ', '2020-12-15', '11:38:24 PM'),
(143, 10, 'PERMEN KARET', 3, 'DUA KEMASAN', 3000, 2, 'RIZIEQ', '2020-12-15', '11:38:37 PM'),
(144, 6, 'TELUR', 3, 'BUTIR', 6000, 1, 'WALI', '2020-12-15', '11:40:44 PM'),
(145, 10, 'PERMEN KARET', 1, 'DUA KEMASAN', 1000, 1, 'WALI', '2020-12-15', '11:40:47 PM'),
(146, 6, 'TELUR', 1, 'BUTIR', 2000, 2, 'RIZIEQ', '2020-12-15', '11:41:36 PM'),
(147, 8, 'MINYAK MAKAN', 4, 'KG', 20000, 1, 'WALI', '2020-12-16', '8:38:17 AM'),
(148, 8, 'MINYAK MAKAN', 4, 'KG', 20000, 1, 'WALI', '2020-12-16', '8:39:0 AM'),
(149, 6, 'TELUR', 1, 'BUTIR', 2000, 1, 'WALI', '2020-12-16', '8:39:11 AM');

--
-- Trigger `transaksi`
--
DELIMITER $$
CREATE TRIGGER `beli` AFTER INSERT ON `transaksi` FOR EACH ROW BEGIN
UPDATE barang SET stock=stock-new.jumlah
WHERE id_barang=new.id_barang;
END
$$
DELIMITER ;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id_barang`);

--
-- Indeks untuk tabel `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`id_pegawai`);

--
-- Indeks untuk tabel `pembeli`
--
ALTER TABLE `pembeli`
  ADD PRIMARY KEY (`id_pembeli`);

--
-- Indeks untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`),
  ADD KEY `transaksi_ibfk_2` (`id_pembeli`),
  ADD KEY `transaksi_ibfk_1` (`id_barang`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `barang`
--
ALTER TABLE `barang`
  MODIFY `id_barang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=243533;

--
-- AUTO_INCREMENT untuk tabel `pegawai`
--
ALTER TABLE `pegawai`
  MODIFY `id_pegawai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1957301035;

--
-- AUTO_INCREMENT untuk tabel `pembeli`
--
ALTER TABLE `pembeli`
  MODIFY `id_pembeli` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1957301071;

--
-- AUTO_INCREMENT untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=150;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
