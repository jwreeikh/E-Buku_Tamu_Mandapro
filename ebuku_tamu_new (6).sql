-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 18, 2026 at 03:27 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ebuku_tamu_new`
--

-- --------------------------------------------------------

--
-- Table structure for table `guru`
--

CREATE TABLE `guru` (
  `id` int(11) NOT NULL,
  `nama_guru` varchar(100) DEFAULT NULL,
  `jabatan` varchar(100) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `foto` varchar(255) DEFAULT 'default.png',
  `no_wa` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `guru`
--

INSERT INTO `guru` (`id`, `nama_guru`, `jabatan`, `created_at`, `foto`, `no_wa`) VALUES
(1, 'Budi Santoso, S.Kom', 'Guru Informatika', '2026-05-13 13:29:37', 'default.jpeg', '081111111111'),
(2, 'Dewi Lestari, M.Pd', 'Guru Bahasa Indonesia', '2026-05-13 13:29:37', 'default.jpeg', '081111111112'),
(3, 'Rizky Pratama, S.Pd', 'Guru Matematika', '2026-05-13 13:29:37', 'default.jpeg', '081111111113'),
(4, 'Nanda Saputra, S.Kom', 'Guru RPL', '2026-05-13 13:29:37', 'default.jpeg', '081111111114'),
(5, 'Siti Aisyah, M.Pd', 'Guru BK', '2026-05-13 13:29:37', 'default.jpeg', '081111111115'),
(6, 'Fajar Nugroho, S.Pd', 'Guru TKJ', '2026-05-13 13:29:37', 'default.jpeg', '081111111116'),
(7, 'Yuni Kartika, M.Pd', 'Guru IPA', '2026-05-13 13:29:37', 'default.jpeg', '081111111117'),
(8, 'Ahmad Fauzi, S.Kom', 'Guru Multimedia', '2026-05-13 13:29:37', 'default.jpeg', '081111111118'),
(9, 'Indah Permata, S.Pd', 'Guru Bahasa Inggris', '2026-05-13 13:29:37', 'default.jpeg', '081111111119'),
(10, 'Rina Oktaviani, M.Pd', 'Guru IPS', '2026-05-13 13:29:37', 'default.jpeg', '081111111120'),
(11, 'Bagus Setiawan, S.Kom', 'Guru RPL', '2026-05-13 13:29:37', 'default.jpeg', '081111111121'),
(12, 'Dian Puspita, S.Pd', 'Guru Seni Budaya', '2026-05-13 13:29:37', 'default.jpeg', '081111111122'),
(13, 'Yoga Prakoso, S.Pd', 'Guru Olahraga', '2026-05-13 13:29:37', 'default.jpeg', '081111111123'),
(14, 'Mega Lestari, M.Pd', 'Guru PKN', '2026-05-13 13:29:37', 'default.jpeg', '081111111124'),
(15, 'Hendra Wijaya, S.Kom', 'Guru Informatika', '2026-05-13 13:29:37', 'default.jpeg', '081111111125'),
(16, 'Nurul Aini, S.Pd', 'Guru Bahasa Jawa', '2026-05-13 13:29:37', 'default.jpeg', '081111111126'),
(17, 'Galih Saputra, S.Kom', 'Guru TKJ', '2026-05-13 13:29:37', 'default.jpeg', '081111111127'),
(18, 'Tari Maharani, M.Pd', 'Guru Sejarah', '2026-05-13 13:29:37', 'default.jpeg', '081111111128'),
(19, 'Kevin Aditya, S.Pd', 'Guru Multimedia', '2026-05-13 13:29:37', 'default.jpeg', '081111111129'),
(20, 'Lina Marlina, M.Pd', 'Guru Akuntansi', '2026-05-13 13:29:37', 'default.jpeg', '081111111130'),
(21, 'Fedya Kharisma', 'Guru RPL', '2026-05-14 20:20:23', 'default.jpeg', '08762345678');

-- --------------------------------------------------------

--
-- Table structure for table `log_aktivitas`
--

CREATE TABLE `log_aktivitas` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `aktivitas` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `log_aktivitas`
--

INSERT INTO `log_aktivitas` (`id`, `user_id`, `aktivitas`, `created_at`) VALUES
(1, 1, 'Login ke sistem', '2026-05-13 13:30:19'),
(2, 1, 'Menambahkan data guru', '2026-05-13 13:30:19'),
(3, 1, 'Mengedit data guru ID 5', '2026-05-13 13:30:19'),
(4, 1, 'Melihat laporan', '2026-05-13 13:30:19'),
(5, 1, 'Export PDF laporan', '2026-05-13 13:30:19'),
(6, 1, 'Menampilkan review ID 3', '2026-05-13 13:30:19'),
(7, 1, 'Menyembunyikan review ID 8', '2026-05-13 13:30:19'),
(8, 1, 'Logout dari sistem', '2026-05-13 13:30:19'),
(9, 2, 'Login ke sistem', '2026-05-13 13:30:19'),
(10, 2, 'Menyetujui kunjungan tamu ID 1', '2026-05-13 13:30:19'),
(11, 2, 'Menolak kunjungan tamu ID 4', '2026-05-13 13:30:19'),
(12, 2, 'Melihat laporan', '2026-05-13 13:30:19'),
(13, 2, 'Export PDF laporan', '2026-05-13 13:30:19'),
(14, 2, 'Menyetujui kunjungan tamu ID 7', '2026-05-13 13:30:19'),
(15, 2, 'Logout dari sistem', '2026-05-13 13:30:19'),
(16, 1, 'Login ke sistem', '2026-05-13 13:30:19'),
(17, 1, 'Melihat log aktivitas', '2026-05-13 13:30:19'),
(18, 1, 'Melihat dashboard', '2026-05-13 13:30:19'),
(19, 1, 'Logout dari sistem', '2026-05-13 13:30:19'),
(20, 2, 'Login ke sistem', '2026-05-13 13:30:19'),
(21, 1, 'Login ke sistem', '2026-05-13 13:30:45'),
(22, 1, 'Melihat laporan periode 2026-05-01 s/d 2026-05-13', '2026-05-13 13:31:01'),
(23, 1, 'Menyembunyikan review ID 20', '2026-05-13 14:07:58'),
(24, 1, 'Login ke sistem', '2026-05-14 20:19:35'),
(25, 1, 'Menambahkan data guru: Fedya Kharisma', '2026-05-14 20:20:23');

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `id` int(11) NOT NULL,
  `tamu_id` int(11) DEFAULT NULL,
  `rating` int(11) NOT NULL,
  `tags` text DEFAULT NULL,
  `tampil` enum('ya','tidak') DEFAULT 'tidak',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`id`, `tamu_id`, `rating`, `tags`, `tampil`, `created_at`) VALUES
(1, 1, 5, 'Ramah,Profesional,Nyaman', 'ya', '2026-05-13 06:30:10'),
(2, 2, 4, 'Cepat,Modern', 'tidak', '2026-05-13 06:30:10'),
(3, 3, 5, 'Memuaskan,Profesional', 'ya', '2026-05-13 06:30:10'),
(4, 4, 3, 'Baik,Ramah', 'tidak', '2026-05-13 06:30:10'),
(5, 5, 5, 'Modern,Cepat,Memuaskan', 'ya', '2026-05-13 06:30:10'),
(6, 6, 4, 'Nyaman,Ramah', 'ya', '2026-05-13 06:30:10'),
(7, 7, 5, 'Profesional,Cepat', 'ya', '2026-05-13 06:30:10'),
(8, 8, 5, 'Memuaskan,Ramah', 'ya', '2026-05-13 06:30:10'),
(9, 9, 3, 'Baik', 'tidak', '2026-05-13 06:30:10'),
(10, 10, 5, 'Modern,Profesional', 'ya', '2026-05-13 06:30:10'),
(11, 11, 4, 'Cepat,Ramah', 'ya', '2026-05-13 06:30:10'),
(12, 12, 5, 'Nyaman,Profesional', 'ya', '2026-05-13 06:30:10'),
(13, 13, 4, 'Memuaskan', 'ya', '2026-05-13 06:30:10'),
(14, 14, 3, 'Baik', 'tidak', '2026-05-13 06:30:10'),
(15, 15, 5, 'Ramah,Modern', 'ya', '2026-05-13 06:30:10'),
(16, 16, 5, 'Profesional,Cepat', 'ya', '2026-05-13 06:30:10'),
(17, 17, 4, 'Nyaman', 'ya', '2026-05-13 06:30:10'),
(18, 18, 5, 'Memuaskan,Ramah', 'ya', '2026-05-13 06:30:10'),
(19, 19, 3, 'Baik', 'tidak', '2026-05-13 06:30:10'),
(20, 20, 5, 'Modern,Profesional', 'tidak', '2026-05-13 06:30:10');

-- --------------------------------------------------------

--
-- Table structure for table `tamu`
--

CREATE TABLE `tamu` (
  `id` int(11) NOT NULL,
  `kategori_tamu` enum('instansi','siswa','umum') NOT NULL,
  `sub_kategori` enum('legalisir','biasa') DEFAULT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `nisn` char(10) DEFAULT NULL,
  `instansi` varchar(100) DEFAULT NULL,
  `universitas` varchar(100) DEFAULT NULL,
  `no_hp` varchar(20) DEFAULT NULL,
  `tujuan_id` int(11) DEFAULT NULL,
  `tujuan_lainnya` varchar(100) DEFAULT NULL,
  `keperluan` varchar(100) DEFAULT NULL,
  `tujuan` varchar(100) DEFAULT NULL,
  `id_guru` int(11) DEFAULT NULL,
  `status` enum('pending','diterima','ditolak','progres','selesai') NOT NULL,
  `file_pdf` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `tanggal_kunjungan` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tamu`
--

INSERT INTO `tamu` (`id`, `kategori_tamu`, `sub_kategori`, `nama`, `nisn`, `instansi`, `universitas`, `no_hp`, `tujuan_id`, `tujuan_lainnya`, `keperluan`, `tujuan`, `id_guru`, `status`, `file_pdf`, `created_at`, `tanggal_kunjungan`) VALUES
(1, 'instansi', NULL, 'Andi Saputra', NULL, 'SMK Negeri 1 Jember', NULL, '081200000001', NULL, NULL, NULL, 'Konsultasi PKL', 1, '', NULL, '2026-05-13 13:29:51', '2026-05-13'),
(2, 'instansi', NULL, 'Bunga Maharani', NULL, 'Universitas ABC', NULL, '081200000002', NULL, NULL, NULL, 'Magang', 2, 'pending', NULL, '2026-05-13 13:29:51', '2026-05-13'),
(3, 'instansi', NULL, 'Cahyo Wijaya', NULL, 'PT Digital Nusantara', NULL, '081200000003', NULL, NULL, NULL, 'Kerjasama', 3, '', NULL, '2026-05-13 13:29:51', '2026-05-13'),
(4, 'instansi', NULL, 'Dina Oktavia', NULL, 'SMKN 2 Bondowoso', NULL, '081200000004', NULL, NULL, NULL, 'Observasi', 4, 'ditolak', NULL, '2026-05-13 13:29:51', '2026-05-13'),
(5, 'instansi', NULL, 'Eko Prasetyo', NULL, 'Politeknik Negeri', NULL, '081200000005', NULL, NULL, NULL, 'Diskusi Projek', 5, 'pending', NULL, '2026-05-13 13:29:51', '2026-05-13'),
(6, 'instansi', NULL, 'Fina Amelia', NULL, 'SMKN 1 Banyuwangi', NULL, '081200000006', NULL, NULL, NULL, 'PKL', 6, '', NULL, '2026-05-13 13:29:51', '2026-05-14'),
(7, 'instansi', NULL, 'Gilang Ramadhan', NULL, 'Universitas Jember', NULL, '081200000007', NULL, NULL, NULL, 'Penelitian', 7, 'pending', NULL, '2026-05-13 13:29:51', '2026-05-14'),
(8, 'instansi', NULL, 'Hana Putri', NULL, 'PT Sukses Makmur', NULL, '081200000008', NULL, NULL, NULL, 'Kerjasama', 8, '', NULL, '2026-05-13 13:29:51', '2026-05-14'),
(9, 'instansi', NULL, 'Iqbal Maulana', NULL, 'SMKN 1 Lumajang', NULL, '081200000009', NULL, NULL, NULL, 'Kunjungan Industri', 9, 'ditolak', NULL, '2026-05-13 13:29:51', '2026-05-14'),
(10, 'instansi', NULL, 'Jihan Aulia', NULL, 'Poliwangi', NULL, '081200000010', NULL, NULL, NULL, 'Magang', 10, '', NULL, '2026-05-13 13:29:51', '2026-05-14'),
(11, 'instansi', NULL, 'Kevin Pratama', NULL, 'SMKN 4 Malang', NULL, '081200000011', NULL, NULL, NULL, 'PKL', 11, 'pending', NULL, '2026-05-13 13:29:51', '2026-05-15'),
(12, 'instansi', NULL, 'Lutfi Hakim', NULL, 'Universitas Negeri', NULL, '081200000012', NULL, NULL, NULL, 'Diskusi', 12, '', NULL, '2026-05-13 13:29:51', '2026-05-15'),
(13, 'instansi', NULL, 'Maya Salsabila', NULL, 'PT Maju Jaya', NULL, '081200000013', NULL, NULL, NULL, 'Kerjasama', 13, '', NULL, '2026-05-13 13:29:51', '2026-05-15'),
(14, 'instansi', NULL, 'Naufal Rizky', NULL, 'SMKN 3 Kediri', NULL, '081200000014', NULL, NULL, NULL, 'PKL', 14, 'pending', NULL, '2026-05-13 13:29:51', '2026-05-15'),
(15, 'instansi', NULL, 'Oktavia Putri', NULL, 'Universitas XYZ', NULL, '081200000015', NULL, NULL, NULL, 'Penelitian', 15, 'ditolak', NULL, '2026-05-13 13:29:51', '2026-05-15'),
(16, 'instansi', NULL, 'Putra Wijaya', NULL, 'SMKN 1 Probolinggo', NULL, '081200000016', NULL, NULL, NULL, 'Kunjungan', 16, '', NULL, '2026-05-13 13:29:51', '2026-05-16'),
(17, 'instansi', NULL, 'Qori Aulia', NULL, 'PT Teknologi Hebat', NULL, '081200000017', NULL, NULL, NULL, 'Kerjasama', 17, 'pending', NULL, '2026-05-13 13:29:51', '2026-05-16'),
(18, 'instansi', NULL, 'Rama Saputra', NULL, 'Universitas PGRI', NULL, '081200000018', NULL, NULL, NULL, 'Magang', 18, '', NULL, '2026-05-13 13:29:51', '2026-05-16'),
(19, 'instansi', NULL, 'Salsa Nabila', NULL, 'SMKN 1 Situbondo', NULL, '081200000019', NULL, NULL, NULL, 'PKL', 19, 'pending', NULL, '2026-05-13 13:29:51', '2026-05-16'),
(20, 'instansi', NULL, 'Teguh Firmansyah', NULL, 'PT Solusi Digital', NULL, '081200000020', NULL, NULL, NULL, 'Diskusi Projek', 20, '', NULL, '2026-05-13 13:29:51', '2026-05-16');

-- --------------------------------------------------------

--
-- Table structure for table `tujuan_layanan`
--

CREATE TABLE `tujuan_layanan` (
  `id` int(11) NOT NULL,
  `nama_tujuan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tujuan_layanan`
--

INSERT INTO `tujuan_layanan` (`id`, `nama_tujuan`) VALUES
(1, 'Kepala Sekolah'),
(2, 'TU'),
(3, 'Guru'),
(4, 'Ruang BK'),
(5, 'Lainnya');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` enum('admin','resepsionis','tu') DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `role`, `created_at`) VALUES
(1, 'admin', '0192023a7bbd73250516f069df18b500', '', '2026-04-14 19:46:06'),
(2, 'resepsionis', '202cb962ac59075b964b07152d234b70', 'resepsionis', '2026-04-14 19:46:06');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `guru`
--
ALTER TABLE `guru`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `log_aktivitas`
--
ALTER TABLE `log_aktivitas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tamu_id` (`tamu_id`);

--
-- Indexes for table `tamu`
--
ALTER TABLE `tamu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_guru` (`id_guru`),
  ADD KEY `fk_tujuan` (`tujuan_id`);

--
-- Indexes for table `tujuan_layanan`
--
ALTER TABLE `tujuan_layanan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `guru`
--
ALTER TABLE `guru`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `log_aktivitas`
--
ALTER TABLE `log_aktivitas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tamu`
--
ALTER TABLE `tamu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tujuan_layanan`
--
ALTER TABLE `tujuan_layanan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `log_aktivitas`
--
ALTER TABLE `log_aktivitas`
  ADD CONSTRAINT `log_aktivitas_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `review`
--
ALTER TABLE `review`
  ADD CONSTRAINT `review_ibfk_1` FOREIGN KEY (`tamu_id`) REFERENCES `tamu` (`id`);

--
-- Constraints for table `tamu`
--
ALTER TABLE `tamu`
  ADD CONSTRAINT `fk_tujuan` FOREIGN KEY (`tujuan_id`) REFERENCES `tujuan_layanan` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tamu_ibfk_1` FOREIGN KEY (`id_guru`) REFERENCES `guru` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
