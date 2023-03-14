-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 08 Mar 2023 pada 23.08
-- Versi server: 10.4.25-MariaDB
-- Versi PHP: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pengaduan2`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `masyarakat`
--

CREATE TABLE `masyarakat` (
  `nik` varchar(16) NOT NULL,
  `nama` varchar(35) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(255) NOT NULL,
  `telp` varchar(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `masyarakat`
--

INSERT INTO `masyarakat` (`nik`, `nama`, `username`, `password`, `telp`) VALUES
('', 'Salim', 'lim', '1234', '08123784'),
('0239128', 'rawr', 'lur', 'lure', '293481290'),
('12312', 'junaedi', 'rawr', 'kosong', '02913812'),
('123134', 'bang ji', 'masyarakat2', 'd9a8c6c010a37fdc9850fe6d8c064880', '02347876712'),
('12321', 'kaori', 'saori', '95a1a19391f1b27f5c5349f9d9c0c2f1', '01283218'),
('2123423', 'masyarakat', 'masyarakat', 'd9a8c6c010a37fdc9850fe6d8c064880', '3472804239'),
('231', 'hilih', 'halo', '81dc9bdb52d04dc20036dbd8313ed055', '342412321'),
('231321', 'Rilim', 'cenah', '9e1e06ec8e02f0a0074f2fcc6b26303b', '231321321'),
('283918', 'Rizki', 'karim', 'halo', '01239129348'),
('3748237', 'lim', 'nao', '1234', '3472847'),
('81267317', 'Loli', 'pedo', '81dc9bdb52d04dc20036dbd8313ed055', '088912832'),
('9123721', 'Rizki', 'lur', '827ccb0eea8a706c4c34a16891f84e7b', '082378218');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengaduan`
--

CREATE TABLE `pengaduan` (
  `id_pengaduan` int(5) NOT NULL,
  `tgl_pengaduan` varchar(20) NOT NULL,
  `nik` varchar(16) NOT NULL,
  `isi_laporan` text NOT NULL,
  `foto` varchar(255) NOT NULL,
  `status` enum('proses','selesai') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pengaduan`
--

INSERT INTO `pengaduan` (`id_pengaduan`, `tgl_pengaduan`, `nik`, `isi_laporan`, `foto`, `status`) VALUES
(1, '2023-02-02', '', '', 'noImage.png', 'selesai'),
(2, '2023-02-02', '', '12980', 'noImage.png', 'selesai'),
(3, '2023-02-03', '', 'batujaar jelek jir', '030220230933Capture1_11zon.jpg', 'selesai'),
(4, '2023-02-05', '', 'tes', 'noImage.png', 'selesai'),
(7, '2023-02-20', '2123423', 'lucu pemerintah nya', 'noImage.png', 'selesai'),
(13, '2023-02-22', '', 'tes', 'noImage.png', 'selesai'),
(14, '2023-02-22', '', 'nya halo', 'noImage.png', 'selesai'),
(15, '2023-02-22', '', '', 'noImage.png', 'selesai'),
(17, '2023-02-26', '', 'tes ini masyarakat', 'noImage.png', 'selesai'),
(18, '2023-02-26', '2123423', 'tes ini masyaraka2', 'noImage.png', 'selesai'),
(19, '2023-02-26', '', 'asjdhbasjhdashdjahsjdhasjdhasjkdhjashdajsd', 'noImage.png', 'selesai'),
(20, '2023-03-01', '2123423', 'tes', '010320232032denji.jpg', 'proses'),
(21, '2023-03-08', '2123423', 'halo', 'noImage.png', 'proses'),
(22, '2023-03-08', '2123423', 'saya nama lim', 'noImage.png', 'proses'),
(23, '2023-03-08', '2123423', 'saya ingin menjadi masyrakat lebih berguna\r\n', 'noImage.png', 'proses'),
(24, '2023-03-08', '2123423', 'Hutao waifu ku', 'noImage.png', 'proses'),
(25, '2023-03-08', '2123423', 'Waifu ke dua ku nao tomori', 'noImage.png', 'proses'),
(26, '2023-03-08', '2123423', 'Waifu ke tiga ku Nakano miku', 'noImage.png', 'proses'),
(27, '2023-03-08', '2123423', 'kau sakit', 'noImage.png', 'proses'),
(28, '2023-03-08', '2123423', 'halo', 'noImage.png', 'selesai'),
(29, '2023-03-08', '2123423', 'SAYA INGIN INDONESIA LEBIH MAJU', '080320235407qiqi.jpg', 'selesai'),
(30, '2023-03-08', '123134', 'Info lowongan ngab', '080320232630nao.jpg', 'selesai');

-- --------------------------------------------------------

--
-- Struktur dari tabel `petugas`
--

CREATE TABLE `petugas` (
  `id_petugas` int(5) NOT NULL,
  `nama_petugas` varchar(30) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(255) NOT NULL,
  `telp` varchar(13) NOT NULL,
  `level` enum('admin','petugas') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `petugas`
--

INSERT INTO `petugas` (`id_petugas`, `nama_petugas`, `username`, `password`, `telp_petugas`, `level`) VALUES
(1, 'Aqil Rahman', 'admin', '21232f297a57a5a743894a0e4a801fc3', '081215951492', 'admin'),
(2, 'M Riski', 'petugas', 'afb91ef692fd08c445e8cb1bab2ccf9c', '081215951492', 'petugas'),
(3, 'Rizki', 'nao', '1234', '0988231', 'petugas'),
(4, 'who', 'tao', 'hu', '124381284', 'admin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tanggapan`
--

CREATE TABLE `tanggapan` (
  `id_tanggapan` int(5) NOT NULL,
  `id_pengaduan` int(5) NOT NULL,
  `tgl_tanggapan` varchar(20) NOT NULL,
  `tanggapan` text NOT NULL,
  `id_petugas` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tanggapan`
--

INSERT INTO `tanggapan` (`id_tanggapan`, `id_pengaduan`, `tgl_tanggapan`, `tanggapan`, `id_petugas`) VALUES
(1, 1, '2023-02-02', 'iyah saya tar bener kan\r\n', 3),
(2, 2, '2023-02-02', 'ya\r\n', 3),
(3, 4, '2023-02-05', 'yooo\r\n', 3),
(5, 3, '2023-02-05', '', 3),
(7, 7, '2023-02-22', 'hahaha iyah bang', 2),
(8, 18, '2023-02-26', 'halo', 2),
(9, 19, '2023-02-26', '.\r\n', 2),
(10, 17, '2023-02-26', 'halo', 2),
(12, 15, '2023-02-26', 'asdasd', 2),
(13, 14, '2023-02-26', '', 2),
(14, 13, '2023-02-26', 'asd', 2),
(15, 28, '2023-03-08', 'halo juga\r\n', 2),
(16, 29, '2023-03-08', 'WAH ADA QIQI', 2),
(17, 30, '2023-03-08', 'uhhh kawai nao', 2);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `masyarakat`
--
ALTER TABLE `masyarakat`
  ADD PRIMARY KEY (`nik`);

--
-- Indeks untuk tabel `pengaduan`
--
ALTER TABLE `pengaduan`
  ADD PRIMARY KEY (`id_pengaduan`);

--
-- Indeks untuk tabel `petugas`
--
ALTER TABLE `petugas`
  ADD PRIMARY KEY (`id_petugas`);

--
-- Indeks untuk tabel `tanggapan`
--
ALTER TABLE `tanggapan`
  ADD PRIMARY KEY (`id_tanggapan`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `pengaduan`
--
ALTER TABLE `pengaduan`
  MODIFY `id_pengaduan` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT untuk tabel `petugas`
--
ALTER TABLE `petugas`
  MODIFY `id_petugas` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `tanggapan`
--
ALTER TABLE `tanggapan`
  MODIFY `id_tanggapan` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
