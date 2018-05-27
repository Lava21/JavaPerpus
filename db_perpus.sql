-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 27 Feb 2018 pada 15.48
-- Versi Server: 10.1.21-MariaDB
-- PHP Version: 7.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_perpus`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_anggota`
--

CREATE TABLE `tbl_anggota` (
  `nis` int(8) NOT NULL,
  `nama` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_anggota`
--

INSERT INTO `tbl_anggota` (`nis`, `nama`) VALUES
(11505647, 'Bayu Pradana'),
(11506789, 'Futri Fitria'),
(11605556, 'Adib Syarif'),
(11605679, 'Syarif');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_buku`
--

CREATE TABLE `tbl_buku` (
  `kd_buku` varchar(20) NOT NULL,
  `jdl_buku` varchar(50) DEFAULT NULL,
  `tgl_terbit` date DEFAULT NULL,
  `pengarang` varchar(50) DEFAULT NULL,
  `penerbit` varchar(50) DEFAULT NULL,
  `jml_buku` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_buku`
--

INSERT INTO `tbl_buku` (`kd_buku`, `jdl_buku`, `tgl_terbit`, `pengarang`, `penerbit`, `jml_buku`) VALUES
('KD001', 'HABIBIE', '2018-02-01', 'AMELIA', 'erlangga', 120),
('KD002', '123', '2017-01-02', 'nadia', 'RumahNadi', 12),
('KD003', 'judul', '2012-02-01', 'pengarang', 'penerbit', 14),
('KD004', 'Buku', '2012-01-01', 'ardi', 'Erlangga', 12),
('KD005', 'Rindu', '2010-02-11', 'Tere Liye', 'Gramedia', 56),
('KD006', 'Do You Come Here Often?', '2012-03-01', 'Reza Kurnia', 'Gagas Media', 26);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_pinjam`
--

CREATE TABLE `tbl_pinjam` (
  `tgl_pinjam` date NOT NULL,
  `tgl_kembali` date NOT NULL,
  `nis` int(8) NOT NULL,
  `nm_siswa` varchar(50) NOT NULL,
  `kd_buku` varchar(20) DEFAULT NULL,
  `jdl_buku` varchar(50) NOT NULL,
  `pengarang` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_pinjam`
--

INSERT INTO `tbl_pinjam` (`tgl_pinjam`, `tgl_kembali`, `nis`, `nm_siswa`, `kd_buku`, `jdl_buku`, `pengarang`) VALUES
('2018-01-01', '2018-01-02', 11205454, 'dsa', 'KD001', 'DESA', 'DESA'),
('2018-01-01', '2018-01-03', 12112, 'dad', 'kd001', 'desa', 'admaldm'),
('2018-01-02', '2018-02-01', 111, 'desa', 'kd001', 'Judulda', 'Pengarangda'),
('2018-01-01', '2018-02-12', 1211212, 'dakdn', 'kd002', 'adadkdasd', 'asa'),
('2018-01-01', '2018-02-01', 11605556, 'DESA', 'KD001', 'HABIBIE', 'DESA'),
('2018-02-01', '2019-03-03', 1120456, 'ADSA', 'KD001', 'JUDL', 'PENGARANG'),
('2018-09-10', '2019-01-21', 11506663, 'dimas', '', '', ''),
('2018-02-01', '2018-02-02', 11, 'da', 'kd001', 'desa', 'dad'),
('2018-02-07', '2018-02-08', 11605556, 'ada', 'KD001', 'dad', 'ada'),
('2018-02-01', '2018-02-02', 11505647, 'Bayu Pradana', 'KD001', 'HABIBIE', 'AMELIA'),
('2018-02-01', '2018-02-03', 11506789, 'Futri Fitria', 'KD002', 'Fantasi', 'nadia'),
('2018-02-01', '2018-02-03', 11605556, 'Adib Syarif', 'KD004', 'Buku', 'ardi'),
('2018-02-01', '2018-02-02', 11505647, 'Bayu Pradana', 'KD005', 'Rindu', 'Tere Liye'),
('2018-02-01', '2018-02-10', 11505647, 'Bayu Pradana', 'KD002', 'Fantasi', 'nadia'),
('2018-02-01', '2018-02-03', 11505647, 'Bayu Pradana', 'KD002', 'Fantasi', 'nadia'),
('2018-02-01', '2018-02-10', 11505647, 'Bayu Pradana', 'KD002', 'Fantasi', 'nadia'),
('2018-02-07', '2018-02-24', 11505647, 'Bayu Pradana', 'KD003', 'judul', 'pengarang'),
('2018-02-01', '2018-02-09', 11506789, 'Futri Fitria', 'KD002', 'Fantasi', 'nadia'),
('2018-02-01', '2018-02-08', 11505647, 'Bayu Pradana', 'KD001', 'HABIBIE', 'AMELIA'),
('2018-02-01', '2018-02-10', 11505647, 'Bayu Pradana', 'KD002', 'Fantasi', 'nadia'),
('2018-02-07', '2018-02-24', 11505647, 'Bayu Pradana', 'KD002', '123', 'nadia'),
('2018-02-02', '2018-02-10', 11505647, 'Bayu Pradana', 'KD001', 'HABIBIE', 'AMELIA');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_registrasi`
--

CREATE TABLE `tbl_registrasi` (
  `username` varchar(25) NOT NULL,
  `password` varchar(50) DEFAULT NULL,
  `nis` int(8) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `jenis_kelamin` varchar(10) DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `rayon` varchar(30) DEFAULT NULL,
  `rombel` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_registrasi`
--

INSERT INTO `tbl_registrasi` (`username`, `password`, `nis`, `nama`, `jenis_kelamin`, `tgl_lahir`, `rayon`, `rombel`) VALUES
('admin', '1234', 1120, 'nama', 'Laki-laki', '2001-01-01', 'rayon', 'rombel'),
('admin2', '121212', 111, 'aladk', 'Laki-laki', '2001-01-01', 'ra', 'ara'),
('admin', '12345', 11505556, 'admin', 'laki', '2001-01-01', 'Wikrama', 'REKAYA'),
('admin', '12345', 11205656, 'Angling Dwi Wicaksono', 'laki', '2001-07-17', 'Wikrama', 'Rekayasa Perangkat Lunak'),
('dia', '12345', 1160, 'dia', 'laki', '2010-10-10', 'Tajur', 'apk'),
('admin', 'admin', 11240, 'admin', 'laki', '2001-01-01', 'Wikrama', 'rekayasa'),
('user', 'user12', 11605556, 'Adib', 'laki', '2001-07-07', 'Wikrama', 'Rekayasa '),
('admin', '123', 11304545, 'muhammad a', 'laki', '2017-01-01', 'Wikrama', 'rpl');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_anggota`
--
ALTER TABLE `tbl_anggota`
  ADD PRIMARY KEY (`nis`);

--
-- Indexes for table `tbl_buku`
--
ALTER TABLE `tbl_buku`
  ADD PRIMARY KEY (`kd_buku`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
