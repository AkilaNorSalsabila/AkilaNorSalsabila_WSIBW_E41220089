-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 15 Nov 2022 pada 02.48
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `akademik`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `mata_kuliah`
--

CREATE TABLE `mata_kuliah` (
  `kode_matkul` char(5) NOT NULL,
  `nama_matkul` varchar(50) NOT NULL,
  `SKS` tinyint(3) UNSIGNED DEFAULT 2,
  `semester` tinyint(4) DEFAULT NULL,
  `kode_jur` char(5) DEFAULT NULL,
  `NIP` char(18) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `mata_kuliah`
--

INSERT INTO `mata_kuliah` (`kode_matkul`, `nama_matkul`, `SKS`, `semester`, `kode_jur`, `NIP`) VALUES
('BSD', 'Workshop Basis Data', 4, 3, '011', '0160436012'),
('CITRA', 'Pengolahan CITRA', 2, 1, '011', '0260432002'),
('FIDAS', 'Fisika Dasar', 2, 3, '022', '0275430055'),
('JRKOM', 'Jaringan Komputer', 2, 4, '044', '0480432066'),
('KIMDA', 'Kimia Dasar', 2, 5, '055', '0576431001'),
('MMDAS', 'Matematika Dasar', 4, 6, '066', '0770435006'),
('PBASE', 'Pengantar Database', 2, 4, '077', '0869437003'),
('PPK', 'Workshop Basis Data', 8, 2, NULL, NULL),
('PPL', 'Perangkat Lunak', 2, 1, '033', '1080432007');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `mata_kuliah`
--
ALTER TABLE `mata_kuliah`
  ADD PRIMARY KEY (`kode_matkul`),
  ADD KEY `NIP` (`NIP`),
  ADD KEY `kode_jur` (`kode_jur`);

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `mata_kuliah`
--
ALTER TABLE `mata_kuliah`
  ADD CONSTRAINT `mata_kuliah_ibfk_2` FOREIGN KEY (`NIP`) REFERENCES `daftar_dosen` (`NIP`),
  ADD CONSTRAINT `mata_kuliah_ibfk_3` FOREIGN KEY (`kode_jur`) REFERENCES `jurusan` (`kode_jur`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
