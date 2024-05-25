-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Waktu pembuatan: 25 Bulan Mei 2024 pada 09.01
-- Versi server: 10.11.7-MariaDB-cll-lve
-- Versi PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u451016334_surat`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `surat_in`
--

CREATE TABLE `surat_in` (
  `id` int(11) NOT NULL,
  `no_surat` varchar(50) NOT NULL,
  `tgl_masuk` date NOT NULL,
  `tgl_surat` date NOT NULL,
  `perihal` text NOT NULL,
  `asal` varchar(100) NOT NULL,
  `ket_disposisi` text DEFAULT NULL,
  `akses` varchar(20) NOT NULL,
  `nama_gbr` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `surat_out`
--

CREATE TABLE `surat_out` (
  `id` int(11) NOT NULL,
  `no_surat` varchar(50) NOT NULL,
  `no_urut` int(11) DEFAULT NULL,
  `tgl_masuk` date NOT NULL,
  `tgl_surat` date NOT NULL,
  `perihal` text NOT NULL,
  `tujuan` varchar(100) NOT NULL,
  `ket_disposisi` text DEFAULT NULL,
  `akses` varchar(20) NOT NULL,
  `created_by` varchar(50) DEFAULT NULL,
  `nama_gbr` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `akses` varchar(20) NOT NULL,
  `level` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `nama`, `username`, `password`, `akses`, `level`) VALUES
(1, 'pekok', 'koko', '1', 'administrator', 'administrator'),
(2, 'Broh', 'admin', 'imambonjol13', 'agendaris', 'agendaris'),
(3, 'Bpk. Imron', 'kadis', '1', 'KADIS', 'kadis'),
(4, 'Bpk. Gazali', 'sekdin', '1', 'sekdin', 'sekdin'),
(5, 'Kabid P2', 'kabidp2', '1', 'kabidp2', 'kabid'),
(6, 'Kabid SDK', 'kabidsdk', '1', 'kabidsdk', 'kabid'),
(7, 'Kabid Kesmas', 'kabidkesmas', '1', 'kabidkesmas', 'kabid'),
(8, 'Kabid Yankes', 'kabidyankes', '1', 'kabidyankes', 'kabid'),
(9, 'Kasi P2PM', 'p2pm', '1', 'p2pm', 'kasi'),
(10, 'Kasi P2PTM', 'p2ptm', '1', 'p2ptm', 'kasi'),
(11, 'Kasi Surveilans', 'surveilans', '1', 'surveilans', 'kasi'),
(12, 'Kasi SDMK', 'sdmk', '1', 'sdmk', 'kasi'),
(13, 'Kasi Farmasi', 'farmasi', '1', 'farmasi', 'kasi'),
(14, 'Kasi Alkes', 'alkes', '1', 'alkes', 'kasi'),
(15, 'Kasi Promkes', 'promkes', '1', 'promkes', 'kasi'),
(16, 'Kasi Kesling', 'kesling', '1', 'kesling', 'kasi'),
(17, 'Kasi KGM', 'kgm', '1', 'kgm', 'kasi'),
(18, 'Kasi Primer', 'primer', '1', 'primer', 'kasi'),
(19, 'Kasi Rujukan', 'rujukan', '1', 'rujukan', 'kasi'),
(20, 'Kasi Kestrad', 'kestrad', '1', 'kestrad', 'kasi'),
(21, 'Kasubag PIEP', 'piep', '1', 'piep', 'kasubag'),
(22, 'Kasubag Keuangan', 'keuangan', '1', 'keuangan', 'kasubag'),
(23, 'Kasubag UP', 'up', '1', 'up', 'kasubag'),
(25, 'Ka IFK', 'ifk', '1', 'ifk', 'kabid'),
(26, 'Ka Labkesda', 'labkesda', '1', 'labkesda', 'kabid'),
(27, 'admin', 'mimin', '1', 'agendaris', 'agendaris');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `surat_in`
--
ALTER TABLE `surat_in`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `surat_out`
--
ALTER TABLE `surat_out`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `surat_in`
--
ALTER TABLE `surat_in`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `surat_out`
--
ALTER TABLE `surat_out`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
