-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 14, 2022 at 07:46 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db-pendataan_anak`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_pendataan`
--

CREATE TABLE `tb_pendataan` (
  `id` int(11) NOT NULL,
  `nik_anak` bigint(20) DEFAULT NULL,
  `nama_anak` varchar(150) DEFAULT NULL,
  `nama_ayah` varchar(150) DEFAULT NULL,
  `nama_ibu` varchar(150) DEFAULT NULL,
  `tempat_lahir` varchar(125) DEFAULT NULL,
  `tgl_lahir` varchar(75) DEFAULT NULL,
  `gender` varchar(20) DEFAULT NULL,
  `telp` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `alasan` varchar(255) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `kelurahan` varchar(100) DEFAULT NULL,
  `nama_sekolah` varchar(100) DEFAULT NULL,
  `usia` varchar(100) DEFAULT NULL,
  `foto_kk` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_pendataan`
--

INSERT INTO `tb_pendataan` (`id`, `nik_anak`, `nama_anak`, `nama_ayah`, `nama_ibu`, `tempat_lahir`, `tgl_lahir`, `gender`, `telp`, `email`, `status`, `alasan`, `alamat`, `kelurahan`, `nama_sekolah`, `usia`, `foto_kk`) VALUES
(1, 0, 'ABDI DAFFA ', 'RIPAI ', 'MAESI ', 'Pemalang ', '2016-10-08 ', 'laki-laki ', 'null', 'null', 'sekolah ', 'null', 'Perum Puri Cikarang Asri Blok D1/20 ', 'Desa Sukarukun ', 'TK ISLAM TERPADU CAHAYA INDAH ', 'Usia 6 tahun 0 bulan ', 'null'),
(2, 0, 'ABIDZAR AL GHIFARI ', 'DAWIN ', 'SITI ASMINAH ', 'BEKASI ', '2017-02-17 ', 'laki-laki ', 'null', 'null', 'sekolah ', 'null', 'PERUM CLUSTER GRAHA PERMATA PELANGI 4 No. 21 ', 'Desa Sukarukun ', 'TK ISLAM TERPADU CAHAYA INDAH ', 'Usia 5 tahun 7 bulan ', 'null'),
(3, 0, 'ABIZAR MUSYAFFA AL GHIFARI ', 'IMANUDIN ', 'FITRI ARIYANI ', 'Bekasi ', '2017-01-25 ', 'laki-laki ', 'null', 'null', 'sekolah ', 'null', 'Perum Bumi Kahuripan Indah Blok E.7 No. 7 ', 'Desa Sukahurip ', 'TK ISLAM TERPADU CAHAYA INDAH ', 'Usia 5 tahun 8 bulan ', 'null'),
(4, 0, 'ABIZAR RASYA ALFARIQ ', 'AGUSTINUS SUPRIYONO ', 'DINA MARIANA ', 'Bekasi ', '2017-05-18 ', 'perempuan ', 'null', 'null', 'sekolah ', 'null', 'Kp. Pulo Turi ', 'Desa Sukahurip ', 'TK ISLAM TERPADU CAHAYA INDAH ', 'Usia 5 tahun 4 bulan ', 'null'),
(5, 0, 'ADEEVA MYESA MAHARDIKA ', 'YUDO WIBOWO ', 'JUMARIAH ', 'BEKASI ', '2016-08-21 ', 'perempuan ', 'null', 'null', 'sekolah ', 'null', 'PERUM PILLAR MAS PERSADA BLOK F.1 No. 15 ', 'Desa Sukarukun ', 'TK ISLAM TERPADU CAHAYA INDAH ', 'Usia 6 tahun 1 bulan ', 'null'),
(6, 0, '', 'A. MIFTA HUSADA ', 'LALA KOMALASARI ', 'BEKASI ', '2016-12-07 ', 'perempuan ', 'null', 'null', 'sekolah ', 'null', 'KP. CIKARANG JATI ', 'Desa Sukajaya ', 'TK ISLAM TERPADU CAHAYA INDAH ', 'Usia 5 tahun 10 bulan ', 'null'),
(7, 0, 'ADIFA ASHALINA ', 'IBNU HAJAR ', 'CARINAH ', 'Bekasi ', '2016-12-29 ', 'perempuan ', 'null', 'null', 'sekolah ', 'null', 'Perum Pesona Aqilla Raya Blok A4 No. 6 ', 'Desa Sukaraya ', 'TK ISLAM TERPADU CAHAYA INDAH ', 'Usia 5 tahun 9 bulan ', 'null'),
(8, 0, 'ADIRA AZZAHRA ', 'ABDUL WAHID ', 'LIA YULIA NURHAYATI ', 'Bekasi ', '2016-08-23 ', 'perempuan ', 'null', 'null', 'sekolah ', 'null', 'Perum Puri Cikarang Mas No. 03 ', 'Desa Sukarukun ', 'TK ISLAM TERPADU CAHAYA INDAH ', 'Usia 6 tahun 1 bulan ', 'null'),
(9, 0, 'ADREENA RAURA SALSABELA ', 'ARJUN FAISAL ', 'AYU INDAH PRATIWI ', 'Bekasi ', '2017-04-23 ', 'perempuan ', 'null', 'null', 'sekolah ', 'null', 'Kp. Kebon Kopi ', 'Desa Karangasih ', 'TK ISLAM TERPADU CAHAYA INDAH ', 'Usia 5 tahun 5 bulan ', 'null'),
(10, 0, 'AFIFAH NAHDA ABDILLAH ', 'JUNAEDI ABDILLAH ', 'AAS HASANAH ', 'Bekasi ', '2016-08-09 ', 'perempuan ', 'null', 'null', 'sekolah ', 'null', 'Kp. Balong Sambi ', 'Desa Sukabakti ', 'TK ISLAM TERPADU CAHAYA INDAH ', 'Usia 6 tahun 2 bulan ', 'null'),
(11, 0, 'AFIQAH NAHDA KUSUMA ', 'HAEKAL MUNTOLIH ', 'UYUN TIARA ', 'Cilacap ', '2016-11-17 ', 'perempuan ', 'null', 'null', 'sekolah ', 'null', 'Perum Bumi Kahuripan Indah Blok A6/35 ', 'Desa Sukamanah ', 'TK ISLAM TERPADU CAHAYA INDAH ', 'Usia 5 tahun 10 bulan ', 'null'),
(12, 0, 'AGIL ARBANI ', 'NANANG KOSIM ', 'SANTI GUSWINAR ', 'Bekasi ', '2017-07-04 ', 'laki-laki ', 'null', 'null', 'sekolah ', 'null', 'Kp. Talok ', 'Desa Sukahurip ', 'TK ISLAM TERPADU CAHAYA INDAH ', 'Usia 5 tahun 3 bulan ', 'null'),
(13, 0, 'AISHWARYA NUHA INARA ', 'ARIS SUBEKTI ', 'SUSILOWATI ', 'Cilacap ', '2016-10-04 ', 'perempuan ', 'null', 'null', 'sekolah ', 'null', 'Perum Puri Cikarang Indah Blok C.5 No. 7 ', 'Desa Sukamanah ', 'TK ISLAM TERPADU CAHAYA INDAH ', 'Usia 6 tahun 0 bulan ', 'null'),
(14, 0, 'AISYAH AYUDIA INARA ', 'RAMUJI ', 'ROYANI ', 'BEKASI ', '2016-09-09 ', 'perempuan ', 'null', 'null', 'sekolah ', 'null', 'PERUM GRIYA BAGASASI BLOK B6/16 ', 'Desa Sukarukun ', 'TK ISLAM TERPADU CAHAYA INDAH ', 'Usia 6 tahun 1 bulan ', 'null'),
(15, 0, 'AL DAFFA RIZQI ', 'ZULPICAR WICAKSONO EKA PUTRA ', 'DESTIANA MAIDAH ', 'Bumiayu ', '2017-03-19 ', 'perempuan ', 'null', 'null', 'sekolah ', 'null', 'Perum Karanganyar Residences ', 'Desa Karanganyar ', 'TK ISLAM TERPADU CAHAYA INDAH ', 'Usia 5 tahun 6 bulan ', 'null'),
(16, 0, 'AL KHALIFI RIZKI HAMIZAN ', 'SAPUHI ', 'AI SURYANI ', 'Bekasi ', '2016-04-02 ', 'laki-laki ', 'null', 'null', 'sekolah ', 'null', 'Kp. Pulo ', 'Desa Sukaraya ', 'TK ISLAM TERPADU CAHAYA INDAH ', 'Usia 6 tahun 6 bulan ', 'null'),
(17, 0, 'ALESHA AYUNINDYA INARA ', 'ARAS FIRDAUS U. ', 'TYA PRAMITA SOLIHHA ', 'Jakarta ', '2016-06-05 ', 'perempuan ', 'null', 'null', 'sekolah ', 'null', 'Perum Graha Permata Pelangi 4 Blok B16 ', 'Desa Sukaraya ', 'TK ISLAM TERPADU CAHAYA INDAH ', 'Usia 6 tahun 4 bulan ', 'null'),
(18, 0, 'ALESHA SHEZAN AZKADINA ', 'HAHAN MOGA MULYA ', 'NOVA LILIA RAINI ', 'Bekasi ', '2017-01-11 ', 'perempuan ', 'null', 'null', 'sekolah ', 'null', 'Perum Pilar Mas Persada A5 No. 12A ', 'Desa Sukarukun ', 'TK ISLAM TERPADU CAHAYA INDAH ', 'Usia 5 tahun 9 bulan ', 'null'),
(19, 0, 'ALESHA ZAHRA KUSUMA ', 'TITO BUDI KUSUMA ', 'DWI FEBRIYANTI ', 'Bekasi ', '2017-10-18 ', 'perempuan ', 'null', 'null', 'sekolah ', 'null', 'Perum Pilar Gading Mas Blok B2 No. 22 ', 'Desa Sukarukun ', 'TK ISLAM TERPADU CAHAYA INDAH ', 'Usia 4 tahun 11 bulan ', 'null'),
(20, 0, 'ALFAREZI RAFQI GUNAWAN ', 'GUGUN GUNAWAN ', 'ANGGI HAPRIYANI ', 'CIREBON ', '2017-01-06 ', 'laki-laki ', 'null', 'null', 'sekolah ', 'null', 'PESONA AQILLA RAYA C2 No. 6 ', 'Desa Sukaraya ', 'TK ISLAM TERPADU CAHAYA INDAH ', 'Usia 5 tahun 9 bulan ', 'null'),
(21, 0, 'ALIFIA HIDAYATUN NAVISHA ', 'ARIF RAHMAN HIDAYAT ', 'ANI SURYANI ', 'Brebes ', '2017-07-10 ', 'perempuan ', 'null', 'null', 'sekolah ', 'null', 'Perum Pesona Aqilla Raya Blok C2 No. 21 ', 'Desa Sukaraya ', 'TK ISLAM TERPADU CAHAYA INDAH ', 'Usia 5 tahun 3 bulan ', 'null'),
(22, 0, 'ALMEERA MISHA SHAFANA ', 'FIRMANSYAH MAULANA ', 'NURLELA ', 'Jakarat ', '2016-10-13 ', 'perempuan ', 'null', 'null', 'sekolah ', 'null', 'Perum Sukaraya Indah Blok E.2 No. 23 ', 'Desa Sukaraya ', 'TK ISLAM TERPADU CAHAYA INDAH ', 'Usia 5 tahun 11 bulan ', 'null'),
(23, 0, 'AMMAR RADINKA HAMIZAN ', 'FERI GUNAWAN ', 'LINA KARLINA ', 'Bekasi ', '2016-07-15 ', 'laki-laki ', 'null', 'null', 'sekolah ', 'null', 'Perum Taman Kebon Kopi Blok AI No. 5 ', 'Desa Karangasih ', 'TK ISLAM TERPADU CAHAYA INDAH ', 'Usia 6 tahun 2 bulan ', 'null'),
(24, 0, 'ANGGA YASIN DJAHARI ', 'MUHIDIN ', 'SITI NADROH ', 'Bekasi ', '2016-12-08 ', 'laki-laki ', 'null', 'null', 'sekolah ', 'null', 'Kp. Pulotiga ', 'Desa Banjarsari ', 'TK ISLAM TERPADU CAHAYA INDAH ', 'Usia 5 tahun 10 bulan ', 'null'),
(25, 0, 'ANINDITA KEISHA ZAHRA ', 'MOHAMAD MULYADI ', 'SITI AMALIS ', 'Tegal ', '2016-10-27 ', 'perempuan ', 'null', 'null', 'sekolah ', 'null', 'Perum Griya Mahakarya Residence ', 'Desa Sukamanah ', 'TK ISLAM TERPADU CAHAYA INDAH ', 'Usia 5 tahun 11 bulan ', 'null'),
(26, 0, 'ANNASYA ADREEANA SAILA ', 'ERIK SUNARSO ', 'NUR AISAH RAHAYU ', 'Banjar ', '2016-02-17 ', 'perempuan ', 'null', 'null', 'sekolah ', 'null', 'Perum Bumi Kahuripan Indah Blok D9 No. 28 ', 'Desa Sukahurip ', 'TK ISLAM TERPADU CAHAYA INDAH ', 'Usia 6 tahun 7 bulan ', 'null'),
(27, 0, 'ANNASYA RADELLA FELIXA ', 'ROLAN FELIX JUNIO ', 'DAHLENA NOOR HAFSAH ', 'Jakarta ', '2017-04-24 ', 'perempuan ', 'null', 'null', 'sekolah ', 'null', 'Perum Sukamanah Residences Blok A29 No. 22 ', 'Desa Sukamanah ', 'TK ISLAM TERPADU CAHAYA INDAH ', 'Usia 5 tahun 5 bulan ', 'null'),
(28, 0, 'ANNISA MEYSHA SAFITRI ', 'MOCH RIZAL AFANDI ', 'SOHIFATUL HASANAH ', 'Bekasi ', '2016-05-23 ', 'perempuan ', 'null', 'null', 'sekolah ', 'null', 'Perum Bumi Kahuripan Indah Blok F16 No. 12A ', 'Desa Sukahurip ', 'TK ISLAM TERPADU CAHAYA INDAH ', 'Usia 6 tahun 4 bulan ', 'null'),
(29, 0, 'APRILIA PUTRI ', 'MASIM ', 'SINAH ', 'Bekasi ', '2017-04-09 ', 'perempuan ', 'null', 'null', 'sekolah ', 'null', 'Kp. Jagawana ', 'Desa Sukarukun ', 'TK ISLAM TERPADU CAHAYA INDAH ', 'Usia 5 tahun 6 bulan ', 'null'),
(30, 0, 'AQILA NAFEEZA RISTIAWAN ', 'RIFKI RISTIAWAN ', 'ELA NURLAILA ', 'Bekasi ', '2016-08-14 ', 'perempuan ', 'null', 'null', 'sekolah ', 'null', 'Kp. Gempol ', 'Desa Sukarahayu ', 'TK ISLAM TERPADU CAHAYA INDAH ', 'Usia 6 tahun 1 bulan ', 'null'),
(31, 0, 'AQILLA FHARIZA MUFFIA ', 'AFRIAL ', 'DEDEH KURNIASIH ', 'BEKASI ', '2016-10-20 ', 'perempuan ', 'null', 'null', 'sekolah ', 'null', 'PERUM PURI CIKARANG HIJAU BLOK F-1 NO. 02 ', 'SUKAASIH ', 'TK ISLAM TERPADU CAHAYA INDAH ', 'Usia 5 tahun 11 bulan ', 'null'),
(32, 0, 'ARSAKHA VIRENDRA SHAFWAN HIDAYAT ', 'RAHMAT HIDAYAT ', 'GENDUK PAMIASIH ', 'Karawang ', '2017-06-29 ', 'laki-laki ', 'null', 'null', 'sekolah ', 'null', 'Perum Bumi Kahuripan Indah Jl. Bima Blok B4/4 ', 'Desa Sukamanah ', 'TK ISLAM TERPADU CAHAYA INDAH ', 'Usia 5 tahun 3 bulan ', 'null'),
(33, 0, 'ARSYILA FIRYAL PUSPITASARI ', 'SARMANTO ', 'YULIYANTI ', 'Bekasi ', '2016-03-17 ', 'perempuan ', 'null', 'null', 'sekolah ', 'null', 'Perum Sukaraya Indah Blok F12 No. 21 ', 'Desa Sukaraya ', 'TK ISLAM TERPADU CAHAYA INDAH ', 'Usia 6 tahun 6 bulan ', 'null'),
(34, 0, 'ARSYLA GHANIA PRATISTA ', 'SLAMET HANDOYO ', 'RETNO DWI PRATISTASARI ', 'Purworejo ', '2018-02-05 ', 'perempuan ', 'null', 'null', 'sekolah ', 'null', 'Perum Pesona Aqilla Raya Blok C2 No. 3A ', 'Desa Sukaraya ', 'TK ISLAM TERPADU CAHAYA INDAH ', 'Usia 4 tahun 8 bulan ', 'null'),
(35, 0, 'ASYFAA SALSABELA AALINAFAZRUS ', 'FAZRUS SHODIQ ', 'LINDA YUNITA ', 'Ponorogo ', '2016-07-07 ', 'perempuan ', 'null', 'null', 'sekolah ', 'null', 'Perum Griya Mahakarya Residence Blok C.10 No. 17 ', 'Desa Sukamanah ', 'TK ISLAM TERPADU CAHAYA INDAH ', 'Usia 6 tahun 3 bulan ', 'null'),
(36, 0, 'AWRA KHALIQA DZAHIN ', 'FEDRIANSYAH AKBAR ', 'IIN DRIASTY SYAHRIR KANDUNG ', 'Jakarta ', '2017-11-07 ', 'perempuan ', 'null', 'null', 'sekolah ', 'null', 'Perum Taman Karang Bahagia ', 'Desa Karang Sentosa ', 'TK ISLAM TERPADU CAHAYA INDAH ', 'Usia 4 tahun 11 bulan ', 'null'),
(37, 0, 'AYSHA KHALIQA MARWANTO ', 'HERLI MARWANTO ', 'HANI KARTIKA ', 'Bekasi ', '2016-08-17 ', 'perempuan ', 'null', 'null', 'sekolah ', 'null', 'Perum Bumi Kahuripan Indah Blok F19/9 ', 'Desa Sukahurip ', 'TK ISLAM TERPADU CAHAYA INDAH ', 'Usia 6 tahun 1 bulan ', 'null'),
(38, 0, 'AZ-ZAHRA MUSYAFFA AD-DIIBA\'II ', 'FAHRUL ROJI ', 'YULIA SARI NINGSIH ', 'Bandung ', '2017-08-01 ', 'perempuan ', 'null', 'null', 'sekolah ', 'null', 'Perum Puri Nirwana Residences Blok IH No. 18 ', 'Desa Sukaraya ', 'TK ISLAM TERPADU CAHAYA INDAH ', 'Usia 5 tahun 2 bulan ', 'null'),
(39, 0, 'AZELLA SALIYAH HAFASH NASUTION ', 'ABDUL QODIR NASUTION ', 'TRI SEFTI RAHAYUNINGSIH ', 'Jakarta ', '2016-04-16 ', 'perempuan ', 'null', 'null', 'sekolah ', 'null', 'Perum Puri Cikarang Indah C.2/30 ', 'Desa Sukamanah ', 'TK ISLAM TERPADU CAHAYA INDAH ', 'Usia 6 tahun 5 bulan ', 'null'),
(40, 0, 'AZRIL RAHANDIKA ', 'AMSARI ', 'YUYUN YUNINGSIH ', 'Bekasi ', '2016-04-19 ', 'laki-laki ', 'null', 'null', 'sekolah ', 'null', 'Kp. Pulo ', 'Desa Sukaraya ', 'TK ISLAM TERPADU CAHAYA INDAH ', 'Usia 6 tahun 5 bulan ', 'null'),
(41, 0, 'AZRINA KAYLA SRI RAHAYU ', 'AKYAS FATONI ', 'YULI PRIMASTUTI ', 'BEKASI ', '2016-08-17 ', 'perempuan ', 'null', 'null', 'sekolah ', 'null', 'PERUM GRIYA BAGASASI ', 'Desa Sukarukun ', 'TK ISLAM TERPADU CAHAYA INDAH ', 'Usia 6 tahun 1 bulan ', 'null'),
(42, 0, 'AZZURA PUTRY ANNAHLA ', 'IBNU ABDILLAH ', 'VIA DEVIA ', 'Bekasi ', '2016-09-19 ', 'perempuan ', 'null', 'null', 'sekolah ', 'null', 'Kp. Pulo ', 'Desa Sukaraya ', 'TK ISLAM TERPADU CAHAYA INDAH ', 'Usia 6 tahun 0 bulan ', 'null'),
(43, 0, 'BALUQIYA ANA ASYIFA ', 'GALIH ALFIAN ', 'DAHLIA PUSPA DEWI ', 'Bekasi ', '2018-03-14 ', 'perempuan ', 'null', 'null', 'sekolah ', 'null', 'Kp. Ceger Utara ', 'Desa Sukaasih ', 'TK ISLAM TERPADU CAHAYA INDAH ', 'Usia 4 tahun 6 bulan ', 'null'),
(44, 0, 'BELLVANIA CINTA KIRANA ', 'MUNAWIR ', 'ERWINA SRI WIJAYANTI UTAMI ', 'Bekasi ', '2017-02-20 ', 'perempuan ', 'null', 'null', 'sekolah ', 'null', 'Kp. Blokang ', 'Desa Karangsetia ', 'TK ISLAM TERPADU CAHAYA INDAH ', 'Usia 5 tahun 7 bulan ', 'null'),
(45, 0, 'BILQISYA ALYA AZIZA ', 'MUKHAMMAD DZUL QORNAIN ', 'ANIKA ', 'Bekasi ', '2017-07-12 ', 'perempuan ', 'null', 'null', 'sekolah ', 'null', 'Perum Green Sentosa Asri ', 'Desa karangsentosa ', 'TK ISLAM TERPADU CAHAYA INDAH ', 'Usia 5 tahun 3 bulan ', 'null'),
(46, 0, 'BINTANG ALVARO JANUAR ', 'SURATMAN ', 'KURNIASIH ', 'Bekasi ', '2017-01-24 ', 'laki-laki ', 'null', 'null', 'sekolah ', 'null', 'Kp. Jagawana ', 'Desa Sukarukun ', 'TK ISLAM TERPADU CAHAYA INDAH ', 'Usia 5 tahun 8 bulan ', 'null'),
(47, 0, 'CIPTA FRISKA RAHMADHANI ', 'ARIE FRIYANTO ', 'YEYEN ', 'Bekasi ', '2018-05-20 ', 'perempuan ', 'null', 'null', 'sekolah ', 'null', 'Kp. Cabang ', 'Desa Karangasih ', 'TK ISLAM TERPADU CAHAYA INDAH ', 'Usia 4 tahun 4 bulan ', 'null'),
(48, 0, 'CLARA NOVELIA ANUGRAH ', 'SUPRIYADI ', 'EVI LESTARI ', 'Bekasi ', '2016-11-25 ', 'perempuan ', 'null', 'null', 'sekolah ', 'null', 'Perum Pilar Gading Mas Blok C No. 03 ', 'Desa Sukarukun ', 'TK ISLAM TERPADU CAHAYA INDAH ', 'Usia 5 tahun 10 bulan ', 'null'),
(49, 0, 'DAMAR DWI SASONGKO ', 'SUDARMONO ', 'SUCI NURHIDAYATI ', 'Bekasi ', '2016-12-22 ', 'laki-laki ', 'null', 'null', 'sekolah ', 'null', 'Perum Bumi Kahuripan Indah Blok F.17 No. 14 ', 'Desa Sukahurip ', 'TK ISLAM TERPADU CAHAYA INDAH ', 'Usia 5 tahun 9 bulan ', 'null'),
(50, 0, 'DEFFAL ARKHAN ALFARISQY ', 'RIAN NURPAJAR HAPIT ', 'LURI HILMA ', 'Bandung Barat ', '2018-02-20 ', 'laki-laki ', 'null', 'null', 'sekolah ', 'null', 'Perum Sukaraya Indah Blok E.32/14 ', 'Desa Sukaraya ', 'TK ISLAM TERPADU CAHAYA INDAH ', 'Usia 4 tahun 7 bulan ', 'null'),
(51, 0, 'DEVIRA SHAKILA AZZAHRA ', 'EPUL SAEPULLOH ', 'INAWATI ', 'Sukabumi ', '2017-05-21 ', 'perempuan ', 'null', 'null', 'sekolah ', 'null', 'Perum Bumi Kahuripan BKI Blok C / 16 ', 'Desa Sukamanah ', 'TK ISLAM TERPADU CAHAYA INDAH ', 'Usia 5 tahun 4 bulan ', 'null'),
(52, 0, 'DHABIT RAFARDHAN ANNADHIF ', 'DANANG PRASETIAWAN ', 'ZULFATUR ROKHMAH ', 'BEKASI ', '2017-04-28 ', 'laki-laki ', 'null', 'null', 'sekolah ', 'null', 'PERUM GRIYA SUKATANI BLOK E.1 No. 16 ', 'Desa Sukarukun ', 'TK ISLAM TERPADU CAHAYA INDAH ', 'Usia 5 tahun 5 bulan ', 'null'),
(53, 0, 'DHANENDRA ALMALIQUE ZHAFRAN ', 'PUTU RULY WIRAWAN ', 'ULFA DWI MAHARANI ', 'Bekasi ', '2018-06-27 ', 'laki-laki ', 'null', 'null', 'sekolah ', 'null', 'Kp. Jagawana ', 'Desa Sukarukun ', 'TK ISLAM TERPADU CAHAYA INDAH ', 'Usia 4 tahun 3 bulan ', 'null'),
(54, 0, 'ELHANAN ANNASIR ', 'ATRIKNI ', 'WITINAH ', 'Bekasi ', '2017-02-08 ', 'laki-laki ', 'null', 'null', 'sekolah ', 'null', 'Perum Puri Cikarang Indah Blok G1 No. 5 ', 'Desa Sukamanah ', 'TK ISLAM TERPADU CAHAYA INDAH ', 'Usia 5 tahun 8 bulan ', 'null'),
(55, 0, 'ELSA NUR FITRIANA ', 'SANTOSO ', 'ERNAWATI DEVI ', 'PEMALANG ', '2016-07-06 ', 'perempuan ', 'null', 'null', 'sekolah ', 'null', 'PEPRUM PESONA AQILLA RAYA B1 No.6 ', 'Desa Sukaraya ', 'TK ISLAM TERPADU CAHAYA INDAH ', 'Usia 6 tahun 3 bulan ', 'null'),
(56, 0, 'ELVANO ALFARIZKY RAMADHAN ', 'MASHUDI EKA PRASTYA ', 'RISNITA DEWI WARYANTI ', 'Bekasi ', '2018-05-19 ', 'laki-laki ', 'null', 'null', 'sekolah ', 'null', 'Perum Puri CIkarang Asri Blok D4 No. 5 ', 'Desa Sukraukun ', 'TK ISLAM TERPADU CAHAYA INDAH ', 'Usia 4 tahun 4 bulan ', 'null'),
(57, 0, 'EVANO ATHALA ZAFLAN ', 'YUDA SURYAMAN ', 'EVA SUSANTI ', 'Bekasi ', '2017-04-05 ', 'laki-laki ', 'null', 'null', 'sekolah ', 'null', 'Perum Puri Cikarang Indah ', 'Desa Sukamanah ', 'TK ISLAM TERPADU CAHAYA INDAH ', 'Usia 5 tahun 6 bulan ', 'null'),
(58, 0, 'FAIREL ABID AL-FAROKH ', 'DENI SOPIADI ', 'SITI NURAINI ZAHRA ', 'Bekasi ', '2016-11-26 ', 'laki-laki ', 'null', 'null', 'sekolah ', 'null', 'Perum Bumi Kahuripan Indah Blok H17/12 ', 'Desa Sukahurip ', 'TK ISLAM TERPADU CAHAYA INDAH ', 'Usia 5 tahun 10 bulan ', 'null'),
(59, 0, 'FAIZ KENZIE HAMIZAN ', 'BAGIMAN ', 'MASROAH ', 'Bekasi ', '2017-08-30 ', 'laki-laki ', 'null', 'null', 'sekolah ', 'null', 'Perum Sukaraya Indah Blok E.26/11 ', 'Desa Sukaraya ', 'TK ISLAM TERPADU CAHAYA INDAH ', 'Usia 5 tahun 1 bulan ', 'null'),
(60, 0, 'FARIS NAUFAL PRATAMA ', 'BUDIYANTO ', 'EKA MEGA FITRIA ', 'Indramayu ', '2016-12-26 ', 'laki-laki ', 'null', 'null', 'sekolah ', 'null', 'Perum Puri Cikarang Indah Blok D.7 No. 33 ', 'Desa Sukamanah ', 'TK ISLAM TERPADU CAHAYA INDAH ', 'Usia 5 tahun 9 bulan ', 'null'),
(61, 0, 'FAUZAN KAMAL HAKIM ', 'LUKMAN HAKIM ', 'PENIH ', 'Bekasi ', '2016-10-08 ', 'laki-laki ', 'null', 'null', 'sekolah ', 'null', 'Kp. Jagawana ', 'Desa Sukarukun ', 'TK ISLAM TERPADU CAHAYA INDAH ', 'Usia 6 tahun 0 bulan ', 'null'),
(62, 0, 'FERO MAHARDIKA RAMADAN ', 'WIGYANTORO ', 'EMILIYA ', 'Bekasi ', '2016-06-27 ', 'laki-laki ', 'null', 'null', 'sekolah ', 'null', 'Kp. Pulo ', 'Desa Sukaraya ', 'TK ISLAM TERPADU CAHAYA INDAH ', 'Usia 6 tahun 3 bulan ', 'null'),
(63, 0, 'FIRAS AHMAD UWAIS ', 'AHMAD NASEH ', 'ONA MONALISA ', 'Bekasi ', '2016-12-14 ', 'laki-laki ', 'null', 'null', 'sekolah ', 'null', 'Perum Bumi Kahuripan Indah Blok C.18 No. 32 ', 'Desa Sukamanah ', 'TK ISLAM TERPADU CAHAYA INDAH ', 'Usia 5 tahun 9 bulan ', 'null'),
(64, 0, 'GABRIEL BINTANG ERLANGGA ', 'NUR KHOLIS ', 'DWI JUNIARTI ', 'Bekasi ', '2018-05-08 ', 'laki-laki ', 'null', 'null', 'sekolah ', 'null', 'Kp. Jagawana ', 'Desa Sukarukun ', 'TK ISLAM TERPADU CAHAYA INDAH ', 'Usia 4 tahun 5 bulan ', 'null'),
(65, 0, 'GALIH AIDAN SYAH ', 'YUSUP JOKO WIBOWO ', 'NOVIANI ', 'Bekasi ', '2016-12-30 ', 'laki-laki ', 'null', 'null', 'sekolah ', 'null', 'Perm Puri Cikarang Asri ', 'Desa Sukarukun ', 'TK ISLAM TERPADU CAHAYA INDAH ', 'Usia 5 tahun 9 bulan ', 'null'),
(66, 0, 'GIOV IYUS MAHESA ', 'IYUS ', 'KARANAH ', 'CIREBON ', '2016-09-23 ', 'laki-laki ', 'null', 'null', 'sekolah ', 'null', 'Kp. Cikarang ', 'Desa Cikarang Kota ', 'TK ISLAM TERPADU CAHAYA INDAH ', 'Usia 6 tahun 0 bulan ', 'null'),
(67, 0, 'HAIKAL FATHAN GHAZAWAN ', 'YAMIN NURDIN ', 'MIMI WULANDARI HAUJAROH ', 'Garut ', '2017-03-17 ', 'laki-laki ', 'null', 'null', 'sekolah ', 'null', 'Perum Taman Karang Bahagia ', 'Desa Karang Sentosa ', 'TK ISLAM TERPADU CAHAYA INDAH ', 'Usia 5 tahun 6 bulan ', 'null'),
(68, 0, 'HANIF NOOR ZHAFRAN ', 'FULAN ARIEF ', 'LINGGA AGUSTINA ', 'Gunungkidul ', '2016-07-27 ', 'laki-laki ', 'null', 'null', 'sekolah ', 'null', 'Perum Bumi Kahuripan Indah ', 'Desa Sukamanah ', 'TK ISLAM TERPADU CAHAYA INDAH ', 'Usia 6 tahun 2 bulan ', 'null'),
(69, 0, 'HASNA FAKHRIAH WINASIS ', 'AHMAD SUROTO ', 'NANI CARINI ', 'BEKASI ', '2017-01-07 ', 'perempuan ', 'null', 'null', 'sekolah ', 'null', 'PERUM PURI CIKARAN INDAH BLOK 3.6 No. 26 ', 'Desa Sukamanah ', 'TK ISLAM TERPADU CAHAYA INDAH ', 'Usia 5 tahun 9 bulan ', 'null'),
(70, 0, 'HASYA VIDELIA ALTHAFUNNISA ', 'DELIUS KRESNA RAMADHAN ', 'ALVI GALVITRI ', 'Bekasi ', '2017-04-26 ', 'perempuan ', 'null', 'null', 'sekolah ', 'null', 'Perum Green Sentosa Blok T No. 17 ', 'Desa Karang Sentosa ', 'TK ISLAM TERPADU CAHAYA INDAH ', 'Usia 5 tahun 5 bulan ', 'null'),
(71, 0, 'HAYDER KHALIFAH ', 'SURATMIN ', 'SELFI RINDA TUJAMILA ', 'Bekasi ', '2017-01-05 ', 'laki-laki ', 'null', 'null', 'sekolah ', 'null', 'Perum Bumi Kahuripan Indah Blok H18/28 ', 'Desa Sukahurip ', 'TK ISLAM TERPADU CAHAYA INDAH ', 'Usia 5 tahun 9 bulan ', 'null'),
(72, 0, 'HERMANSYAH JAMIL ', 'M. NOOR ', 'AAS ASIAH ', 'Bekasi ', '2017-03-30 ', 'laki-laki ', 'null', 'null', 'sekolah ', 'null', 'Kp. Jagawana No. 48 ', 'Desa Sukarukun ', 'TK ISLAM TERPADU CAHAYA INDAH ', 'Usia 5 tahun 6 bulan ', 'null'),
(73, 0, 'HIKARI AZKA HADIANSYAH ', 'SYAH HADI AMANATI ', 'YUYUN NURJANAH ', 'MOJOKERTO ', '2017-02-26 ', 'laki-laki ', 'null', 'null', 'sekolah ', 'null', 'PESONA AQILLA RAYA C2 No. 23 ', 'Desa Sukaraya ', 'TK ISLAM TERPADU CAHAYA INDAH ', 'Usia 5 tahun 7 bulan ', 'null'),
(74, 0, 'IBNATUL MUFIDA HASIM ', 'HASIM ADNAN ', 'SITI NADIROH ', 'Bekasi ', '2016-10-07 ', 'perempuan ', 'null', 'null', 'sekolah ', 'null', 'Kp. Cangkring ', 'Desa Sukaasih ', 'TK ISLAM TERPADU CAHAYA INDAH ', 'Usia 6 tahun 0 bulan ', 'null'),
(75, 0, 'IBRAHIM AJI RAMAZAN ', 'SEPTO GINANJAR ', 'TRI WULANDARI ', 'Bekasi ', '2017-05-30 ', 'laki-laki ', 'null', 'null', 'sekolah ', 'null', 'Perum Puri Cikarang Asri Blok D.4 No. 07 ', 'Desa Sukarukun ', 'TK ISLAM TERPADU CAHAYA INDAH ', 'Usia 5 tahun 4 bulan ', 'null'),
(76, 0, 'IBRAHIM ZIYAD AL FARIZ ', 'MOCHAMAD MUDOFIR ', 'MUSLICHAH ', 'Bekasi ', '2016-08-08 ', 'laki-laki ', 'null', 'null', 'sekolah ', 'null', 'Perum Sukaraya Indah Blok D.20/08 ', 'Desa Sukaraya ', 'TK ISLAM TERPADU CAHAYA INDAH ', 'Usia 6 tahun 2 bulan ', 'null'),
(77, 0, 'INARA KARTINI ', 'ANDI LALA ', 'YUYUN RAHMAYUNI ', 'Bekasi ', '2017-02-26 ', 'perempuan ', 'null', 'null', 'sekolah ', 'null', 'Perum Bumi Kahuripan Indah Blok E.2 No. 21 ', 'Desa Sukahurip ', 'TK ISLAM TERPADU CAHAYA INDAH ', 'Usia 5 tahun 7 bulan ', 'null'),
(78, 0, 'IRSYAD ABRISAM FATHAN ', 'IRSAM FATHONI ', 'FITRI RAHMAWATI ', 'Bekasi ', '2017-07-17 ', 'laki-laki ', 'null', 'null', 'sekolah ', 'null', 'Perum Bumi Kahuripan Indah Blok A6 No. 28 ', 'Desa Sukamanah ', 'TK ISLAM TERPADU CAHAYA INDAH ', 'Usia 5 tahun 2 bulan ', 'null'),
(79, 0, 'JASMINE ARALYNZIA MECCA ', 'R.RANGGA GUMILAR ', 'SUSILO WULANDARI ', 'Bekasi ', '2017-01-30 ', 'perempuan ', 'null', 'null', 'sekolah ', 'null', 'Kp. Jagawana ', 'Desa Sukarukun ', 'TK ISLAM TERPADU CAHAYA INDAH ', 'Usia 5 tahun 8 bulan ', 'null'),
(80, 0, 'JEHAN NAZLA AIERA ', 'FARID ARDIANSYAH ', 'KRISTINA YULIANTI ', 'Depok ', '2017-04-04 ', 'perempuan ', 'null', 'null', 'sekolah ', 'null', 'Perum Villa Mahkota Indah Blok A3 No. 2 ', 'Desa Sukaraya ', 'TK ISLAM TERPADU CAHAYA INDAH ', 'Usia 5 tahun 6 bulan ', 'null'),
(81, 0, 'JIHAN FATHIA RAHMA ', 'HUMAIDI ', 'DIAN TIARA MAHARLIKA ', 'Bekasi ', '2017-05-27 ', 'perempuan ', 'null', 'null', 'sekolah ', 'null', 'Kp. Elo ', 'Desa Sukamanah ', 'TK ISLAM TERPADU CAHAYA INDAH ', 'Usia 5 tahun 4 bulan ', 'null'),
(82, 0, 'KAILASH ARKA RIZAL ', 'AHMAD SAIFULLOH RIZAL ', 'ATSA AYUDATY ', 'Bekasi ', '2016-08-02 ', 'laki-laki ', 'null', 'null', 'sekolah ', 'null', 'Kp. Blokang ', 'Desa Karangsentosa ', 'TK ISLAM TERPADU CAHAYA INDAH ', 'Usia 6 tahun 2 bulan ', 'null'),
(83, 0, 'KHAIRINA ALMAHYRA SHANUM ', 'WERI YUDHI HENDRA ', 'RETNO WULAN KINASIH ', 'Bekasi ', '2018-04-04 ', 'perempuan ', 'null', 'null', 'sekolah ', 'null', 'Perum Grama Puri Persada Blok K.2 No. 33 ', 'Desa Sukajaya ', 'TK ISLAM TERPADU CAHAYA INDAH ', 'Usia 4 tahun 6 bulan ', 'null'),
(84, 0, 'KHAIRUNNISA SAFIRA FIRMANSYAH ', 'WAWAN FIRMANSYAH ', 'LIA AFNAWATI ', 'Bekasi ', '2016-07-08 ', 'perempuan ', 'null', 'null', 'sekolah ', 'null', 'Perum Puri Cikarang Asri Blok G.8 No. 8 ', 'Desa Sukarukun ', 'TK ISLAM TERPADU CAHAYA INDAH ', 'Usia 6 tahun 3 bulan ', 'null'),
(85, 0, 'KHALIQA DZAHIN ARIFIN ', 'ARIFIN ', 'ITA ARIFIANTI ', 'Karawang ', '2017-01-28 ', 'perempuan ', 'null', 'null', 'sekolah ', 'null', 'Perum Griya Hasanah Sukaasih Blok E No. 2 ', 'Desa Sukaasih ', 'TK ISLAM TERPADU CAHAYA INDAH ', 'Usia 5 tahun 8 bulan ', 'null'),
(86, 0, 'KHANZA EL PHIYAN AZKADINA ', 'LUDFIYANTO MUCHSIN ', 'IDA ARIYANI ', 'Bekasi ', '2016-10-27 ', 'perempuan ', 'null', 'null', 'sekolah ', 'null', 'Perum Pilar Gading Mas Blok D2 No. 02 ', 'Desa Sukarukun ', 'TK ISLAM TERPADU CAHAYA INDAH ', 'Usia 5 tahun 11 bulan ', 'null'),
(87, 0, 'KHASIFATUL AZZAHRA ', 'ABD MUID ', 'HERNI ', 'Bekasi ', '2017-02-27 ', 'perempuan ', 'null', 'null', 'sekolah ', 'null', 'Kp. Sukamantri ', 'Desa Sukaraya ', 'TK ISLAM TERPADU CAHAYA INDAH ', 'Usia 5 tahun 7 bulan ', 'null'),
(88, 0, 'KIRAN NILAWATI SARI ', 'TRI GUNAWAN SANTOSO ', 'WARDAYNA KHARMITAN ', 'Jakarta ', '2016-03-27 ', 'perempuan ', 'null', 'null', 'sekolah ', 'null', 'Perum Bumi Kahuripan Indah Blok H.16/30 ', 'Desa Sukahurip ', 'TK ISLAM TERPADU CAHAYA INDAH ', 'Usia 6 tahun 6 bulan ', 'null'),
(89, 0, 'KUZAMA AZKAYRA NADZIFAH ', 'ALUCKY SURYA DANUNINGRAT ', 'HANIYAH SRI GADING SARI ', 'Bekasi ', '2016-04-11 ', 'perempuan ', 'null', 'null', 'sekolah ', 'null', 'Perum Grand Permata City Blok H2 No. 10 ', 'Desa Karangsetia ', 'TK ISLAM TERPADU CAHAYA INDAH ', 'Usia 6 tahun 6 bulan ', 'null'),
(90, 0, 'LAIQA NASYWA HANIFATI ', 'HABLILLAH ', 'LUPITA NILAM MAYANGSARI ', 'Bekasi ', '2017-10-28 ', 'perempuan ', 'null', 'null', 'sekolah ', 'null', 'Kp. Pulo No.3 ', 'Desa Sukaraya ', 'TK ISLAM TERPADU CAHAYA INDAH ', 'Usia 4 tahun 11 bulan ', 'null'),
(91, 0, 'LUVINO GAARAGIAN BIMANTARA ', 'DIMAS AGUSTI BIMANTARA ', 'EVA KHUSWENI ', 'Bekasi ', '2018-05-04 ', 'laki-laki ', 'null', 'null', 'sekolah ', 'null', 'Perum Bumi Kahuripan Indah ', 'Desa Sukahurip ', 'TK ISLAM TERPADU CAHAYA INDAH ', 'Usia 4 tahun 5 bulan ', 'null'),
(92, 0, 'M. DEGORID RIZQULLAH ', 'E. RUDI SYARIEF ', 'YUNIANTI ', 'Bekasi ', '2016-05-06 ', 'laki-laki ', 'null', 'null', 'sekolah ', 'null', 'Perum Sukaraya Indah Blok C2 No. 23 ', 'Desa Sukaraya ', 'TK ISLAM TERPADU CAHAYA INDAH ', 'Usia 6 tahun 5 bulan ', 'null'),
(93, 0, 'M. ZIYAD TSAQIB NASUTION ', 'ISKANDAR NASUTION ', 'LAKISTRI ERIVANI ', 'Bekasi ', '2017-05-16 ', 'laki-laki ', 'null', 'null', 'sekolah ', 'null', 'Perum Bumi Kahuripan Indah Blok B1 No. 8 ', 'Desa Sukamanah ', 'TK ISLAM TERPADU CAHAYA INDAH ', 'Usia 5 tahun 4 bulan ', 'null'),
(94, 0, 'MEHRUNISSA PARSA RAMADHANI ', 'KUSTANTO ', 'RITA YUNITA ', 'Bekasi ', '2016-06-30 ', 'laki-laki ', 'null', 'null', 'sekolah ', 'null', 'Perum Pilar Mas Persada Blok BI No.24 ', 'Desa Sukarukun ', 'TK ISLAM TERPADU CAHAYA INDAH ', 'Usia 6 tahun 3 bulan ', 'null'),
(95, 0, 'MEIKA PUTRI HABIBAH ', 'SEPTIADI HABIB ', 'ENDAH KUSMAWATI ', 'Bekasi ', '2017-05-03 ', 'perempuan ', 'null', 'null', 'sekolah ', 'null', 'Perum Sukaraya indah Blok B.18 No. 11 ', 'Desa Sukaraya ', 'TK ISLAM TERPADU CAHAYA INDAH ', 'Usia 5 tahun 5 bulan ', 'null'),
(96, 0, 'MOCHAMAD AL KARIM ILYAS ', 'RIO MASHAB ', 'ZANATUN NAIMA ', 'BEKASI ', '2016-08-21 ', 'laki-laki ', 'null', 'null', 'sekolah ', 'null', 'PERUM BUMI KAHURIPAN INDAH BLOK B18 No. 4 ', 'Desa Sukahurip ', 'TK ISLAM TERPADU CAHAYA INDAH ', 'Usia 6 tahun 1 bulan ', 'null'),
(97, 0, 'MUFIDAH FATHIYYATURAHMA ', 'RUSTONI ', 'SRI MULYANI ', 'Tegal ', '2017-02-10 ', 'perempuan ', 'null', 'null', 'sekolah ', 'null', 'Kp. Jagawana ', 'Desa Sukarukun ', 'TK ISLAM TERPADU CAHAYA INDAH ', 'Usia 5 tahun 8 bulan ', 'null'),
(98, 0, 'MUHAMMAD AIDIL MUBAROK KHAERONI ', 'KHAERONI ', 'ASTUTI ', 'Serang ', '2017-05-30 ', 'laki-laki ', 'null', 'null', 'sekolah ', 'null', 'Perum Pesona Aqilla Raya ', 'Desa Sukaraya ', 'TK ISLAM TERPADU CAHAYA INDAH ', 'Usia 5 tahun 4 bulan ', 'null'),
(99, 0, 'MUHAMMAD ARDIANSYAH CARILLO ', 'BOBBY CARILO ', 'EVA YULIANA ', 'BEKASI ', '2016-08-01 ', 'laki-laki ', 'null', 'null', 'sekolah ', 'null', 'PERUM JAGAWANA INDAH No. 012 ', 'Desa Sukarukun ', 'TK ISLAM TERPADU CAHAYA INDAH ', 'Usia 6 tahun 2 bulan ', 'null'),
(100, 0, 'MUHAMMAD ARKA MULYADI ', 'MULADI THILE ', 'PARAMITA SETIANINGSIH ', 'Bekasi ', '2016-11-13 ', 'laki-laki ', 'null', 'null', 'sekolah ', 'null', 'Kp. Pelaukan ', 'Desa Karangrahayu ', 'TK ISLAM TERPADU CAHAYA INDAH ', 'Usia 5 tahun 10 bulan ', 'null'),
(101, 0, 'MUHAMMAD ARKAN KAMIL ', 'AGUS TRIYANTO ', 'INDAH SULISTYOWATI ', 'Bekasi ', '2016-07-16 ', 'laki-laki ', 'null', 'null', 'sekolah ', 'null', 'Perum Griya Sukatani Indah Blok E.1 No. 10 ', 'Desa Sukarukun ', 'TK ISLAM TERPADU CAHAYA INDAH ', 'Usia 6 tahun 2 bulan ', 'null'),
(102, 0, 'MUHAMMAD ARSAKHA VIRENDRA SHAFWAN ', 'MAULANA SAPUTRA ', 'MEI NURZUL FADRIAH ', 'Sukabumi ', '2016-10-21 ', 'laki-laki ', 'null', 'null', 'sekolah ', 'null', 'Perum Bumi Kahuripan Indah Jl. Melati IV Blok C14 No. 16 ', 'Desa Sukamanah ', 'TK ISLAM TERPADU CAHAYA INDAH ', 'Usia 5 tahun 11 bulan ', 'null'),
(103, 0, 'MUHAMMAD ATTALA FIRMAN ', 'FIRMAN ', 'WIWIN INDARTI ', 'Bekasi ', '2016-12-16 ', 'laki-laki ', 'null', 'null', 'sekolah ', 'null', 'Perum Pilar Gading Mas Blok C1 No. 31 ', 'Kec. Sukarukun ', 'TK ISLAM TERPADU CAHAYA INDAH ', 'Usia 5 tahun 9 bulan ', 'null'),
(104, 0, 'MUHAMMAD AZAM NURWAHID ', 'ABDUL BAKRI ', 'LILIS SURYANI ', 'Ciamis ', '2016-07-16 ', 'laki-laki ', 'null', 'null', 'sekolah ', 'null', 'Perum Bumi Kahuripan Indah Blok E.6/16 ', 'Desa Sukahurip ', 'TK ISLAM TERPADU CAHAYA INDAH ', 'Usia 6 tahun 2 bulan ', 'null'),
(105, 0, 'MUHAMMAD AZKA ALFATTIH ', 'MUHAMMAD YUSUF NURLAIL ', 'YOYOH SANTIYA ', 'Bekasi ', '2017-05-27 ', 'laki-laki ', 'null', 'null', 'sekolah ', 'null', 'Kp. Jagawana ', 'Desa Sukarukun ', 'TK ISLAM TERPADU CAHAYA INDAH ', 'Usia 5 tahun 4 bulan ', 'null'),
(106, 0, 'MUHAMMAD AZKA ANWARI ', 'YUDI ANWAR ', 'ATI SUKMA ASIH ', 'Bekasi ', '2017-01-16 ', 'laki-laki ', 'null', 'null', 'sekolah ', 'null', 'Perum Pilar Gading Mas Blok D6 No. 1 ', 'Desa Sukarukun ', 'TK ISLAM TERPADU CAHAYA INDAH ', 'Usia 5 tahun 8 bulan ', 'null'),
(107, 0, 'MUHAMMAD BINTANG ADI NUGRAHA ', 'ROSIDI ', 'SUSILO WAHYUNI ', 'Bekasi ', '2017-05-19 ', 'laki-laki ', 'null', 'null', 'sekolah ', 'null', 'Kp. Jagawana ', 'Desa Sukarukun ', 'TK ISLAM TERPADU CAHAYA INDAH ', 'Usia 5 tahun 4 bulan ', 'null'),
(108, 0, 'MUHAMMAD FAQIH RAMADHAN ', 'SUBAGYO ', 'TRI WULANDARI ', 'Bekasi ', '2016-06-21 ', 'laki-laki ', 'null', 'null', 'sekolah ', 'null', 'Perum Sukaraya Indah Blok D.19/12A ', 'Desa Sukaraya ', 'TK ISLAM TERPADU CAHAYA INDAH ', 'Usia 6 tahun 3 bulan ', 'null'),
(109, 0, 'MUHAMMAD FATHIR YUSUF ', 'IRFAN HUDAYA ', 'FIFI SEPTIARINI ', 'Bekasi ', '2017-04-27 ', 'laki-laki ', 'null', 'null', 'sekolah ', 'null', 'Kp. Pulo ', 'Desa Sukaraya ', 'TK ISLAM TERPADU CAHAYA INDAH ', 'Usia 5 tahun 5 bulan ', 'null'),
(110, 0, 'MUHAMMAD FAYYAZ ATHALLAH ', 'MUHAMMAD DENNY ', 'TIYA WULANSARI ', 'Bekasi ', '2017-08-17 ', 'laki-laki ', 'null', 'null', 'sekolah ', 'null', 'Perum Gramapuri Persada Blok P.3 No. 34 ', 'Desa Sukajaya ', 'TK ISLAM TERPADU CAHAYA INDAH ', 'Usia 5 tahun 1 bulan ', 'null'),
(111, 0, 'MUHAMMAD HAMZAH DHANIS ', 'M. YUSUP ', 'SARIPAH ', 'BEKASI ', '2016-08-01 ', 'laki-laki ', 'null', 'null', 'sekolah ', 'null', 'KP. JAGAWANA No. 48 ', 'Desa Sukarukun ', 'TK ISLAM TERPADU CAHAYA INDAH ', 'Usia 6 tahun 2 bulan ', 'null'),
(112, 0, 'MUHAMMAD ILYAS HANDOYO ', 'NANO TUHU PUTRA ', 'TRI WAHYUNINGSIH ', 'Purworejo ', '2016-08-05 ', 'laki-laki ', 'null', 'null', 'sekolah ', 'null', 'Perum Bumi Kahuripan Indah Blok D12 No. 5 ', 'Desa Sukahurip ', 'TK ISLAM TERPADU CAHAYA INDAH ', 'Usia 6 tahun 2 bulan ', 'null'),
(113, 0, 'MUHAMMAD MAUZA RAFFASYA ', 'NANANG KHOIRUL ANAM ', 'SRI MARDASIH ', 'Bekasi ', '2016-09-22 ', 'laki-laki ', 'null', 'null', 'sekolah ', 'null', 'Perum Grand Cikarang City Blok D5/12 ', 'Desa Karangraharja ', 'TK ISLAM TERPADU CAHAYA INDAH ', 'Usia 6 tahun 0 bulan ', 'null'),
(114, 0, 'MUHAMMAD RIZQI TIJANI ', 'NUR ARIFFIN ', 'TATI ROSMAWATI ', 'Bekasi ', '2017-05-08 ', 'laki-laki ', 'null', 'null', 'sekolah ', 'null', 'Jl. Lontar I GG 8 Blok I / 4 ', 'Kel. Tugu Utara ', 'TK ISLAM TERPADU CAHAYA INDAH ', 'Usia 5 tahun 5 bulan ', 'null'),
(115, 0, 'MUHAMMAD ZHAFRAN ALFARIZI ', 'SUDJADI ', 'SYAMSIAH ', 'Jakarta ', '2017-10-11 ', 'laki-laki ', 'null', 'null', 'sekolah ', 'null', 'Perum Aqilla Raya ', 'Desa Sukaraya ', 'TK ISLAM TERPADU CAHAYA INDAH ', 'Usia 5 tahun 0 bulan ', 'null'),
(116, 0, 'NABILA NURRAMADHANI ICHLAS ', 'MOH. TULUS ICHLAS ', 'NUNUNG NURHASANAH ', 'Bekasi ', '2016-06-14 ', 'perempuan ', 'null', 'null', 'sekolah ', 'null', 'Perum Pilar Mas Persada Blok A2 No. 02 ', 'Desa Sukarukun ', 'TK ISLAM TERPADU CAHAYA INDAH ', 'Usia 6 tahun 3 bulan ', 'null'),
(117, 0, 'NAFEEZA MIKAYLA ISMAIL ', 'ISMAIL ', 'NURHASANAH ', 'Bekasi ', '2016-12-16 ', 'perempuan ', 'null', 'null', 'sekolah ', 'null', 'Kp. Pulo Tiga ', 'Desa Banjarsari ', 'TK ISLAM TERPADU CAHAYA INDAH ', 'Usia 5 tahun 9 bulan ', 'null'),
(118, 0, 'NAILA MUAZARA ULFA ', 'ANGGIH SETIAWAN ', 'ROSIATI ', 'Purbalingga ', '2016-08-28 ', 'perempuan ', 'null', 'null', 'sekolah ', 'null', 'Perum Bumi Kahuripan Indah Gg. Merpati 16 Blok D11 No. 1 ', 'Desa Sukahurip ', 'TK ISLAM TERPADU CAHAYA INDAH ', 'Usia 6 tahun 1 bulan ', 'null'),
(119, 0, 'NAIRA KHAIRANI ADZKIYAH ', 'SUTRISNO ', 'VEVA NIRMALA ', 'Jakarta ', '2017-12-18 ', 'perempuan ', 'null', 'null', 'sekolah ', 'null', 'Perum Sukaraya Indah Blok A5 No. 2 ', 'Desa Sukaraya ', 'TK ISLAM TERPADU CAHAYA INDAH ', 'Usia 4 tahun 9 bulan ', 'null'),
(120, 0, 'NAUFAL RADITYA MULYA ', 'MULYONO ', 'AGUS YULIAWATI ', 'Blora ', '2017-04-15 ', 'laki-laki ', 'null', 'null', 'sekolah ', 'null', 'Perum Chita Residence Blok B6/17 ', 'Desa Sukaasih ', 'TK ISLAM TERPADU CAHAYA INDAH ', 'Usia 5 tahun 5 bulan ', 'null'),
(121, 0, 'NAYLA SHAKILA PUTRI ', 'ANDI NUGROHO ', 'NENG CUCUM SUMIATI ', 'Bandung Barat ', '2017-04-13 ', 'perempuan ', 'null', 'null', 'sekolah ', 'null', 'Perum Bumi Kahuripan Indah Jl. Arjuna 1 Blok E2/15 ', 'Desa Sukahurip ', 'TK ISLAM TERPADU CAHAYA INDAH ', 'Usia 5 tahun 5 bulan ', 'null'),
(122, 0, 'NAZINDA SAFALUNA SUWANDI ', 'IWAN SUWANDI ', 'TRI YANAH ', 'Cirebon ', '2016-12-14 ', 'perempuan ', 'null', 'null', 'sekolah ', 'null', 'Perum Puri Cikarang Indah Blok B.5 No. 12A ', 'Desa Sukamanah ', 'TK ISLAM TERPADU CAHAYA INDAH ', 'Usia 5 tahun 9 bulan ', 'null'),
(123, 0, 'NAZRIL AHMAD NASUTION ', 'ASEP AHMAD JUNAEDI ', 'EUIS NURHIDAYAH ', 'Bekasi ', '2017-04-05 ', 'laki-laki ', 'null', 'null', 'sekolah ', 'null', 'Perum Puri Cikarang Indah Blok D13 No. 37 ', 'Desa Sukamanah ', 'TK ISLAM TERPADU CAHAYA INDAH ', 'Usia 5 tahun 6 bulan ', 'null'),
(124, 0, 'NILUFER ALYSHA SYAQILA ', 'ANDI BAYU PRADANA ', 'NUR KHIKMAH ', 'Bekasi ', '2016-04-23 ', 'perempuan ', 'null', 'null', 'sekolah ', 'null', 'Perum Grand Permata City Blok E. 8 No. 11 ', 'Desa Karang Setia ', 'TK ISLAM TERPADU CAHAYA INDAH ', 'Usia 6 tahun 5 bulan ', 'null'),
(125, 0, 'NIRMALA ZAHRATUSSITA MUZAKI ', 'KHABIB MUZAKI ', 'IRAWATI ', 'Klaten ', '2016-08-08 ', 'perempuan ', 'null', 'null', 'sekolah ', 'null', 'Perum Bumi Kahuripan Indah Blok F17 No. 1 ', 'Desa Sukahurip ', 'TK ISLAM TERPADU CAHAYA INDAH ', 'Usia 6 tahun 2 bulan ', 'null'),
(126, 0, 'NUR AISYAH AYUDIA ', 'SUNTONG ', 'WINARTI ', 'Kebumen ', '2016-04-26 ', 'perempuan ', 'null', 'null', 'sekolah ', 'null', 'Perum Sukaraya Indah Blok F.5 No.21 ', 'Desa Sukaraya ', 'TK ISLAM TERPADU CAHAYA INDAH ', 'Usia 6 tahun 5 bulan ', 'null'),
(127, 0, 'NURIN NAJWA MUFIDA ', 'MOHAMAD SOBIKIN ', 'WINARSIH ', 'Pemalang ', '2016-08-19 ', 'perempuan ', 'null', 'null', 'sekolah ', 'null', 'Perum Puri Cikarang Asri Blok F7 No. 17 ', 'Desa Sukamanah ', 'TK ISLAM TERPADU CAHAYA INDAH ', 'Usia 6 tahun 1 bulan ', 'null'),
(128, 0, 'PUTRI ANINDIYAWATI ', 'MULYADI ', 'WARTI ', 'Bekasi ', '2016-08-17 ', 'perempuan ', 'null', 'null', 'sekolah ', 'null', 'Kp. Jagawana ', 'Desa Sukarukun ', 'TK ISLAM TERPADU CAHAYA INDAH ', 'Usia 6 tahun 1 bulan ', 'null'),
(129, 0, 'QAILA BALQIIS FARZANA ', 'EKO HENDRI SETIAWAN ', 'IKA MARDIYATI ', 'Bekasi ', '2016-04-08 ', 'perempuan ', 'null', 'null', 'sekolah ', 'null', 'Perum Sukaraya Indah Blok D.18 No. 3 Bintara 3 ', 'Desa Sukaraya ', 'TK ISLAM TERPADU CAHAYA INDAH ', 'Usia 6 tahun 6 bulan ', 'null'),
(130, 0, 'QENZIE ALETHEA KAINDRA ', 'ARIYANTO ', 'AIDA FITRI ', 'Bekasi ', '2016-02-06 ', 'laki-laki ', 'null', 'null', 'sekolah ', 'null', 'Perum Taman Raya Cikarang Blok A1 No. 2 ', 'Desa Sukaraya ', 'TK ISLAM TERPADU CAHAYA INDAH ', 'Usia 6 tahun 8 bulan ', 'null'),
(131, 0, 'QUEENSHA AQILA HUMAIRA ', 'SUPRIYANTO ', 'SRI HARTATI ', 'Brebes ', '2016-11-03 ', 'perempuan ', 'null', 'null', 'sekolah ', 'null', 'Jl. Jagawana Kp. Jagawan ', 'Desa Sukarukun ', 'TK ISLAM TERPADU CAHAYA INDAH ', 'Usia 5 tahun 11 bulan ', 'null'),
(132, 0, 'RADINKA YUSUF AL HAFIZH ', 'ISWANTO ', 'AFRIZA SUSANTI ', 'Bekasi ', '2016-12-26 ', 'laki-laki ', 'null', 'null', 'sekolah ', 'null', 'Perum Bumi Kahuripan Indah Jl. Formula V Blok A.6 No. 12 ', 'Desa Sukamanah ', 'TK ISLAM TERPADU CAHAYA INDAH ', 'Usia 5 tahun 9 bulan ', 'null'),
(133, 0, 'RAFANDA DENIS ', 'MARTONO ', 'DEFI FITRIYANTI ', 'GROBOGAN ', '2016-06-19 ', 'laki-laki ', 'null', 'null', 'sekolah ', 'null', 'PERUM PESONA AQILLA RAYA BLOK C2/15 ', 'Desa Sukaraya ', 'TK ISLAM TERPADU CAHAYA INDAH ', 'Usia 6 tahun 3 bulan ', 'null'),
(134, 0, 'RAFFASYA RUZAIN ARVINZA ', 'JOKO RIYANTO ', 'APRILYA WULANDARI ', 'Kebumen ', '2017-04-15 ', 'laki-laki ', 'null', 'null', 'sekolah ', 'null', 'Perum Griya Mahakarya Residence Blok C.8 No. 07 ', 'Desa Sukamanah ', 'TK ISLAM TERPADU CAHAYA INDAH ', 'Usia 5 tahun 5 bulan ', 'null'),
(135, 0, 'RAHMANNISA AULIA QUDSIYAH ', 'RIZKI ABI ARFIANTO ', 'SITI NURAENI ', 'Bekasi ', '2016-08-28 ', 'perempuan ', 'null', 'null', 'sekolah ', 'null', 'Kp. Pulo ', 'Desa Sukaraya ', 'TK ISLAM TERPADU CAHAYA INDAH ', 'Usia 6 tahun 1 bulan ', 'null'),
(136, 0, 'RAKA ARSYAD SHAGUFTA ', 'WAHYANI ', 'ANDINA TAURESHIA W ', 'BEKASI ', '2016-10-28 ', 'laki-laki ', 'null', 'null', 'sekolah ', 'null', 'PERUM GRAHA PERMATA PELANGI 4 BLOK D/6 ', 'Desa Sukarukun ', 'TK ISLAM TERPADU CAHAYA INDAH ', 'Usia 5 tahun 11 bulan ', 'null'),
(137, 0, 'RAKHA NAZRIL ALFARIZHI ', 'UUN GUNAWAN ', 'FERI YUANA ', 'Bekasi ', '2018-05-02 ', 'laki-laki ', 'null', 'null', 'sekolah ', 'null', 'Perum Puri Cikarang Indah Blok B3 No. 27 ', 'Desa Sukamanah ', 'TK ISLAM TERPADU CAHAYA INDAH ', 'Usia 4 tahun 5 bulan ', 'null'),
(138, 0, 'RANDY AZHAR ', 'A.R JUNAEDY ', 'KARIMAH ARJUNA ', 'Bekasi ', '2018-03-24 ', 'laki-laki ', 'null', 'null', 'sekolah ', 'null', 'Kp. Komplek Samba Indah ', 'Desa Sukaasih ', 'TK ISLAM TERPADU CAHAYA INDAH ', 'Usia 4 tahun 6 bulan ', 'null'),
(139, 0, 'RANIA PUTRI RAMADHANI ', 'FERIYANTO ', 'ETI SUHAETI ', 'Bekasi ', '2016-06-19 ', 'perempuan ', 'null', 'null', 'sekolah ', 'null', 'Kp. Jagawana ', 'Desa Sukarukun ', 'TK ISLAM TERPADU CAHAYA INDAH ', 'Usia 6 tahun 3 bulan ', 'null'),
(140, 0, 'REI VALIO NARESH ANINDITO ', 'SRI WAHYUNING PURWANTO ', 'YUNI ASTUTI ', 'Bekasi ', '2017-04-22 ', 'laki-laki ', 'null', 'null', 'sekolah ', 'null', 'Perum Puri Cikarang Indah Blok B4/7 ', 'Desa Sukamanah ', 'TK ISLAM TERPADU CAHAYA INDAH ', 'Usia 5 tahun 5 bulan ', 'null'),
(141, 0, 'REYNAND ADELIO DARMANSYAH ', 'DIDIK DARMADI ', 'NURAENI ', 'Kebumen ', '2016-03-27 ', 'laki-laki ', 'null', 'null', 'sekolah ', 'null', 'Perum Sukaraya Indah Blok F 12 No. 12A ', 'Desa Sukaraya ', 'TK ISLAM TERPADU CAHAYA INDAH ', 'Usia 6 tahun 6 bulan ', 'null'),
(142, 0, 'REYNAND ADHYASTHA WIBOWO ', 'ZULVIKAR AJI WIBOWO ', 'DEDEH RATNA SARI ', 'Bekasi ', '2017-02-08 ', 'laki-laki ', 'null', 'null', 'sekolah ', 'null', 'Perum Grand Permata City ', 'Desa Karangsetia ', 'TK ISLAM TERPADU CAHAYA INDAH ', 'Usia 5 tahun 8 bulan ', 'null'),
(143, 0, 'REZQIANO ALKANTARA PUTRA ', 'RUTIKNO ', 'NITA KURNIAWATI ', 'Bekasi ', '2018-06-21 ', 'laki-laki ', 'null', 'null', 'sekolah ', 'null', 'Perum Graha Permata Pelangi 4 Blok C No.3 ', 'Desa Sukarukun ', 'TK ISLAM TERPADU CAHAYA INDAH ', 'Usia 4 tahun 3 bulan ', 'null'),
(144, 0, 'RYOTA RASYIID BENNY LAU ', 'BENNY BENHAK ', 'ISMA SALIYAH ', 'Bekasi ', '2016-09-25 ', 'laki-laki ', 'null', 'null', 'sekolah ', 'null', 'Kp. Kebon Kopi ', 'Desa Karangasih ', 'TK ISLAM TERPADU CAHAYA INDAH ', 'Usia 6 tahun 0 bulan ', 'null'),
(145, 0, 'SABRINA AULIA MAULANA ', 'DEDE MAULANA ', 'REGINA MEGA PERMATA ', 'Bekasi ', '2016-08-10 ', 'perempuan ', 'null', 'null', 'sekolah ', 'null', 'Perum Sukaraya Indah Blok F12A/1 Jl. Bima VII ', 'Desa Sukaraya ', 'TK ISLAM TERPADU CAHAYA INDAH ', 'Usia 6 tahun 2 bulan ', 'null'),
(146, 0, 'SAN ALI ZAHID NATT ', 'YANDI PERDANA ', 'SINAH NATANIA ', 'Bekasi ', '2017-06-21 ', 'laki-laki ', 'null', 'null', 'sekolah ', 'null', 'Perum Cluster Kampoeng Karang Asih 2 Blok C4 ', 'Desa Karangasih ', 'TK ISLAM TERPADU CAHAYA INDAH ', 'Usia 5 tahun 3 bulan ', 'null'),
(147, 0, 'SASHI KIRANA ALESHA HULWAH ', 'SUGIARTO ', 'NOVITA SEPIANA ', 'Bekasi ', '2017-04-23 ', 'perempuan ', 'null', 'null', 'sekolah ', 'null', 'Kp. Cabang Kebon Kopi ', 'Desa Karang Asih ', 'TK ISLAM TERPADU CAHAYA INDAH ', 'Usia 5 tahun 5 bulan ', 'null'),
(148, 0, 'SHAFURA ALMAHYRA HASAN ', 'AHMAD HASAN ', 'AWANDA YULIANA PRATIWI KARIMA ', 'Bekasi ', '2018-06-08 ', 'perempuan ', 'null', 'null', 'sekolah ', 'null', 'Perum Grand Permata City Blok C6 No. 10 ', 'Desa Karang Setia ', 'TK ISLAM TERPADU CAHAYA INDAH ', 'Usia 4 tahun 4 bulan ', 'null'),
(149, 0, 'SHAKA AMIR AQILA ', 'BAHRUDIN ', 'SATIYAH ', 'Bekasi ', '2016-06-25 ', 'laki-laki ', 'null', 'null', 'sekolah ', 'null', 'Perum Gramapuri Persada Blok P1 No. 47 ', 'Desa Sukajaya ', 'TK ISLAM TERPADU CAHAYA INDAH ', 'Usia 6 tahun 3 bulan ', 'null'),
(150, 0, 'SHAKILA ABIDAH SANJAYA ', 'REGI SANJAYA ', 'DIARFANIS PUSPITA SARI ', 'Bekasi ', '2016-08-30 ', 'perempuan ', 'null', 'null', 'sekolah ', 'null', 'Perum Sukaraya Indah Blok E.23 No. 14 ', 'Desa Sukaraya ', 'TK ISLAM TERPADU CAHAYA INDAH ', 'Usia 6 tahun 1 bulan ', 'null'),
(151, 0, 'SHAKILA PUTRI AULIA ', 'MUHAMAD RUVI THAMRIN ', 'YUNI ', 'Bekasi ', '2016-08-30 ', 'perempuan ', 'null', 'null', 'sekolah ', 'null', 'Jl. Merpati No. 2 ', 'Kelurahan Harapan Ja ', 'TK ISLAM TERPADU CAHAYA INDAH ', 'Usia 6 tahun 1 bulan ', 'null'),
(152, 0, 'SHAQUEEN ZALFA KHUMAIRAH ', 'HAIRUMAN ', 'RAHAYU HANDAYANI ', 'Bekasi ', '2017-01-23 ', 'perempuan ', 'null', 'null', 'sekolah ', 'null', 'Perum Pilar Gading Mas Blok A2 No. 3 ', 'Desa Sukarukun ', 'TK ISLAM TERPADU CAHAYA INDAH ', 'Usia 5 tahun 8 bulan ', 'null'),
(153, 0, 'SITI ALIFA HASANAH ', 'ABDULLAH HASAN ', 'SITI MARDIAH ', 'BEKASI ', '2017-07-01 ', 'perempuan ', 'null', 'null', 'sekolah ', 'null', 'KP. JAGAWANA ', 'Desa Sukarukun ', 'TK ISLAM TERPADU CAHAYA INDAH ', 'Usia 5 tahun 3 bulan ', 'null'),
(154, 0, 'SITI RISAH YULIASARI ', 'RIZAL WAHYUDIN ', 'DAHLIA ', 'Bekasi ', '2016-07-29 ', 'perempuan ', 'null', 'null', 'sekolah ', 'null', 'Kp. Warung Pojok ', 'Desa Sukaraya ', 'TK ISLAM TERPADU CAHAYA INDAH ', 'Usia 6 tahun 2 bulan ', 'null'),
(155, 0, 'SYAKILA RAHMA ', 'MAMAN SUHERMAN ', 'ENI SUHAENI ', 'Bekasi ', '2017-03-01 ', 'perempuan ', 'null', 'null', 'sekolah ', 'null', 'Kp. Jagawana ', 'Desa Sukarukun ', 'TK ISLAM TERPADU CAHAYA INDAH ', 'Usia 5 tahun 7 bulan ', 'null'),
(156, 0, 'SYAQUILA AYUDIA INARA ', 'YUDIANA ', 'NUR MUKHOFIFAH ', 'BREBES ', '2016-11-07 ', 'perempuan ', 'null', 'null', 'sekolah ', 'null', 'PERUM DINAR PRATAMA BLOK I NO. 20 ', 'Desa Karang Anyar ', 'TK ISLAM TERPADU CAHAYA INDAH ', 'Usia 5 tahun 11 bulan ', 'null'),
(157, 0, 'TALITA SHAREEN RUMAIZA ', 'WANDI ', 'JAYANTI ', 'Bekasi ', '2017-03-10 ', 'perempuan ', 'null', 'null', 'sekolah ', 'null', 'Perum Pesona Aqilla Raya C3/05 ', 'Desa Sukaraya ', 'TK ISLAM TERPADU CAHAYA INDAH ', 'Usia 5 tahun 7 bulan ', 'null'),
(158, 0, 'TB. AGHA MUAYYAD SYAFA ', 'TB. DIDI ASWADI ', 'FARADINA CAPRITASARI ', 'Bekasi ', '2017-02-16 ', 'laki-laki ', 'null', 'null', 'sekolah ', 'null', 'Perum Griya Sukatani Indah Blok E.1 No. 4 ', 'Desa Sukarukun ', 'TK ISLAM TERPADU CAHAYA INDAH ', 'Usia 5 tahun 7 bulan ', 'null'),
(159, 0, 'YULIA RAMADHANI ', 'MAHPUD MUHAMMAD ', 'MURNI ', 'Bekasi ', '2017-06-11 ', 'perempuan ', 'null', 'null', 'sekolah ', 'null', 'Kp. Cabang Lio ', 'Desa Karangasih ', 'TK ISLAM TERPADU CAHAYA INDAH ', 'Usia 5 tahun 4 bulan ', 'null'),
(160, 0, 'ZALFA NAQIYYA PERMANA ', 'INDRA PERMANA ', 'IRKA FEBRIMURNI ', 'Cikarang ', '2016-07-14 ', 'perempuan ', 'null', 'null', 'sekolah ', 'null', 'Perum Pilar Gading Mas Blok A1 No. 8 ', 'Desa Sukarukun ', 'TK ISLAM TERPADU CAHAYA INDAH ', 'Usia 6 tahun 2 bulan ', 'null'),
(161, 0, 'ZIYA ZULIMA TSURAYYA ', 'ADE SLAMET RAHARJO ', 'NINING ROHANINGSIH ', 'Cirebon ', '2017-06-22 ', 'perempuan ', 'null', 'null', 'sekolah ', 'null', 'Perum Pesona Aqilla Raya Blok C.2 No. 9 ', 'Desa Sukaraya ', 'TK ISLAM TERPADU CAHAYA INDAH ', 'Usia 5 tahun 3 bulan ', 'null'),
(162, 3216200203160003, 'Achmad Azzam Nurwahid ', 'Arifin ', 'Amin Kolipah ', 'Gunung Kidul ', '2016-03-02 ', 'laki-laki ', 'null', 'null', 'sekolah ', 'null', 'Perum BKI B20/2 ', 'Sukahurip ', 'TK BINTANG RABBANI ', '6 ', 'null'),
(163, 3216200203160003, 'Achmad Azzam Nurwahid ', 'Arifin ', 'Amin Kolipah ', 'Gunung Kidul ', '2016-03-02 ', 'laki-laki ', 'null', 'null', 'sekolah ', 'null', 'Perum BKI B20/2 ', 'Sukahurip ', 'TK BINTANG RABBANI ', '6 ', 'null'),
(164, 3216200203160003, 'Achmad Azzam Nurwahid ', 'Arifin ', 'Amin Kolipah ', 'Gunung Kidul ', '2016-03-02 ', 'laki-laki ', 'null', 'null', 'sekolah ', 'null', 'Perum BKI B20/2 ', 'Sukahurip ', 'TK BINTANG RABBANI ', '6 ', 'null'),
(165, 3213235105170001, 'Addara Salsabila ', 'Iwan Wahyudin ', 'Carsinah ', 'Subang ', '2017-05-11 ', 'perempuan ', 'null', 'null', 'sekolah ', 'null', 'Perum BKI B ', 'Sukahurip ', 'TK BINTANG RABBANI ', '5 ', 'null'),
(166, 3216156110170002, 'Adzkia Nur Fatimah ', 'Irwan Saputra ', 'Winda Mailisa ', 'Bekasi ', '2017-10-21 ', 'perempuan ', 'null', 'null', 'sekolah ', 'null', 'Perum BKI F11/23 ', 'Sukahurip ', 'TK BINTANG RABBANI ', '4 ', 'null'),
(167, 3216085306160002, 'Adzkia Saufa Nur Ramadhani ', 'Popi Ade Putra ', 'Desi Ratna Sari ', 'Bekasi ', '2016-06-13 ', 'perempuan ', 'null', 'null', 'sekolah ', 'null', 'Perum BKI D21/18 ', 'Sukahurip ', 'TK BINTANG RABBANI ', '6 ', 'null'),
(168, 3216090806160002, 'Ahmad Afif Ramadhan ', 'Idris Febrianto ', 'Elis Melisa ', 'Bekasi ', '2016-06-08 ', 'laki-laki ', 'null', 'null', 'sekolah ', 'null', 'Perum BKI C18/22 ', 'Sukamanah ', 'TK BINTANG RABBANI ', '6 ', 'null'),
(169, 3216155409160001, 'Akifa Naila Jazzera Adha ', 'Andrew Jazzera ', 'Febriyanti ', 'Bekasi ', '2016-09-14 ', 'perempuan ', 'null', 'null', 'sekolah ', 'null', 'Perum BKI E2/26 ', 'Sukahurip ', 'TK BINTANG RABBANI ', '6 ', 'null'),
(170, 3305060108160001, 'Al Hafizh Ahsan Sauqi ', 'Nur Iksan ', 'Fitri Apriliyani ', 'Kebumen ', '2016-08-01 ', 'laki-laki ', 'null', 'null', 'sekolah ', 'null', 'Perum PGM F11 ', 'Sukarukun ', 'TK BINTANG RABBANI ', '6 ', 'null'),
(171, 3311081606160002, 'Aleno Albarra Rafif Kristianto ', 'Sulih Kritianto ', 'Nonik Hariyani ', 'Bekasi ', '2016-06-16 ', 'laki-laki ', 'null', 'null', 'sekolah ', 'null', 'Perum BKI F15/29 ', 'Sukahurip ', 'TK BINTANG RABBANI ', '6 ', 'null'),
(172, 3305190207160001, 'Alkhalifi Athaya Ramazan ', 'Yuli Hariyanto ', 'Enjis Lindia Sari ', 'Kebumen ', '2016-07-02 ', 'laki-laki ', 'null', 'null', 'sekolah ', 'null', 'Perum BKI F12/11 ', 'Sukahurip ', 'TK BINTANG RABBANI ', '6 ', 'null'),
(173, 3216155501170002, 'Almeera Dzikra Santoso ', 'Heru Santoso ', 'Tri Widiyaningsih ', 'Bekasi ', '2017-01-15 ', 'perempuan ', 'null', 'null', 'sekolah ', 'null', 'Perum BKI A7/47 ', 'Sukamanah ', 'TK BINTANG RABBANI ', '5 ', 'null'),
(174, 3216156305160002, 'Amanda Adifa Rafailah ', 'Andre Octora ', 'Masropah ', 'Bekasi ', '2016-05-23 ', 'perempuan ', 'null', 'null', 'sekolah ', 'null', 'Perum BKI F16/10 ', 'Sukahurip ', 'TK BINTANG RABBANI ', '6 ', 'null'),
(175, 3216062104170013, 'Anisa Azzahra ', ' ', 'Nilam Cahaya ', 'Bekasi ', '2017-04-21 ', 'perempuan ', 'null', 'null', 'sekolah ', 'null', 'Perum TBK A3/7 ', 'Sukahurip ', 'TK BINTANG RABBANI ', '5 ', 'null'),
(176, 3175066009160013, 'Aqila Dwi Adriana ', 'Andri ', 'Puput Istianah ', 'Lamongan ', '2016-09-20 ', 'perempuan ', 'null', 'null', 'sekolah ', 'null', 'Perum BKI F4/28 ', 'Sukahurip ', 'TK BINTANG RABBANI ', '6 ', 'null'),
(177, 3216096201170004, 'Aqila Sabilatul Husna ', 'Rasono ', 'Endra Dwitahru Wardani ', 'Cilacap ', '2017-01-22 ', 'perempuan ', 'null', 'null', 'sekolah ', 'null', 'Perum BKI C15/10 ', 'Sukamanah ', 'TK BINTANG RABBANI ', '5 ', 'null'),
(178, 3216074901160006, 'Aqilah Putri ', 'Ahmad Saugi ', 'Dewi Safitri ', 'Bekasi ', '2016-10-09 ', 'perempuan ', 'null', 'null', 'sekolah ', 'null', 'Perum BKI D22/27 ', 'Sukahurip ', 'TK BINTANG RABBANI ', '6 ', 'null'),
(179, 3216090212160001, 'Arfan Mustafa Yaqub ', 'Hirzin Masruri ', 'Lidia Wardanik ', 'Bekasi ', '2016-12-02 ', 'laki-laki ', 'null', 'null', 'sekolah ', 'null', 'Perum BKI D11/26 ', 'Sukahurip ', 'TK BINTANG RABBANI ', '5 ', 'null'),
(180, 3216151309150006, 'Arshaka Fathir Azzamy ', 'Donny Setiawan ', 'Ertin Fajriyatul Maghfirah ', 'Bekasi ', '2015-09-13 ', 'laki-laki ', 'null', 'null', 'sekolah ', 'null', 'Perum BKI C13/15 ', 'Sukamanah ', 'TK BINTANG RABBANI ', '7 ', 'null'),
(181, 3303141511160002, 'Arzhanka Aji Anggara ', 'Wajar Septiaji ', 'Nur Indah Sari ', 'Purbalingga ', '2016-11-15 ', 'laki-laki ', 'null', 'null', 'sekolah ', 'null', 'Perum BKI F17/24 ', 'Sukahurip ', 'TK BINTANG RABBANI ', '5 ', 'null'),
(182, 3604055903160001, 'Ashilah Zalfa Ayunindya ', 'Hairul Rizal ', 'Badriyah ', 'Serang ', '2016-03-19 ', 'perempuan ', 'null', 'null', 'sekolah ', 'null', 'Perum BKI F15/28 ', 'Sukahurip ', 'TK BINTANG RABBANI ', '6 ', 'null'),
(183, 1807066202170002, 'Ayuka Fauziyah Putri ', 'Tri Handoko ', 'Dian Indah Purnamasari ', 'Selo Rejo ', '2017-02-22 ', 'perempuan ', 'null', 'null', 'sekolah ', 'null', 'Perum BKI B11/2 ', 'Sukahurip ', 'TK BINTANG RABBANI ', '5 ', 'null'),
(184, 3305051804160001, 'Azka Daffa Khalfani ', 'Iwan Junaedi ', 'Dwi Agusnaeni ', 'Kebumen ', '2016-04-18 ', 'laki-laki ', 'null', 'null', 'sekolah ', 'null', 'Perum BKI D18/12 ', 'Sukahurip ', 'TK BINTANG RABBANI ', '6 ', 'null'),
(185, 3305230305160001, 'Azzam Fathul Ghani ', 'Edi Purnomo ', 'Sinta Fepsiyani ', 'Kebumen ', '2016-05-03 ', 'laki-laki ', 'null', 'null', 'sekolah ', 'null', 'Perum BKI D13/7 ', 'Sukahurip ', 'TK BINTANG RABBANI ', '6 ', 'null'),
(186, 3213046106160001, 'Citra Putri Ramadani ', 'Triyo Widodo ', 'Sumiati ', 'Subang ', '2016-06-21 ', 'perempuan ', 'null', 'null', 'sekolah ', 'null', 'Perum BKI D6/23 ', 'Sukahurip ', 'TK BINTANG RABBANI ', '6 ', 'null'),
(187, 3216156008160001, 'Dela Azahra ', 'Ade Suryana ', 'Armila ', 'Bekasi ', '2016-08-20 ', 'perempuan ', 'null', 'null', 'sekolah ', 'null', 'Perum BKI E4/5 ', 'Sukahurip ', 'TK BINTANG RABBANI ', '6 ', 'null'),
(188, 3215266803170004, 'Deva Aila Nurafifah ', 'Mawan Angga Bapera ', 'Riska Ananda ', 'Karawang ', '2017-03-28 ', 'perempuan ', 'null', 'null', 'sekolah ', 'null', 'Perum BKI B11/10 ', 'Sukahurip ', 'TK BINTANG RABBANI ', '5 ', 'null'),
(189, 3327122603160001, 'Devano Putra Prisantara ', 'Supriadi ', 'Siti Maisaroh ', 'Pemalang ', '2016-03-26 ', 'laki-laki ', 'null', 'null', 'sekolah ', 'null', 'Perum BKI H3/32 ', 'Sukahurip ', 'TK BINTANG RABBANI ', '6 ', 'null'),
(190, 3216156002170002, 'Efra Qalesya Vinri ', 'Saman ', 'Herlimawati ', 'Bekasi ', '2017-02-20 ', 'perempuan ', 'null', 'null', 'sekolah ', 'null', 'Perum BKI E4/27 ', 'Sukahurip ', 'TK BINTANG RABBANI ', '5 ', 'null');
INSERT INTO `tb_pendataan` (`id`, `nik_anak`, `nama_anak`, `nama_ayah`, `nama_ibu`, `tempat_lahir`, `tgl_lahir`, `gender`, `telp`, `email`, `status`, `alasan`, `alamat`, `kelurahan`, `nama_sekolah`, `usia`, `foto_kk`) VALUES
(191, 3217056703160005, 'Faranisa Ratifa Hadianto ', 'Deni Tresna Hadianto ', 'Neng Nitia Setia ', 'Bandung Barat ', '2016-03-27 ', 'perempuan ', 'null', 'null', 'sekolah ', 'null', 'Perum BKI B12/27 ', 'Sukahurip ', 'TK BINTANG RABBANI ', '6 ', 'null'),
(192, 3216154802170001, 'Farrah Safira Damia Azzahra ', 'Tri Yanto ', 'Sri Yuliyana ', 'Bekasi ', '2017-02-08 ', 'perempuan ', 'null', 'null', 'sekolah ', 'null', 'Perum BKI E4/11 ', 'Sukahurip ', 'TK BINTANG RABBANI ', '5 ', 'null'),
(193, 3319011208160002, 'Fatih Arzan Mahmud ', 'Mahmudi ', 'Ika Andriyani ', 'Kudus ', '2016-08-12 ', 'laki-laki ', 'null', 'null', 'sekolah ', 'null', 'Perum BKI F8/4 ', 'Sukahurip ', 'TK BINTANG RABBANI ', '6 ', 'null'),
(194, 3216154801170001, 'Fida maulida tsani ariyanto ', 'Inariyanto ', 'Siti khotimah ', 'bekasi ', '2017-01-08 ', 'perempuan ', 'null', 'null', 'sekolah ', 'null', 'perum BKI E4/24 ', 'sukahurip ', 'TK BINTANG RABBANI ', '5 ', 'null'),
(195, 3216044602170001, 'Firda Az-zahra ', 'Edo Rachmat Suhada ', 'Evi Novita ', 'Bekasi ', '2017-02-06 ', 'perempuan ', 'null', 'null', 'sekolah ', 'null', 'Perum BKI ', 'Sukahurip ', 'TK BINTANG RABBANI ', '5 ', 'null'),
(196, 3204287105170001, 'Fitri Malika Surya Ramadhani ', 'Maman Suryaman ', 'Veti Fitriani ', 'Bandung ', '2017-05-31 ', 'perempuan ', 'null', 'null', 'sekolah ', 'null', 'Perum BKI C21/4 ', 'Sukahurip ', 'TK BINTANG RABBANI ', '5 ', 'null'),
(197, 3216141411160001, 'Hamizan Rifqi Pranaja ', 'Deni Prima Citra ', 'Ismawati ', 'Cianjur ', '2016-11-14 ', 'laki-laki ', 'null', 'null', 'sekolah ', 'null', 'Perum BKI D4/23 ', 'Sukahurip ', 'TK BINTANG RABBANI ', '5 ', 'null'),
(198, 3175065502170011, 'Hana Khaylila Maydarifa ', 'Yudha Sanjaya ', 'Mayang Sri Nurwaidah ', 'Subang ', '2017-02-15 ', 'perempuan ', 'null', 'null', 'sekolah ', 'null', 'Perum BKI D8/2 ', 'Sukahurip ', 'TK BINTANG RABBANI ', '5 ', 'null'),
(199, 3216155006170001, 'Hana Nur Inayah ', 'Agus Priyambodo ', 'Mambaul Ulum ', 'Bekasi ', '2017-06-10 ', 'perempuan ', 'null', 'null', 'sekolah ', 'null', 'Perum BKI C2/22 ', 'Sukahurip ', 'TK BINTANG RABBANI ', '5 ', 'null'),
(200, 3216151506180001, 'Harist Mahdani Lubis ', 'Mahdar Kelana Lubis ', 'Nur Ainun ', 'Bekasi ', '2018-06-15 ', 'laki-laki ', 'null', 'null', 'sekolah ', 'null', 'Perum BKI F10/10 ', 'Sukahurip ', 'TK BINTANG RABBANI ', '4 ', 'null'),
(201, 3216151604170005, 'Ibrahim Zulhilmi ', 'Rushendi ', 'Apriyani ', 'Bekasi ', '2017-04-16 ', 'laki-laki ', 'null', 'null', 'sekolah ', 'null', 'Perum BKI B12/18 ', 'Sukahurip ', 'TK BINTANG RABBANI ', '5 ', 'null'),
(202, 3216075206160003, 'Inayah Syifa Aisyah ', 'Anwari Parwanto ', 'Dwi Novanita ', 'Bekasi ', '2016-06-12 ', 'perempuan ', 'null', 'null', 'sekolah ', 'null', 'Perum BKI C7/21 ', 'Sukamanah ', 'TK BINTANG RABBANI ', '6 ', 'null'),
(203, 3172026006160005, 'Kaysa Khoiro Assyakir ', 'Rif\'i Syakirin ', 'Diah Sekar Arum ', 'Bekasi ', '2016-06-20 ', 'perempuan ', 'null', 'null', 'sekolah ', 'null', 'Perum BKI B17/38 ', 'Sukahurip ', 'TK BINTANG RABBANI ', '6 ', 'null'),
(204, 3216152209160001, 'Khansa Anindya Pramoko ', 'Agus Hari Pramoko ', 'Isti Khoiriyati ', 'Bekasi ', '2016-09-22 ', 'perempuan ', 'null', 'null', 'sekolah ', 'null', 'Perum BKI F8/20 ', 'Sukahurip ', 'TK BINTANG RABBANI ', '6 ', 'null'),
(205, 3216154810160001, 'Kinanti Anindya Putri ', 'M. Yayan Hidayat ', 'Dhawin Nuroniyah ', 'Bekasi ', '2016-10-08 ', 'perempuan ', 'null', 'null', 'sekolah ', 'null', 'Perum BKI E3/33 ', 'Sukahurip ', 'TK BINTANG RABBANI ', '6 ', 'null'),
(206, 3174035505160001, 'Maryam Adzkiyah Mufidah ', 'Buchori ', 'Ani Mulia Sari ', 'Jakarta ', '2016-05-15 ', 'perempuan ', 'null', 'null', 'sekolah ', 'null', 'Perum BKI D16/29 ', 'Sukahurip ', 'TK BINTANG RABBANI ', '6 ', 'null'),
(207, 3216151702170001, 'Muhamad Agam Syaefullah ', 'Ina Mariyanto ', 'Siti Nur Faidah ', 'Bekasi ', '2017-02-17 ', 'laki-laki ', 'null', 'null', 'sekolah ', 'null', 'Perum Griya Bagasasi G ', 'Sukarukun ', 'TK BINTANG RABBANI ', '5 ', 'null'),
(208, 3216090406160002, 'Muhamad Alif Al Ikhwan ', 'Iwan ', 'Rostini ', 'Bekasi ', '2016-06-04 ', 'laki-laki ', 'null', 'null', 'sekolah ', 'null', 'Perum BKI D10/26 ', 'Sukahurip ', 'TK BINTANG RABBANI ', '6 ', 'null'),
(209, 3275060309160001, 'Muhammad Aimar Musa ', 'Muhamad Hasan ', 'Depi Natalia ', 'Bekasi ', '2016-09-03 ', 'laki-laki ', 'null', 'null', 'sekolah ', 'null', 'Perum BKI D17/6 ', 'Sukahurip ', 'TK BINTANG RABBANI ', '6 ', 'null'),
(210, 3216130708160001, 'Muhammad Faeyza Syathir ', 'Imam Rosjidi ', 'Siti Hardianti ', 'Bekasi ', '2016-08-07 ', 'laki-laki ', 'null', 'null', 'sekolah ', 'null', 'Perum BKI F7/30 ', 'Sukahurip ', 'TK BINTANG RABBANI ', '6 ', 'null'),
(211, 3671111908160004, 'Muhammad Fatih Rachman ', 'Nurachman ', 'Irma Kurniawati ', 'Bekasi ', '2016-08-19 ', 'laki-laki ', 'null', 'null', 'sekolah ', 'null', 'Peum BKI D17 ', 'Sukahuip ', 'TK BINTANG RABBANI ', '6 ', 'null'),
(212, 3216152111160005, 'Muhammad Irsyad Rabbani ', 'Baban ', 'Nur Ajizah ', 'Bekasi ', '2016-11-21 ', 'laki-laki ', 'null', 'null', 'sekolah ', 'null', 'Perum BKI C22/32 ', 'Sukamanah ', 'TK BINTANG RABBANI ', '5 ', 'null'),
(213, 3274032910160001, 'Muhammad Rasya Athaya ', 'Asep Rahmat Hidayat ', 'Aam Kaminah ', 'Kota Cirebon ', '2016-10-29 ', 'laki-laki ', 'null', 'null', 'sekolah ', 'null', 'Perum BKI D19/11 ', 'Sukahurip ', 'TK BINTANG RABBANI ', '5 ', 'null'),
(214, 3175042808160004, 'Muhammad Shaquille Arsalan ', 'Ari Susanto ', 'Vira Julliani ', 'Bekasi ', '2016-08-28 ', 'laki-laki ', 'null', 'null', 'sekolah ', 'null', 'Perum BKI D17/33 ', 'Sukahurip ', 'TK BINTANG RABBANI ', '6 ', 'null'),
(215, 3329035806170004, 'Nabila Putri Ramadhani ', 'M. Agil Pratama ', 'Ayu Safitri ', 'Brebes ', '2017-06-18 ', 'perempuan ', 'null', 'null', 'sekolah ', 'null', 'Perum BKIH18/19 ', 'Sukahurip ', 'TK BINTANG RABBANI ', '5 ', 'null'),
(216, 3216136809160001, 'Nayla Hana Sofa ', 'Ropik Wijaya ', 'Gris Selly Veronica Widjaja ', 'Bekasi ', '2016-09-28 ', 'perempuan ', 'null', 'null', 'sekolah ', 'null', 'Perum BKI D6/28 ', 'Sukahurip ', 'TK BINTANG RABBANI ', '6 ', 'null'),
(217, 3314134901170002, 'Nazifa Anantafirya Sakhi ', 'Lagiyo ', 'Rini Lestari ', 'Bekasi ', '2017-01-09 ', 'perempuan ', 'null', 'null', 'sekolah ', 'null', 'Perum BKI A5/16 ', 'Sukamanah ', 'TK BINTANG RABBANI ', '5 ', 'null'),
(218, 3216013105160001, 'Nur Aisya Ramadan ', 'Heru Sumantri ', 'Siti Fatimah ', 'Bekasi ', '2016-05-31 ', 'perempuan ', 'null', 'null', 'sekolah ', 'null', 'Perum BKI B11?1A ', 'Sukahurip ', 'TK BINTANG RABBANI ', '6 ', 'null'),
(219, 3172034903160005, 'Rafanda Adeeva Myesha ', 'Sumardy ', 'Hayatun Nupus ', 'Jakarta ', '2016-03-09 ', 'perempuan ', 'null', 'null', 'sekolah ', 'null', 'Perum BKI H5/27 ', 'Sukahurip ', 'TK BINTANG RABBANI ', '6 ', 'null'),
(220, 3216150807160002, 'Rahmat Mondi Meisaputra ', 'Suprihatin ', 'Mei Angelia ', 'Bekasi ', '2016-07-08 ', 'laki-laki ', 'null', 'null', 'sekolah ', 'null', 'Perum BKI D4/25 ', 'Sukahurip ', 'TK BINTANG RABBANI ', '6 ', 'null'),
(221, 3175064307170002, 'Rhea Aqla Maylafaisha ', 'Edison bin zarmawi ', 'Putri anggraeni ', 'Tegal ', '2017-07-03 ', 'perempuan ', 'null', 'null', 'sekolah ', 'null', 'Perum BKI D14/12 ', 'Sukahurip ', 'TK BINTANG RABBANI ', '5 ', 'null'),
(222, 3216150403160003, 'Ridho Ilyasha Mahetta ', 'Saepulloh ', 'Maya Puspita Jayanti ', 'Bekasi ', '2016-03-04 ', 'laki-laki ', 'null', 'null', 'sekolah ', 'null', 'Perum BKI F11/11 ', 'Sukahurip ', 'TK BINTANG RABBANI ', '6 ', 'null'),
(223, 3302100211160001, 'Rifqi Dwi Arvino ', 'Priyono ', 'Partimah ', 'Bekasi ', '2016-11-02 ', 'laki-laki ', 'null', 'null', 'sekolah ', 'null', 'Perum BKI F15/21 ', 'Sukahurip ', 'TK BINTANG RABBANI ', '5 ', 'null'),
(224, 3215184312160001, 'Ririn Lestari ', 'Carli Diatna ', 'Amalia Dwi Lestari ', 'Bekasi ', '2016-12-03 ', 'perempuan ', 'null', 'null', 'sekolah ', 'null', 'Perum BKI B19/4 ', 'Sukahurip ', 'TK BINTANG RABBANI ', '5 ', 'null'),
(225, 3275121907170002, 'Riyadh Salman El Firdaus ', 'Firdaus ', 'Amyl Shofiatun Marhamah M ', 'Bekasi ', '2017-07-19 ', 'laki-laki ', 'null', 'null', 'sekolah ', 'null', 'Perum BKI D17/17 ', 'Sukahurip ', 'TK BINTANG RABBANI ', '5 ', 'null'),
(226, 3216155812160002, 'Syafa Kirani Ashadiya ', 'Abdul Ghofar ', 'Lulu Atunnajiroh ', 'Bekasi ', '2016-12-18 ', 'perempuan ', 'null', 'null', 'sekolah ', 'null', 'Perum BKI A8/7 ', 'Sukahurip ', 'TK BINTANG RABBANI ', '5 ', 'null'),
(227, 3311125811160002, 'Syifa Putri Meliani ', 'Erwin Sutadyo ', 'Lena Yuli Lestari ', 'Kebumen ', '2016-11-18 ', 'perempuan ', 'null', 'null', 'sekolah ', 'null', 'Perum BKI B9/27 ', 'Sukatani ', 'TK BINTANG RABBANI ', '5 ', 'null'),
(228, 0, 'Wahyu Septiana Al Fath ', 'Indriyanto ', 'Susi Rohayati ', 'Karawang ', '2016-09-02 ', 'laki-laki ', 'null', 'null', 'sekolah ', 'null', 'Perum BKI D11/6 ', 'Sukahurip ', 'TK BINTANG RABBANI ', '6 ', 'null'),
(229, 3305080408160001, 'Zhian Praditya Muslimin ', 'Sugiono ', 'Umul Chikmah ', 'Kebumen ', '2016-08-04 ', 'laki-laki ', 'null', 'null', 'sekolah ', 'null', 'Perum BKI B15/17 ', 'Sukahurip ', 'TK BINTANG RABBANI ', '6 ', 'null'),
(230, 3306115201170001, 'Ziea Farzana Saindar ', 'Saino ', 'Darwantini ', 'Purworejo ', '2017-01-12 ', 'perempuan ', 'null', 'null', 'sekolah ', 'null', 'Perum BKI D24/1 ', 'Sukahurip ', 'TK BINTANG RABBANI ', '5 ', 'null'),
(231, 3171085005160006, 'Zuyyin Syarifah ', 'Muhammad Sauqi ', 'Retno Panuntun ', 'Jakarta ', '2016-05-10 ', 'perempuan ', 'null', 'null', 'sekolah ', 'null', 'Perum BKI D20 ', 'Sukahurip ', 'TK BINTANG RABBANI ', '6 ', 'null');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_pendataan`
--
ALTER TABLE `tb_pendataan`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_pendataan`
--
ALTER TABLE `tb_pendataan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=287;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
