-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 14, 2025 at 04:39 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cvsafa`
--

-- --------------------------------------------------------

--
-- Table structure for table `biodata`
--

CREATE TABLE `biodata` (
  `id` int NOT NULL,
  `name` varchar(5) NOT NULL,
  `full_name` varchar(150) NOT NULL,
  `headline` varchar(200) DEFAULT NULL,
  `summary` text,
  `photo` varchar(200) DEFAULT NULL,
  `email` varchar(120) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `location` varchar(150) DEFAULT NULL,
  `website` varchar(200) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `deskripsi` text NOT NULL,
  `age` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `biodata`
--

INSERT INTO `biodata` (`id`, `name`, `full_name`, `headline`, `summary`, `photo`, `email`, `phone`, `location`, `website`, `created_at`, `deskripsi`, `age`) VALUES
(1, 'Safa', 'Safa Zahra Raudya', 'UI/UX Designer & Web Developer', 'Mahasiswa Informatika dengan fokus pengembangan web dan minat pada sistem digital modern.', 'profile2.png', 'sa.safa0306@gmail.com', '085799334411', 'Digidaw, UK.', 'wednesafa.com', '2025-11-11 13:09:41', 'Halo!, aku adalah mahasiswa Universitas Muhammadiyah Sukabumi tahun 2023. Aku tertarik pada UI/UX Designer dan web developer, Design Grapichs. Juga berminat menjadi milyarder pertama dikeluarga.', '99');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `subject` varchar(200) NOT NULL,
  `message` text NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `email`, `subject`, `message`, `date`) VALUES
(1, 'admin', 'admin1@gmail.com', 'qjhddqd', 'jksdbaabdad', '2025-11-13 06:34:47'),
(2, 'admin', 'admin1@gmail.com', 'qjhddqd', 'jksdbaabdad', '2025-11-13 06:42:09'),
(3, 'safaaa', 'admin1@gmail.com', 'qjhddqd', 'jksdbaabdad', '2025-11-13 06:46:19'),
(4, 'ayey', 'admin1@gmail.com', 'qjhddqd', 'sndjsfewfwf', '2025-11-13 06:47:04'),
(5, 'akuu', 'admin1@gmail.com', 'qjhddqd', 'ohuog', '2025-11-13 09:56:21'),
(6, 'yooo', 'admin1@gmail.com', 'qjhddqd', 'xcdc', '2025-11-13 09:57:16'),
(7, 'mamat', 'admin1@gmail.com', 'qjhddqd', 'ohuog', '2025-11-13 09:58:24'),
(8, 'yey', 'admin1@gmail.com', 'qjhddqd', 'ohuog', '2025-11-13 09:59:16'),
(9, 'hhh', 'admin1@gmail.com', 'qjhddqd', 'jksdbaabdad', '2025-11-13 11:47:13'),
(10, 'mamang', 'admin1@gmail.com', 'kerja sama', 'hai awkowkowkwow', '2025-11-14 04:16:02');

-- --------------------------------------------------------

--
-- Table structure for table `education`
--

CREATE TABLE `education` (
  `id` int NOT NULL,
  `biodata_id` int DEFAULT NULL,
  `degree` varchar(200) DEFAULT NULL,
  `institution` varchar(200) DEFAULT NULL,
  `year_start` year DEFAULT NULL,
  `year_end` year DEFAULT NULL,
  `description` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `education`
--

INSERT INTO `education` (`id`, `biodata_id`, `degree`, `institution`, `year_start`, `year_end`, `description`) VALUES
(1, 1, NULL, 'SMK Negeri 2, Sukabumi', '2020', '2023', 'Saya merupakan lulusan SMK Negeri 2 Sukabumi, dari jurusan Rekayasa Perangkat Lunak. ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ '),
(2, 1, 'S1', 'Unniversitas Muhammadiyah Sukabumi', '2023', '2027', 'Saat ini saya merupakan Mahasiswi aktif di Universitas Muhammadiyah Sukabumi dari prodi Teknik Informatika. \r\nMasuk pada tahun 2023 dan sekarang sedang menempuh semester 5. ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎  ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎  ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎  ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎  ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ');

-- --------------------------------------------------------

--
-- Table structure for table `experience`
--

CREATE TABLE `experience` (
  `id` int NOT NULL,
  `biodata_id` int DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `place` varchar(200) DEFAULT NULL,
  `year_start` year DEFAULT NULL,
  `year_end` year DEFAULT NULL,
  `description` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `experience`
--

INSERT INTO `experience` (`id`, `biodata_id`, `title`, `place`, `year_start`, `year_end`, `description`) VALUES
(1, 1, 'Praktik Kerja Lapangan', 'Dinas Komunikasi dan Informasi', '2022', '2022', 'pada saat SMK saya melakukan PKL di Diskominfo kota Sukabumi selama 4 bulan. Bersama rekan saya kami mengembangkan website perpustakaan untuk project kecil kecilannya dan output dari PKL tersebut.\r\n‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ '),
(2, 1, 'Panitia Saintek Spark 2023', 'Universitas Muhammadiyah', '2023', '2023', 'Bertanggung jawab pada devisi Publikasi Dokumentasi dan Design (PDD). Membuat design poster dan dokumentasi kegiatan Saintek Spark 2023, termasuk mengelola konten di media sosial'),
(3, 1, 'Panitia RTL Angkatan 2023', 'Kampung Caringin', '2023', '2023', 'Bertanggung jawab pada divisi Konsumsi. Mengelola kebutuhan konsumsi selama acara berjalan.'),
(4, 1, 'Panitia Hartik 2025', 'Universitas Muhammadiyah', '2025', '2025', 'Bertanggung jawab pada divisi Acara. Mengelola rundown acara agar acara berjalan dengan lancar dan tertib.'),
(5, 1, 'Panitia Masfak 2024', 'Universitas Muhammadiyah', '2024', '2024', 'Bertanggung jawab sebagai Pemandu pada saat pelaksanaan Masa Orientasi Fakultas tahun 2024. Membimbing para maba ketika jalannya acara.');

-- --------------------------------------------------------

--
-- Table structure for table `portofolio`
--

CREATE TABLE `portofolio` (
  `id` int NOT NULL,
  `title` varchar(100) NOT NULL,
  `filter` enum('Website','Mobile','UI Design') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `description` text NOT NULL,
  `photo` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `portofolio`
--

INSERT INTO `portofolio` (`id`, `title`, `filter`, `description`, `photo`) VALUES
(1, 'Website Sekolah', 'Website', 'Membuat website sekolah untuk keperluan UAS matakuliah Web Dasar di semester 4, Membuat fitur jadwal untuk siswa dan mengatur jadwal untuk admin, sehingga jadwal akan tampil sesuai dengan jurusan siswa masing-masing.', 'websekolah.png'),
(2, 'Website CV Sattva', 'Website', 'Mengembangkan website CV Sattva yang bekerja pada bidang arsitektur. Yang dikerjakan secara berkelompok untuk keperluan KP di sms 6.', 'cvsattva.jpg'),
(4, 'Aplikasi To Do List', 'Mobile', 'Membuat aplikasi produktif yangn bernama \"Satu Hari Lagi\", aplikasi berfungsi untuk membantu para pengguna agar lebih produktif dalam melakukan tugas keseharian mereka.', 'mobileshl.jpg'),
(5, 'Website Curhat', 'Website', 'Membuat website yang bertema untuk menjadi tempat curhat anonymous, pengguna bisa mencurahkan isi hatinya dengan tanpa diketahui orang siapa dia.', 'websitecurhat.jpg'),
(6, 'UI Design Mobile App ', 'UI Design', 'Membuat UI Design sederhana untuk aplikasi berbasis mobile, dengan judul aplikasi \"IT GIRLS\", UI aplikasi dirancang dengan tujuan untuk emmbuat aplikasi yang mengharapkan menjadi platform khusus para wanita untuk menjadi lebih produktif, membagikan pengalaman, tips kesehatan, make up, resep masak dan kegiatan positif lainnya', 'uidesign1.png'),
(7, 'Membuat Aplikasi Layanan Kesehatan', 'Mobile', 'Membuat aplikasi mobile layanan kesehatan sederhana, untuk sebuah klinik kecil pada praktikum mobile dasar di semester 4. Aplikasi dirancang agar pengguna bisa login lalau mengaambil nomor antrian.', 'mobiledasar.png');

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` int NOT NULL,
  `biodata_id` int DEFAULT NULL,
  `project_name` varchar(200) DEFAULT NULL,
  `image` varchar(200) DEFAULT NULL,
  `project_url` varchar(255) DEFAULT NULL,
  `description` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `skills`
--

CREATE TABLE `skills` (
  `id` int NOT NULL,
  `biodata_id` int DEFAULT NULL,
  `skill_name` varchar(120) DEFAULT NULL,
  `level` varchar(50) DEFAULT NULL,
  `description` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `skills`
--

INSERT INTO `skills` (`id`, `biodata_id`, `skill_name`, `level`, `description`) VALUES
(1, 1, 'HTML', 'Definition', 'Memiliki kemampuan dalam membuat dan menyusun stuktur dasar HTML. Dapat menggunakan elemen-elemen seperti teks, gamabr, tautan, tabel dan form dengan benar. '),
(2, 1, 'CSS', 'Beginer', 'Mampu mengatur tampilan dan tata letak halaman web, dengan baik, menggunakan CSS. Dapat mengubah warna, font, posisi, elemen serta membuat design yang responsif dan menarik.'),
(3, 1, 'Phyton', 'Definition', 'Mampu menulis dan memahami sintals dasar Python untuk pemograman logika, perulangan, fungsi, dan manipulasi data.'),
(4, 1, 'JavaScript', 'Beginer', 'Memahami dasar-dasar JavaScript untuk membuat halaman web lebih interaktif. Dapat menggunakan variabel, fungsi, event.  ');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `biodata`
--
ALTER TABLE `biodata`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `education`
--
ALTER TABLE `education`
  ADD PRIMARY KEY (`id`),
  ADD KEY `biodata_id` (`biodata_id`);

--
-- Indexes for table `experience`
--
ALTER TABLE `experience`
  ADD PRIMARY KEY (`id`),
  ADD KEY `biodata_id` (`biodata_id`);

--
-- Indexes for table `portofolio`
--
ALTER TABLE `portofolio`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `biodata_id` (`biodata_id`);

--
-- Indexes for table `skills`
--
ALTER TABLE `skills`
  ADD PRIMARY KEY (`id`),
  ADD KEY `biodata_id` (`biodata_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `biodata`
--
ALTER TABLE `biodata`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `education`
--
ALTER TABLE `education`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `experience`
--
ALTER TABLE `experience`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `portofolio`
--
ALTER TABLE `portofolio`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `skills`
--
ALTER TABLE `skills`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `education`
--
ALTER TABLE `education`
  ADD CONSTRAINT `education_ibfk_1` FOREIGN KEY (`biodata_id`) REFERENCES `biodata` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `experience`
--
ALTER TABLE `experience`
  ADD CONSTRAINT `experience_ibfk_1` FOREIGN KEY (`biodata_id`) REFERENCES `biodata` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `projects`
--
ALTER TABLE `projects`
  ADD CONSTRAINT `projects_ibfk_1` FOREIGN KEY (`biodata_id`) REFERENCES `biodata` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `skills`
--
ALTER TABLE `skills`
  ADD CONSTRAINT `skills_ibfk_1` FOREIGN KEY (`biodata_id`) REFERENCES `biodata` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
