-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 18 Sep 2023 pada 00.33
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dniztechno_slimplan`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `absensis`
--

CREATE TABLE `absensis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `KodeKaryawan` varchar(191) NOT NULL,
  `TanggalAbsen` date DEFAULT NULL,
  `WaktuAbsen` time DEFAULT NULL,
  `StatusAbsen` varchar(191) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `alamatpelanggans`
--

CREATE TABLE `alamatpelanggans` (
  `id` int(11) NOT NULL,
  `KodePelanggan` varchar(191) NOT NULL,
  `Alamat` varchar(191) NOT NULL,
  `Kota` varchar(191) NOT NULL,
  `Provinsi` varchar(191) DEFAULT NULL,
  `Negara` varchar(191) DEFAULT NULL,
  `Faks` varchar(191) DEFAULT NULL,
  `Telepon` varchar(191) DEFAULT NULL,
  `NoIndeks` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `alamatpelanggans`
--

INSERT INTO `alamatpelanggans` (`id`, `KodePelanggan`, `Alamat`, `Kota`, `Provinsi`, `Negara`, `Faks`, `Telepon`, `NoIndeks`, `created_at`, `updated_at`) VALUES
(1, 'PLG-001', 'penjaringan', 'surabaya', NULL, NULL, NULL, NULL, 1, '2022-04-14 00:03:56', '2022-04-14 00:03:56'),
(2, 'PLG-015', '-', '-', NULL, NULL, NULL, NULL, 1, '2022-04-28 18:26:07', '2022-04-28 18:26:07'),
(5, 'PLG-005', 'SATELIT INDAH VII EN NO. 07 RT. 008 RW 003, TANJUNGSARI - SUKOMENANGGAL', 'SURABAYA', NULL, NULL, NULL, NULL, 1, '2022-05-14 07:16:07', '2022-05-14 07:16:07'),
(6, 'PLG-016', 'PUCANG ANOM TIMUR 2 NO. 54 RT. 007 RW. 001, KERTAJAYA - GUBENG', 'SURABAYA', NULL, NULL, NULL, NULL, 1, '2022-05-14 07:26:08', '2022-05-14 07:26:08'),
(7, 'PLG-009', 'PULOPANCIKAN II NO. 51, PULOPANCIKAN-GRESIK', 'GRESIK', NULL, NULL, NULL, NULL, 1, '2022-05-14 07:26:21', '2022-05-14 07:26:21'),
(8, 'PLG-017', 'JL, MULYOSARI TENGAH NO. 64 RT. 007 RW. 006, KALISARI - MULYOREJO', 'SURABAYA', NULL, NULL, NULL, NULL, 1, '2022-05-19 08:47:51', '2022-05-19 08:47:51'),
(9, 'PLG-014', 'JASEM I/131C RT 013 RW 002 BULUSIDOKARE, SIDOARJO', 'SIDOARJO', NULL, NULL, NULL, NULL, 1, '2022-05-19 09:12:44', '2022-05-19 09:12:44'),
(10, 'PLG-018', 'BABATAN INDAH A-1/24 RT 001 / RW 004, BABATAN - WIYUNG', 'SURABAYA', NULL, NULL, NULL, NULL, 1, '2022-05-20 04:04:52', '2022-05-20 04:04:52'),
(11, 'PLG-019', 'Veteran', 'Malang', NULL, NULL, NULL, NULL, 1, '2023-03-02 16:49:39', '2023-03-02 16:49:39');

-- --------------------------------------------------------

--
-- Struktur dari tabel `alatbayarkasirs`
--

CREATE TABLE `alatbayarkasirs` (
  `KodeAlatBayarKasir` varchar(191) NOT NULL,
  `UntukPembayaran` varchar(191) NOT NULL,
  `Keterangan` varchar(191) NOT NULL,
  `Total` double NOT NULL,
  `PPN` varchar(191) NOT NULL,
  `NominalPPN` double NOT NULL,
  `Bayar` double NOT NULL,
  `Kembali` double NOT NULL,
  `Ongkir` double NOT NULL,
  `KodeJenisBayar` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `app_menu_user`
--

CREATE TABLE `app_menu_user` (
  `user` varchar(191) NOT NULL,
  `menu` varchar(191) NOT NULL,
  `func` varchar(191) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `app_menu_user`
--

INSERT INTO `app_menu_user` (`user`, `menu`, `func`, `updated_at`) VALUES
('Kasir1', 'Kasir', 'tambah,ubah,hapus,konfirmasi,cetak,return', '2023-01-04 16:36:30');

-- --------------------------------------------------------

--
-- Struktur dari tabel `banks`
--

CREATE TABLE `banks` (
  `NomorRekening` varchar(191) NOT NULL,
  `NamaBank` varchar(191) NOT NULL,
  `Nomor` varchar(191) NOT NULL,
  `Status` varchar(191) NOT NULL,
  `KodeUser` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `detailgajians`
--

CREATE TABLE `detailgajians` (
  `KodeGaji` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `KodeBarang` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `HargaBarang` varchar(10) NOT NULL,
  `JumlahBarang` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `SubtotalHargaBarang` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `EnkripsiKodeGaji` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `detailgolongans`
--

CREATE TABLE `detailgolongans` (
  `KodeGolongan` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `KodeGolItem` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `NamaGolItem` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `HargaGolItem` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `detailgolongans`
--

INSERT INTO `detailgolongans` (`KodeGolongan`, `KodeGolItem`, `NamaGolItem`, `HargaGolItem`, `created_at`, `updated_at`) VALUES
('GOL-01', 'GI-001-01', '-', '0', '2022-04-14 00:07:54', '2022-04-14 00:07:54');

-- --------------------------------------------------------

--
-- Struktur dari tabel `drivers`
--

CREATE TABLE `drivers` (
  `KodeDriver` varchar(191) NOT NULL,
  `NamaDriver` varchar(191) NOT NULL,
  `Kontak` varchar(191) NOT NULL,
  `Status` varchar(191) NOT NULL,
  `KodeKaryawan` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `drivers`
--

INSERT INTO `drivers` (`KodeDriver`, `NamaDriver`, `Kontak`, `Status`, `KodeKaryawan`, `created_at`, `updated_at`) VALUES
('DRV-001', 'Muis', '0838-6664-1516', 'OPN', 'KAR-004', '2022-04-22 20:53:17', '2022-04-22 20:53:17');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ekspedisis`
--

CREATE TABLE `ekspedisis` (
  `ID` int(11) NOT NULL,
  `KodeEkspedisi` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `NamaEkspedisi` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Modal` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `TarifPelanggan` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Status` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Struktur dari tabel `eventlogs`
--

CREATE TABLE `eventlogs` (
  `id` int(11) NOT NULL,
  `idx` bigint(20) NOT NULL DEFAULT 0,
  `KodeUser` varchar(191) NOT NULL,
  `Tanggal` date NOT NULL,
  `Jam` time NOT NULL,
  `Keterangan` varchar(191) NOT NULL,
  `Tipe` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `eventlogs`
--

INSERT INTO `eventlogs` (`id`, `idx`, `KodeUser`, `Tanggal`, `Jam`, `Keterangan`, `Tipe`, `created_at`, `updated_at`) VALUES
(1, 0, 'admin', '2022-04-13', '16:28:42', 'Tambah user may', 'OPN', '2022-04-13 23:28:42', '2022-04-13 23:28:42'),
(2, 0, 'admin', '2022-04-13', '16:28:52', 'Hapus user KASIR', 'OPN', '2022-04-13 23:28:52', '2022-04-13 23:28:52'),
(3, 0, 'admin', '2022-04-13', '16:28:56', 'Hapus user pimpinan', 'OPN', '2022-04-13 23:28:56', '2022-04-13 23:28:56'),
(4, 0, 'admin', '2022-04-13', '16:29:01', 'Hapus user adminlestari', 'OPN', '2022-04-13 23:29:01', '2022-04-13 23:29:01'),
(5, 0, 'admin', '2022-04-13', '16:30:01', 'Reset password admin', 'OPN', '2022-04-13 23:30:01', '2022-04-13 23:30:01'),
(6, 0, 'admin', '2022-04-13', '16:34:29', 'Tambah user rika', 'OPN', '2022-04-13 23:34:29', '2022-04-13 23:34:29'),
(7, 0, 'admin', '2022-04-13', '16:47:58', 'Tambah klasifikasi KLA-001', 'OPN', '2022-04-13 23:47:58', '2022-04-13 23:47:58'),
(8, 0, 'admin', '2022-04-13', '16:48:12', 'Hapus satuan GR', 'OPN', '2022-04-13 23:48:12', '2022-04-13 23:48:12'),
(9, 0, 'admin', '2022-04-13', '16:48:19', 'Hapus satuan KG', 'OPN', '2022-04-13 23:48:19', '2022-04-13 23:48:19'),
(10, 0, 'admin', '2022-04-13', '16:48:25', 'Hapus satuan PCS', 'OPN', '2022-04-13 23:48:25', '2022-04-13 23:48:25'),
(11, 0, 'admin', '2022-04-13', '16:58:49', 'Tambah item FF-001', 'OPN', '2022-04-13 23:58:49', '2022-04-13 23:58:49'),
(12, 0, 'admin', '2022-04-13', '17:02:47', 'Tambah mata uang Rp', 'OPN', '2022-04-14 00:02:47', '2022-04-14 00:02:47'),
(13, 0, 'admin', '2022-04-13', '17:03:56', 'Tambah pelanggan PLG-001', 'OPN', '2022-04-14 00:03:56', '2022-04-14 00:03:56'),
(14, 0, 'admin', '2022-04-13', '17:04:33', 'Tambah supplier SUP-001', 'OPN', '2022-04-14 00:04:33', '2022-04-14 00:04:33'),
(15, 0, 'admin', '2022-04-13', '17:07:54', 'Tambah data golongan GOL-01', 'OPN', '2022-04-14 00:07:54', '2022-04-14 00:07:54'),
(16, 0, 'admin', '2022-04-13', '17:08:16', 'Tambah jabatan Kasir', 'OPN', '2022-04-14 00:08:16', '2022-04-14 00:08:16'),
(17, 0, 'admin', '2022-04-13', '17:08:24', 'Tambah jabatan Driver', 'OPN', '2022-04-14 00:08:24', '2022-04-14 00:08:24'),
(18, 0, 'admin', '2022-04-13', '17:08:42', 'Tambah jabatan Admin Gudang', 'OPN', '2022-04-14 00:08:42', '2022-04-14 00:08:42'),
(19, 0, 'admin', '2022-04-13', '17:08:42', 'Tambah jabatan Admin Gudang', 'OPN', '2022-04-14 00:08:42', '2022-04-14 00:08:42'),
(20, 0, 'admin', '2022-04-13', '17:09:30', 'Tambah karyawan KAR-001', 'OPN', '2022-04-14 00:09:30', '2022-04-14 00:09:30'),
(21, 0, 'admin', '2022-04-13', '17:13:14', 'Tambah gudang GUD-001', 'OPN', '2022-04-14 00:13:14', '2022-04-14 00:13:14'),
(22, 0, 'admin', '2022-04-13', '17:18:08', 'Tambah rak 11', 'OPN', '2022-04-14 00:18:08', '2022-04-14 00:18:08'),
(23, 0, 'admin', '2022-04-13', '17:19:14', 'Update item FF-001', 'OPN', '2022-04-14 00:19:14', '2022-04-14 00:19:14'),
(24, 0, 'admin', '2022-04-13', '17:19:57', 'Tambah satuan SAK', 'OPN', '2022-04-14 00:19:57', '2022-04-14 00:19:57'),
(25, 0, 'admin', '2022-04-13', '17:26:31', 'Hapus item FF-001', 'OPN', '2022-04-14 00:26:31', '2022-04-14 00:26:31'),
(26, 0, 'admin', '2022-04-13', '17:27:01', 'Tambah klasifikasi KLA-002', 'OPN', '2022-04-14 00:27:01', '2022-04-14 00:27:01'),
(27, 0, 'admin', '2022-04-13', '17:27:56', 'Tambah item BB-001', 'OPN', '2022-04-14 00:27:56', '2022-04-14 00:27:56'),
(28, 0, 'admin', '2022-04-13', '17:29:50', 'Tambah pemesanan pembelian PO-122040001', 'OPN', '2022-04-14 00:29:50', '2022-04-14 00:29:50'),
(29, 0, 'admin', '2022-04-13', '17:30:03', 'Konfirmasi pemesanan pembelian PO-122040001', 'OPN', '2022-04-14 00:30:03', '2022-04-14 00:30:03'),
(30, 0, 'admin', '2022-04-21', '21:42:39', 'Hapus pelanggan PLG-002', 'OPN', '2022-04-22 04:42:39', '2022-04-22 04:42:39'),
(31, 0, 'may', '2022-04-22', '13:34:27', 'Hapus item BB-001', 'OPN', '2022-04-22 20:34:27', '2022-04-22 20:34:27'),
(32, 0, 'may', '2022-04-22', '13:39:51', 'Tambah item FF-002', 'OPN', '2022-04-22 20:39:51', '2022-04-22 20:39:51'),
(33, 0, 'may', '2022-04-22', '13:40:26', 'Tambah item FF-003', 'OPN', '2022-04-22 20:40:26', '2022-04-22 20:40:26'),
(34, 0, 'may', '2022-04-22', '13:41:03', 'Tambah item FF-004', 'OPN', '2022-04-22 20:41:03', '2022-04-22 20:41:03'),
(35, 0, 'may', '2022-04-22', '13:41:32', 'Tambah item FF-005', 'OPN', '2022-04-22 20:41:32', '2022-04-22 20:41:32'),
(36, 0, 'may', '2022-04-22', '13:41:55', 'Tambah item FF-006', 'OPN', '2022-04-22 20:41:55', '2022-04-22 20:41:55'),
(37, 0, 'may', '2022-04-22', '13:42:49', 'Tambah item FF-007', 'OPN', '2022-04-22 20:42:49', '2022-04-22 20:42:49'),
(38, 0, 'may', '2022-04-22', '13:43:20', 'Tambah item FF-008', 'OPN', '2022-04-22 20:43:20', '2022-04-22 20:43:20'),
(39, 0, 'may', '2022-04-22', '13:44:32', 'Tambah item FF-009', 'OPN', '2022-04-22 20:44:32', '2022-04-22 20:44:32'),
(40, 0, 'may', '2022-04-22', '13:45:00', 'Tambah item FF-0010', 'OPN', '2022-04-22 20:45:00', '2022-04-22 20:45:00'),
(41, 0, 'may', '2022-04-22', '13:45:47', 'Tambah item FF-011', 'OPN', '2022-04-22 20:45:47', '2022-04-22 20:45:47'),
(42, 0, 'may', '2022-04-22', '13:46:04', 'Update ppn ', 'OPN', '2022-04-22 20:46:04', '2022-04-22 20:46:04'),
(43, 0, 'may', '2022-04-22', '13:46:32', 'Tambah jabatan Admin Gudang', 'OPN', '2022-04-22 20:46:32', '2022-04-22 20:46:32'),
(44, 0, 'may', '2022-04-22', '13:47:34', 'Tambah jabatan Mandor', 'OPN', '2022-04-22 20:47:34', '2022-04-22 20:47:34'),
(45, 0, 'may', '2022-04-22', '13:48:29', 'Tambah jabatan Produksi', 'OPN', '2022-04-22 20:48:29', '2022-04-22 20:48:29'),
(46, 0, 'may', '2022-04-22', '13:50:44', 'Tambah karyawan KAR-002', 'OPN', '2022-04-22 20:50:44', '2022-04-22 20:50:44'),
(47, 0, 'may', '2022-04-22', '13:50:54', 'Update karyawan KAR-001', 'OPN', '2022-04-22 20:50:54', '2022-04-22 20:50:54'),
(48, 0, 'may', '2022-04-22', '13:51:45', 'Tambah karyawan KAR-003', 'OPN', '2022-04-22 20:51:45', '2022-04-22 20:51:45'),
(49, 0, 'may', '2022-04-22', '13:53:17', 'Tambah karyawan KAR-004', 'OPN', '2022-04-22 20:53:17', '2022-04-22 20:53:17'),
(50, 0, 'may', '2022-04-22', '13:53:30', 'Update karyawan KAR-003', 'OPN', '2022-04-22 20:53:30', '2022-04-22 20:53:30'),
(51, 0, 'may', '2022-04-22', '13:57:44', 'Tambah karyawan KAR-005', 'OPN', '2022-04-22 20:57:44', '2022-04-22 20:57:44'),
(52, 0, 'may', '2022-04-22', '13:59:08', 'Tambah karyawan KAR-006', 'OPN', '2022-04-22 20:59:08', '2022-04-22 20:59:08'),
(53, 0, 'may', '2022-04-22', '14:00:20', 'Tambah karyawan KAR-007', 'OPN', '2022-04-22 21:00:20', '2022-04-22 21:00:20'),
(54, 0, 'may', '2022-04-22', '14:01:02', 'Update karyawan KAR-004', 'OPN', '2022-04-22 21:01:02', '2022-04-22 21:01:02'),
(55, 0, 'may', '2022-04-22', '14:01:35', 'Update karyawan KAR-004', 'OPN', '2022-04-22 21:01:35', '2022-04-22 21:01:35'),
(56, 0, 'may', '2022-04-22', '14:01:49', 'Update karyawan KAR-007', 'OPN', '2022-04-22 21:01:49', '2022-04-22 21:01:49'),
(57, 0, 'may', '2022-04-22', '14:03:43', 'Tambah karyawan KAR-008', 'OPN', '2022-04-22 21:03:43', '2022-04-22 21:03:43'),
(58, 0, 'may', '2022-04-22', '14:05:21', 'Tambah karyawan KAR-009', 'OPN', '2022-04-22 21:05:21', '2022-04-22 21:05:21'),
(59, 0, 'may', '2022-04-22', '14:06:29', 'Tambah karyawan KAR-010', 'OPN', '2022-04-22 21:06:29', '2022-04-22 21:06:29'),
(60, 0, 'may', '2022-04-22', '14:07:43', 'Tambah karyawan KAR-011', 'OPN', '2022-04-22 21:07:43', '2022-04-22 21:07:43'),
(61, 0, 'may', '2022-04-22', '14:09:42', 'Tambah karyawan KAR-012', 'OPN', '2022-04-22 21:09:42', '2022-04-22 21:09:42'),
(62, 0, 'may', '2022-04-22', '14:10:36', 'Tambah karyawan KAR-013', 'OPN', '2022-04-22 21:10:36', '2022-04-22 21:10:36'),
(63, 0, 'may', '2022-04-23', '13:34:41', 'Tambah pemesanan penjualan SO-022040001', 'OPN', '2022-04-23 20:34:41', '2022-04-23 20:34:41'),
(64, 0, 'may', '2022-04-23', '13:34:48', 'Konfirmasi pemesanan penjualan SO-022040001', 'OPN', '2022-04-23 20:34:48', '2022-04-23 20:34:48'),
(65, 0, 'may', '2022-04-23', '13:40:54', 'Tambah surat jalan SJ-022040001', 'OPN', '2022-04-23 20:40:54', '2022-04-23 20:40:54'),
(66, 0, 'may', '2022-04-23', '14:14:38', 'Tambah stok masuk SLM-22040001', 'OPN', '2022-04-23 21:14:38', '2022-04-23 21:14:38'),
(67, 0, 'may', '2022-04-23', '14:15:11', 'Konfirmasi surat jalan SJ-022040001', 'OPN', '2022-04-23 21:15:11', '2022-04-23 21:15:11'),
(68, 0, 'may', '2022-04-23', '14:16:11', 'Print invoice piutang IVP-022040001', 'OPN', '2022-04-23 21:16:11', '2022-04-23 21:16:11'),
(69, 0, 'admin', '2022-04-25', '10:22:59', 'Reset password admin', 'OPN', '2022-04-25 17:22:59', '2022-04-25 17:22:59'),
(70, 0, 'may', '2022-04-26', '09:10:42', 'Tambah pemesanan penjualan SO-022040002', 'OPN', '2022-04-26 16:10:42', '2022-04-26 16:10:42'),
(71, 0, 'may', '2022-04-26', '09:10:49', 'Konfirmasi pemesanan penjualan SO-022040002', 'OPN', '2022-04-26 16:10:49', '2022-04-26 16:10:49'),
(72, 0, 'may', '2022-04-26', '09:13:02', 'Tambah surat jalan SJ-022040002', 'OPN', '2022-04-26 16:13:02', '2022-04-26 16:13:02'),
(73, 0, 'may', '2022-04-26', '09:13:07', 'Konfirmasi surat jalan SJ-022040002', 'OPN', '2022-04-26 16:13:07', '2022-04-26 16:13:07'),
(74, 0, 'may', '2022-04-26', '09:13:23', 'Print surat jalan SJ-022040002', 'OPN', '2022-04-26 16:13:23', '2022-04-26 16:13:23'),
(75, 0, 'may', '2022-04-26', '09:18:06', 'Tambah pemesanan penjualan SO-022040003', 'OPN', '2022-04-26 16:18:06', '2022-04-26 16:18:06'),
(76, 0, 'may', '2022-04-26', '09:18:12', 'Konfirmasi pemesanan penjualan SO-022040003', 'OPN', '2022-04-26 16:18:12', '2022-04-26 16:18:12'),
(77, 0, 'may', '2022-04-26', '09:18:58', 'Tambah surat jalan SJ-022040003', 'OPN', '2022-04-26 16:18:58', '2022-04-26 16:18:58'),
(78, 0, 'may', '2022-04-26', '09:19:07', 'Konfirmasi surat jalan SJ-022040003', 'OPN', '2022-04-26 16:19:07', '2022-04-26 16:19:07'),
(79, 0, 'may', '2022-04-26', '09:19:16', 'Print surat jalan SJ-022040003', 'OPN', '2022-04-26 16:19:16', '2022-04-26 16:19:16'),
(80, 0, 'may', '2022-04-26', '09:23:15', 'Tambah pemesanan penjualan SO-022040004', 'OPN', '2022-04-26 16:23:15', '2022-04-26 16:23:15'),
(81, 0, 'may', '2022-04-26', '09:23:20', 'Konfirmasi pemesanan penjualan SO-022040004', 'OPN', '2022-04-26 16:23:20', '2022-04-26 16:23:20'),
(82, 0, 'may', '2022-04-26', '09:24:10', 'Tambah surat jalan SJ-022040004', 'OPN', '2022-04-26 16:24:10', '2022-04-26 16:24:10'),
(83, 0, 'may', '2022-04-26', '09:24:15', 'Konfirmasi surat jalan SJ-022040004', 'OPN', '2022-04-26 16:24:15', '2022-04-26 16:24:15'),
(84, 0, 'may', '2022-04-26', '09:24:26', 'Print surat jalan SJ-022040004', 'OPN', '2022-04-26 16:24:26', '2022-04-26 16:24:26'),
(85, 0, 'may', '2022-04-26', '09:57:34', 'Print invoice piutang IVP-022040001', 'OPN', '2022-04-26 16:57:34', '2022-04-26 16:57:34'),
(86, 0, 'may', '2022-04-26', '09:57:41', 'Print invoice piutang IVP-022040002', 'OPN', '2022-04-26 16:57:41', '2022-04-26 16:57:41'),
(87, 0, 'may', '2022-04-26', '09:57:47', 'Print invoice piutang IVP-022040003', 'OPN', '2022-04-26 16:57:47', '2022-04-26 16:57:47'),
(88, 0, 'may', '2022-04-26', '10:04:33', 'Print invoice piutang IVP-022040004', 'OPN', '2022-04-26 17:04:33', '2022-04-26 17:04:33'),
(89, 0, 'may', '2022-04-26', '10:37:13', 'Hapus pemesanan penjualan SO-022040004', 'OPN', '2022-04-26 17:37:13', '2022-04-26 17:37:13'),
(90, 0, 'may', '2022-04-26', '10:37:17', 'Hapus pemesanan penjualan SO-022040003', 'OPN', '2022-04-26 17:37:17', '2022-04-26 17:37:17'),
(91, 0, 'may', '2022-04-26', '10:37:22', 'Hapus pemesanan penjualan SO-022040002', 'OPN', '2022-04-26 17:37:22', '2022-04-26 17:37:22'),
(92, 0, 'may', '2022-04-26', '11:11:07', 'Tambah pemesanan penjualan SO-022040005', 'OPN', '2022-04-26 18:11:07', '2022-04-26 18:11:07'),
(93, 0, 'may', '2022-04-26', '11:11:30', 'Konfirmasi pemesanan penjualan SO-022040005', 'OPN', '2022-04-26 18:11:30', '2022-04-26 18:11:30'),
(94, 0, 'may', '2022-04-26', '11:12:31', 'Tambah surat jalan SJ-022040001', 'OPN', '2022-04-26 18:12:31', '2022-04-26 18:12:31'),
(95, 0, 'may', '2022-04-26', '11:12:36', 'Konfirmasi surat jalan SJ-022040001', 'OPN', '2022-04-26 18:12:36', '2022-04-26 18:12:36'),
(96, 0, 'may', '2022-04-26', '11:12:45', 'Print invoice piutang IVP-022040001', 'OPN', '2022-04-26 18:12:45', '2022-04-26 18:12:45'),
(97, 0, 'may', '2022-04-26', '11:17:42', 'Tambah pemesanan penjualan SO-022040006', 'OPN', '2022-04-26 18:17:42', '2022-04-26 18:17:42'),
(98, 0, 'may', '2022-04-26', '11:17:46', 'Konfirmasi pemesanan penjualan SO-022040006', 'OPN', '2022-04-26 18:17:46', '2022-04-26 18:17:46'),
(99, 0, 'may', '2022-04-26', '11:18:19', 'Tambah surat jalan SJ-022040002', 'OPN', '2022-04-26 18:18:19', '2022-04-26 18:18:19'),
(100, 0, 'may', '2022-04-26', '11:18:23', 'Konfirmasi surat jalan SJ-022040002', 'OPN', '2022-04-26 18:18:23', '2022-04-26 18:18:23'),
(101, 0, 'may', '2022-04-26', '11:18:36', 'Print invoice piutang IVP-022040002', 'OPN', '2022-04-26 18:18:36', '2022-04-26 18:18:36'),
(102, 0, 'may', '2022-04-26', '11:22:31', 'Tambah pemesanan penjualan SO-022040007', 'OPN', '2022-04-26 18:22:31', '2022-04-26 18:22:31'),
(103, 0, 'may', '2022-04-26', '11:22:36', 'Konfirmasi pemesanan penjualan SO-022040007', 'OPN', '2022-04-26 18:22:36', '2022-04-26 18:22:36'),
(104, 0, 'may', '2022-04-26', '11:23:36', 'Tambah surat jalan SJ-022040003', 'OPN', '2022-04-26 18:23:36', '2022-04-26 18:23:36'),
(105, 0, 'may', '2022-04-26', '11:23:40', 'Konfirmasi surat jalan SJ-022040003', 'OPN', '2022-04-26 18:23:40', '2022-04-26 18:23:40'),
(106, 0, 'may', '2022-04-26', '11:24:04', 'Print surat jalan SJ-022040003', 'OPN', '2022-04-26 18:24:04', '2022-04-26 18:24:04'),
(107, 0, 'may', '2022-04-26', '11:24:50', 'Print invoice piutang IVP-022040003', 'OPN', '2022-04-26 18:24:50', '2022-04-26 18:24:50'),
(108, 0, 'may', '2022-04-27', '11:24:18', 'Tambah pemesanan penjualan SO-022040008', 'OPN', '2022-04-27 18:24:18', '2022-04-27 18:24:18'),
(109, 0, 'may', '2022-04-27', '11:24:23', 'Konfirmasi pemesanan penjualan SO-022040008', 'OPN', '2022-04-27 18:24:23', '2022-04-27 18:24:23'),
(110, 0, 'may', '2022-04-27', '11:25:16', 'Hapus pemesanan penjualan SO-022040008', 'OPN', '2022-04-27 18:25:16', '2022-04-27 18:25:16'),
(111, 0, 'may', '2022-04-27', '11:45:18', 'Tambah pemesanan penjualan SO-022040009', 'OPN', '2022-04-27 18:45:18', '2022-04-27 18:45:18'),
(112, 0, 'may', '2022-04-27', '11:45:25', 'Konfirmasi pemesanan penjualan SO-022040009', 'OPN', '2022-04-27 18:45:25', '2022-04-27 18:45:25'),
(113, 0, 'may', '2022-04-27', '11:46:25', 'Tambah surat jalan SJ-022040004', 'OPN', '2022-04-27 18:46:25', '2022-04-27 18:46:25'),
(114, 0, 'may', '2022-04-27', '11:46:29', 'Konfirmasi surat jalan SJ-022040004', 'OPN', '2022-04-27 18:46:29', '2022-04-27 18:46:29'),
(115, 0, 'may', '2022-04-27', '11:46:37', 'Print invoice piutang IVP-022040004', 'OPN', '2022-04-27 18:46:37', '2022-04-27 18:46:37'),
(116, 0, 'may', '2022-04-28', '10:58:34', 'Tambah pemesanan penjualan SO-022040010', 'OPN', '2022-04-28 17:58:34', '2022-04-28 17:58:34'),
(117, 0, 'may', '2022-04-28', '10:58:40', 'Konfirmasi pemesanan penjualan SO-022040010', 'OPN', '2022-04-28 17:58:40', '2022-04-28 17:58:40'),
(118, 0, 'may', '2022-04-28', '11:00:24', 'Tambah surat jalan SJ-022040005', 'OPN', '2022-04-28 18:00:24', '2022-04-28 18:00:24'),
(119, 0, 'may', '2022-04-28', '11:00:29', 'Konfirmasi surat jalan SJ-022040005', 'OPN', '2022-04-28 18:00:29', '2022-04-28 18:00:29'),
(120, 0, 'may', '2022-04-28', '11:00:58', 'Print invoice piutang IVP-022040005', 'OPN', '2022-04-28 18:00:58', '2022-04-28 18:00:58'),
(121, 0, 'rika', '2022-04-28', '11:21:15', 'Tambah pemesanan penjualan SO-022040011', 'OPN', '2022-04-28 18:21:15', '2022-04-28 18:21:15'),
(122, 0, 'rika', '2022-04-28', '11:21:26', 'Konfirmasi pemesanan penjualan SO-022040011', 'OPN', '2022-04-28 18:21:26', '2022-04-28 18:21:26'),
(123, 0, 'rika', '2022-04-28', '11:23:20', 'Tambah surat jalan SJ-022040006', 'OPN', '2022-04-28 18:23:20', '2022-04-28 18:23:20'),
(124, 0, 'rika', '2022-04-28', '11:23:28', 'Konfirmasi surat jalan SJ-022040006', 'OPN', '2022-04-28 18:23:28', '2022-04-28 18:23:28'),
(125, 0, 'rika', '2022-04-28', '11:24:20', 'Print invoice piutang IVP-022040006', 'OPN', '2022-04-28 18:24:20', '2022-04-28 18:24:20'),
(126, 0, 'rika', '2022-04-28', '11:26:07', 'Tambah pelanggan PLG-015', 'OPN', '2022-04-28 18:26:07', '2022-04-28 18:26:07'),
(127, 0, 'rika', '2022-04-28', '11:29:50', 'Tambah pemesanan penjualan SO-022040012', 'OPN', '2022-04-28 18:29:50', '2022-04-28 18:29:50'),
(128, 0, 'rika', '2022-04-28', '11:30:00', 'Konfirmasi pemesanan penjualan SO-022040012', 'OPN', '2022-04-28 18:30:00', '2022-04-28 18:30:00'),
(129, 0, 'rika', '2022-04-28', '11:31:16', 'Tambah surat jalan SJ-022040007', 'OPN', '2022-04-28 18:31:16', '2022-04-28 18:31:16'),
(130, 0, 'rika', '2022-04-28', '11:31:41', 'Konfirmasi surat jalan SJ-022040007', 'OPN', '2022-04-28 18:31:41', '2022-04-28 18:31:41'),
(131, 0, 'rika', '2022-04-28', '11:31:53', 'Print invoice piutang IVP-022040007', 'OPN', '2022-04-28 18:31:53', '2022-04-28 18:31:53'),
(132, 0, 'rika', '2022-04-28', '11:32:57', 'Print surat jalan SJ-022040007', 'OPN', '2022-04-28 18:32:57', '2022-04-28 18:32:57'),
(133, 0, 'rika', '2022-04-28', '11:33:56', 'Print surat jalan SJ-022040006', 'OPN', '2022-04-28 18:33:56', '2022-04-28 18:33:56'),
(134, 0, 'rika', '2022-04-28', '12:23:57', 'Tambah pemesanan penjualan SO-022040013', 'OPN', '2022-04-28 19:23:57', '2022-04-28 19:23:57'),
(135, 0, 'rika', '2022-04-28', '12:24:05', 'Konfirmasi pemesanan penjualan SO-022040013', 'OPN', '2022-04-28 19:24:05', '2022-04-28 19:24:05'),
(136, 0, 'rika', '2022-04-28', '12:25:16', 'Tambah surat jalan SJ-022040008', 'OPN', '2022-04-28 19:25:16', '2022-04-28 19:25:16'),
(137, 0, 'rika', '2022-04-28', '12:25:21', 'Konfirmasi surat jalan SJ-022040008', 'OPN', '2022-04-28 19:25:21', '2022-04-28 19:25:21'),
(138, 0, 'rika', '2022-04-28', '12:25:40', 'Print surat jalan SJ-022040008', 'OPN', '2022-04-28 19:25:40', '2022-04-28 19:25:40'),
(139, 0, 'rika', '2022-04-28', '12:26:38', 'Print invoice piutang IVP-022040008', 'OPN', '2022-04-28 19:26:38', '2022-04-28 19:26:38'),
(140, 0, 'rika', '2022-05-06', '11:09:25', 'Tambah pemesanan penjualan SO-022050001', 'OPN', '2022-05-06 18:09:25', '2022-05-06 18:09:25'),
(141, 0, 'rika', '2022-05-06', '11:10:12', 'Konfirmasi pemesanan penjualan SO-022050001', 'OPN', '2022-05-06 18:10:12', '2022-05-06 18:10:12'),
(142, 0, 'rika', '2022-05-06', '11:19:16', 'Tambah pemesanan penjualan SO-022050002', 'OPN', '2022-05-06 18:19:16', '2022-05-06 18:19:16'),
(143, 0, 'rika', '2022-05-06', '11:19:29', 'Hapus pemesanan penjualan SO-022050001', 'OPN', '2022-05-06 18:19:29', '2022-05-06 18:19:29'),
(144, 0, 'rika', '2022-05-06', '11:23:44', 'Tambah pemesanan penjualan SO-022050003', 'OPN', '2022-05-06 18:23:44', '2022-05-06 18:23:44'),
(145, 0, 'rika', '2022-05-06', '11:26:43', 'Tambah pemesanan penjualan SO-022050004', 'OPN', '2022-05-06 18:26:43', '2022-05-06 18:26:43'),
(146, 0, 'rika', '2022-05-06', '11:29:02', 'Update pemesanan penjualan SO-022050003', 'OPN', '2022-05-06 18:29:02', '2022-05-06 18:29:02'),
(147, 0, 'rika', '2022-05-06', '11:29:27', 'Update pemesanan penjualan SO-022050004', 'OPN', '2022-05-06 18:29:27', '2022-05-06 18:29:27'),
(148, 0, 'rika', '2022-05-06', '11:29:44', 'Konfirmasi pemesanan penjualan SO-022050003', 'OPN', '2022-05-06 18:29:44', '2022-05-06 18:29:44'),
(149, 0, 'rika', '2022-05-06', '11:29:48', 'Konfirmasi pemesanan penjualan SO-022050004', 'OPN', '2022-05-06 18:29:48', '2022-05-06 18:29:48'),
(150, 0, 'rika', '2022-05-06', '11:29:53', 'Konfirmasi pemesanan penjualan SO-022050002', 'OPN', '2022-05-06 18:29:53', '2022-05-06 18:29:53'),
(151, 0, 'rika', '2022-05-06', '11:34:26', 'Tambah surat jalan SJ-022050001', 'OPN', '2022-05-06 18:34:26', '2022-05-06 18:34:26'),
(152, 0, 'rika', '2022-05-06', '11:34:34', 'Konfirmasi surat jalan SJ-022050001', 'OPN', '2022-05-06 18:34:34', '2022-05-06 18:34:34'),
(153, 0, 'rika', '2022-05-06', '11:42:35', 'Print pemesanan penjualan SO-022050004', 'OPN', '2022-05-06 18:42:35', '2022-05-06 18:42:35'),
(154, 0, 'rika', '2022-05-06', '11:44:08', 'Print pemesanan penjualan SO-022050003', 'OPN', '2022-05-06 18:44:08', '2022-05-06 18:44:08'),
(155, 0, 'rika', '2022-05-06', '11:44:50', 'Print pemesanan penjualan SO-022050002', 'OPN', '2022-05-06 18:44:50', '2022-05-06 18:44:50'),
(156, 0, 'rika', '2022-05-06', '11:45:30', 'Print surat jalan SJ-022050001', 'OPN', '2022-05-06 18:45:30', '2022-05-06 18:45:30'),
(157, 0, 'rika', '2022-05-06', '11:53:35', 'Print invoice piutang IVP-022050001', 'OPN', '2022-05-06 18:53:35', '2022-05-06 18:53:35'),
(158, 0, 'rika', '2022-05-06', '12:01:23', 'Tambah surat jalan SJ-022050002', 'OPN', '2022-05-06 19:01:23', '2022-05-06 19:01:23'),
(159, 0, 'rika', '2022-05-06', '12:02:14', 'Tambah surat jalan SJ-022050003', 'OPN', '2022-05-06 19:02:14', '2022-05-06 19:02:14'),
(160, 0, 'rika', '2022-05-06', '12:02:43', 'Konfirmasi surat jalan SJ-022050003', 'OPN', '2022-05-06 19:02:43', '2022-05-06 19:02:43'),
(161, 0, 'rika', '2022-05-06', '12:02:47', 'Konfirmasi surat jalan SJ-022050002', 'OPN', '2022-05-06 19:02:47', '2022-05-06 19:02:47'),
(162, 0, 'rika', '2022-05-06', '12:02:57', 'Print invoice piutang IVP-022050003', 'OPN', '2022-05-06 19:02:57', '2022-05-06 19:02:57'),
(163, 0, 'rika', '2022-05-06', '12:03:22', 'Print invoice piutang IVP-022050002', 'OPN', '2022-05-06 19:03:22', '2022-05-06 19:03:22'),
(164, 0, 'rika', '2022-05-06', '12:07:19', 'Hapus pemesanan penjualan SO-022050004', 'OPN', '2022-05-06 19:07:19', '2022-05-06 19:07:19'),
(165, 0, 'rika', '2022-05-06', '12:09:34', 'Tambah pemesanan penjualan SO-122050001', 'OPN', '2022-05-06 19:09:34', '2022-05-06 19:09:34'),
(166, 0, 'rika', '2022-05-06', '12:09:41', 'Konfirmasi pemesanan penjualan SO-122050001', 'OPN', '2022-05-06 19:09:41', '2022-05-06 19:09:41'),
(167, 0, 'rika', '2022-05-06', '12:10:16', 'Hapus surat jalan SJ-022050002', 'OPN', '2022-05-06 19:10:16', '2022-05-06 19:10:16'),
(168, 0, 'rika', '2022-05-06', '12:11:12', 'Tambah surat jalan SJ-122050001', 'OPN', '2022-05-06 19:11:12', '2022-05-06 19:11:12'),
(169, 0, 'rika', '2022-05-06', '12:12:07', 'Konfirmasi surat jalan SJ-122050001', 'OPN', '2022-05-06 19:12:07', '2022-05-06 19:12:07'),
(170, 0, 'rika', '2022-05-06', '12:12:25', 'Print invoice piutang IVP-122050001', 'OPN', '2022-05-06 19:12:25', '2022-05-06 19:12:25'),
(171, 0, 'rika', '2022-05-06', '12:13:51', 'Hapus pemesanan penjualan SO-122050001', 'OPN', '2022-05-06 19:13:51', '2022-05-06 19:13:51'),
(172, 0, 'rika', '2022-05-06', '12:16:28', 'Tambah pemesanan penjualan SO-022050005', 'OPN', '2022-05-06 19:16:28', '2022-05-06 19:16:28'),
(173, 0, 'rika', '2022-05-06', '12:16:38', 'Hapus surat jalan SJ-022050002', 'OPN', '2022-05-06 19:16:38', '2022-05-06 19:16:38'),
(174, 0, 'rika', '2022-05-06', '12:16:57', 'Konfirmasi pemesanan penjualan SO-022050005', 'OPN', '2022-05-06 19:16:57', '2022-05-06 19:16:57'),
(175, 0, 'rika', '2022-05-06', '12:18:49', 'Tambah surat jalan SJ-022050004', 'OPN', '2022-05-06 19:18:49', '2022-05-06 19:18:49'),
(176, 0, 'rika', '2022-05-06', '12:18:56', 'Konfirmasi surat jalan SJ-022050004', 'OPN', '2022-05-06 19:18:56', '2022-05-06 19:18:56'),
(177, 0, 'rika', '2022-05-06', '12:19:05', 'Print invoice piutang IVP-022050004', 'OPN', '2022-05-06 19:19:05', '2022-05-06 19:19:05'),
(178, 0, 'rika', '2022-05-06', '12:21:22', 'Hapus surat jalan SJ-022050002', 'OPN', '2022-05-06 19:21:22', '2022-05-06 19:21:22'),
(179, 0, 'rika', '2022-05-06', '12:40:23', 'Hapus surat jalan SJ-022050002', 'OPN', '2022-05-06 19:40:23', '2022-05-06 19:40:23'),
(180, 0, 'rika', '2022-05-09', '09:51:25', 'Tambah pemesanan penjualan SO-022050006', 'OPN', '2022-05-09 16:51:25', '2022-05-09 16:51:25'),
(181, 0, 'rika', '2022-05-09', '09:54:00', 'Tambah pemesanan penjualan SO-022050007', 'OPN', '2022-05-09 16:54:00', '2022-05-09 16:54:00'),
(182, 0, 'rika', '2022-05-09', '09:56:42', 'Tambah pemesanan penjualan SO-022050008', 'OPN', '2022-05-09 16:56:42', '2022-05-09 16:56:42'),
(183, 0, 'rika', '2022-05-09', '09:57:27', 'Konfirmasi pemesanan penjualan SO-022050007', 'OPN', '2022-05-09 16:57:27', '2022-05-09 16:57:27'),
(184, 0, 'rika', '2022-05-09', '09:57:34', 'Konfirmasi pemesanan penjualan SO-022050008', 'OPN', '2022-05-09 16:57:34', '2022-05-09 16:57:34'),
(185, 0, 'rika', '2022-05-09', '09:57:39', 'Konfirmasi pemesanan penjualan SO-022050006', 'OPN', '2022-05-09 16:57:39', '2022-05-09 16:57:39'),
(186, 0, 'rika', '2022-05-09', '09:59:41', 'Tambah surat jalan SJ-022050005', 'OPN', '2022-05-09 16:59:41', '2022-05-09 16:59:41'),
(187, 0, 'rika', '2022-05-09', '10:00:56', 'Tambah surat jalan SJ-022050006', 'OPN', '2022-05-09 17:00:56', '2022-05-09 17:00:56'),
(188, 0, 'rika', '2022-05-09', '10:01:36', 'Tambah surat jalan SJ-022050007', 'OPN', '2022-05-09 17:01:36', '2022-05-09 17:01:36'),
(189, 0, 'rika', '2022-05-09', '10:01:46', 'Konfirmasi surat jalan SJ-022050007', 'OPN', '2022-05-09 17:01:46', '2022-05-09 17:01:46'),
(190, 0, 'rika', '2022-05-09', '10:01:49', 'Konfirmasi surat jalan SJ-022050006', 'OPN', '2022-05-09 17:01:49', '2022-05-09 17:01:49'),
(191, 0, 'rika', '2022-05-09', '10:01:54', 'Konfirmasi surat jalan SJ-022050005', 'OPN', '2022-05-09 17:01:54', '2022-05-09 17:01:54'),
(192, 0, 'rika', '2022-05-09', '10:02:45', 'Print invoice piutang IVP-022050007', 'OPN', '2022-05-09 17:02:45', '2022-05-09 17:02:45'),
(193, 0, 'rika', '2022-05-09', '10:03:30', 'Print invoice piutang IVP-022050006', 'OPN', '2022-05-09 17:03:30', '2022-05-09 17:03:30'),
(194, 0, 'rika', '2022-05-09', '10:03:49', 'Print invoice piutang IVP-022050005', 'OPN', '2022-05-09 17:03:49', '2022-05-09 17:03:49'),
(195, 0, 'rika', '2022-05-09', '10:04:33', 'Print surat jalan SJ-022050007', 'OPN', '2022-05-09 17:04:33', '2022-05-09 17:04:33'),
(196, 0, 'rika', '2022-05-09', '10:05:11', 'Print surat jalan SJ-022050006', 'OPN', '2022-05-09 17:05:11', '2022-05-09 17:05:11'),
(197, 0, 'rika', '2022-05-09', '10:05:40', 'Print surat jalan SJ-022050005', 'OPN', '2022-05-09 17:05:40', '2022-05-09 17:05:40'),
(198, 0, 'rika', '2022-05-09', '10:58:38', 'Tambah pemesanan penjualan SO-022050009', 'OPN', '2022-05-09 17:58:38', '2022-05-09 17:58:38'),
(199, 0, 'rika', '2022-05-09', '11:00:31', 'Update pemesanan penjualan SO-022050009', 'OPN', '2022-05-09 18:00:31', '2022-05-09 18:00:31'),
(200, 0, 'rika', '2022-05-09', '11:08:46', 'Tambah pemesanan penjualan SO-022050010', 'OPN', '2022-05-09 18:08:46', '2022-05-09 18:08:46'),
(201, 0, 'rika', '2022-05-09', '11:15:26', 'Tambah pemesanan penjualan SO-022050011', 'OPN', '2022-05-09 18:15:26', '2022-05-09 18:15:26'),
(202, 0, 'rika', '2022-05-09', '11:22:30', 'Tambah pemesanan penjualan SO-022050012', 'OPN', '2022-05-09 18:22:30', '2022-05-09 18:22:30'),
(203, 0, 'rika', '2022-05-09', '11:29:49', 'Konfirmasi pemesanan penjualan SO-022050012', 'OPN', '2022-05-09 18:29:49', '2022-05-09 18:29:49'),
(204, 0, 'rika', '2022-05-09', '11:29:53', 'Konfirmasi pemesanan penjualan SO-022050011', 'OPN', '2022-05-09 18:29:53', '2022-05-09 18:29:53'),
(205, 0, 'rika', '2022-05-09', '11:29:58', 'Konfirmasi pemesanan penjualan SO-022050010', 'OPN', '2022-05-09 18:29:58', '2022-05-09 18:29:58'),
(206, 0, 'rika', '2022-05-09', '11:30:02', 'Konfirmasi pemesanan penjualan SO-022050009', 'OPN', '2022-05-09 18:30:02', '2022-05-09 18:30:02'),
(207, 0, 'rika', '2022-05-09', '11:31:46', 'Tambah surat jalan SJ-022050008', 'OPN', '2022-05-09 18:31:46', '2022-05-09 18:31:46'),
(208, 0, 'rika', '2022-05-09', '11:34:47', 'Tambah surat jalan SJ-022050009', 'OPN', '2022-05-09 18:34:47', '2022-05-09 18:34:47'),
(209, 0, 'rika', '2022-05-09', '11:37:19', 'Tambah pemesanan penjualan SO-022050013', 'OPN', '2022-05-09 18:37:19', '2022-05-09 18:37:19'),
(210, 0, 'rika', '2022-05-09', '11:37:38', 'Konfirmasi pemesanan penjualan SO-022050013', 'OPN', '2022-05-09 18:37:38', '2022-05-09 18:37:38'),
(211, 0, 'rika', '2022-05-09', '11:39:51', 'Tambah surat jalan SJ-022050010', 'OPN', '2022-05-09 18:39:51', '2022-05-09 18:39:51'),
(212, 0, 'rika', '2022-05-09', '11:41:33', 'Tambah surat jalan SJ-022050011', 'OPN', '2022-05-09 18:41:33', '2022-05-09 18:41:33'),
(213, 0, 'rika', '2022-05-09', '11:42:47', 'Tambah surat jalan SJ-022050012', 'OPN', '2022-05-09 18:42:47', '2022-05-09 18:42:47'),
(214, 0, 'rika', '2022-05-09', '11:44:09', 'Konfirmasi surat jalan SJ-022050010', 'OPN', '2022-05-09 18:44:09', '2022-05-09 18:44:09'),
(215, 0, 'rika', '2022-05-09', '11:44:38', 'Konfirmasi surat jalan SJ-022050009', 'OPN', '2022-05-09 18:44:38', '2022-05-09 18:44:38'),
(216, 0, 'rika', '2022-05-09', '11:44:46', 'Konfirmasi surat jalan SJ-022050008', 'OPN', '2022-05-09 18:44:46', '2022-05-09 18:44:46'),
(217, 0, 'rika', '2022-05-09', '11:45:02', 'Konfirmasi surat jalan SJ-022050012', 'OPN', '2022-05-09 18:45:02', '2022-05-09 18:45:02'),
(218, 0, 'rika', '2022-05-09', '11:45:15', 'Konfirmasi surat jalan SJ-022050011', 'OPN', '2022-05-09 18:45:15', '2022-05-09 18:45:15'),
(219, 0, 'rika', '2022-05-09', '11:48:30', 'Print invoice piutang IVP-022050008', 'OPN', '2022-05-09 18:48:30', '2022-05-09 18:48:30'),
(220, 0, 'rika', '2022-05-09', '11:49:38', 'Print invoice piutang IVP-022050009', 'OPN', '2022-05-09 18:49:38', '2022-05-09 18:49:38'),
(221, 0, 'rika', '2022-05-09', '11:51:07', 'Print invoice piutang IVP-022050010', 'OPN', '2022-05-09 18:51:07', '2022-05-09 18:51:07'),
(222, 0, 'rika', '2022-05-09', '11:51:36', 'Print invoice piutang IVP-022050011', 'OPN', '2022-05-09 18:51:36', '2022-05-09 18:51:36'),
(223, 0, 'rika', '2022-05-09', '11:52:19', 'Print invoice piutang IVP-022050012', 'OPN', '2022-05-09 18:52:19', '2022-05-09 18:52:19'),
(224, 0, 'rika', '2022-05-09', '11:54:25', 'Print surat jalan SJ-022050008', 'OPN', '2022-05-09 18:54:25', '2022-05-09 18:54:25'),
(225, 0, 'rika', '2022-05-09', '11:55:48', 'Print surat jalan SJ-022050010', 'OPN', '2022-05-09 18:55:48', '2022-05-09 18:55:48'),
(226, 0, 'may', '2022-05-10', '08:30:33', 'Hapus pemesanan pembelian PO-122040001', 'OPN', '2022-05-10 15:30:33', '2022-05-10 15:30:33'),
(227, 0, 'may', '2022-05-10', '08:52:55', 'Tambah pemesanan penjualan SO-022050014', 'OPN', '2022-05-10 15:52:55', '2022-05-10 15:52:55'),
(228, 0, 'may', '2022-05-10', '08:52:59', 'Konfirmasi pemesanan penjualan SO-022050014', 'OPN', '2022-05-10 15:52:59', '2022-05-10 15:52:59'),
(229, 0, 'may', '2022-05-10', '08:53:57', 'Tambah surat jalan SJ-022050013', 'OPN', '2022-05-10 15:53:57', '2022-05-10 15:53:57'),
(230, 0, 'may', '2022-05-10', '08:54:05', 'Konfirmasi surat jalan SJ-022050013', 'OPN', '2022-05-10 15:54:05', '2022-05-10 15:54:05'),
(231, 0, 'may', '2022-05-10', '08:54:27', 'Print invoice piutang IVP-022050013', 'OPN', '2022-05-10 15:54:27', '2022-05-10 15:54:27'),
(232, 0, 'may', '2022-05-10', '10:04:25', 'Hapus pemesanan penjualan SO-022050014', 'OPN', '2022-05-10 17:04:25', '2022-05-10 17:04:25'),
(233, 0, 'may', '2022-05-10', '10:07:08', 'Tambah pemesanan penjualan SO-022050015', 'OPN', '2022-05-10 17:07:08', '2022-05-10 17:07:08'),
(234, 0, 'may', '2022-05-10', '10:07:13', 'Konfirmasi pemesanan penjualan SO-022050015', 'OPN', '2022-05-10 17:07:13', '2022-05-10 17:07:13'),
(235, 0, 'may', '2022-05-10', '10:07:35', 'Print invoice piutang IVP-022050013', 'OPN', '2022-05-10 17:07:35', '2022-05-10 17:07:35'),
(236, 0, 'may', '2022-05-10', '11:48:30', 'Tambah pemesanan penjualan SO-022050016', 'OPN', '2022-05-10 18:48:30', '2022-05-10 18:48:30'),
(237, 0, 'may', '2022-05-10', '11:48:34', 'Konfirmasi pemesanan penjualan SO-022050016', 'OPN', '2022-05-10 18:48:34', '2022-05-10 18:48:34'),
(238, 0, 'may', '2022-05-10', '11:50:05', 'Tambah surat jalan SJ-022050014', 'OPN', '2022-05-10 18:50:05', '2022-05-10 18:50:05'),
(239, 0, 'may', '2022-05-10', '11:50:09', 'Konfirmasi surat jalan SJ-022050014', 'OPN', '2022-05-10 18:50:09', '2022-05-10 18:50:09'),
(240, 0, 'may', '2022-05-10', '11:50:25', 'Print invoice piutang IVP-022050014', 'OPN', '2022-05-10 18:50:25', '2022-05-10 18:50:25'),
(241, 0, 'may', '2022-05-10', '11:52:28', 'Tambah pemesanan penjualan SO-022050017', 'OPN', '2022-05-10 18:52:28', '2022-05-10 18:52:28'),
(242, 0, 'may', '2022-05-10', '11:52:31', 'Konfirmasi pemesanan penjualan SO-022050017', 'OPN', '2022-05-10 18:52:31', '2022-05-10 18:52:31'),
(243, 0, 'may', '2022-05-10', '11:52:57', 'Tambah surat jalan SJ-022050015', 'OPN', '2022-05-10 18:52:57', '2022-05-10 18:52:57'),
(244, 0, 'may', '2022-05-10', '11:53:10', 'Konfirmasi surat jalan SJ-022050015', 'OPN', '2022-05-10 18:53:10', '2022-05-10 18:53:10'),
(245, 0, 'may', '2022-05-10', '11:53:17', 'Print invoice piutang IVP-022050015', 'OPN', '2022-05-10 18:53:17', '2022-05-10 18:53:17'),
(246, 0, 'may', '2022-05-10', '12:01:13', 'Tambah pemesanan penjualan SO-022050018', 'OPN', '2022-05-10 19:01:13', '2022-05-10 19:01:13'),
(247, 0, 'may', '2022-05-10', '12:01:18', 'Konfirmasi pemesanan penjualan SO-022050018', 'OPN', '2022-05-10 19:01:18', '2022-05-10 19:01:18'),
(248, 0, 'may', '2022-05-10', '12:01:53', 'Tambah surat jalan SJ-022050016', 'OPN', '2022-05-10 19:01:53', '2022-05-10 19:01:53'),
(249, 0, 'may', '2022-05-10', '12:01:57', 'Konfirmasi surat jalan SJ-022050016', 'OPN', '2022-05-10 19:01:57', '2022-05-10 19:01:57'),
(250, 0, 'may', '2022-05-10', '12:02:04', 'Print invoice piutang IVP-022050016', 'OPN', '2022-05-10 19:02:04', '2022-05-10 19:02:04'),
(251, 0, 'may', '2022-05-10', '16:12:00', 'Print invoice piutang IVP-122050001', 'OPN', '2022-05-10 23:12:00', '2022-05-10 23:12:00'),
(252, 0, 'may', '2022-05-10', '16:12:45', 'Print invoice piutang IVP-022050003', 'OPN', '2022-05-10 23:12:45', '2022-05-10 23:12:45'),
(253, 0, 'may', '2022-05-10', '16:13:07', 'Print invoice piutang IVP-022050004', 'OPN', '2022-05-10 23:13:07', '2022-05-10 23:13:07'),
(254, 0, 'may', '2022-05-10', '16:14:27', 'Print invoice piutang IVP-022050004', 'OPN', '2022-05-10 23:14:27', '2022-05-10 23:14:27'),
(255, 0, 'may', '2022-05-10', '16:14:31', 'Print invoice piutang IVP-122050001', 'OPN', '2022-05-10 23:14:31', '2022-05-10 23:14:31'),
(256, 0, 'may', '2022-05-10', '16:14:35', 'Print invoice piutang IVP-022050003', 'OPN', '2022-05-10 23:14:35', '2022-05-10 23:14:35'),
(257, 0, 'may', '2022-05-10', '16:14:39', 'Print invoice piutang IVP-022050002', 'OPN', '2022-05-10 23:14:39', '2022-05-10 23:14:39'),
(258, 0, 'may', '2022-05-10', '16:14:42', 'Print invoice piutang IVP-022050001', 'OPN', '2022-05-10 23:14:42', '2022-05-10 23:14:42'),
(259, 0, 'may', '2022-05-10', '16:16:48', 'Print invoice piutang IVP-022050004', 'OPN', '2022-05-10 23:16:48', '2022-05-10 23:16:48'),
(260, 0, 'may', '2022-05-10', '16:17:17', 'Print invoice piutang IVP-122050001', 'OPN', '2022-05-10 23:17:17', '2022-05-10 23:17:17'),
(261, 0, 'may', '2022-05-10', '16:17:52', 'Print invoice piutang IVP-022050003', 'OPN', '2022-05-10 23:17:52', '2022-05-10 23:17:52'),
(262, 0, 'may', '2022-05-10', '16:19:10', 'Print invoice piutang IVP-022050002', 'OPN', '2022-05-10 23:19:10', '2022-05-10 23:19:10'),
(263, 0, 'may', '2022-05-10', '16:19:33', 'Print invoice piutang IVP-022050001', 'OPN', '2022-05-10 23:19:33', '2022-05-10 23:19:33'),
(264, 0, 'may', '2022-05-10', '16:23:09', 'Print invoice piutang IVP-022050012', 'OPN', '2022-05-10 23:23:09', '2022-05-10 23:23:09'),
(265, 0, 'may', '2022-05-10', '16:23:14', 'Print invoice piutang IVP-022050011', 'OPN', '2022-05-10 23:23:14', '2022-05-10 23:23:14'),
(266, 0, 'may', '2022-05-10', '16:23:20', 'Print invoice piutang IVP-022050007', 'OPN', '2022-05-10 23:23:20', '2022-05-10 23:23:20'),
(267, 0, 'may', '2022-05-10', '16:23:24', 'Print invoice piutang IVP-022050006', 'OPN', '2022-05-10 23:23:24', '2022-05-10 23:23:24'),
(268, 0, 'may', '2022-05-10', '16:23:27', 'Print invoice piutang IVP-022050005', 'OPN', '2022-05-10 23:23:27', '2022-05-10 23:23:27'),
(269, 0, 'may', '2022-05-10', '16:24:13', 'Print invoice piutang IVP-022050012', 'OPN', '2022-05-10 23:24:13', '2022-05-10 23:24:13'),
(270, 0, 'may', '2022-05-10', '16:31:52', 'Print invoice piutang IVP-022050016', 'OPN', '2022-05-10 23:31:52', '2022-05-10 23:31:52'),
(271, 0, 'may', '2022-05-10', '16:31:56', 'Print invoice piutang IVP-022050015', 'OPN', '2022-05-10 23:31:56', '2022-05-10 23:31:56'),
(272, 0, 'may', '2022-05-10', '16:31:59', 'Print invoice piutang IVP-022050014', 'OPN', '2022-05-10 23:31:59', '2022-05-10 23:31:59'),
(273, 0, 'may', '2022-05-10', '16:32:01', 'Print invoice piutang IVP-022050013', 'OPN', '2022-05-10 23:32:01', '2022-05-10 23:32:01'),
(274, 0, 'may', '2022-05-10', '16:48:50', 'Print invoice piutang IVP-022050010', 'OPN', '2022-05-10 23:48:50', '2022-05-10 23:48:50'),
(275, 0, 'may', '2022-05-10', '16:48:55', 'Print invoice piutang IVP-022050009', 'OPN', '2022-05-10 23:48:55', '2022-05-10 23:48:55'),
(276, 0, 'may', '2022-05-10', '16:49:02', 'Print invoice piutang IVP-022050008', 'OPN', '2022-05-10 23:49:02', '2022-05-10 23:49:02'),
(277, 0, 'may', '2022-05-10', '16:53:51', 'Tambah pelunasan piutang PL-22050001 pada invoice IVP-022040002', 'OPN', '2022-05-10 23:53:51', '2022-05-10 23:53:51'),
(278, 0, 'may', '2022-05-11', '10:42:14', 'Hapus satuan Kardus', 'OPN', '2022-05-11 17:42:14', '2022-05-11 17:42:14'),
(279, 0, 'may', '2022-05-11', '10:42:18', 'Hapus satuan SAK', 'OPN', '2022-05-11 17:42:18', '2022-05-11 17:42:18'),
(280, 0, 'may', '2022-05-11', '10:44:20', 'Tambah pemesanan penjualan SO-022050019', 'OPN', '2022-05-11 17:44:20', '2022-05-11 17:44:20'),
(281, 0, 'may', '2022-05-11', '10:44:24', 'Konfirmasi pemesanan penjualan SO-022050019', 'OPN', '2022-05-11 17:44:24', '2022-05-11 17:44:24'),
(282, 0, 'may', '2022-05-11', '10:45:02', 'Tambah surat jalan SJ-022050017', 'OPN', '2022-05-11 17:45:02', '2022-05-11 17:45:02'),
(283, 0, 'may', '2022-05-11', '10:45:07', 'Konfirmasi surat jalan SJ-022050017', 'OPN', '2022-05-11 17:45:07', '2022-05-11 17:45:07'),
(284, 0, 'may', '2022-05-11', '10:45:50', 'Print surat jalan SJ-022050017', 'OPN', '2022-05-11 17:45:50', '2022-05-11 17:45:50'),
(285, 0, 'may', '2022-05-11', '10:46:39', 'Print invoice piutang IVP-022050017', 'OPN', '2022-05-11 17:46:39', '2022-05-11 17:46:39'),
(286, 0, 'may', '2022-05-11', '10:50:19', 'Tambah pemesanan penjualan SO-022050020', 'OPN', '2022-05-11 17:50:19', '2022-05-11 17:50:19'),
(287, 0, 'may', '2022-05-11', '10:50:23', 'Konfirmasi pemesanan penjualan SO-022050020', 'OPN', '2022-05-11 17:50:23', '2022-05-11 17:50:23'),
(288, 0, 'may', '2022-05-11', '10:51:16', 'Tambah surat jalan SJ-022050018', 'OPN', '2022-05-11 17:51:16', '2022-05-11 17:51:16'),
(289, 0, 'may', '2022-05-11', '10:51:22', 'Konfirmasi surat jalan SJ-022050018', 'OPN', '2022-05-11 17:51:22', '2022-05-11 17:51:22'),
(290, 0, 'may', '2022-05-11', '10:51:50', 'Print surat jalan SJ-022050018', 'OPN', '2022-05-11 17:51:50', '2022-05-11 17:51:50'),
(291, 0, 'may', '2022-05-11', '10:52:25', 'Print invoice piutang IVP-022050018', 'OPN', '2022-05-11 17:52:25', '2022-05-11 17:52:25'),
(292, 0, 'may', '2022-05-11', '10:55:02', 'Tambah pemesanan penjualan SO-022050021', 'OPN', '2022-05-11 17:55:02', '2022-05-11 17:55:02'),
(293, 0, 'may', '2022-05-11', '10:55:07', 'Konfirmasi pemesanan penjualan SO-022050021', 'OPN', '2022-05-11 17:55:07', '2022-05-11 17:55:07'),
(294, 0, 'may', '2022-05-11', '10:56:24', 'Tambah surat jalan SJ-022050019', 'OPN', '2022-05-11 17:56:24', '2022-05-11 17:56:24'),
(295, 0, 'may', '2022-05-11', '10:56:29', 'Konfirmasi surat jalan SJ-022050019', 'OPN', '2022-05-11 17:56:29', '2022-05-11 17:56:29'),
(296, 0, 'may', '2022-05-11', '10:56:40', 'Print invoice piutang IVP-022050019', 'OPN', '2022-05-11 17:56:40', '2022-05-11 17:56:40'),
(297, 0, 'may', '2022-05-11', '12:04:55', 'Tambah pemesanan penjualan SO-022050022', 'OPN', '2022-05-11 05:04:55', '2022-05-11 05:04:55'),
(298, 0, 'may', '2022-05-11', '12:05:01', 'Konfirmasi pemesanan penjualan SO-022050022', 'OPN', '2022-05-11 05:05:01', '2022-05-11 05:05:01'),
(299, 0, 'may', '2022-05-11', '12:05:43', 'Tambah surat jalan SJ-022050020', 'OPN', '2022-05-11 05:05:43', '2022-05-11 05:05:43'),
(300, 0, 'may', '2022-05-11', '12:05:50', 'Konfirmasi surat jalan SJ-022050020', 'OPN', '2022-05-11 05:05:50', '2022-05-11 05:05:50'),
(301, 0, 'may', '2022-05-11', '12:05:58', 'Print invoice piutang IVP-022050020', 'OPN', '2022-05-11 05:05:58', '2022-05-11 05:05:58'),
(302, 0, 'may', '2022-05-11', '12:07:26', 'Tambah pemesanan penjualan SO-022050023', 'OPN', '2022-05-11 05:07:26', '2022-05-11 05:07:26'),
(303, 0, 'may', '2022-05-11', '12:07:31', 'Konfirmasi pemesanan penjualan SO-022050023', 'OPN', '2022-05-11 05:07:31', '2022-05-11 05:07:31'),
(304, 0, 'may', '2022-05-11', '12:08:00', 'Tambah surat jalan SJ-022050021', 'OPN', '2022-05-11 05:08:00', '2022-05-11 05:08:00'),
(305, 0, 'may', '2022-05-11', '12:08:04', 'Konfirmasi surat jalan SJ-022050021', 'OPN', '2022-05-11 05:08:04', '2022-05-11 05:08:04'),
(306, 0, 'may', '2022-05-11', '12:08:11', 'Print invoice piutang IVP-022050021', 'OPN', '2022-05-11 05:08:11', '2022-05-11 05:08:11'),
(307, 0, 'rika', '2022-05-12', '08:29:56', 'Tambah pemesanan penjualan SO-022050024', 'OPN', '2022-05-12 01:29:56', '2022-05-12 01:29:56'),
(308, 0, 'rika', '2022-05-12', '08:30:38', 'Update pemesanan penjualan SO-022050024', 'OPN', '2022-05-12 01:30:38', '2022-05-12 01:30:38'),
(309, 0, 'rika', '2022-05-12', '08:30:44', 'Konfirmasi pemesanan penjualan SO-022050024', 'OPN', '2022-05-12 01:30:44', '2022-05-12 01:30:44'),
(310, 0, 'rika', '2022-05-12', '08:32:52', 'Tambah surat jalan SJ-022050022', 'OPN', '2022-05-12 01:32:52', '2022-05-12 01:32:52'),
(311, 0, 'rika', '2022-05-12', '08:33:01', 'Konfirmasi surat jalan SJ-022050022', 'OPN', '2022-05-12 01:33:01', '2022-05-12 01:33:01'),
(312, 0, 'rika', '2022-05-12', '08:34:30', 'Print invoice piutang IVP-022050022', 'OPN', '2022-05-12 01:34:30', '2022-05-12 01:34:30'),
(313, 0, 'may', '2022-05-12', '11:47:46', 'Tambah pemesanan penjualan SO-022050025', 'OPN', '2022-05-12 04:47:46', '2022-05-12 04:47:46'),
(314, 0, 'may', '2022-05-12', '11:47:53', 'Konfirmasi pemesanan penjualan SO-022050025', 'OPN', '2022-05-12 04:47:53', '2022-05-12 04:47:53'),
(315, 0, 'may', '2022-05-12', '11:49:18', 'Tambah surat jalan SJ-022050023', 'OPN', '2022-05-12 04:49:18', '2022-05-12 04:49:18'),
(316, 0, 'may', '2022-05-12', '11:49:24', 'Konfirmasi surat jalan SJ-022050023', 'OPN', '2022-05-12 04:49:24', '2022-05-12 04:49:24'),
(317, 0, 'may', '2022-05-12', '11:49:40', 'Print invoice piutang IVP-022050023', 'OPN', '2022-05-12 04:49:40', '2022-05-12 04:49:40'),
(318, 0, 'may', '2022-05-12', '11:52:11', 'Tambah pemesanan penjualan SO-022050026', 'OPN', '2022-05-12 04:52:11', '2022-05-12 04:52:11'),
(319, 0, 'may', '2022-05-12', '11:52:16', 'Konfirmasi pemesanan penjualan SO-022050026', 'OPN', '2022-05-12 04:52:16', '2022-05-12 04:52:16'),
(320, 0, 'may', '2022-05-12', '11:53:15', 'Tambah surat jalan SJ-022050024', 'OPN', '2022-05-12 04:53:15', '2022-05-12 04:53:15'),
(321, 0, 'may', '2022-05-12', '11:53:22', 'Konfirmasi surat jalan SJ-022050024', 'OPN', '2022-05-12 04:53:22', '2022-05-12 04:53:22'),
(322, 0, 'may', '2022-05-12', '11:53:31', 'Print invoice piutang IVP-022050024', 'OPN', '2022-05-12 04:53:31', '2022-05-12 04:53:31'),
(323, 0, 'may', '2022-05-13', '09:28:58', 'Tambah pemesanan penjualan SO-022050027', 'OPN', '2022-05-13 02:28:58', '2022-05-13 02:28:58'),
(324, 0, 'may', '2022-05-13', '09:29:03', 'Konfirmasi pemesanan penjualan SO-022050027', 'OPN', '2022-05-13 02:29:03', '2022-05-13 02:29:03'),
(325, 0, 'may', '2022-05-13', '09:29:39', 'Tambah surat jalan SJ-022050025', 'OPN', '2022-05-13 02:29:39', '2022-05-13 02:29:39'),
(326, 0, 'may', '2022-05-13', '09:29:44', 'Konfirmasi surat jalan SJ-022050025', 'OPN', '2022-05-13 02:29:44', '2022-05-13 02:29:44'),
(327, 0, 'may', '2022-05-13', '11:13:32', 'Tambah pemesanan penjualan SO-022050028', 'OPN', '2022-05-13 04:13:32', '2022-05-13 04:13:32'),
(328, 0, 'may', '2022-05-13', '11:16:09', 'Tambah pemesanan penjualan SO-022050029', 'OPN', '2022-05-13 04:16:09', '2022-05-13 04:16:09'),
(329, 0, 'may', '2022-05-13', '11:18:20', 'Tambah pemesanan penjualan SO-022050030', 'OPN', '2022-05-13 04:18:20', '2022-05-13 04:18:20'),
(330, 0, 'may', '2022-05-13', '11:19:57', 'Tambah pemesanan penjualan SO-022050031', 'OPN', '2022-05-13 04:19:57', '2022-05-13 04:19:57'),
(331, 0, 'may', '2022-05-13', '11:22:48', 'Tambah pemesanan penjualan SO-022050032', 'OPN', '2022-05-13 04:22:48', '2022-05-13 04:22:48'),
(332, 0, 'may', '2022-05-13', '11:23:16', 'Konfirmasi pemesanan penjualan SO-022050028', 'OPN', '2022-05-13 04:23:16', '2022-05-13 04:23:16'),
(333, 0, 'may', '2022-05-13', '11:23:21', 'Konfirmasi pemesanan penjualan SO-022050029', 'OPN', '2022-05-13 04:23:21', '2022-05-13 04:23:21'),
(334, 0, 'may', '2022-05-13', '11:23:26', 'Konfirmasi pemesanan penjualan SO-022050030', 'OPN', '2022-05-13 04:23:26', '2022-05-13 04:23:26'),
(335, 0, 'may', '2022-05-13', '11:23:29', 'Konfirmasi pemesanan penjualan SO-022050031', 'OPN', '2022-05-13 04:23:29', '2022-05-13 04:23:29'),
(336, 0, 'may', '2022-05-13', '11:23:33', 'Konfirmasi pemesanan penjualan SO-022050032', 'OPN', '2022-05-13 04:23:33', '2022-05-13 04:23:33'),
(337, 0, 'may', '2022-05-13', '11:25:13', 'Tambah surat jalan SJ-022050026', 'OPN', '2022-05-13 04:25:13', '2022-05-13 04:25:13'),
(338, 0, 'may', '2022-05-13', '11:26:06', 'Tambah surat jalan SJ-022050027', 'OPN', '2022-05-13 04:26:06', '2022-05-13 04:26:06'),
(339, 0, 'may', '2022-05-13', '11:26:50', 'Tambah surat jalan SJ-022050028', 'OPN', '2022-05-13 04:26:50', '2022-05-13 04:26:50'),
(340, 0, 'may', '2022-05-13', '11:27:28', 'Tambah surat jalan SJ-022050029', 'OPN', '2022-05-13 04:27:28', '2022-05-13 04:27:28'),
(341, 0, 'may', '2022-05-13', '11:28:35', 'Tambah surat jalan SJ-022050030', 'OPN', '2022-05-13 04:28:35', '2022-05-13 04:28:35'),
(342, 0, 'may', '2022-05-13', '11:28:43', 'Konfirmasi surat jalan SJ-022050026', 'OPN', '2022-05-13 04:28:43', '2022-05-13 04:28:43'),
(343, 0, 'may', '2022-05-13', '11:28:47', 'Konfirmasi surat jalan SJ-022050027', 'OPN', '2022-05-13 04:28:47', '2022-05-13 04:28:47'),
(344, 0, 'may', '2022-05-13', '11:28:52', 'Konfirmasi surat jalan SJ-022050028', 'OPN', '2022-05-13 04:28:52', '2022-05-13 04:28:52'),
(345, 0, 'may', '2022-05-13', '11:28:55', 'Konfirmasi surat jalan SJ-022050029', 'OPN', '2022-05-13 04:28:55', '2022-05-13 04:28:55'),
(346, 0, 'may', '2022-05-13', '11:28:59', 'Konfirmasi surat jalan SJ-022050030', 'OPN', '2022-05-13 04:28:59', '2022-05-13 04:28:59'),
(347, 0, 'may', '2022-05-13', '11:29:19', 'Print invoice piutang IVP-022050025', 'OPN', '2022-05-13 04:29:19', '2022-05-13 04:29:19'),
(348, 0, 'may', '2022-05-13', '11:30:36', 'Print invoice piutang IVP-022050026', 'OPN', '2022-05-13 04:30:36', '2022-05-13 04:30:36'),
(349, 0, 'may', '2022-05-13', '11:31:21', 'Print invoice piutang IVP-022050027', 'OPN', '2022-05-13 04:31:21', '2022-05-13 04:31:21'),
(350, 0, 'may', '2022-05-13', '11:32:30', 'Print invoice piutang IVP-022050028', 'OPN', '2022-05-13 04:32:30', '2022-05-13 04:32:30'),
(351, 0, 'may', '2022-05-13', '11:32:57', 'Print invoice piutang IVP-022050029', 'OPN', '2022-05-13 04:32:57', '2022-05-13 04:32:57'),
(352, 0, 'may', '2022-05-13', '11:33:21', 'Print invoice piutang IVP-022050030', 'OPN', '2022-05-13 04:33:21', '2022-05-13 04:33:21'),
(353, 0, 'may', '2022-05-13', '11:33:55', 'Print surat jalan SJ-022050026', 'OPN', '2022-05-13 04:33:55', '2022-05-13 04:33:55'),
(354, 0, 'may', '2022-05-13', '11:34:39', 'Print surat jalan SJ-022050030', 'OPN', '2022-05-13 04:34:39', '2022-05-13 04:34:39'),
(355, 0, 'may', '2022-05-13', '12:18:19', 'Tambah pelunasan piutang PL-22050002 pada invoice IVP-022040003', 'OPN', '2022-05-13 05:18:19', '2022-05-13 05:18:19'),
(356, 0, 'may', '2022-05-13', '12:18:49', 'Tambah pelunasan piutang PL-22050003 pada invoice IVP-022040006', 'OPN', '2022-05-13 05:18:49', '2022-05-13 05:18:49'),
(357, 0, 'may', '2022-05-13', '12:19:33', 'Tambah pelunasan piutang PL-22050004 pada invoice IVP-022040004', 'OPN', '2022-05-13 05:19:33', '2022-05-13 05:19:33'),
(358, 0, 'may', '2022-05-13', '12:20:03', 'Tambah pelunasan piutang PL-22050005 pada invoice IVP-022050003', 'OPN', '2022-05-13 05:20:03', '2022-05-13 05:20:03'),
(359, 0, 'may', '2022-05-13', '12:20:31', 'Tambah pelunasan piutang PL-22050006 pada invoice IVP-122050001', 'OPN', '2022-05-13 05:20:31', '2022-05-13 05:20:31'),
(360, 0, 'may', '2022-05-13', '12:21:25', 'Tambah pelunasan piutang PL-22050007 pada invoice IVP-022050004', 'OPN', '2022-05-13 05:21:25', '2022-05-13 05:21:25'),
(361, 0, 'may', '2022-05-13', '12:23:39', 'Tambah pelunasan piutang PL-22050008 pada invoice IVP-022050011', 'OPN', '2022-05-13 05:23:39', '2022-05-13 05:23:39'),
(362, 0, 'may', '2022-05-13', '12:24:05', 'Tambah pelunasan piutang PL-22050009 pada invoice IVP-022050014', 'OPN', '2022-05-13 05:24:05', '2022-05-13 05:24:05'),
(363, 0, 'may', '2022-05-13', '12:25:52', 'Tambah pelunasan piutang PL-22050010 pada invoice IVP-022050015', 'OPN', '2022-05-13 05:25:52', '2022-05-13 05:25:52'),
(364, 0, 'may', '2022-05-13', '12:26:17', 'Tambah pelunasan piutang PL-22050011 pada invoice IVP-022050020', 'OPN', '2022-05-13 05:26:17', '2022-05-13 05:26:17'),
(365, 0, 'may', '2022-05-13', '12:26:44', 'Tambah pelunasan piutang PL-22050012 pada invoice IVP-022050023', 'OPN', '2022-05-13 05:26:44', '2022-05-13 05:26:44'),
(366, 0, 'may', '2022-05-13', '13:41:48', 'Tambah pelunasan piutang PL-22050013 pada invoice IVP-022050028', 'OPN', '2022-05-13 06:41:48', '2022-05-13 06:41:48'),
(367, 0, 'may', '2022-05-13', '16:41:16', 'Tambah pelunasan piutang PL-22050014 pada invoice IVP-022040001', 'OPN', '2022-05-13 09:41:16', '2022-05-13 09:41:16'),
(368, 0, 'may', '2022-05-13', '16:41:51', 'Tambah pelunasan piutang PL-22050015 pada invoice IVP-022040008', 'OPN', '2022-05-13 09:41:51', '2022-05-13 09:41:51'),
(369, 0, 'may', '2022-05-13', '16:42:14', 'Tambah pelunasan piutang PL-22050016 pada invoice IVP-022050002', 'OPN', '2022-05-13 09:42:14', '2022-05-13 09:42:14'),
(370, 0, 'may', '2022-05-13', '16:42:40', 'Tambah pelunasan piutang PL-22050017 pada invoice IVP-022050012', 'OPN', '2022-05-13 09:42:40', '2022-05-13 09:42:40'),
(371, 0, 'may', '2022-05-13', '16:43:11', 'Tambah pelunasan piutang PL-22050018 pada invoice IVP-022050016', 'OPN', '2022-05-13 09:43:11', '2022-05-13 09:43:11'),
(372, 0, 'may', '2022-05-13', '16:44:10', 'Tambah pelunasan piutang PL-22050019 pada invoice IVP-022050021', 'OPN', '2022-05-13 09:44:10', '2022-05-13 09:44:10'),
(373, 0, 'may', '2022-05-13', '16:44:54', 'Tambah pelunasan piutang PL-22050020 pada invoice IVP-022050024', 'OPN', '2022-05-13 09:44:54', '2022-05-13 09:44:54'),
(374, 0, 'may', '2022-05-13', '16:45:20', 'Tambah pelunasan piutang PL-22050021 pada invoice IVP-022050029', 'OPN', '2022-05-13 09:45:20', '2022-05-13 09:45:20');
INSERT INTO `eventlogs` (`id`, `idx`, `KodeUser`, `Tanggal`, `Jam`, `Keterangan`, `Tipe`, `created_at`, `updated_at`) VALUES
(375, 0, 'may', '2022-05-13', '16:46:09', 'Tambah pelunasan piutang PL-22050022 pada invoice IVP-022050013', 'OPN', '2022-05-13 09:46:09', '2022-05-13 09:46:09'),
(376, 0, 'may', '2022-05-13', '16:46:38', 'Tambah pelunasan piutang PL-22050023 pada invoice IVP-022050022', 'OPN', '2022-05-13 09:46:38', '2022-05-13 09:46:38'),
(377, 0, 'may', '2022-05-13', '16:47:11', 'Tambah pelunasan piutang PL-22050024 pada invoice IVP-022050007', 'OPN', '2022-05-13 09:47:11', '2022-05-13 09:47:11'),
(378, 0, 'may', '2022-05-13', '16:47:56', 'Tambah pelunasan piutang PL-22050025 pada invoice IVP-022050030', 'OPN', '2022-05-13 09:47:56', '2022-05-13 09:47:56'),
(379, 0, 'may', '2022-05-13', '16:48:23', 'Tambah pelunasan piutang PL-22050026 pada invoice IVP-022050018', 'OPN', '2022-05-13 09:48:23', '2022-05-13 09:48:23'),
(380, 0, 'may', '2022-05-13', '16:48:49', 'Tambah pelunasan piutang PL-22050027 pada invoice IVP-022050005', 'OPN', '2022-05-13 09:48:49', '2022-05-13 09:48:49'),
(381, 0, 'may', '2022-05-13', '16:49:21', 'Tambah pelunasan piutang PL-22050028 pada invoice IVP-022050025', 'OPN', '2022-05-13 09:49:21', '2022-05-13 09:49:21'),
(382, 0, 'may', '2022-05-13', '16:49:50', 'Tambah pelunasan piutang PL-22050029 pada invoice IVP-022050010', 'OPN', '2022-05-13 09:49:50', '2022-05-13 09:49:50'),
(383, 0, 'may', '2022-05-13', '16:50:40', 'Tambah pelunasan piutang PL-22050030 pada invoice IVP-022040007', 'OPN', '2022-05-13 09:50:40', '2022-05-13 09:50:40'),
(384, 0, 'may', '2022-05-13', '16:51:15', 'Tambah pelunasan piutang PL-22050031 pada invoice IVP-022050001', 'OPN', '2022-05-13 09:51:15', '2022-05-13 09:51:15'),
(385, 0, 'may', '2022-05-13', '16:52:20', 'Tambah pelunasan piutang PL-22050032 pada invoice IVP-022050006', 'OPN', '2022-05-13 09:52:20', '2022-05-13 09:52:20'),
(386, 0, 'may', '2022-05-13', '16:52:42', 'Tambah pelunasan piutang PL-22050033 pada invoice IVP-022050006', 'OPN', '2022-05-13 09:52:42', '2022-05-13 09:52:42'),
(387, 0, 'may', '2022-05-13', '16:53:12', 'Tambah pelunasan piutang PL-22050034 pada invoice IVP-022040005', 'OPN', '2022-05-13 09:53:12', '2022-05-13 09:53:12'),
(388, 0, 'may', '2022-05-13', '17:01:33', 'Tambah pelunasan piutang PL-22050035 pada invoice IVP-022050009', 'OPN', '2022-05-13 10:01:33', '2022-05-13 10:01:33'),
(389, 0, 'may', '2022-05-13', '17:02:17', 'Tambah pelunasan piutang PL-22050036 pada invoice IVP-022050026', 'OPN', '2022-05-13 10:02:17', '2022-05-13 10:02:17'),
(390, 0, 'may', '2022-05-13', '17:02:45', 'Tambah pelunasan piutang PL-22050037 pada invoice IVP-022050019', 'OPN', '2022-05-13 10:02:45', '2022-05-13 10:02:45'),
(391, 0, 'may', '2022-05-13', '17:04:18', 'Tambah pelunasan piutang PL-22050038 pada invoice IVP-022050027', 'OPN', '2022-05-13 10:04:18', '2022-05-13 10:04:18'),
(392, 0, 'may', '2022-05-14', '11:06:56', 'Tambah pemesanan penjualan SO-022050033', 'OPN', '2022-05-14 04:06:56', '2022-05-14 04:06:56'),
(393, 0, 'may', '2022-05-14', '11:10:14', 'Tambah pemesanan penjualan SO-022050034', 'OPN', '2022-05-14 04:10:14', '2022-05-14 04:10:14'),
(394, 0, 'may', '2022-05-14', '11:10:57', 'Konfirmasi pemesanan penjualan SO-022050034', 'OPN', '2022-05-14 04:10:57', '2022-05-14 04:10:57'),
(395, 0, 'may', '2022-05-14', '11:11:08', 'Konfirmasi pemesanan penjualan SO-022050033', 'OPN', '2022-05-14 04:11:08', '2022-05-14 04:11:08'),
(396, 0, 'may', '2022-05-14', '11:12:45', 'Tambah surat jalan SJ-022050031', 'OPN', '2022-05-14 04:12:45', '2022-05-14 04:12:45'),
(397, 0, 'may', '2022-05-14', '11:13:59', 'Tambah surat jalan SJ-022050032', 'OPN', '2022-05-14 04:13:59', '2022-05-14 04:13:59'),
(398, 0, 'may', '2022-05-14', '11:14:15', 'Konfirmasi surat jalan SJ-022050031', 'OPN', '2022-05-14 04:14:15', '2022-05-14 04:14:15'),
(399, 0, 'may', '2022-05-14', '11:14:20', 'Konfirmasi surat jalan SJ-022050032', 'OPN', '2022-05-14 04:14:20', '2022-05-14 04:14:20'),
(400, 0, 'may', '2022-05-14', '11:14:48', 'Print invoice piutang IVP-022050032', 'OPN', '2022-05-14 04:14:48', '2022-05-14 04:14:48'),
(401, 0, 'may', '2022-05-14', '11:16:27', 'Print invoice piutang IVP-022050031', 'OPN', '2022-05-14 04:16:27', '2022-05-14 04:16:27'),
(402, 0, 'may', '2022-05-14', '11:16:37', 'Print invoice piutang IVP-022050031', 'OPN', '2022-05-14 04:16:37', '2022-05-14 04:16:37'),
(403, 0, 'may', '2022-05-14', '11:17:46', 'Print surat jalan SJ-022050032', 'OPN', '2022-05-14 04:17:46', '2022-05-14 04:17:46'),
(404, 0, 'may', '2022-05-14', '11:20:56', 'Print surat jalan SJ-022050031', 'OPN', '2022-05-14 04:20:56', '2022-05-14 04:20:56'),
(405, 0, 'may', '2022-05-14', '11:39:40', 'Tambah pemesanan penjualan SO-022050035', 'OPN', '2022-05-14 04:39:40', '2022-05-14 04:39:40'),
(406, 0, 'may', '2022-05-14', '11:39:45', 'Konfirmasi pemesanan penjualan SO-022050035', 'OPN', '2022-05-14 04:39:45', '2022-05-14 04:39:45'),
(407, 0, 'may', '2022-05-14', '11:40:26', 'Tambah surat jalan SJ-022050033', 'OPN', '2022-05-14 04:40:26', '2022-05-14 04:40:26'),
(408, 0, 'may', '2022-05-14', '11:40:31', 'Konfirmasi surat jalan SJ-022050033', 'OPN', '2022-05-14 04:40:31', '2022-05-14 04:40:31'),
(409, 0, 'may', '2022-05-14', '11:40:39', 'Print invoice piutang IVP-022050033', 'OPN', '2022-05-14 04:40:39', '2022-05-14 04:40:39'),
(410, 0, 'may', '2022-05-14', '11:42:42', 'Tambah pemesanan penjualan SO-022050036', 'OPN', '2022-05-14 04:42:42', '2022-05-14 04:42:42'),
(411, 0, 'may', '2022-05-14', '11:42:46', 'Konfirmasi pemesanan penjualan SO-022050036', 'OPN', '2022-05-14 04:42:46', '2022-05-14 04:42:46'),
(412, 0, 'may', '2022-05-14', '11:43:25', 'Tambah surat jalan SJ-022050034', 'OPN', '2022-05-14 04:43:25', '2022-05-14 04:43:25'),
(413, 0, 'may', '2022-05-14', '11:43:29', 'Konfirmasi surat jalan SJ-022050034', 'OPN', '2022-05-14 04:43:29', '2022-05-14 04:43:29'),
(414, 0, 'may', '2022-05-14', '11:43:38', 'Print invoice piutang IVP-022050034', 'OPN', '2022-05-14 04:43:38', '2022-05-14 04:43:38'),
(415, 0, 'may', '2022-05-14', '14:10:26', 'Update pelanggan PLG-009', 'OPN', '2022-05-14 07:10:26', '2022-05-14 07:10:26'),
(416, 0, 'may', '2022-05-14', '14:11:40', 'Update pelanggan PLG-009', 'OPN', '2022-05-14 07:11:40', '2022-05-14 07:11:40'),
(417, 0, 'may', '2022-05-14', '14:16:07', 'Update pelanggan PLG-005', 'OPN', '2022-05-14 07:16:07', '2022-05-14 07:16:07'),
(418, 0, 'may', '2022-05-14', '14:26:08', 'Tambah pelanggan PLG-016', 'OPN', '2022-05-14 07:26:08', '2022-05-14 07:26:08'),
(419, 0, 'may', '2022-05-14', '14:26:21', 'Update pelanggan PLG-009', 'OPN', '2022-05-14 07:26:21', '2022-05-14 07:26:21'),
(420, 0, 'may', '2022-05-17', '10:50:47', 'Update ppn ', 'OPN', '2022-05-17 03:50:47', '2022-05-17 03:50:47'),
(421, 0, 'may', '2022-05-17', '10:53:24', 'Tambah pemesanan penjualan SO-122050002', 'OPN', '2022-05-17 03:53:24', '2022-05-17 03:53:24'),
(422, 0, 'may', '2022-05-17', '10:53:37', 'Konfirmasi pemesanan penjualan SO-122050002', 'OPN', '2022-05-17 03:53:37', '2022-05-17 03:53:37'),
(423, 0, 'may', '2022-05-17', '10:57:20', 'Tambah surat jalan SJ-122050002', 'OPN', '2022-05-17 03:57:20', '2022-05-17 03:57:20'),
(424, 0, 'may', '2022-05-17', '10:57:25', 'Konfirmasi surat jalan SJ-122050002', 'OPN', '2022-05-17 03:57:25', '2022-05-17 03:57:25'),
(425, 0, 'may', '2022-05-17', '10:57:39', 'Print invoice piutang IVP-122050002', 'OPN', '2022-05-17 03:57:39', '2022-05-17 03:57:39'),
(426, 0, 'may', '2022-05-17', '11:12:36', 'Tambah pemesanan penjualan SO-122050003', 'OPN', '2022-05-17 04:12:36', '2022-05-17 04:12:36'),
(427, 0, 'may', '2022-05-17', '11:12:43', 'Konfirmasi pemesanan penjualan SO-122050003', 'OPN', '2022-05-17 04:12:43', '2022-05-17 04:12:43'),
(428, 0, 'may', '2022-05-17', '11:15:00', 'Tambah surat jalan SJ-122050003', 'OPN', '2022-05-17 04:15:00', '2022-05-17 04:15:00'),
(429, 0, 'may', '2022-05-17', '11:15:05', 'Konfirmasi surat jalan SJ-122050003', 'OPN', '2022-05-17 04:15:05', '2022-05-17 04:15:05'),
(430, 0, 'may', '2022-05-17', '11:15:16', 'Print invoice piutang IVP-122050003', 'OPN', '2022-05-17 04:15:16', '2022-05-17 04:15:16'),
(431, 0, 'may', '2022-05-17', '13:52:24', 'Print invoice piutang IVP-122050003', 'OPN', '2022-05-17 06:52:24', '2022-05-17 06:52:24'),
(432, 0, 'may', '2022-05-17', '13:54:06', 'Print invoice piutang IVP-022050034', 'OPN', '2022-05-17 06:54:06', '2022-05-17 06:54:06'),
(433, 0, 'may', '2022-05-17', '13:54:35', 'Print invoice piutang IVP-122050003', 'OPN', '2022-05-17 06:54:35', '2022-05-17 06:54:35'),
(434, 0, 'may', '2022-05-17', '13:56:38', 'Print invoice piutang IVP-122050003', 'OPN', '2022-05-17 06:56:38', '2022-05-17 06:56:38'),
(435, 0, 'may', '2022-05-17', '14:17:09', 'Print invoice piutang IVP-122050003', 'OPN', '2022-05-17 07:17:09', '2022-05-17 07:17:09'),
(436, 0, 'may', '2022-05-17', '14:18:24', 'Print invoice piutang IVP-122050003', 'OPN', '2022-05-17 07:18:24', '2022-05-17 07:18:24'),
(437, 0, 'may', '2022-05-17', '14:19:33', 'Print invoice piutang IVP-122050003', 'OPN', '2022-05-17 07:19:33', '2022-05-17 07:19:33'),
(438, 0, 'may', '2022-05-17', '14:19:57', 'Print invoice piutang IVP-122050003', 'OPN', '2022-05-17 07:19:57', '2022-05-17 07:19:57'),
(439, 0, 'admin', '2022-05-19', '13:40:37', 'Print invoice piutang IVP-122050003', 'OPN', '2022-05-19 06:40:37', '2022-05-19 06:40:37'),
(440, 0, 'may', '2022-05-19', '14:52:35', 'Print invoice piutang IVP-022050017', 'OPN', '2022-05-19 07:52:35', '2022-05-19 07:52:35'),
(441, 0, 'may', '2022-05-19', '15:32:03', 'Print invoice piutang IVP-122050002', 'OPN', '2022-05-19 08:32:03', '2022-05-19 08:32:03'),
(442, 0, 'may', '2022-05-19', '15:32:07', 'Print invoice piutang IVP-122050003', 'OPN', '2022-05-19 08:32:07', '2022-05-19 08:32:07'),
(443, 0, 'may', '2022-05-19', '15:38:49', 'Tambah pemesanan penjualan SO-122050004', 'OPN', '2022-05-19 08:38:49', '2022-05-19 08:38:49'),
(444, 0, 'may', '2022-05-19', '15:38:58', 'Konfirmasi pemesanan penjualan SO-122050004', 'OPN', '2022-05-19 08:38:58', '2022-05-19 08:38:58'),
(445, 0, 'may', '2022-05-19', '15:40:31', 'Tambah surat jalan SJ-122050004', 'OPN', '2022-05-19 08:40:31', '2022-05-19 08:40:31'),
(446, 0, 'may', '2022-05-19', '15:40:47', 'Konfirmasi surat jalan SJ-122050004', 'OPN', '2022-05-19 08:40:47', '2022-05-19 08:40:47'),
(447, 0, 'may', '2022-05-19', '15:45:30', 'Update invoice piutang IVP-122050004', 'OPN', '2022-05-19 08:45:30', '2022-05-19 08:45:30'),
(448, 0, 'may', '2022-05-19', '15:47:51', 'Tambah pelanggan PLG-017', 'OPN', '2022-05-19 08:47:51', '2022-05-19 08:47:51'),
(449, 0, 'may', '2022-05-19', '15:49:34', 'Tambah pemesanan penjualan SO-122050005', 'OPN', '2022-05-19 08:49:34', '2022-05-19 08:49:34'),
(450, 0, 'may', '2022-05-19', '15:49:40', 'Konfirmasi pemesanan penjualan SO-122050005', 'OPN', '2022-05-19 08:49:40', '2022-05-19 08:49:40'),
(451, 0, 'may', '2022-05-19', '15:50:22', 'Tambah surat jalan SJ-122050005', 'OPN', '2022-05-19 08:50:22', '2022-05-19 08:50:22'),
(452, 0, 'may', '2022-05-19', '15:50:26', 'Konfirmasi surat jalan SJ-122050005', 'OPN', '2022-05-19 08:50:26', '2022-05-19 08:50:26'),
(453, 0, 'may', '2022-05-19', '15:50:44', 'Update invoice piutang IVP-122050005', 'OPN', '2022-05-19 08:50:44', '2022-05-19 08:50:44'),
(454, 0, 'may', '2022-05-19', '15:53:45', 'Tambah pemesanan penjualan SO-122050006', 'OPN', '2022-05-19 08:53:45', '2022-05-19 08:53:45'),
(455, 0, 'may', '2022-05-19', '15:53:49', 'Konfirmasi pemesanan penjualan SO-122050006', 'OPN', '2022-05-19 08:53:49', '2022-05-19 08:53:49'),
(456, 0, 'may', '2022-05-19', '15:55:11', 'Tambah surat jalan SJ-122050006', 'OPN', '2022-05-19 08:55:11', '2022-05-19 08:55:11'),
(457, 0, 'may', '2022-05-19', '15:55:20', 'Konfirmasi surat jalan SJ-122050006', 'OPN', '2022-05-19 08:55:20', '2022-05-19 08:55:20'),
(458, 0, 'may', '2022-05-19', '15:55:34', 'Update invoice piutang IVP-122050006', 'OPN', '2022-05-19 08:55:34', '2022-05-19 08:55:34'),
(459, 0, 'may', '2022-05-19', '16:04:11', 'Tambah pemesanan penjualan SO-122050007', 'OPN', '2022-05-19 09:04:11', '2022-05-19 09:04:11'),
(460, 0, 'may', '2022-05-19', '16:04:21', 'Konfirmasi pemesanan penjualan SO-122050007', 'OPN', '2022-05-19 09:04:21', '2022-05-19 09:04:21'),
(461, 0, 'may', '2022-05-19', '16:05:36', 'Tambah surat jalan SJ-122050007', 'OPN', '2022-05-19 09:05:36', '2022-05-19 09:05:36'),
(462, 0, 'may', '2022-05-19', '16:05:44', 'Konfirmasi surat jalan SJ-122050007', 'OPN', '2022-05-19 09:05:44', '2022-05-19 09:05:44'),
(463, 0, 'may', '2022-05-19', '16:06:15', 'Update invoice piutang IVP-122050007', 'OPN', '2022-05-19 09:06:15', '2022-05-19 09:06:15'),
(464, 0, 'may', '2022-05-19', '16:10:06', 'Tambah pemesanan penjualan SO-122050008', 'OPN', '2022-05-19 09:10:06', '2022-05-19 09:10:06'),
(465, 0, 'may', '2022-05-19', '16:10:10', 'Konfirmasi pemesanan penjualan SO-122050008', 'OPN', '2022-05-19 09:10:10', '2022-05-19 09:10:10'),
(466, 0, 'may', '2022-05-19', '16:10:59', 'Tambah surat jalan SJ-122050008', 'OPN', '2022-05-19 09:10:59', '2022-05-19 09:10:59'),
(467, 0, 'may', '2022-05-19', '16:11:06', 'Konfirmasi surat jalan SJ-122050008', 'OPN', '2022-05-19 09:11:06', '2022-05-19 09:11:06'),
(468, 0, 'may', '2022-05-19', '16:11:26', 'Update invoice piutang IVP-122050008', 'OPN', '2022-05-19 09:11:26', '2022-05-19 09:11:26'),
(469, 0, 'may', '2022-05-19', '16:12:44', 'Update pelanggan PLG-014', 'OPN', '2022-05-19 09:12:44', '2022-05-19 09:12:44'),
(470, 0, 'may', '2022-05-19', '16:12:50', 'Hapus pelanggan PLG-003', 'OPN', '2022-05-19 09:12:50', '2022-05-19 09:12:50'),
(471, 0, 'may', '2022-05-19', '16:12:56', 'Hapus pelanggan PLG-004', 'OPN', '2022-05-19 09:12:56', '2022-05-19 09:12:56'),
(472, 0, 'may', '2022-05-19', '16:13:01', 'Hapus pelanggan PLG-006', 'OPN', '2022-05-19 09:13:01', '2022-05-19 09:13:01'),
(473, 0, 'may', '2022-05-19', '16:13:05', 'Hapus pelanggan PLG-007', 'OPN', '2022-05-19 09:13:05', '2022-05-19 09:13:05'),
(474, 0, 'may', '2022-05-19', '16:13:09', 'Hapus pelanggan PLG-008', 'OPN', '2022-05-19 09:13:09', '2022-05-19 09:13:09'),
(475, 0, 'may', '2022-05-19', '16:13:14', 'Hapus pelanggan PLG-010', 'OPN', '2022-05-19 09:13:14', '2022-05-19 09:13:14'),
(476, 0, 'may', '2022-05-19', '16:13:19', 'Hapus pelanggan PLG-011', 'OPN', '2022-05-19 09:13:19', '2022-05-19 09:13:19'),
(477, 0, 'may', '2022-05-19', '16:13:23', 'Hapus pelanggan PLG-012', 'OPN', '2022-05-19 09:13:23', '2022-05-19 09:13:23'),
(478, 0, 'may', '2022-05-19', '16:13:27', 'Hapus pelanggan PLG-013', 'OPN', '2022-05-19 09:13:27', '2022-05-19 09:13:27'),
(479, 0, 'may', '2022-05-19', '16:13:37', 'Hapus pelanggan PLG-015', 'OPN', '2022-05-19 09:13:37', '2022-05-19 09:13:37'),
(480, 0, 'may', '2022-05-19', '16:16:42', 'Tambah pemesanan penjualan SO-122050009', 'OPN', '2022-05-19 09:16:42', '2022-05-19 09:16:42'),
(481, 0, 'may', '2022-05-19', '16:16:50', 'Konfirmasi pemesanan penjualan SO-122050009', 'OPN', '2022-05-19 09:16:50', '2022-05-19 09:16:50'),
(482, 0, 'may', '2022-05-19', '16:17:37', 'Tambah surat jalan SJ-122050009', 'OPN', '2022-05-19 09:17:37', '2022-05-19 09:17:37'),
(483, 0, 'may', '2022-05-19', '16:17:48', 'Konfirmasi surat jalan SJ-122050009', 'OPN', '2022-05-19 09:17:48', '2022-05-19 09:17:48'),
(484, 0, 'may', '2022-05-19', '16:18:08', 'Update invoice piutang IVP-122050009', 'OPN', '2022-05-19 09:18:08', '2022-05-19 09:18:08'),
(485, 0, 'may', '2022-05-19', '16:23:54', 'Tambah pemesanan penjualan SO-122050010', 'OPN', '2022-05-19 09:23:54', '2022-05-19 09:23:54'),
(486, 0, 'may', '2022-05-19', '16:24:00', 'Konfirmasi pemesanan penjualan SO-122050010', 'OPN', '2022-05-19 09:24:00', '2022-05-19 09:24:00'),
(487, 0, 'may', '2022-05-19', '16:25:29', 'Tambah surat jalan SJ-122050010', 'OPN', '2022-05-19 09:25:29', '2022-05-19 09:25:29'),
(488, 0, 'may', '2022-05-19', '16:25:57', 'Konfirmasi surat jalan SJ-122050010', 'OPN', '2022-05-19 09:25:57', '2022-05-19 09:25:57'),
(489, 0, 'may', '2022-05-19', '16:26:20', 'Update invoice piutang IVP-122050010', 'OPN', '2022-05-19 09:26:20', '2022-05-19 09:26:20'),
(490, 0, 'may', '2022-05-19', '16:26:31', 'Print invoice piutang IVP-122050004', 'OPN', '2022-05-19 09:26:31', '2022-05-19 09:26:31'),
(491, 0, 'may', '2022-05-19', '16:26:40', 'Print invoice piutang IVP-122050005', 'OPN', '2022-05-19 09:26:40', '2022-05-19 09:26:40'),
(492, 0, 'may', '2022-05-19', '16:26:46', 'Print invoice piutang IVP-122050006', 'OPN', '2022-05-19 09:26:46', '2022-05-19 09:26:46'),
(493, 0, 'may', '2022-05-19', '16:26:50', 'Print invoice piutang IVP-122050007', 'OPN', '2022-05-19 09:26:50', '2022-05-19 09:26:50'),
(494, 0, 'may', '2022-05-19', '16:26:55', 'Print invoice piutang IVP-122050008', 'OPN', '2022-05-19 09:26:55', '2022-05-19 09:26:55'),
(495, 0, 'may', '2022-05-19', '16:26:59', 'Print invoice piutang IVP-122050009', 'OPN', '2022-05-19 09:26:59', '2022-05-19 09:26:59'),
(496, 0, 'may', '2022-05-19', '16:27:04', 'Print invoice piutang IVP-122050010', 'OPN', '2022-05-19 09:27:04', '2022-05-19 09:27:04'),
(497, 0, 'may', '2022-05-20', '08:30:51', 'Tambah pemesanan penjualan SO-122050011', 'OPN', '2022-05-20 01:30:51', '2022-05-20 01:30:51'),
(498, 0, 'may', '2022-05-20', '08:31:29', 'Konfirmasi pemesanan penjualan SO-122050011', 'OPN', '2022-05-20 01:31:29', '2022-05-20 01:31:29'),
(499, 0, 'may', '2022-05-20', '08:33:53', 'Hapus pemesanan penjualan SO-122050011', 'OPN', '2022-05-20 01:33:53', '2022-05-20 01:33:53'),
(500, 0, 'may', '2022-05-20', '08:52:31', 'Tambah pemesanan penjualan SO-122050012', 'OPN', '2022-05-20 01:52:31', '2022-05-20 01:52:31'),
(501, 0, 'may', '2022-05-20', '08:53:00', 'Konfirmasi pemesanan penjualan SO-122050012', 'OPN', '2022-05-20 01:53:00', '2022-05-20 01:53:00'),
(502, 0, 'may', '2022-05-20', '08:56:04', 'Tambah surat jalan SJ-122050011', 'OPN', '2022-05-20 01:56:04', '2022-05-20 01:56:04'),
(503, 0, 'may', '2022-05-20', '08:56:10', 'Konfirmasi surat jalan SJ-122050011', 'OPN', '2022-05-20 01:56:10', '2022-05-20 01:56:10'),
(504, 0, 'may', '2022-05-20', '08:59:17', 'Tambah pemesanan penjualan SO-122050013', 'OPN', '2022-05-20 01:59:17', '2022-05-20 01:59:17'),
(505, 0, 'may', '2022-05-20', '08:59:25', 'Konfirmasi pemesanan penjualan SO-122050013', 'OPN', '2022-05-20 01:59:25', '2022-05-20 01:59:25'),
(506, 0, 'may', '2022-05-20', '09:00:30', 'Tambah surat jalan SJ-122050012', 'OPN', '2022-05-20 02:00:30', '2022-05-20 02:00:30'),
(507, 0, 'may', '2022-05-20', '09:00:44', 'Konfirmasi surat jalan SJ-122050012', 'OPN', '2022-05-20 02:00:44', '2022-05-20 02:00:44'),
(508, 0, 'may', '2022-05-20', '09:03:39', 'Update invoice piutang IVP-122050011', 'OPN', '2022-05-20 02:03:39', '2022-05-20 02:03:39'),
(509, 0, 'may', '2022-05-20', '09:03:52', 'Update invoice piutang IVP-122050012', 'OPN', '2022-05-20 02:03:52', '2022-05-20 02:03:52'),
(510, 0, 'may', '2022-05-20', '09:09:20', 'Tambah pemesanan penjualan SO-122050014', 'OPN', '2022-05-20 02:09:20', '2022-05-20 02:09:20'),
(511, 0, 'may', '2022-05-20', '09:09:26', 'Konfirmasi pemesanan penjualan SO-122050014', 'OPN', '2022-05-20 02:09:26', '2022-05-20 02:09:26'),
(512, 0, 'may', '2022-05-20', '09:10:46', 'Tambah surat jalan SJ-122050013', 'OPN', '2022-05-20 02:10:46', '2022-05-20 02:10:46'),
(513, 0, 'may', '2022-05-20', '09:11:02', 'Konfirmasi surat jalan SJ-122050013', 'OPN', '2022-05-20 02:11:02', '2022-05-20 02:11:02'),
(514, 0, 'may', '2022-05-20', '09:11:20', 'Update invoice piutang IVP-122050013', 'OPN', '2022-05-20 02:11:20', '2022-05-20 02:11:20'),
(515, 0, 'may', '2022-05-20', '09:21:07', 'Tambah pemesanan penjualan SO-122050015', 'OPN', '2022-05-20 02:21:07', '2022-05-20 02:21:07'),
(516, 0, 'may', '2022-05-20', '09:22:16', 'Konfirmasi pemesanan penjualan SO-122050015', 'OPN', '2022-05-20 02:22:16', '2022-05-20 02:22:16'),
(517, 0, 'may', '2022-05-20', '09:23:45', 'Tambah surat jalan SJ-122050014', 'OPN', '2022-05-20 02:23:45', '2022-05-20 02:23:45'),
(518, 0, 'may', '2022-05-20', '09:25:59', 'Konfirmasi surat jalan SJ-122050014', 'OPN', '2022-05-20 02:25:59', '2022-05-20 02:25:59'),
(519, 0, 'may', '2022-05-20', '09:26:21', 'Update invoice piutang IVP-122050014', 'OPN', '2022-05-20 02:26:21', '2022-05-20 02:26:21'),
(520, 0, 'may', '2022-05-20', '09:28:17', 'Tambah pemesanan penjualan SO-122050016', 'OPN', '2022-05-20 02:28:17', '2022-05-20 02:28:17'),
(521, 0, 'may', '2022-05-20', '09:28:39', 'Konfirmasi pemesanan penjualan SO-122050016', 'OPN', '2022-05-20 02:28:39', '2022-05-20 02:28:39'),
(522, 0, 'may', '2022-05-20', '09:30:00', 'Tambah surat jalan SJ-122050015', 'OPN', '2022-05-20 02:30:00', '2022-05-20 02:30:00'),
(523, 0, 'may', '2022-05-20', '09:30:21', 'Konfirmasi surat jalan SJ-122050015', 'OPN', '2022-05-20 02:30:21', '2022-05-20 02:30:21'),
(524, 0, 'may', '2022-05-20', '09:31:16', 'Update invoice piutang IVP-122050015', 'OPN', '2022-05-20 02:31:16', '2022-05-20 02:31:16'),
(525, 0, 'may', '2022-05-20', '09:42:58', 'Tambah pemesanan penjualan SO-122050017', 'OPN', '2022-05-20 02:42:58', '2022-05-20 02:42:58'),
(526, 0, 'may', '2022-05-20', '09:43:13', 'Konfirmasi pemesanan penjualan SO-122050017', 'OPN', '2022-05-20 02:43:13', '2022-05-20 02:43:13'),
(527, 0, 'may', '2022-05-20', '09:45:10', 'Tambah surat jalan SJ-122050016', 'OPN', '2022-05-20 02:45:10', '2022-05-20 02:45:10'),
(528, 0, 'may', '2022-05-20', '09:45:16', 'Konfirmasi surat jalan SJ-122050016', 'OPN', '2022-05-20 02:45:16', '2022-05-20 02:45:16'),
(529, 0, 'may', '2022-05-20', '09:45:40', 'Update invoice piutang IVP-122050016', 'OPN', '2022-05-20 02:45:40', '2022-05-20 02:45:40'),
(530, 0, 'may', '2022-05-20', '10:00:57', 'Print invoice piutang IVP-122050016', 'OPN', '2022-05-20 03:00:57', '2022-05-20 03:00:57'),
(531, 0, 'may', '2022-05-20', '10:53:01', 'Print invoice piutang IVP-122050016', 'OPN', '2022-05-20 03:53:01', '2022-05-20 03:53:01'),
(532, 0, 'may', '2022-05-20', '10:55:55', 'Tambah pemesanan penjualan SO-122050018', 'OPN', '2022-05-20 03:55:55', '2022-05-20 03:55:55'),
(533, 0, 'may', '2022-05-20', '10:56:00', 'Konfirmasi pemesanan penjualan SO-122050018', 'OPN', '2022-05-20 03:56:00', '2022-05-20 03:56:00'),
(534, 0, 'may', '2022-05-20', '10:57:16', 'Tambah surat jalan SJ-122050017', 'OPN', '2022-05-20 03:57:16', '2022-05-20 03:57:16'),
(535, 0, 'may', '2022-05-20', '10:57:32', 'Konfirmasi surat jalan SJ-122050017', 'OPN', '2022-05-20 03:57:32', '2022-05-20 03:57:32'),
(536, 0, 'may', '2022-05-20', '10:57:50', 'Update invoice piutang IVP-122050017', 'OPN', '2022-05-20 03:57:50', '2022-05-20 03:57:50'),
(537, 0, 'may', '2022-05-20', '10:58:26', 'Print invoice piutang IVP-122050017', 'OPN', '2022-05-20 03:58:26', '2022-05-20 03:58:26'),
(538, 0, 'may', '2022-05-20', '11:04:52', 'Tambah pelanggan PLG-018', 'OPN', '2022-05-20 04:04:52', '2022-05-20 04:04:52'),
(539, 0, 'may', '2022-05-20', '11:09:48', 'Tambah pemesanan penjualan SO-122050019', 'OPN', '2022-05-20 04:09:48', '2022-05-20 04:09:48'),
(540, 0, 'may', '2022-05-20', '11:09:58', 'Konfirmasi pemesanan penjualan SO-122050019', 'OPN', '2022-05-20 04:09:58', '2022-05-20 04:09:58'),
(541, 0, 'may', '2022-05-20', '11:11:03', 'Tambah surat jalan SJ-122050018', 'OPN', '2022-05-20 04:11:03', '2022-05-20 04:11:03'),
(542, 0, 'may', '2022-05-20', '11:11:09', 'Konfirmasi surat jalan SJ-122050018', 'OPN', '2022-05-20 04:11:09', '2022-05-20 04:11:09'),
(543, 0, 'may', '2022-05-20', '11:11:35', 'Update invoice piutang IVP-122050018', 'OPN', '2022-05-20 04:11:35', '2022-05-20 04:11:35'),
(544, 0, 'may', '2022-05-20', '11:27:02', 'Tambah pemesanan penjualan SO-122050020', 'OPN', '2022-05-20 04:27:02', '2022-05-20 04:27:02'),
(545, 0, 'may', '2022-05-20', '11:27:06', 'Konfirmasi pemesanan penjualan SO-122050020', 'OPN', '2022-05-20 04:27:06', '2022-05-20 04:27:06'),
(546, 0, 'may', '2022-05-20', '11:27:58', 'Tambah surat jalan SJ-122050019', 'OPN', '2022-05-20 04:27:58', '2022-05-20 04:27:58'),
(547, 0, 'may', '2022-05-20', '11:28:03', 'Konfirmasi surat jalan SJ-122050019', 'OPN', '2022-05-20 04:28:03', '2022-05-20 04:28:03'),
(548, 0, 'may', '2022-05-20', '11:28:49', 'Update invoice piutang IVP-122050019', 'OPN', '2022-05-20 04:28:49', '2022-05-20 04:28:49'),
(549, 0, 'may', '2022-05-20', '11:29:17', 'Print invoice piutang IVP-122050019', 'OPN', '2022-05-20 04:29:17', '2022-05-20 04:29:17'),
(550, 0, 'may', '2022-05-20', '11:34:37', 'Tambah pemesanan penjualan SO-122050021', 'OPN', '2022-05-20 04:34:37', '2022-05-20 04:34:37'),
(551, 0, 'may', '2022-05-20', '11:34:42', 'Konfirmasi pemesanan penjualan SO-122050021', 'OPN', '2022-05-20 04:34:42', '2022-05-20 04:34:42'),
(552, 0, 'may', '2022-05-20', '11:35:09', 'Tambah surat jalan SJ-122050020', 'OPN', '2022-05-20 04:35:09', '2022-05-20 04:35:09'),
(553, 0, 'may', '2022-05-20', '11:35:13', 'Konfirmasi surat jalan SJ-122050020', 'OPN', '2022-05-20 04:35:13', '2022-05-20 04:35:13'),
(554, 0, 'may', '2022-05-20', '11:35:29', 'Update invoice piutang IVP-122050020', 'OPN', '2022-05-20 04:35:29', '2022-05-20 04:35:29'),
(555, 0, 'may', '2022-05-20', '11:35:56', 'Print invoice piutang IVP-122050020', 'OPN', '2022-05-20 04:35:56', '2022-05-20 04:35:56'),
(556, 0, 'may', '2022-05-20', '11:50:39', 'Print invoice piutang IVP-122050018', 'OPN', '2022-05-20 04:50:39', '2022-05-20 04:50:39'),
(557, 0, 'may', '2022-05-20', '11:52:53', 'Print surat jalan SJ-122050017', 'OPN', '2022-05-20 04:52:53', '2022-05-20 04:52:53'),
(558, 0, 'may', '2022-05-20', '13:48:00', 'Print invoice piutang IVP-122050015', 'OPN', '2022-05-20 06:48:00', '2022-05-20 06:48:00'),
(559, 0, 'may', '2022-05-20', '13:49:14', 'Print invoice piutang IVP-122050014', 'OPN', '2022-05-20 06:49:14', '2022-05-20 06:49:14'),
(560, 0, 'may', '2022-05-20', '13:49:40', 'Print invoice piutang IVP-122050013', 'OPN', '2022-05-20 06:49:40', '2022-05-20 06:49:40'),
(561, 0, 'may', '2022-05-21', '11:54:30', 'Tambah pemesanan penjualan SO-122050022', 'OPN', '2022-05-21 04:54:30', '2022-05-21 04:54:30'),
(562, 0, 'may', '2022-05-21', '11:54:35', 'Konfirmasi pemesanan penjualan SO-122050022', 'OPN', '2022-05-21 04:54:35', '2022-05-21 04:54:35'),
(563, 0, 'may', '2022-05-21', '11:55:12', 'Tambah surat jalan SJ-122050021', 'OPN', '2022-05-21 04:55:12', '2022-05-21 04:55:12'),
(564, 0, 'may', '2022-05-21', '11:55:16', 'Konfirmasi surat jalan SJ-122050021', 'OPN', '2022-05-21 04:55:16', '2022-05-21 04:55:16'),
(565, 0, 'may', '2022-05-21', '11:55:33', 'Update invoice piutang IVP-122050021', 'OPN', '2022-05-21 04:55:33', '2022-05-21 04:55:33'),
(566, 0, 'may', '2022-05-21', '11:55:44', 'Print invoice piutang IVP-122050021', 'OPN', '2022-05-21 04:55:44', '2022-05-21 04:55:44'),
(567, 0, 'may', '2022-05-21', '11:57:46', 'Tambah pemesanan penjualan SO-122050023', 'OPN', '2022-05-21 04:57:46', '2022-05-21 04:57:46'),
(568, 0, 'may', '2022-05-21', '11:57:50', 'Konfirmasi pemesanan penjualan SO-122050023', 'OPN', '2022-05-21 04:57:50', '2022-05-21 04:57:50'),
(569, 0, 'may', '2022-05-21', '11:58:20', 'Tambah surat jalan SJ-122050022', 'OPN', '2022-05-21 04:58:20', '2022-05-21 04:58:20'),
(570, 0, 'may', '2022-05-21', '11:58:25', 'Konfirmasi surat jalan SJ-122050022', 'OPN', '2022-05-21 04:58:25', '2022-05-21 04:58:25'),
(571, 0, 'may', '2022-05-21', '11:58:45', 'Update invoice piutang IVP-122050022', 'OPN', '2022-05-21 04:58:45', '2022-05-21 04:58:45'),
(572, 0, 'may', '2022-05-21', '11:58:53', 'Print invoice piutang IVP-122050022', 'OPN', '2022-05-21 04:58:53', '2022-05-21 04:58:53'),
(573, 0, 'may', '2022-05-21', '14:36:49', 'Tambah pemesanan penjualan SO-122050024', 'OPN', '2022-05-21 07:36:49', '2022-05-21 07:36:49'),
(574, 0, 'may', '2022-05-21', '14:36:53', 'Konfirmasi pemesanan penjualan SO-122050024', 'OPN', '2022-05-21 07:36:53', '2022-05-21 07:36:53'),
(575, 0, 'may', '2022-05-21', '14:38:08', 'Tambah surat jalan SJ-122050023', 'OPN', '2022-05-21 07:38:08', '2022-05-21 07:38:08'),
(576, 0, 'may', '2022-05-21', '14:38:15', 'Konfirmasi surat jalan SJ-122050023', 'OPN', '2022-05-21 07:38:15', '2022-05-21 07:38:15'),
(577, 0, 'may', '2022-05-21', '14:39:30', 'Update invoice piutang IVP-122050023', 'OPN', '2022-05-21 07:39:30', '2022-05-21 07:39:30'),
(578, 0, 'may', '2022-05-21', '14:39:42', 'Print invoice piutang IVP-122050023', 'OPN', '2022-05-21 07:39:42', '2022-05-21 07:39:42'),
(579, 0, 'may', '2022-05-21', '14:42:22', 'Print invoice piutang IVP-122050023', 'OPN', '2022-05-21 07:42:22', '2022-05-21 07:42:22'),
(580, 0, 'may', '2022-05-23', '08:54:54', 'Tambah pemesanan penjualan SO-122050025', 'OPN', '2022-05-23 01:54:54', '2022-05-23 01:54:54'),
(581, 0, 'may', '2022-05-23', '08:55:00', 'Konfirmasi pemesanan penjualan SO-122050025', 'OPN', '2022-05-23 01:55:00', '2022-05-23 01:55:00'),
(582, 0, 'may', '2022-05-23', '08:57:34', 'Tambah surat jalan SJ-122050024', 'OPN', '2022-05-23 01:57:34', '2022-05-23 01:57:34'),
(583, 0, 'may', '2022-05-23', '08:57:40', 'Konfirmasi surat jalan SJ-122050024', 'OPN', '2022-05-23 01:57:40', '2022-05-23 01:57:40'),
(584, 0, 'may', '2022-05-23', '08:58:17', 'Update invoice piutang IVP-122050024', 'OPN', '2022-05-23 01:58:17', '2022-05-23 01:58:17'),
(585, 0, 'may', '2022-05-23', '08:59:24', 'Print invoice piutang IVP-122050024', 'OPN', '2022-05-23 01:59:24', '2022-05-23 01:59:24'),
(586, 0, 'may', '2022-05-23', '10:55:39', 'Tambah pemesanan penjualan SO-122050026', 'OPN', '2022-05-23 03:55:39', '2022-05-23 03:55:39'),
(587, 0, 'may', '2022-05-23', '10:55:43', 'Konfirmasi pemesanan penjualan SO-122050026', 'OPN', '2022-05-23 03:55:43', '2022-05-23 03:55:43'),
(588, 0, 'may', '2022-05-23', '10:56:12', 'Tambah surat jalan SJ-122050025', 'OPN', '2022-05-23 03:56:12', '2022-05-23 03:56:12'),
(589, 0, 'may', '2022-05-23', '10:56:16', 'Konfirmasi surat jalan SJ-122050025', 'OPN', '2022-05-23 03:56:16', '2022-05-23 03:56:16'),
(590, 0, 'may', '2022-05-23', '10:56:32', 'Update invoice piutang IVP-122050025', 'OPN', '2022-05-23 03:56:32', '2022-05-23 03:56:32'),
(591, 0, 'may', '2022-05-23', '10:56:38', 'Print invoice piutang IVP-122050025', 'OPN', '2022-05-23 03:56:38', '2022-05-23 03:56:38'),
(592, 0, 'may', '2022-05-23', '11:00:25', 'Tambah pemesanan penjualan SO-122050027', 'OPN', '2022-05-23 04:00:25', '2022-05-23 04:00:25'),
(593, 0, 'may', '2022-05-23', '11:00:31', 'Konfirmasi pemesanan penjualan SO-122050027', 'OPN', '2022-05-23 04:00:31', '2022-05-23 04:00:31'),
(594, 0, 'may', '2022-05-23', '11:01:46', 'Tambah surat jalan SJ-122050026', 'OPN', '2022-05-23 04:01:46', '2022-05-23 04:01:46'),
(595, 0, 'may', '2022-05-23', '11:01:51', 'Konfirmasi surat jalan SJ-122050026', 'OPN', '2022-05-23 04:01:51', '2022-05-23 04:01:51'),
(596, 0, 'may', '2022-05-23', '11:02:07', 'Update invoice piutang IVP-122050026', 'OPN', '2022-05-23 04:02:07', '2022-05-23 04:02:07'),
(597, 0, 'may', '2022-05-23', '11:02:13', 'Print invoice piutang IVP-122050026', 'OPN', '2022-05-23 04:02:13', '2022-05-23 04:02:13'),
(598, 0, 'may', '2022-05-23', '11:09:00', 'Tambah pemesanan penjualan SO-122050028', 'OPN', '2022-05-23 04:09:00', '2022-05-23 04:09:00'),
(599, 0, 'may', '2022-05-23', '11:09:05', 'Konfirmasi pemesanan penjualan SO-122050028', 'OPN', '2022-05-23 04:09:05', '2022-05-23 04:09:05'),
(600, 0, 'may', '2022-05-23', '11:09:43', 'Tambah surat jalan SJ-122050027', 'OPN', '2022-05-23 04:09:43', '2022-05-23 04:09:43'),
(601, 0, 'may', '2022-05-23', '11:09:48', 'Konfirmasi surat jalan SJ-122050027', 'OPN', '2022-05-23 04:09:48', '2022-05-23 04:09:48'),
(602, 0, 'may', '2022-05-23', '11:10:05', 'Update invoice piutang IVP-122050027', 'OPN', '2022-05-23 04:10:05', '2022-05-23 04:10:05'),
(603, 0, 'may', '2022-05-23', '11:13:56', 'Tambah pemesanan penjualan SO-122050029', 'OPN', '2022-05-23 04:13:56', '2022-05-23 04:13:56'),
(604, 0, 'may', '2022-05-23', '11:14:00', 'Konfirmasi pemesanan penjualan SO-122050029', 'OPN', '2022-05-23 04:14:00', '2022-05-23 04:14:00'),
(605, 0, 'may', '2022-05-23', '11:14:35', 'Tambah surat jalan SJ-122050028', 'OPN', '2022-05-23 04:14:35', '2022-05-23 04:14:35'),
(606, 0, 'may', '2022-05-23', '11:14:39', 'Konfirmasi surat jalan SJ-122050028', 'OPN', '2022-05-23 04:14:39', '2022-05-23 04:14:39'),
(607, 0, 'may', '2022-05-23', '11:14:58', 'Update invoice piutang IVP-122050028', 'OPN', '2022-05-23 04:14:58', '2022-05-23 04:14:58'),
(608, 0, 'may', '2022-05-23', '11:16:57', 'Tambah pemesanan penjualan SO-122050030', 'OPN', '2022-05-23 04:16:57', '2022-05-23 04:16:57'),
(609, 0, 'may', '2022-05-23', '11:17:01', 'Konfirmasi pemesanan penjualan SO-122050030', 'OPN', '2022-05-23 04:17:01', '2022-05-23 04:17:01'),
(610, 0, 'may', '2022-05-23', '11:17:40', 'Tambah surat jalan SJ-122050029', 'OPN', '2022-05-23 04:17:40', '2022-05-23 04:17:40'),
(611, 0, 'may', '2022-05-23', '11:17:44', 'Konfirmasi surat jalan SJ-122050029', 'OPN', '2022-05-23 04:17:44', '2022-05-23 04:17:44'),
(612, 0, 'may', '2022-05-23', '11:17:57', 'Update invoice piutang IVP-122050029', 'OPN', '2022-05-23 04:17:57', '2022-05-23 04:17:57'),
(613, 0, 'may', '2022-05-23', '11:19:02', 'Print invoice piutang IVP-122050010', 'OPN', '2022-05-23 04:19:02', '2022-05-23 04:19:02'),
(614, 0, 'may', '2022-05-23', '11:19:52', 'Print invoice piutang IVP-122050027', 'OPN', '2022-05-23 04:19:52', '2022-05-23 04:19:52'),
(615, 0, 'may', '2022-05-23', '11:19:57', 'Print invoice piutang IVP-122050028', 'OPN', '2022-05-23 04:19:57', '2022-05-23 04:19:57'),
(616, 0, 'may', '2022-05-23', '11:20:01', 'Print invoice piutang IVP-122050029', 'OPN', '2022-05-23 04:20:01', '2022-05-23 04:20:01'),
(617, 0, 'admin', '2022-11-11', '12:24:49', 'Tambah rak 12', 'OPN', '2022-11-11 05:24:49', '2022-11-11 05:24:49'),
(618, 0, 'admin', '2022-11-11', '12:25:08', 'Update ppn ', 'OPN', '2022-11-11 05:25:08', '2022-11-11 05:25:08'),
(619, 0, 'admin', '2022-11-11', '12:26:41', 'Tambah gudang GUD-002', 'OPN', '2022-11-11 05:26:41', '2022-11-11 05:26:41'),
(620, 0, 'admin', '2022-11-11', '12:27:07', 'Update gudang GUD-001', 'OPN', '2022-11-11 05:27:07', '2022-11-11 05:27:07'),
(621, 0, 'admin', '2022-11-11', '12:29:24', 'Tambah satuan Dus', 'OPN', '2022-11-11 05:29:24', '2022-11-11 05:29:24'),
(622, 0, 'admin', '2022-11-11', '12:43:41', 'Tambah item FF-012', 'OPN', '2022-11-11 05:43:41', '2022-11-11 05:43:41'),
(623, 0, 'admin', '2022-11-11', '12:45:17', 'Tambah pemesanan pembelian PO-022110001', 'OPN', '2022-11-11 05:45:17', '2022-11-11 05:45:17'),
(624, 0, 'admin', '2022-11-11', '12:45:26', 'Konfirmasi pemesanan pembelian PO-022110001', 'OPN', '2022-11-11 05:45:26', '2022-11-11 05:45:26'),
(625, 0, 'admin', '2022-11-11', '12:47:52', 'Tambah jabatan Sales', 'OPN', '2022-11-11 05:47:52', '2022-11-11 05:47:52'),
(626, 0, 'admin', '2022-11-11', '12:48:25', 'Tambah karyawan KAR-014', 'OPN', '2022-11-11 05:48:25', '2022-11-11 05:48:25'),
(627, 0, 'admin', '2022-11-11', '12:49:11', 'Buat penerimaan barang LPB-022110001', 'OPN', '2022-11-11 05:49:11', '2022-11-11 05:49:11'),
(628, 0, 'admin', '2022-11-11', '12:49:26', 'Konfirmasi penerimaan barang LPB-022110001', 'OPN', '2022-11-11 05:49:26', '2022-11-11 05:49:26'),
(629, 0, 'admin', '2022-11-11', '13:14:06', 'Tambah pemesanan penjualan SO-022110001', 'OPN', '2022-11-11 06:14:06', '2022-11-11 06:14:06'),
(630, 0, 'admin', '2022-11-11', '13:15:20', 'Konfirmasi pemesanan penjualan SO-022110001', 'OPN', '2022-11-11 06:15:20', '2022-11-11 06:15:20'),
(631, 0, 'admin', '2022-11-11', '13:16:12', 'Tambah surat jalan SJ-022110001', 'OPN', '2022-11-11 06:16:12', '2022-11-11 06:16:12'),
(632, 0, 'admin', '2022-11-11', '13:16:22', 'Konfirmasi surat jalan SJ-022110001', 'OPN', '2022-11-11 06:16:22', '2022-11-11 06:16:22'),
(633, 0, 'admin', '2022-11-11', '13:23:39', 'Tambah pemesanan penjualan SO-022110002', 'OPN', '2022-11-11 06:23:39', '2022-11-11 06:23:39'),
(634, 0, 'admin', '2022-11-11', '13:24:16', 'Konfirmasi pemesanan penjualan SO-022110002', 'OPN', '2022-11-11 06:24:16', '2022-11-11 06:24:16'),
(635, 0, 'admin', '2022-11-11', '13:25:34', 'Tambah surat jalan SJ-022110002', 'OPN', '2022-11-11 06:25:34', '2022-11-11 06:25:34'),
(636, 0, 'admin', '2022-11-11', '13:26:14', 'Konfirmasi surat jalan SJ-022110002', 'OPN', '2022-11-11 06:26:14', '2022-11-11 06:26:14'),
(637, 0, 'admin', '2022-11-11', '13:48:40', 'Tambah pemesanan pembelian PO-022110002', 'OPN', '2022-11-11 06:48:40', '2022-11-11 06:48:40'),
(638, 0, 'admin', '2022-11-11', '13:50:21', 'Konfirmasi pemesanan pembelian PO-022110002', 'OPN', '2022-11-11 06:50:21', '2022-11-11 06:50:21'),
(639, 0, 'admin', '2022-11-11', '13:52:22', 'Tambah penjualan kasir KSR-22110001', 'OPN', '2022-11-11 06:52:22', '2022-11-11 06:52:22'),
(640, 0, 'admin', '2022-11-11', '13:52:22', 'Print penjualan kasir KSR-22110001', 'OPN', '2022-11-11 06:52:22', '2022-11-11 06:52:22'),
(641, 0, 'admin', '2022-12-06', '23:33:08', 'Tambah pemesanan penjualan SO-022120001', 'OPN', '2022-12-06 16:33:08', '2022-12-06 16:33:08'),
(642, 0, 'admin', '2022-12-06', '23:33:30', 'Konfirmasi pemesanan penjualan SO-022120001', 'OPN', '2022-12-06 16:33:30', '2022-12-06 16:33:30'),
(643, 0, 'admin', '2022-12-06', '23:34:21', 'Tambah surat jalan SJ-022120001', 'OPN', '2022-12-06 16:34:21', '2022-12-06 16:34:21'),
(644, 0, 'admin', '2022-12-06', '23:34:29', 'Konfirmasi surat jalan SJ-022120001', 'OPN', '2022-12-06 16:34:29', '2022-12-06 16:34:29'),
(645, 0, 'admin', '2022-12-06', '23:35:29', 'Tambah pemesanan penjualan SO-022120002', 'OPN', '2022-12-06 16:35:29', '2022-12-06 16:35:29'),
(646, 0, 'admin', '2022-12-06', '23:47:06', 'Tambah penjualan kasir KSR-22120001', 'OPN', '2022-12-06 16:47:06', '2022-12-06 16:47:06'),
(647, 0, 'admin', '2022-12-06', '23:47:06', 'Print penjualan kasir KSR-22120001', 'OPN', '2022-12-06 16:47:06', '2022-12-06 16:47:06'),
(648, 0, 'admin', '2022-12-06', '23:53:07', 'Print surat jalan SJ-022120001', 'OPN', '2022-12-06 16:53:07', '2022-12-06 16:53:07'),
(649, 0, 'admin', '2022-12-07', '00:06:13', 'Tambah penjualan kasir KSR-22120002', 'OPN', '2022-12-06 17:06:13', '2022-12-06 17:06:13'),
(650, 0, 'admin', '2022-12-07', '00:06:13', 'Print penjualan kasir KSR-22120002', 'OPN', '2022-12-06 17:06:13', '2022-12-06 17:06:13'),
(651, 0, 'admin', '2022-12-07', '00:06:57', 'Tambah penjualan kasir KSR-22120003', 'OPN', '2022-12-06 17:06:57', '2022-12-06 17:06:57'),
(652, 0, 'admin', '2022-12-07', '00:06:57', 'Print penjualan kasir KSR-22120003', 'OPN', '2022-12-06 17:06:57', '2022-12-06 17:06:57'),
(653, 0, 'admin', '2022-12-07', '00:07:54', 'Print surat jalan SJ-022120001', 'OPN', '2022-12-06 17:07:54', '2022-12-06 17:07:54'),
(654, 0, 'admin', '2022-12-07', '00:13:46', 'Update item FF-002', 'OPN', '2022-12-06 17:13:46', '2022-12-06 17:13:46'),
(655, 0, 'admin', '2022-12-07', '00:17:25', 'Tambah pemesanan pembelian PO-022120001', 'OPN', '2022-12-06 17:17:25', '2022-12-06 17:17:25'),
(656, 0, 'admin', '2022-12-07', '00:17:36', 'Konfirmasi pemesanan pembelian PO-022120001', 'OPN', '2022-12-06 17:17:36', '2022-12-06 17:17:36'),
(657, 0, 'admin', '2022-12-20', '14:51:11', 'Ubah data jabatan Kasir', 'OPN', '2022-12-20 19:51:11', '2022-12-20 19:51:11'),
(658, 0, 'admin', '2023-01-03', '19:32:44', 'Tambah user Kasir1', 'OPN', '2023-01-04 00:32:44', '2023-01-04 00:32:44'),
(659, 0, 'admin', '2023-01-04', '11:37:12', 'Reset password Kasir1', 'OPN', '2023-01-04 16:37:12', '2023-01-04 16:37:12'),
(660, 0, 'Ardian', '2023-01-20', '14:27:10', 'Ardian Membuat Transaksi Nomor KSR-23010006', 'I', '2023-01-20 14:27:10', '2023-01-20 14:27:10'),
(661, 0, 'Ardian', '2023-01-20', '14:27:21', 'Ardian Membuat Transaksi Nomor KSR-23010007', 'I', '2023-01-20 14:27:21', '2023-01-20 14:27:21'),
(662, 0, 'Ardian', '2023-01-20', '14:27:35', 'Ardian Membuat Transaksi Nomor KSR-23010008', 'I', '2023-01-20 14:27:35', '2023-01-20 14:27:35'),
(663, 0, 'Ardian', '2023-01-20', '14:40:55', 'Ardian Membuat Transaksi Nomor KSR-23010009', 'I', '2023-01-20 14:40:55', '2023-01-20 14:40:55'),
(664, 0, 'Ardian', '2023-01-20', '14:45:11', 'Ardian Membuat Transaksi Nomor KSR-23010010', 'I', '2023-01-20 14:45:11', '2023-01-20 14:45:11'),
(665, 0, 'Ardian', '2023-01-20', '14:45:30', 'Ardian Membuat Retur Transaksi Nomor RKS-23010001', 'I', '2023-01-20 14:45:30', '2023-01-20 14:45:30'),
(666, 0, 'Ardian', '2023-01-21', '11:31:13', 'Ardian Membuat Transaksi Nomor KSR-23010011', 'I', '2023-01-21 11:31:13', '2023-01-21 11:31:13'),
(667, 0, 'Ardian', '2023-01-21', '11:31:24', 'Ardian Membuat Retur Transaksi Nomor RKS-23010002', 'I', '2023-01-21 11:31:24', '2023-01-21 11:31:24'),
(668, 0, 'Ardian', '2023-01-21', '11:38:00', 'Ardian Membuat Transaksi Nomor KSR-23010012', 'I', '2023-01-21 11:38:00', '2023-01-21 11:38:00'),
(669, 0, 'Ardian', '2023-01-24', '11:42:22', 'Ardian Membuat Transaksi Nomor KSR-23010013', 'I', '2023-01-24 11:42:22', '2023-01-24 11:42:22'),
(670, 0, 'Ardian', '2023-01-24', '11:42:41', 'Ardian Membuat Retur Transaksi Nomor RKS-23010003', 'I', '2023-01-24 11:42:41', '2023-01-24 11:42:41'),
(671, 0, 'Ardian', '2023-01-24', '11:49:52', 'Ardian Membuat Transaksi Nomor KSR-23010014', 'I', '2023-01-24 11:49:52', '2023-01-24 11:49:52'),
(672, 0, 'Ardian', '2023-01-24', '11:50:27', 'Ardian Membuat Retur Transaksi Nomor RKS-23010004', 'I', '2023-01-24 11:50:27', '2023-01-24 11:50:27'),
(673, 0, 'Ardian', '2023-01-24', '11:56:01', 'Ardian Membuat Mutasi Nomor WHT-23010001', 'I', '2023-01-24 11:56:01', '2023-01-24 11:56:01'),
(674, 0, 'Ardian', '2023-01-24', '12:03:14', 'Ardian Mengubah Produk dengan kode  ', 'I', '2023-01-24 12:03:14', '2023-01-24 12:03:14'),
(675, 0, 'Ardian', '2023-01-24', '12:04:45', 'Ardian Mengubah Produk dengan kode  ', 'I', '2023-01-24 12:04:45', '2023-01-24 12:04:45'),
(676, 0, 'Ardian', '2023-01-24', '12:05:18', 'Ardian Membuat Mutasi Nomor WHT-23010002', 'I', '2023-01-24 12:05:18', '2023-01-24 12:05:18'),
(677, 0, 'Ardian', '2023-01-24', '12:06:43', 'Ardian Membuat Mutasi Nomor WHT-23010003', 'I', '2023-01-24 12:06:43', '2023-01-24 12:06:43'),
(678, 0, 'Ardian', '2023-01-24', '12:10:47', 'Ardian Membuat Mutasi Nomor WHT-23010004', 'I', '2023-01-24 12:10:47', '2023-01-24 12:10:47'),
(679, 0, 'Ardian', '2023-01-24', '12:11:56', 'Ardian Mengonfirmasi Mutasi Nomor WHT-23010004', 'I', '2023-01-24 12:11:56', '2023-01-24 12:11:56'),
(680, 0, 'Ardian', '2023-01-24', '12:17:12', 'Ardian Mengubah Mutasi Nomor WHT-23010003', 'I', '2023-01-24 12:17:12', '2023-01-24 12:17:12'),
(681, 0, 'Ardian', '2023-01-24', '12:17:16', 'Ardian Mengonfirmasi Mutasi Nomor WHT-23010003', 'I', '2023-01-24 12:17:16', '2023-01-24 12:17:16'),
(682, 0, 'Ardian', '2023-01-24', '12:17:18', 'Ardian Membatalkan Mutasi Nomor WHT-23010002', 'I', '2023-01-24 12:17:18', '2023-01-24 12:17:18'),
(683, 0, 'Ardian', '2023-01-24', '12:17:21', 'Ardian Membatalkan Mutasi Nomor WHT-23010001', 'I', '2023-01-24 12:17:21', '2023-01-24 12:17:21'),
(684, 0, 'Ardian', '2023-01-24', '12:17:56', 'Ardian Membuat Transaksi Nomor KSR-23010015', 'I', '2023-01-24 12:17:56', '2023-01-24 12:17:56'),
(685, 0, 'Ardian', '2023-01-31', '13:12:34', 'Ardian Membuat Transaksi Nomor KSR-23010016', 'I', '2023-01-31 13:12:34', '2023-01-31 13:12:34'),
(686, 0, 'Ardian', '2023-01-31', '13:13:29', 'Ardian Membuat Retur Transaksi Nomor RKS-23010005', 'I', '2023-01-31 13:13:29', '2023-01-31 13:13:29'),
(687, 0, 'Ardian', '2023-02-01', '02:58:50', 'Ardian Membuat Retur Transaksi Nomor RKS-23020001', 'I', '2023-02-01 02:58:50', '2023-02-01 02:58:50'),
(688, 0, 'Ardian', '2023-02-01', '03:03:49', 'Ardian Membuat Retur Transaksi Nomor RKS-23020002', 'I', '2023-02-01 03:03:49', '2023-02-01 03:03:49'),
(689, 0, 'Ardian', '2023-02-13', '06:19:51', 'Ardian Mengubah Produk dengan kode  ', 'I', '2023-02-13 06:19:51', '2023-02-13 06:19:51'),
(690, 0, 'Ardian', '2023-02-13', '06:20:19', 'Ardian Mengubah Produk dengan kode  ', 'I', '2023-02-13 06:20:19', '2023-02-13 06:20:19'),
(691, 0, 'Ardian', '2023-02-13', '06:20:34', 'Ardian Mengubah Produk dengan kode  ', 'I', '2023-02-13 06:20:34', '2023-02-13 06:20:34'),
(692, 0, 'Ardian', '2023-02-13', '06:32:41', 'Ardian Mengubah Produk dengan kode  ', 'I', '2023-02-13 06:32:41', '2023-02-13 06:32:41'),
(693, 0, 'Ardian', '2023-02-13', '06:33:06', 'Ardian Mengubah Produk dengan kode  ', 'I', '2023-02-13 06:33:06', '2023-02-13 06:33:06'),
(694, 0, 'Ardian', '2023-02-13', '06:35:15', 'Ardian Mengubah Produk dengan kode  ', 'I', '2023-02-13 06:35:15', '2023-02-13 06:35:15'),
(695, 0, 'Ardian', '2023-02-13', '06:35:24', 'Ardian Mengubah Produk dengan kode  ', 'I', '2023-02-13 06:35:24', '2023-02-13 06:35:24'),
(696, 0, 'Ardian', '2023-02-15', '07:55:47', 'Ardian Mengubah Produk dengan kode  ', 'I', '2023-02-15 07:55:47', '2023-02-15 07:55:47'),
(697, 0, 'Ardian', '2023-02-15', '08:10:35', 'Ardian Membuat Mutasi Nomor WHT-23020001', 'I', '2023-02-15 08:10:35', '2023-02-15 08:10:35'),
(698, 0, 'Ardian', '2023-02-15', '08:10:48', 'Ardian Mengubah Mutasi Nomor WHT-23020001', 'I', '2023-02-15 08:10:48', '2023-02-15 08:10:48'),
(699, 0, 'Ardian', '2023-02-15', '08:10:52', 'Ardian Mengonfirmasi Mutasi Nomor WHT-23020001', 'I', '2023-02-15 08:10:52', '2023-02-15 08:10:52'),
(700, 0, 'Ardian', '2023-02-15', '08:11:31', 'Ardian Membuat Mutasi Nomor WHT-23020002', 'I', '2023-02-15 08:11:31', '2023-02-15 08:11:31'),
(701, 0, 'Ardian', '2023-02-15', '08:11:37', 'Ardian Mengubah Mutasi Nomor WHT-23020002', 'I', '2023-02-15 08:11:37', '2023-02-15 08:11:37'),
(702, 0, 'Ardian', '2023-02-15', '08:11:40', 'Ardian Membatalkan Mutasi Nomor WHT-23020002', 'I', '2023-02-15 08:11:40', '2023-02-15 08:11:40'),
(703, 0, 'Ardian', '2023-02-15', '08:12:40', 'Ardian Membuat Product dengan Kode FF-013', 'I', '2023-02-15 08:12:40', '2023-02-15 08:12:40'),
(704, 0, 'Ardian', '2023-02-15', '08:15:23', 'Ardian Mengubah Produk dengan kode  ', 'I', '2023-02-15 08:15:23', '2023-02-15 08:15:23'),
(705, 0, 'Ardian', '2023-02-15', '08:17:59', 'Ardian Membuat Retur Transaksi Nomor RKS-23020003', 'I', '2023-02-15 08:17:59', '2023-02-15 08:17:59'),
(706, 0, 'Ardian', '2023-02-15', '09:33:00', 'Ardian Mengubah Produk dengan kode  ', 'I', '2023-02-15 09:33:00', '2023-02-15 09:33:00'),
(707, 0, 'Ardian', '2023-02-15', '09:33:56', 'Ardian Membuat Transaksi Nomor KSR-23020001', 'I', '2023-02-15 09:33:56', '2023-02-15 09:33:56'),
(708, 0, 'Ardian', '2023-02-15', '09:34:44', 'Ardian Membuat Retur Transaksi Nomor RKS-23020004', 'I', '2023-02-15 09:34:44', '2023-02-15 09:34:44'),
(709, 0, 'Ardian', '2023-03-02', '04:06:15', 'Ardian Membuat Mutasi Nomor WHT-23030001', 'I', '2023-03-02 04:06:15', '2023-03-02 04:06:15'),
(710, 0, 'Ardian', '2023-03-02', '04:06:48', 'Ardian Membatalkan Mutasi Nomor WHT-23030001', 'I', '2023-03-02 04:06:48', '2023-03-02 04:06:48'),
(711, 0, 'Ardian', '2023-03-02', '04:18:52', 'Ardian Membuat Product dengan Kode FF-014', 'I', '2023-03-02 04:18:52', '2023-03-02 04:18:52'),
(712, 0, 'admin', '2023-03-02', '11:22:25', 'Tambah item FF-015', 'OPN', '2023-03-02 16:22:25', '2023-03-02 16:22:25'),
(713, 0, 'admin', '2023-03-02', '11:23:35', 'Tambah pemesanan pembelian PO-023030001', 'OPN', '2023-03-02 16:23:35', '2023-03-02 16:23:35'),
(714, 0, 'admin', '2023-03-02', '11:24:04', 'Konfirmasi pemesanan pembelian PO-023030001', 'OPN', '2023-03-02 16:24:04', '2023-03-02 16:24:04'),
(715, 0, 'Ardian', '2023-03-02', '04:24:47', 'Ardian Mengubah Produk dengan kode  ', 'I', '2023-03-02 04:24:47', '2023-03-02 04:24:47'),
(716, 0, 'Ardian', '2023-03-02', '04:31:37', 'Ardian Mengubah Produk dengan kode  ', 'I', '2023-03-02 04:31:37', '2023-03-02 04:31:37'),
(717, 0, 'Ardian', '2023-03-02', '04:31:49', 'Ardian Mengubah Produk dengan kode  ', 'I', '2023-03-02 04:31:49', '2023-03-02 04:31:49'),
(718, 0, 'Ardian', '2023-03-02', '04:32:56', 'Ardian Membuat Product dengan Kode BB-001', 'I', '2023-03-02 04:32:56', '2023-03-02 04:32:56'),
(719, 0, 'Ardian', '2023-03-02', '04:33:38', 'Ardian Mengubah Produk dengan kode  ', 'I', '2023-03-02 04:33:38', '2023-03-02 04:33:38'),
(720, 0, 'Ardian', '2023-03-02', '04:34:03', 'Ardian Mengubah Produk dengan kode  ', 'I', '2023-03-02 04:34:03', '2023-03-02 04:34:03'),
(721, 0, 'Ardian', '2023-03-02', '04:34:59', 'Ardian Mengubah Produk dengan kode  ', 'I', '2023-03-02 04:34:59', '2023-03-02 04:34:59'),
(722, 0, 'Ardian', '2023-03-02', '04:35:13', 'Ardian Mengubah Produk dengan kode  ', 'I', '2023-03-02 04:35:13', '2023-03-02 04:35:13'),
(723, 0, 'Ardian', '2023-03-02', '04:36:34', 'Ardian Mengubah Produk dengan kode  ', 'I', '2023-03-02 04:36:34', '2023-03-02 04:36:34'),
(724, 0, 'admin', '2023-03-02', '11:37:35', 'Hapus item BB-001', 'OPN', '2023-03-02 16:37:35', '2023-03-02 16:37:35'),
(725, 0, 'admin', '2023-03-02', '11:37:59', 'Hapus item BB-001', 'OPN', '2023-03-02 16:37:59', '2023-03-02 16:37:59'),
(726, 0, 'admin', '2023-03-02', '11:39:42', 'Tambah item FF-016', 'OPN', '2023-03-02 16:39:42', '2023-03-02 16:39:42'),
(727, 0, 'Ardian', '2023-03-02', '04:46:51', 'Ardian Membuat Transaksi Nomor KSR-23030001', 'I', '2023-03-02 04:46:51', '2023-03-02 04:46:51'),
(728, 0, 'admin', '2023-03-02', '11:49:39', 'Tambah pelanggan PLG-019', 'OPN', '2023-03-02 16:49:39', '2023-03-02 16:49:39'),
(729, 0, 'Ardian', '2023-03-03', '04:38:32', 'Ardian Membuat Transaksi Nomor KSR-23030002', 'I', '2023-03-03 04:38:32', '2023-03-03 04:38:32'),
(730, 0, 'Ardian', '2023-03-03', '04:39:17', 'Ardian Membuat Transaksi Nomor KSR-23030003', 'I', '2023-03-03 04:39:17', '2023-03-03 04:39:17'),
(731, 0, 'admin', '2023-03-08', '12:46:22', 'Tambah item FF-017', 'OPN', '2023-03-08 17:46:22', '2023-03-08 17:46:22'),
(732, 0, 'admin', '2023-03-08', '12:46:41', 'Tambah satuan Ton', 'OPN', '2023-03-08 17:46:41', '2023-03-08 17:46:41'),
(733, 0, 'Ardian', '2023-04-13', '03:40:17', 'Ardian Membuat Product dengan Kode BB-003', 'I', '2023-04-13 03:40:17', '2023-04-13 03:40:17'),
(734, 0, 'Ardian', '2023-04-13', '03:45:04', 'Ardian Membuat Transaksi Nomor KSR-23040001', 'I', '2023-04-13 03:45:04', '2023-04-13 03:45:04'),
(735, 0, 'admin', '2023-04-13', '10:49:17', 'Tambah pemesanan pembelian PO-023040001', 'OPN', '2023-04-13 14:49:17', '2023-04-13 14:49:17'),
(736, 0, 'admin', '2023-04-13', '10:49:23', 'Konfirmasi pemesanan pembelian PO-023040001', 'OPN', '2023-04-13 14:49:23', '2023-04-13 14:49:23'),
(737, 0, 'Ardian', '2023-04-13', '04:02:02', 'Ardian Membuat Transaksi Nomor KSR-23040002', 'I', '2023-04-13 04:02:02', '2023-04-13 04:02:02'),
(738, 0, 'admin', '2023-04-13', '11:11:59', 'Tambah penjualan kasir KSR-23040003', 'OPN', '2023-04-13 15:11:59', '2023-04-13 15:11:59'),
(739, 0, 'admin', '2023-04-13', '11:11:59', 'Print penjualan kasir KSR-23040003', 'OPN', '2023-04-13 15:11:59', '2023-04-13 15:11:59'),
(740, 0, 'admin', '2023-04-28', '12:37:15', 'Tambah penjualan kasir KSR-23040004', 'OPN', '2023-04-28 16:37:15', '2023-04-28 16:37:15'),
(741, 0, 'admin', '2023-04-28', '12:37:15', 'Print penjualan kasir KSR-23040004', 'OPN', '2023-04-28 16:37:15', '2023-04-28 16:37:15'),
(742, 0, 'admin', '2023-04-28', '13:37:05', 'Tambah pemesanan penjualan SO-023040001', 'OPN', '2023-04-28 17:37:05', '2023-04-28 17:37:05');
INSERT INTO `eventlogs` (`id`, `idx`, `KodeUser`, `Tanggal`, `Jam`, `Keterangan`, `Tipe`, `created_at`, `updated_at`) VALUES
(743, 0, 'admin', '2023-04-28', '13:37:25', 'Konfirmasi pemesanan penjualan SO-023040001', 'OPN', '2023-04-28 17:37:25', '2023-04-28 17:37:25'),
(744, 0, 'admin', '2023-04-28', '13:38:34', 'Tambah surat jalan SJ-023040001', 'OPN', '2023-04-28 17:38:34', '2023-04-28 17:38:34'),
(745, 0, 'admin', '2023-04-28', '13:38:57', 'Konfirmasi surat jalan SJ-023040001', 'OPN', '2023-04-28 17:38:57', '2023-04-28 17:38:57'),
(746, 0, 'KASIR', '2023-04-28', '13:45:19', 'Tambah penjualan kasir KSR-23040005', 'OPN', '2023-04-28 17:45:19', '2023-04-28 17:45:19'),
(747, 0, 'KASIR', '2023-04-28', '13:45:19', 'Print penjualan kasir KSR-23040005', 'OPN', '2023-04-28 17:45:19', '2023-04-28 17:45:19'),
(748, 0, 'KASIR', '2023-04-28', '13:47:05', 'Print penjualan kasir KSR-23040005', 'OPN', '2023-04-28 17:47:05', '2023-04-28 17:47:05'),
(749, 0, 'KASIR', '2023-04-28', '13:50:59', 'Tambah pelunasan piutang PL-23040001 pada invoice IVP-023040001', 'OPN', '2023-04-28 17:50:59', '2023-04-28 17:50:59'),
(750, 0, 'KASIR', '2023-04-28', '13:52:42', 'Tambah pemesanan pembelian PO-023040002', 'OPN', '2023-04-28 17:52:42', '2023-04-28 17:52:42'),
(751, 0, 'KASIR', '2023-04-28', '13:52:55', 'Konfirmasi pemesanan pembelian PO-023040002', 'OPN', '2023-04-28 17:52:55', '2023-04-28 17:52:55'),
(752, 0, 'Ardian', '2023-05-01', '05:03:41', 'Ardian Membuat Transaksi Nomor KSR-23050001', 'I', '2023-05-01 05:03:41', '2023-05-01 05:03:41'),
(753, 0, 'Ardian', '2023-05-01', '05:26:44', 'Ardian Membuat Transaksi Nomor KSR-23050002', 'I', '2023-05-01 05:26:44', '2023-05-01 05:26:44'),
(754, 0, 'Ardian', '2023-05-01', '05:41:14', 'Ardian Membuat Transaksi Nomor KSR-23050003', 'I', '2023-05-01 05:41:14', '2023-05-01 05:41:14'),
(755, 0, 'Ardian', '2023-05-01', '05:49:50', 'Ardian Membuat Transaksi Nomor KSR-23050004', 'I', '2023-05-01 05:49:50', '2023-05-01 05:49:50'),
(756, 0, 'Ardian', '2023-05-01', '05:50:31', 'Ardian Membuat Transaksi Nomor KSR-23050005', 'I', '2023-05-01 05:50:31', '2023-05-01 05:50:31'),
(757, 0, 'Ardian', '2023-05-01', '06:37:52', 'Ardian Membuat Transaksi Nomor KSR-23050006', 'I', '2023-05-01 06:37:52', '2023-05-01 06:37:52'),
(758, 0, 'Ardian', '2023-05-01', '06:38:25', 'Ardian Membuat Transaksi Nomor KSR-23050007', 'I', '2023-05-01 06:38:25', '2023-05-01 06:38:25'),
(759, 0, 'Ardian', '2023-05-01', '06:38:47', 'Ardian Membuat Transaksi Nomor KSR-23050008', 'I', '2023-05-01 06:38:47', '2023-05-01 06:38:47'),
(760, 0, 'Ardian', '2023-05-01', '06:49:09', 'Ardian Membuat Transaksi Nomor KSR-23050009', 'I', '2023-05-01 06:49:09', '2023-05-01 06:49:09'),
(761, 0, 'Ardian', '2023-05-01', '06:55:29', 'Ardian Membuat Transaksi Nomor KSR-23050010', 'I', '2023-05-01 06:55:29', '2023-05-01 06:55:29'),
(762, 0, 'Ardian', '2023-05-01', '06:56:10', 'Ardian Membuat Transaksi Nomor KSR-23050011', 'I', '2023-05-01 06:56:10', '2023-05-01 06:56:10'),
(763, 0, 'Ardian', '2023-05-01', '07:13:03', 'Ardian Membuat Transaksi Nomor KSR-23050012', 'I', '2023-05-01 07:13:03', '2023-05-01 07:13:03'),
(764, 0, 'Ardian', '2023-05-01', '07:17:58', 'Ardian Membuat Transaksi Nomor KSR-23050013', 'I', '2023-05-01 07:17:58', '2023-05-01 07:17:58'),
(765, 0, 'Ardian', '2023-05-01', '07:25:10', 'Ardian Membuat Transaksi Nomor KSR-23050014', 'I', '2023-05-01 07:25:10', '2023-05-01 07:25:10'),
(766, 0, 'Ardian', '2023-05-01', '07:26:57', 'Ardian Membuat Transaksi Nomor KSR-23050015', 'I', '2023-05-01 07:26:57', '2023-05-01 07:26:57'),
(767, 0, 'Ardian', '2023-05-01', '07:47:20', 'Ardian Membuat Transaksi Nomor KSR-23050016', 'I', '2023-05-01 07:47:20', '2023-05-01 07:47:20'),
(768, 0, 'Ardian', '2023-05-01', '07:48:19', 'Ardian Membuat Transaksi Nomor KSR-23050017', 'I', '2023-05-01 07:48:19', '2023-05-01 07:48:19'),
(769, 0, 'Ardian', '2023-05-01', '07:49:58', 'Ardian Membuat Transaksi Nomor KSR-23050018', 'I', '2023-05-01 07:49:58', '2023-05-01 07:49:58'),
(770, 0, 'Ardian', '2023-05-01', '07:53:48', 'Ardian Membuat Transaksi Nomor KSR-23050019', 'I', '2023-05-01 07:53:48', '2023-05-01 07:53:48'),
(771, 0, 'Ardian', '2023-05-01', '07:54:17', 'Ardian Membuat Transaksi Nomor KSR-23050020', 'I', '2023-05-01 07:54:17', '2023-05-01 07:54:17'),
(772, 0, 'Ardian', '2023-05-01', '07:54:57', 'Ardian Membuat Transaksi Nomor KSR-23050021', 'I', '2023-05-01 07:54:57', '2023-05-01 07:54:57'),
(773, 0, 'Ardian', '2023-05-01', '07:55:22', 'Ardian Membuat Transaksi Nomor KSR-23050022', 'I', '2023-05-01 07:55:22', '2023-05-01 07:55:22'),
(774, 0, 'Ardian', '2023-05-01', '08:05:14', 'Ardian Membuat Transaksi Nomor KSR-23050023', 'I', '2023-05-01 08:05:14', '2023-05-01 08:05:14'),
(775, 0, 'Ardian', '2023-05-01', '08:18:04', 'Ardian Membuat Transaksi Nomor KSR-23050024', 'I', '2023-05-01 08:18:04', '2023-05-01 08:18:04'),
(776, 0, 'Ardian', '2023-05-01', '08:28:20', 'Ardian Membuat Transaksi Nomor KSR-23050025', 'I', '2023-05-01 08:28:20', '2023-05-01 08:28:20'),
(777, 0, 'Ardian', '2023-05-01', '08:28:51', 'Ardian Membuat Transaksi Nomor KSR-23050026', 'I', '2023-05-01 08:28:51', '2023-05-01 08:28:51'),
(778, 0, 'Ardian', '2023-05-01', '08:32:48', 'Ardian Membuat Transaksi Nomor KSR-23050027', 'I', '2023-05-01 08:32:48', '2023-05-01 08:32:48'),
(779, 0, 'Ardian', '2023-05-01', '08:33:24', 'Ardian Membuat Transaksi Nomor KSR-23050028', 'I', '2023-05-01 08:33:24', '2023-05-01 08:33:24'),
(780, 0, 'Ardian', '2023-05-01', '08:34:09', 'Ardian Membuat Transaksi Nomor KSR-23050029', 'I', '2023-05-01 08:34:09', '2023-05-01 08:34:09'),
(781, 0, 'Ardian', '2023-05-01', '08:53:12', 'Ardian Membuat Transaksi Nomor KSR-23050030', 'I', '2023-05-01 08:53:12', '2023-05-01 08:53:12'),
(782, 0, 'Ardian', '2023-05-01', '08:53:42', 'Ardian Membuat Transaksi Nomor KSR-23050031', 'I', '2023-05-01 08:53:42', '2023-05-01 08:53:42'),
(783, 0, 'Ardian', '2023-05-01', '08:58:26', 'Ardian Membuat Transaksi Nomor KSR-23050032', 'I', '2023-05-01 08:58:26', '2023-05-01 08:58:26'),
(784, 0, 'Ardian', '2023-05-10', '04:10:39', 'Ardian Membuat Transaksi Nomor KSR-23050033', 'I', '2023-05-10 04:10:39', '2023-05-10 04:10:39'),
(785, 0, 'Ardian', '2023-05-10', '04:11:35', 'Ardian Membuat Mutasi Nomor WHT-23050002', 'I', '2023-05-10 04:11:35', '2023-05-10 04:11:35'),
(786, 0, 'Ardian', '2023-05-10', '04:12:45', 'Ardian Membuat Transaksi Nomor KSR-23050034', 'I', '2023-05-10 04:12:45', '2023-05-10 04:12:45'),
(787, 0, 'Ardian', '2023-05-10', '08:02:15', 'Ardian Membuat Transaksi Nomor KSR-23050035', 'I', '2023-05-10 08:02:15', '2023-05-10 08:02:15'),
(788, 0, 'Ardian', '2023-05-10', '08:03:10', 'Ardian Membuat Transaksi Nomor KSR-23050036', 'I', '2023-05-10 08:03:10', '2023-05-10 08:03:10'),
(789, 0, 'Ardian', '2023-05-10', '08:06:24', 'Ardian Membuat Product dengan Kode BB-004', 'I', '2023-05-10 08:06:24', '2023-05-10 08:06:24'),
(790, 0, 'admin', '2023-05-10', '15:08:28', 'Tambah item BB-005', 'OPN', '2023-05-10 19:08:28', '2023-05-10 19:08:28'),
(791, 0, 'Ardian', '2023-05-12', '01:46:58', 'Ardian Membuat Transaksi Nomor KSR-23050037', 'I', '2023-05-12 01:46:58', '2023-05-12 01:46:58'),
(792, 0, 'Ardian', '2023-05-12', '01:47:25', 'Ardian Membuat Transaksi Nomor KSR-23050038', 'I', '2023-05-12 01:47:25', '2023-05-12 01:47:25'),
(793, 0, 'Ardian', '2023-05-12', '01:48:13', 'Ardian Membuat Transaksi Nomor KSR-23050039', 'I', '2023-05-12 01:48:13', '2023-05-12 01:48:13'),
(794, 0, 'Ardian', '2023-05-12', '01:49:01', 'Ardian Membuat Transaksi Nomor KSR-23050040', 'I', '2023-05-12 01:49:01', '2023-05-12 01:49:01'),
(795, 0, 'Ardian', '2023-05-12', '01:55:26', 'Ardian Membuat Transaksi Nomor KSR-23050041', 'I', '2023-05-12 01:55:26', '2023-05-12 01:55:26'),
(796, 0, 'Ardian', '2023-05-12', '01:57:21', 'Ardian Membuat Transaksi Nomor KSR-23050042', 'I', '2023-05-12 01:57:21', '2023-05-12 01:57:21'),
(797, 0, 'Ardian', '2023-05-12', '02:08:05', 'Ardian Membuat Transaksi Nomor KSR-23050043', 'I', '2023-05-12 02:08:05', '2023-05-12 02:08:05'),
(798, 0, 'Ardian', '2023-05-12', '02:10:02', 'Ardian Membuat Transaksi Nomor KSR-23050044', 'I', '2023-05-12 02:10:02', '2023-05-12 02:10:02'),
(799, 0, 'Ardian', '2023-05-12', '02:11:28', 'Ardian Membuat Transaksi Nomor KSR-23050045', 'I', '2023-05-12 02:11:28', '2023-05-12 02:11:28'),
(800, 0, 'Ardian', '2023-05-12', '02:13:28', 'Ardian Membuat Transaksi Nomor KSR-23050046', 'I', '2023-05-12 02:13:28', '2023-05-12 02:13:28'),
(801, 0, 'Ardian', '2023-05-12', '02:14:33', 'Ardian Membuat Transaksi Nomor KSR-23050047', 'I', '2023-05-12 02:14:33', '2023-05-12 02:14:33'),
(802, 0, 'Ardian', '2023-05-12', '06:41:18', 'Ardian Membuat Mutasi Nomor WHT-23050003', 'I', '2023-05-12 06:41:18', '2023-05-12 06:41:18'),
(803, 0, 'Ardian', '2023-05-12', '06:41:25', 'Ardian Membatalkan Mutasi Nomor WHT-23050003', 'I', '2023-05-12 06:41:25', '2023-05-12 06:41:25'),
(804, 0, 'Ardian', '2023-05-12', '06:41:57', 'Ardian Membuat Transaksi Nomor KSR-23050048', 'I', '2023-05-12 06:41:57', '2023-05-12 06:41:57'),
(805, 0, 'Ardian', '2023-05-12', '06:48:39', 'Ardian Membuat Transaksi Nomor KSR-23050049', 'I', '2023-05-12 06:48:39', '2023-05-12 06:48:39'),
(806, 0, 'Ardian', '2023-05-12', '06:48:39', 'Ardian Membuat Transaksi Nomor KSR-23050050', 'I', '2023-05-12 06:48:39', '2023-05-12 06:48:39'),
(807, 0, 'Ardian', '2023-05-12', '06:49:31', 'Ardian Membuat Transaksi Nomor KSR-23050051', 'I', '2023-05-12 06:49:31', '2023-05-12 06:49:31'),
(808, 0, 'Ardian', '2023-05-12', '06:59:51', 'Ardian Membuat Transaksi Nomor KSR-23050052', 'I', '2023-05-12 06:59:51', '2023-05-12 06:59:51'),
(809, 0, 'Ardian', '2023-05-22', '07:08:45', 'Ardian Membuat Transaksi Nomor KSR-23050053', 'I', '2023-05-22 07:08:45', '2023-05-22 07:08:45'),
(810, 0, 'Ardian', '2023-05-22', '07:09:32', 'Ardian Membuat Transaksi Nomor KSR-23050054', 'I', '2023-05-22 07:09:32', '2023-05-22 07:09:32'),
(811, 0, 'Ardian', '2023-05-22', '07:10:22', 'Ardian Membuat Transaksi Nomor KSR-23050055', 'I', '2023-05-22 07:10:22', '2023-05-22 07:10:22'),
(812, 0, 'Ardian', '2023-05-22', '07:11:23', 'Ardian Membuat Transaksi Nomor KSR-23050056', 'I', '2023-05-22 07:11:23', '2023-05-22 07:11:23'),
(813, 0, 'Ardian', '2023-05-23', '01:42:07', 'Ardian Membuat Mutasi Nomor WHT-23050004', 'I', '2023-05-23 01:42:07', '2023-05-23 01:42:07'),
(814, 0, 'Ardian', '2023-05-23', '01:42:20', 'Ardian Mengonfirmasi Mutasi Nomor WHT-23050004', 'I', '2023-05-23 01:42:20', '2023-05-23 01:42:20'),
(815, 0, 'admin', '2023-05-23', '08:45:16', 'Tambah pemesanan pembelian PO-023050001', 'OPN', '2023-05-23 12:45:16', '2023-05-23 12:45:16'),
(816, 0, 'admin', '2023-05-23', '08:45:26', 'Konfirmasi pemesanan pembelian PO-023050001', 'OPN', '2023-05-23 12:45:26', '2023-05-23 12:45:26'),
(817, 0, 'Ardian', '2023-05-23', '01:53:04', 'Ardian Membuat Mutasi Nomor WHT-23050005', 'I', '2023-05-23 01:53:04', '2023-05-23 01:53:04'),
(818, 0, 'Ardian', '2023-05-23', '01:54:06', 'Ardian Mengonfirmasi Mutasi Nomor WHT-23050005', 'I', '2023-05-23 01:54:06', '2023-05-23 01:54:06'),
(819, 0, 'Ardian', '2023-05-23', '02:09:19', 'Ardian Membuat Mutasi Nomor WHT-23050006', 'I', '2023-05-23 02:09:19', '2023-05-23 02:09:19'),
(820, 0, 'Ardian', '2023-05-23', '02:09:23', 'Ardian Mengonfirmasi Mutasi Nomor WHT-23050006', 'I', '2023-05-23 02:09:23', '2023-05-23 02:09:23'),
(821, 0, 'Ardian', '2023-05-23', '02:13:39', 'Ardian Membuat Mutasi Nomor WHT-23050007', 'I', '2023-05-23 02:13:39', '2023-05-23 02:13:39'),
(822, 0, 'Ardian', '2023-05-23', '02:14:07', 'Ardian Mengonfirmasi Mutasi Nomor WHT-23050007', 'I', '2023-05-23 02:14:07', '2023-05-23 02:14:07'),
(823, 0, 'admin', '2023-05-23', '09:17:29', 'Hapus item FF-012', 'OPN', '2023-05-23 13:17:29', '2023-05-23 13:17:29'),
(824, 0, 'Ardian', '2023-05-23', '02:34:50', 'Ardian Membuat Mutasi Nomor WHT-23050008', 'I', '2023-05-23 02:34:50', '2023-05-23 02:34:50'),
(825, 0, 'Ardian', '2023-05-23', '02:34:57', 'Ardian Mengonfirmasi Mutasi Nomor WHT-23050008', 'I', '2023-05-23 02:34:57', '2023-05-23 02:34:57'),
(826, 0, 'Ardian', '2023-05-23', '02:37:57', 'Ardian Membuat Mutasi Nomor WHT-23050009', 'I', '2023-05-23 02:37:57', '2023-05-23 02:37:57'),
(827, 0, 'Ardian', '2023-05-23', '02:38:01', 'Ardian Mengonfirmasi Mutasi Nomor WHT-23050009', 'I', '2023-05-23 02:38:01', '2023-05-23 02:38:01'),
(828, 0, 'Ardian', '2023-05-23', '02:43:47', 'Ardian Membuat Mutasi Nomor WHT-23050010', 'I', '2023-05-23 02:43:47', '2023-05-23 02:43:47'),
(829, 0, 'Ardian', '2023-05-23', '02:43:50', 'Ardian Mengonfirmasi Mutasi Nomor WHT-23050010', 'I', '2023-05-23 02:43:50', '2023-05-23 02:43:50'),
(830, 0, 'Ardian', '2023-05-23', '03:00:14', 'Ardian Membuat Mutasi Nomor WHT-23050011', 'I', '2023-05-23 03:00:14', '2023-05-23 03:00:14'),
(831, 0, 'Ardian', '2023-05-23', '03:00:18', 'Ardian Mengonfirmasi Mutasi Nomor WHT-23050011', 'I', '2023-05-23 03:00:18', '2023-05-23 03:00:18'),
(832, 0, 'Ardian', '2023-05-23', '03:03:24', 'Ardian Membuat Mutasi Nomor WHT-23050012', 'I', '2023-05-23 03:03:24', '2023-05-23 03:03:24'),
(833, 0, 'Ardian', '2023-05-23', '03:03:28', 'Ardian Mengonfirmasi Mutasi Nomor WHT-23050012', 'I', '2023-05-23 03:03:28', '2023-05-23 03:03:28'),
(834, 0, 'Ardian', '2023-05-23', '03:44:04', 'Ardian Membuat Transaksi Nomor KSR-23050057', 'I', '2023-05-23 03:44:04', '2023-05-23 03:44:04'),
(835, 0, 'Ardian', '2023-05-23', '03:45:05', 'Ardian Membuat Mutasi Nomor WHT-23050013', 'I', '2023-05-23 03:45:05', '2023-05-23 03:45:05'),
(836, 0, 'Ardian', '2023-05-23', '03:49:25', 'Ardian Membuat Transaksi Nomor KSR-23050058', 'I', '2023-05-23 03:49:25', '2023-05-23 03:49:25'),
(837, 0, 'Ardian', '2023-05-23', '04:16:40', 'Ardian Membuat Retur Transaksi Nomor RKS-23050001', 'I', '2023-05-23 04:16:40', '2023-05-23 04:16:40'),
(838, 0, 'Ardian', '2023-05-26', '03:13:38', 'Ardian Membuat Transaksi Nomor KSR-23050059', 'I', '2023-05-26 03:13:38', '2023-05-26 03:13:38'),
(839, 0, 'Ardian', '2023-05-29', '08:27:26', 'Ardian Membuat Product dengan Kode FF-018', 'I', '2023-05-29 08:27:26', '2023-05-29 08:27:26'),
(840, 0, 'Ardian', '2023-06-08', '04:31:19', 'Ardian Membuat Transaksi Nomor KSR-23060001', 'I', '2023-06-08 04:31:19', '2023-06-08 04:31:19'),
(841, 0, 'Ardian', '2023-06-08', '07:02:25', 'Ardian Membuat Transaksi Nomor KSR-23060002', 'I', '2023-06-08 07:02:25', '2023-06-08 07:02:25'),
(842, 0, 'Ardian', '2023-06-13', '04:35:34', 'Ardian Membuat Retur Transaksi Nomor RKS-23060001', 'I', '2023-06-13 04:35:34', '2023-06-13 04:35:34'),
(843, 0, 'Ardian', '2023-06-13', '04:36:44', 'Ardian Membuat Mutasi Nomor WHT-23060001', 'I', '2023-06-13 04:36:44', '2023-06-13 04:36:44'),
(844, 0, 'Ardian', '2023-06-14', '02:32:02', 'Ardian Membuat Transaksi Nomor KSR-23060003', 'I', '2023-06-14 02:32:02', '2023-06-14 02:32:02'),
(845, 0, 'Ardian', '2023-06-19', '08:45:27', 'Ardian Membuat Transaksi Nomor KSR-23060004', 'I', '2023-06-19 08:45:27', '2023-06-19 08:45:27'),
(846, 0, 'Ardian', '2023-06-19', '08:47:56', 'Ardian Membuat Transaksi Nomor KSR-23060005', 'I', '2023-06-19 08:47:56', '2023-06-19 08:47:56'),
(847, 0, 'Ardian', '2023-06-30', '06:18:34', 'Ardian Membuat Transaksi Nomor KSR-23060006', 'I', '2023-06-30 06:18:34', '2023-06-30 06:18:34'),
(848, 0, 'Ardian', '2023-06-30', '06:18:59', 'Ardian Membuat Transaksi Nomor KSR-23060007', 'I', '2023-06-30 06:18:59', '2023-06-30 06:18:59'),
(849, 0, 'Ardian', '2023-06-30', '07:06:01', 'Ardian Membuat Transaksi Nomor KSR-23060008', 'I', '2023-06-30 07:06:01', '2023-06-30 07:06:01'),
(850, 0, 'Ardian', '2023-06-30', '07:06:43', 'Ardian Membuat Transaksi Nomor KSR-23060009', 'I', '2023-06-30 07:06:43', '2023-06-30 07:06:43'),
(851, 0, 'Ardian', '2023-06-30', '07:07:11', 'Ardian Membuat Transaksi Nomor KSR-23060010', 'I', '2023-06-30 07:07:11', '2023-06-30 07:07:11'),
(852, 0, 'Ardian', '2023-06-30', '07:10:34', 'Ardian Membuat Transaksi Nomor KSR-23060011', 'I', '2023-06-30 07:10:34', '2023-06-30 07:10:34'),
(853, 0, 'Ardian', '2023-06-30', '07:10:53', 'Ardian Membuat Transaksi Nomor KSR-23060012', 'I', '2023-06-30 07:10:53', '2023-06-30 07:10:53'),
(854, 0, 'Ardian', '2023-06-30', '07:33:32', 'Ardian Membuat Transaksi Nomor KSR-23060013', 'I', '2023-06-30 07:33:32', '2023-06-30 07:33:32'),
(855, 0, 'Ardian', '2023-07-01', '02:25:13', 'Ardian Membuat Transaksi Nomor KSR-23070001', 'I', '2023-07-01 02:25:13', '2023-07-01 02:25:13'),
(856, 0, 'Ardian', '2023-07-01', '02:37:26', 'Ardian Membuat Transaksi Nomor KSR-23070002', 'I', '2023-07-01 02:37:26', '2023-07-01 02:37:26'),
(857, 0, 'Ardian', '2023-07-01', '02:37:56', 'Ardian Membuat Transaksi Nomor KSR-23070003', 'I', '2023-07-01 02:37:56', '2023-07-01 02:37:56'),
(858, 0, 'Ardian', '2023-07-01', '03:11:12', 'Ardian Membuat Transaksi Nomor KSR-23070004', 'I', '2023-07-01 03:11:12', '2023-07-01 03:11:12'),
(859, 0, 'Ardian', '2023-07-01', '03:23:27', 'Ardian Membuat Transaksi Nomor KSR-23070005', 'I', '2023-07-01 03:23:27', '2023-07-01 03:23:27'),
(860, 0, 'Ardian', '2023-07-01', '03:45:03', 'Ardian Membuat Mutasi Nomor WHT-23070001', 'I', '2023-07-01 03:45:03', '2023-07-01 03:45:03'),
(861, 0, 'Ardian', '2023-07-01', '03:45:25', 'Ardian Mengubah Mutasi Nomor WHT-23070001', 'I', '2023-07-01 03:45:25', '2023-07-01 03:45:25'),
(862, 0, 'Ardian', '2023-07-03', '03:48:06', 'Ardian Membuat Transaksi Nomor KSR-23070006', 'I', '2023-07-03 03:48:06', '2023-07-03 03:48:06'),
(863, 0, 'Ardian', '2023-07-03', '06:22:52', 'Ardian Membuat Transaksi Nomor undefined', 'I', '2023-07-03 06:22:52', '2023-07-03 06:22:52'),
(864, 0, 'Ardian', '2023-07-03', '06:52:48', 'Ardian Membuat Transaksi Nomor undefined', 'I', '2023-07-03 06:52:48', '2023-07-03 06:52:48'),
(865, 0, 'Ardian', '2023-07-03', '07:32:55', 'Ardian Membuat Transaksi Nomor KSR-23070005', 'I', '2023-07-03 07:32:55', '2023-07-03 07:32:55'),
(866, 0, 'Ardian', '2023-07-04', '05:51:57', 'Ardian Membuat Transaksi Nomor KSR-23070008', 'I', '2023-07-04 05:51:57', '2023-07-04 05:51:57'),
(867, 0, 'Ardian', '2023-07-04', '05:52:17', 'Ardian Membuat Transaksi Nomor KSR-23070008', 'I', '2023-07-04 05:52:17', '2023-07-04 05:52:17'),
(868, 0, 'Ardian', '2023-07-04', '05:58:54', 'Ardian Membuat Transaksi Nomor KSR-23070009', 'I', '2023-07-04 05:58:54', '2023-07-04 05:58:54'),
(869, 0, 'Ardian', '2023-07-04', '05:59:25', 'Ardian Membuat Transaksi Nomor KSR-23070009', 'I', '2023-07-04 05:59:25', '2023-07-04 05:59:25'),
(870, 0, 'Ardian', '2023-07-07', '04:29:52', 'Ardian Membuat Transaksi Nomor KSR-23070010', 'I', '2023-07-07 04:29:52', '2023-07-07 04:29:52'),
(871, 0, 'Ardian', '2023-07-07', '04:30:11', 'Ardian Membuat Transaksi Nomor KSR-23070010', 'I', '2023-07-07 04:30:11', '2023-07-07 04:30:11'),
(872, 0, 'Ardian', '2023-07-08', '04:45:27', 'Ardian Mengonfirmasi Mutasi Nomor WHT-23070001', 'I', '2023-07-08 04:45:27', '2023-07-08 04:45:27'),
(873, 0, 'Ardian', '2023-07-08', '06:14:24', 'Ardian Membuat Transaksi Nomor KSR-23070011', 'I', '2023-07-08 06:14:24', '2023-07-08 06:14:24'),
(874, 0, 'Ardian', '2023-07-08', '07:16:12', 'Ardian Membuat Transaksi Nomor KSR-23070012', 'I', '2023-07-08 07:16:12', '2023-07-08 07:16:12'),
(875, 0, 'Ardian', '2023-07-11', '02:28:55', 'Ardian Membuat Transaksi Nomor KSR-23070013', 'I', '2023-07-11 02:28:55', '2023-07-11 02:28:55'),
(876, 0, 'Ardian', '2023-07-11', '02:29:21', 'Ardian Membuat Transaksi Nomor KSR-23070013', 'I', '2023-07-11 02:29:21', '2023-07-11 02:29:21'),
(877, 0, 'Ardian', '2023-07-11', '02:42:19', 'Ardian Membuat Transaksi Nomor KSR-23070014', 'I', '2023-07-11 02:42:19', '2023-07-11 02:42:19'),
(878, 0, 'Ardian', '2023-07-11', '02:42:36', 'Ardian Membuat Transaksi Nomor KSR-23070014', 'I', '2023-07-11 02:42:36', '2023-07-11 02:42:36'),
(879, 0, 'Ardian', '2023-07-11', '03:15:49', 'Ardian Membuat Transaksi Nomor KSR-23070015', 'I', '2023-07-11 03:15:49', '2023-07-11 03:15:49'),
(880, 0, 'Ardian', '2023-07-11', '03:17:58', 'Ardian Membuat Transaksi Nomor KSR-23070016', 'I', '2023-07-11 03:17:58', '2023-07-11 03:17:58'),
(881, 0, 'Ardian', '2023-07-11', '04:15:46', 'Ardian Membuat Transaksi Nomor KSR-23070017', 'I', '2023-07-11 04:15:46', '2023-07-11 04:15:46'),
(882, 0, 'Ardian', '2023-07-11', '05:08:12', 'Ardian Membuat Transaksi Nomor KSR-23070017', 'I', '2023-07-11 05:08:12', '2023-07-11 05:08:12'),
(883, 0, 'Ardian', '2023-07-11', '05:54:02', 'Ardian Membuat Transaksi Nomor KSR-23070018', 'I', '2023-07-11 05:54:02', '2023-07-11 05:54:02'),
(884, 0, 'Ardian', '2023-07-11', '05:54:17', 'Ardian Membuat Transaksi Nomor KSR-23070018', 'I', '2023-07-11 05:54:17', '2023-07-11 05:54:17'),
(885, 0, 'Ardian', '2023-07-11', '06:49:21', 'Ardian Membuat Transaksi Nomor KSR-23070019', 'I', '2023-07-11 06:49:21', '2023-07-11 06:49:21'),
(886, 0, 'Ardian', '2023-07-11', '06:50:01', 'Ardian Membuat Transaksi Nomor KSR-23070019', 'I', '2023-07-11 06:50:01', '2023-07-11 06:50:01'),
(887, 0, 'Ardian', '2023-07-11', '06:57:45', 'Ardian Membuat Transaksi Nomor KSR-23070016', 'I', '2023-07-11 06:57:45', '2023-07-11 06:57:45'),
(888, 0, 'Ardian', '2023-07-11', '07:03:49', 'Ardian Membuat Transaksi Nomor KSR-23070015', 'I', '2023-07-11 07:03:49', '2023-07-11 07:03:49'),
(889, 0, 'Ardian', '2023-07-11', '08:29:31', 'Ardian Membuat Transaksi Nomor KSR-23070012', 'I', '2023-07-11 08:29:31', '2023-07-11 08:29:31'),
(890, 0, 'Ardian', '2023-07-12', '01:52:59', 'Ardian Membuat Transaksi Nomor KSR-23070020', 'I', '2023-07-12 01:52:59', '2023-07-12 01:52:59'),
(891, 0, 'Ardian', '2023-07-12', '01:53:52', 'Ardian Membuat Transaksi Nomor KSR-23070020', 'I', '2023-07-12 01:53:52', '2023-07-12 01:53:52'),
(892, 0, 'Ardian', '2023-07-12', '02:05:04', 'Ardian Membuat Transaksi Nomor KSR-23070021', 'I', '2023-07-12 02:05:04', '2023-07-12 02:05:04'),
(893, 0, 'Ardian', '2023-07-12', '02:12:42', 'Ardian Membuat Transaksi Nomor KSR-23070022', 'I', '2023-07-12 02:12:42', '2023-07-12 02:12:42'),
(894, 0, 'Ardian', '2023-07-12', '02:13:22', 'Ardian Membuat Transaksi Nomor KSR-23070022', 'I', '2023-07-12 02:13:22', '2023-07-12 02:13:22'),
(895, 0, 'Ardian', '2023-07-12', '03:12:31', 'Ardian Membuat Transaksi Nomor KSR-23070023', 'I', '2023-07-12 03:12:31', '2023-07-12 03:12:31'),
(896, 0, 'Ardian', '2023-07-12', '03:13:23', 'Ardian Membuat Transaksi Nomor KSR-23070023', 'I', '2023-07-12 03:13:23', '2023-07-12 03:13:23'),
(897, 0, 'Ardian', '2023-07-12', '04:09:34', 'Ardian Membuat Transaksi Nomor KSR-23070024', 'I', '2023-07-12 04:09:34', '2023-07-12 04:09:34'),
(898, 0, 'Ardian', '2023-07-12', '04:31:13', 'Ardian Membuat Transaksi Nomor KSR-23070024', 'I', '2023-07-12 04:31:13', '2023-07-12 04:31:13'),
(899, 0, 'Ardian', '2023-07-12', '04:33:32', 'Ardian Membuat Transaksi Nomor KSR-23070025', 'I', '2023-07-12 04:33:32', '2023-07-12 04:33:32'),
(900, 0, 'Ardian', '2023-07-12', '04:34:05', 'Ardian Membuat Transaksi Nomor KSR-23070025', 'I', '2023-07-12 04:34:05', '2023-07-12 04:34:05'),
(901, 0, 'Ardian', '2023-07-12', '04:43:03', 'Ardian Membuat Transaksi Nomor KSR-23070026', 'I', '2023-07-12 04:43:03', '2023-07-12 04:43:03'),
(902, 0, 'Ardian', '2023-07-12', '04:43:19', 'Ardian Membuat Transaksi Nomor KSR-23070026', 'I', '2023-07-12 04:43:19', '2023-07-12 04:43:19'),
(903, 0, 'Ardian', '2023-07-12', '05:46:03', 'Ardian Membuat Transaksi Nomor KSR-23070027', 'I', '2023-07-12 05:46:03', '2023-07-12 05:46:03'),
(904, 0, 'Ardian', '2023-07-12', '05:46:50', 'Ardian Membuat Transaksi Nomor KSR-23070027', 'I', '2023-07-12 05:46:50', '2023-07-12 05:46:50'),
(905, 0, 'Ardian', '2023-07-12', '06:07:26', 'Ardian Membuat Transaksi Nomor KSR-23070028', 'I', '2023-07-12 06:07:26', '2023-07-12 06:07:26'),
(906, 0, 'Ardian', '2023-07-12', '06:12:54', 'Ardian Membuat Transaksi Nomor KSR-23070028', 'I', '2023-07-12 06:12:54', '2023-07-12 06:12:54'),
(907, 0, 'Ardian', '2023-07-12', '06:19:58', 'Ardian Membuat Transaksi Nomor KSR-23070029', 'I', '2023-07-12 06:19:58', '2023-07-12 06:19:58'),
(908, 0, 'Ardian', '2023-07-12', '06:20:14', 'Ardian Membuat Transaksi Nomor KSR-23070029', 'I', '2023-07-12 06:20:14', '2023-07-12 06:20:14'),
(909, 0, 'Ardian', '2023-07-12', '06:31:56', 'Ardian Membuat Transaksi Nomor KSR-23070030', 'I', '2023-07-12 06:31:56', '2023-07-12 06:31:56'),
(910, 0, 'Ardian', '2023-07-12', '07:07:20', 'Ardian Membuat Transaksi Nomor KSR-23070030', 'I', '2023-07-12 07:07:20', '2023-07-12 07:07:20'),
(911, 0, 'Ardian', '2023-07-12', '07:11:16', 'Ardian Membuat Transaksi Nomor KSR-23070031', 'I', '2023-07-12 07:11:16', '2023-07-12 07:11:16'),
(912, 0, 'Ardian', '2023-07-12', '07:18:43', 'Ardian Membuat Transaksi Nomor KSR-23070032', 'I', '2023-07-12 07:18:43', '2023-07-12 07:18:43'),
(913, 0, 'Ardian', '2023-07-12', '07:19:18', 'Ardian Membuat Transaksi Nomor KSR-23070032', 'I', '2023-07-12 07:19:18', '2023-07-12 07:19:18'),
(914, 0, 'Ardian', '2023-07-12', '07:24:09', 'Ardian Membuat Transaksi Nomor KSR-23070033', 'I', '2023-07-12 07:24:09', '2023-07-12 07:24:09'),
(915, 0, 'Ardian', '2023-07-12', '07:24:28', 'Ardian Membuat Transaksi Nomor KSR-23070033', 'I', '2023-07-12 07:24:28', '2023-07-12 07:24:28'),
(916, 0, 'Ardian', '2023-07-12', '07:46:45', 'Ardian Membuat Transaksi Nomor KSR-23070034', 'I', '2023-07-12 07:46:45', '2023-07-12 07:46:45'),
(917, 0, 'Ardian', '2023-07-12', '07:47:13', 'Ardian Membuat Transaksi Nomor KSR-23070034', 'I', '2023-07-12 07:47:13', '2023-07-12 07:47:13'),
(918, 0, 'Ardian', '2023-07-12', '08:45:30', 'Ardian Membuat Transaksi Nomor KSR-23070035', 'I', '2023-07-12 08:45:30', '2023-07-12 08:45:30'),
(919, 0, 'Ardian', '2023-07-12', '08:45:49', 'Ardian Membuat Transaksi Nomor KSR-23070035', 'I', '2023-07-12 08:45:49', '2023-07-12 08:45:49'),
(920, 0, 'Ardian', '2023-07-13', '03:08:05', 'Ardian Membuat Transaksi Nomor KSR-23070036', 'I', '2023-07-13 03:08:05', '2023-07-13 03:08:05'),
(921, 0, 'Ardian', '2023-07-13', '03:41:48', 'Ardian Membuat Transaksi Nomor KSR-23070037', 'I', '2023-07-13 03:41:48', '2023-07-13 03:41:48'),
(922, 0, 'Ardian', '2023-07-13', '04:11:19', 'Ardian Membuat Transaksi Nomor KSR-23070038', 'I', '2023-07-13 04:11:19', '2023-07-13 04:11:19'),
(923, 0, 'Ardian', '2023-07-13', '04:13:13', 'Ardian Membuat Transaksi Nomor KSR-23070039', 'I', '2023-07-13 04:13:13', '2023-07-13 04:13:13'),
(924, 0, 'Ardian', '2023-07-13', '05:18:03', 'Ardian Membuat Transaksi Nomor KSR-23070040', 'I', '2023-07-13 05:18:03', '2023-07-13 05:18:03'),
(925, 0, 'Ardian', '2023-07-13', '05:54:08', 'Ardian Membuat Transaksi Nomor KSR-23070041', 'I', '2023-07-13 05:54:08', '2023-07-13 05:54:08'),
(926, 0, 'admin', '2023-07-13', '13:11:34', 'Tambah user manager', 'OPN', '2023-07-13 17:11:34', '2023-07-13 17:11:34'),
(927, 0, 'Ardian', '2023-07-13', '08:35:04', 'Ardian Membuat Transaksi Nomor KSR-23070042', 'I', '2023-07-13 08:35:04', '2023-07-13 08:35:04'),
(928, 0, 'Ardian', '2023-07-18', '05:23:40', 'Ardian Membuat Transaksi Nomor KSR-23070043', 'I', '2023-07-18 05:23:40', '2023-07-18 05:23:40'),
(929, 0, 'Ardian', '2023-08-01', '02:35:16', 'Ardian Membuat Transaksi Nomor KSR-23080001', 'I', '2023-08-01 02:35:16', '2023-08-01 02:35:16'),
(930, 0, 'Ardian', '2023-08-01', '02:36:13', 'Ardian Membuat Transaksi Nomor KSR-23080002', 'I', '2023-08-01 02:36:13', '2023-08-01 02:36:13'),
(931, 0, 'Ardian', '2023-08-01', '05:34:29', 'Ardian Membuat Transaksi Nomor KSR-23080003', 'I', '2023-08-01 05:34:29', '2023-08-01 05:34:29'),
(932, 0, 'Ardian', '2023-08-01', '10:30:01', 'Ardian Membuat Transaksi Nomor KSR-23080004', 'I', '2023-08-01 10:30:01', '2023-08-01 10:30:01'),
(933, 0, 'Ardian', '2023-08-02', '18:13:23', 'Ardian Membuat Transaksi Nomor KSR-23080005', 'I', '2023-08-02 18:13:23', '2023-08-02 18:13:23'),
(934, 0, 'Ardian', '2023-08-02', '19:03:34', 'Ardian Membuat Transaksi Nomor KSR-23080006', 'I', '2023-08-02 19:03:34', '2023-08-02 19:03:34'),
(935, 0, 'Ardian', '2023-08-02', '19:07:16', 'Ardian Membuat Transaksi Nomor KSR-23080006', 'I', '2023-08-02 19:07:16', '2023-08-02 19:07:16'),
(936, 0, 'Ardian', '2023-08-02', '19:19:13', 'Ardian Membuat Transaksi Nomor KSR-23080007', 'I', '2023-08-02 19:19:13', '2023-08-02 19:19:13'),
(937, 0, 'Ardian', '2023-08-02', '19:41:14', 'Ardian Membuat Transaksi Nomor KSR-23080008', 'I', '2023-08-02 19:41:14', '2023-08-02 19:41:14'),
(938, 0, 'Ardian', '2023-08-02', '19:44:29', 'Ardian Membuat Transaksi Nomor KSR-23080009', 'I', '2023-08-02 19:44:29', '2023-08-02 19:44:29'),
(939, 0, 'Ardian', '2023-08-02', '20:52:47', 'Ardian Membuat Transaksi Nomor KSR-23080009', 'I', '2023-08-02 20:52:47', '2023-08-02 20:52:47'),
(940, 0, 'Ardian', '2023-08-02', '21:16:34', 'Ardian Membuat Transaksi Nomor KSR-23080010', 'I', '2023-08-02 21:16:34', '2023-08-02 21:16:34'),
(941, 0, 'Ardian', '2023-08-02', '21:16:56', 'Ardian Membuat Transaksi Nomor KSR-23080010', 'I', '2023-08-02 21:16:56', '2023-08-02 21:16:56'),
(942, 0, 'Ardian', '2023-08-02', '21:43:12', 'Ardian Membuat Transaksi Nomor KSR-23080011', 'I', '2023-08-02 21:43:12', '2023-08-02 21:43:12'),
(943, 0, 'Ardian', '2023-08-02', '23:42:04', 'Ardian Membuat Transaksi Nomor KSR-23080014', 'I', '2023-08-02 23:42:04', '2023-08-02 23:42:04'),
(944, 0, 'Ardian', '2023-08-02', '23:56:51', 'Ardian Membuat Transaksi Nomor KSR-23080014', 'I', '2023-08-02 23:56:51', '2023-08-02 23:56:51'),
(945, 0, 'Ardian', '2023-08-03', '00:05:32', 'Ardian Membuat Transaksi Nomor KSR-23080015', 'I', '2023-08-03 00:05:32', '2023-08-03 00:05:32'),
(946, 0, 'Ardian', '2023-08-03', '00:09:51', 'Ardian Membuat Transaksi Nomor KSR-23080015', 'I', '2023-08-03 00:09:51', '2023-08-03 00:09:51'),
(947, 0, 'Ardian', '2023-08-09', '02:40:48', 'Ardian Membuat Transaksi Nomor KSR-23080017', 'I', '2023-08-09 02:40:48', '2023-08-09 02:40:48'),
(948, 0, 'Ardian', '2023-08-09', '03:24:00', 'Ardian Membuat Transaksi Nomor KSR-23080018', 'I', '2023-08-09 03:24:00', '2023-08-09 03:24:00'),
(949, 0, 'Ardian', '2023-08-09', '03:24:23', 'Ardian Membuat Transaksi Nomor KSR-23080018', 'I', '2023-08-09 03:24:23', '2023-08-09 03:24:23'),
(950, 0, 'Ardian', '2023-08-09', '03:24:38', 'Ardian Membuat Transaksi Nomor KSR-23080018', 'I', '2023-08-09 03:24:38', '2023-08-09 03:24:38'),
(951, 0, 'Ardian', '2023-08-09', '03:39:11', 'Ardian Membuat Transaksi Nomor KSR-23080019', 'I', '2023-08-09 03:39:11', '2023-08-09 03:39:11'),
(952, 0, 'Ardian', '2023-08-09', '03:43:20', 'Ardian Membuat Transaksi Nomor KSR-23080020', 'I', '2023-08-09 03:43:20', '2023-08-09 03:43:20'),
(953, 0, 'Ardian', '2023-08-16', '04:50:03', 'Ardian Membuat Transaksi Nomor KSR-23080021', 'I', '2023-08-16 04:50:03', '2023-08-16 04:50:03'),
(954, 0, 'Ardian', '2023-08-16', '05:02:34', 'Ardian Membuat Transaksi Nomor KSR-23080022', 'I', '2023-08-16 05:02:34', '2023-08-16 05:02:34'),
(955, 0, 'Ardian', '2023-08-16', '05:06:53', 'Ardian Membuat Transaksi Nomor KSR-23080023', 'I', '2023-08-16 05:06:53', '2023-08-16 05:06:53'),
(956, 0, 'Ardian', '2023-08-16', '05:13:51', 'Ardian Membuat Transaksi Nomor KSR-23080024', 'I', '2023-08-16 05:13:51', '2023-08-16 05:13:51'),
(957, 0, 'Ardian', '2023-08-16', '05:18:59', 'Ardian Membuat Transaksi Nomor KSR-23080025', 'I', '2023-08-16 05:18:59', '2023-08-16 05:18:59'),
(958, 0, 'Ardian', '2023-08-16', '05:31:50', 'Ardian Membuat Transaksi Nomor KSR-23080026', 'I', '2023-08-16 05:31:50', '2023-08-16 05:31:50'),
(959, 0, 'Ardian', '2023-08-16', '07:11:12', 'Ardian Membuat Transaksi Nomor KSR-23080027', 'I', '2023-08-16 07:11:12', '2023-08-16 07:11:12'),
(960, 0, 'Ardian', '2023-08-16', '07:11:27', 'Ardian Membuat Transaksi Nomor KSR-23080028', 'I', '2023-08-16 07:11:27', '2023-08-16 07:11:27'),
(961, 0, 'Ardian', '2023-08-19', '03:56:26', 'Ardian Membuat Transaksi Nomor KSR-23080029', 'I', '2023-08-19 03:56:26', '2023-08-19 03:56:26'),
(962, 0, 'Ardian', '2023-08-19', '06:15:34', 'Ardian Membuat Transaksi Nomor KSR-23080030', 'I', '2023-08-19 06:15:34', '2023-08-19 06:15:34'),
(963, 0, 'Ardian', '2023-08-19', '06:19:37', 'Ardian Membuat Transaksi Nomor KSR-23080031', 'I', '2023-08-19 06:19:37', '2023-08-19 06:19:37'),
(964, 0, 'Ardian', '2023-08-19', '07:43:45', 'Ardian Membuat Transaksi Nomor KSR-23080032', 'I', '2023-08-19 07:43:45', '2023-08-19 07:43:45'),
(965, 0, 'Ardian', '2023-08-19', '07:47:48', 'Ardian Membuat Transaksi Nomor KSR-23080032', 'I', '2023-08-19 07:47:48', '2023-08-19 07:47:48'),
(966, 0, 'Ardian', '2023-08-19', '08:00:35', 'Ardian Membuat Transaksi Nomor KSR-23080001', 'I', '2023-08-19 08:00:35', '2023-08-19 08:00:35'),
(967, 0, 'Ardian', '2023-08-19', '08:01:03', 'Ardian Membuat Transaksi Nomor KSR-23080001', 'I', '2023-08-19 08:01:03', '2023-08-19 08:01:03'),
(968, 0, 'Ardian', '2023-08-26', '03:47:32', 'Ardian Membuat Transaksi Nomor KSR-23080002', 'I', '2023-08-26 03:47:32', '2023-08-26 03:47:32'),
(969, 0, 'Ardian', '2023-08-29', '07:08:12', 'Ardian Membuat Transaksi Nomor KSR-23080002', 'I', '2023-08-29 07:08:12', '2023-08-29 07:08:12'),
(970, 0, 'Ardian', '2023-08-29', '07:08:47', 'Ardian Membuat Transaksi Nomor KSR-23080002', 'I', '2023-08-29 07:08:47', '2023-08-29 07:08:47'),
(971, 0, 'Ardian', '2023-08-29', '07:09:11', 'Ardian Membuat Transaksi Nomor KSR-23080002', 'I', '2023-08-29 07:09:11', '2023-08-29 07:09:11'),
(972, 0, 'Ardian', '2023-08-29', '07:13:40', 'Ardian Membuat Transaksi Nomor KSR-23080002', 'I', '2023-08-29 07:13:40', '2023-08-29 07:13:40');

-- --------------------------------------------------------

--
-- Struktur dari tabel `gajians`
--

CREATE TABLE `gajians` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `KodeGaji` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `KodeKaryawan` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `SubtotalGaji` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `SubtotalLemburHarian` varchar(10) NOT NULL,
  `SubtotalLemburJam` varchar(10) NOT NULL,
  `SubtotalLemburMinggu` varchar(10) NOT NULL,
  `SubtotalBonus` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `SubtotalHargaBarang` varchar(10) NOT NULL,
  `TotalGaji` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `TanggalGaji` date NOT NULL,
  `Status` varchar(10) NOT NULL,
  `EnkripsiKodeGaji` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `golongans`
--

CREATE TABLE `golongans` (
  `KodeGolongan` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `NamaGolongan` varchar(191) NOT NULL,
  `UangHadir` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `LemburHarian` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `LemburMinggu` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Status` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `golongans`
--

INSERT INTO `golongans` (`KodeGolongan`, `NamaGolongan`, `UangHadir`, `LemburHarian`, `LemburMinggu`, `Status`, `created_at`, `updated_at`) VALUES
('GOL-01', 'Karyawan', '0', '0', '0', 'OPN', '2022-04-14 00:07:54', '2022-04-14 00:07:54');

-- --------------------------------------------------------

--
-- Struktur dari tabel `historihargarata`
--

CREATE TABLE `historihargarata` (
  `id` int(11) NOT NULL,
  `Tanggal` datetime NOT NULL,
  `KodeItem` varchar(50) NOT NULL,
  `HargaRata` double NOT NULL,
  `KodeTransaksi` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `hutangs`
--

CREATE TABLE `hutangs` (
  `KodeHutang` varchar(191) NOT NULL,
  `Tanggal` datetime NOT NULL,
  `KodeSupplier` varchar(191) NOT NULL,
  `Status` varchar(191) NOT NULL,
  `KodeLPB` varchar(191) NOT NULL,
  `Invoice` varchar(191) NOT NULL,
  `Jumlah` double NOT NULL,
  `Keterangan` varchar(191) NOT NULL,
  `KodeMataUang` varchar(191) NOT NULL,
  `KodeUser` varchar(191) NOT NULL,
  `Term` double NOT NULL,
  `Koreksi` varchar(191) NOT NULL,
  `Kembali` varchar(191) NOT NULL,
  `InvoiceSupplier` varchar(191) NOT NULL,
  `TanggalInvoiceSupplier` date NOT NULL,
  `hutangcol` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `invoicehutangdetails`
--

CREATE TABLE `invoicehutangdetails` (
  `id` int(191) NOT NULL,
  `KodeHutang` varchar(191) NOT NULL,
  `KodeLPB` varchar(191) NOT NULL,
  `Subtotal` double NOT NULL,
  `TotalReturn` double NOT NULL DEFAULT 0,
  `KodeInvoiceHutang` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `invoicehutangdetails`
--

INSERT INTO `invoicehutangdetails` (`id`, `KodeHutang`, `KodeLPB`, `Subtotal`, `TotalReturn`, `KodeInvoiceHutang`, `created_at`, `updated_at`) VALUES
(0, 'IVH-022110001', 'LPB-022110001', 600000, 0, '1', '2022-11-11 05:49:26', '2022-11-11 05:49:26'),
(0, 'IVH-022110002', 'LPB-022110002', 300000, 0, '2', '2022-11-11 06:48:53', '2022-11-11 06:48:53'),
(0, 'IVH-022110003', 'LPB-022110002', 300000, 0, '3', '2022-11-11 06:50:21', '2022-11-11 06:50:21'),
(0, 'IVH-022120001', 'LPB-022120001', 150000, 0, '4', '2022-12-06 17:17:36', '2022-12-06 17:17:36'),
(0, 'IVH-023030001', 'LPB-023030001', 180000, 0, '5', '2023-03-02 16:24:04', '2023-03-02 16:24:04'),
(0, 'IVH-023040001', 'LPB-023040001', 3000000, 0, '6', '2023-04-13 14:49:23', '2023-04-13 14:49:23'),
(0, 'IVH-023040002', 'LPB-023040002', 80000, 0, '7', '2023-04-28 17:52:55', '2023-04-28 17:52:55'),
(0, 'IVH-023050001', 'LPB-023050001', 240000, 0, '8', '2023-05-23 12:45:26', '2023-05-23 12:45:26');

-- --------------------------------------------------------

--
-- Struktur dari tabel `invoicehutangs`
--

CREATE TABLE `invoicehutangs` (
  `KodeInvoiceHutang` int(11) NOT NULL,
  `KodeInvoiceHutangShow` varchar(191) NOT NULL,
  `Tanggal` date NOT NULL,
  `KodeSupplier` varchar(191) NOT NULL,
  `Status` varchar(191) NOT NULL,
  `Total` double NOT NULL,
  `Keterangan` varchar(191) DEFAULT NULL,
  `NoFaktur` varchar(191) DEFAULT NULL,
  `KodeMataUang` varchar(191) NOT NULL,
  `KodeUser` varchar(191) NOT NULL,
  `Term` double DEFAULT NULL,
  `KodeLokasi` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `invoicehutangs`
--

INSERT INTO `invoicehutangs` (`KodeInvoiceHutang`, `KodeInvoiceHutangShow`, `Tanggal`, `KodeSupplier`, `Status`, `Total`, `Keterangan`, `NoFaktur`, `KodeMataUang`, `KodeUser`, `Term`, `KodeLokasi`, `created_at`, `updated_at`) VALUES
(1, 'IVH-022110001', '2022-11-11', 'SUP-001', 'OPN', 600000, NULL, NULL, 'Rp', 'admin', 0, 'GUD-001', '2022-11-11 05:49:26', '2022-11-11 05:49:26'),
(2, 'IVH-022110002', '2022-11-11', 'SUP-001', 'OPN', 300000, NULL, NULL, 'Rp', 'admin', 0, 'GUD-001', '2022-11-11 06:48:53', '2022-11-11 06:48:53'),
(3, 'IVH-022110003', '2022-11-11', 'SUP-001', 'OPN', 300000, NULL, NULL, 'Rp', 'admin', 0, 'GUD-001', '2022-11-11 06:50:21', '2022-11-11 06:50:21'),
(4, 'IVH-022120001', '2022-12-07', 'SUP-001', 'OPN', 150000, NULL, NULL, 'Rp', 'admin', 0, 'GUD-001', '2022-12-06 17:17:36', '2022-12-06 17:17:36'),
(5, 'IVH-023030001', '2023-03-02', 'SUP-001', 'OPN', 180000, NULL, NULL, 'Rp', 'admin', 0, 'GUD-001', '2023-03-02 16:24:04', '2023-03-02 16:24:04'),
(6, 'IVH-023040001', '2023-04-13', 'SUP-001', 'OPN', 3000000, NULL, NULL, 'Rp', 'admin', 0, 'GUD-001', '2023-04-13 14:49:23', '2023-04-13 14:49:23'),
(7, 'IVH-023040002', '2023-04-28', 'SUP-001', 'OPN', 80000, NULL, NULL, 'Rp', 'KASIR', 0, 'GUD-001', '2023-04-28 17:52:55', '2023-04-28 17:52:55'),
(8, 'IVH-023050001', '2023-05-23', 'SUP-001', 'OPN', 240000, NULL, NULL, 'Rp', 'admin', 0, 'GUD-002', '2023-05-23 12:45:26', '2023-05-23 12:45:26');

-- --------------------------------------------------------

--
-- Struktur dari tabel `invoicepiutangdetails`
--

CREATE TABLE `invoicepiutangdetails` (
  `KodePiutang` varchar(191) NOT NULL,
  `KodeSuratJalan` varchar(191) NOT NULL,
  `Subtotal` double NOT NULL,
  `TotalReturn` double NOT NULL DEFAULT 0,
  `KodeInvoicePiutang` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `invoicepiutangdetails`
--

INSERT INTO `invoicepiutangdetails` (`KodePiutang`, `KodeSuratJalan`, `Subtotal`, `TotalReturn`, `KodeInvoicePiutang`, `created_at`, `updated_at`, `id`) VALUES
('IVP-022040001', 'SJ-022040001', 974500, 0, '1', '2022-04-26 18:12:36', '2022-04-26 18:12:36', 1),
('IVP-022040002', 'SJ-022040002', 2535000, 0, '2', '2022-04-26 18:18:23', '2022-04-26 18:18:23', 2),
('IVP-022040003', 'SJ-022040003', 2622000, 0, '3', '2022-04-26 18:23:40', '2022-04-26 18:23:40', 3),
('IVP-022040004', 'SJ-022040004', 4788000, 0, '4', '2022-04-27 18:46:29', '2022-04-27 18:46:29', 4),
('IVP-022040005', 'SJ-022040005', 2662000, 0, '5', '2022-04-28 18:00:29', '2022-04-28 18:00:29', 5),
('IVP-022040006', 'SJ-022040006', 2670000, 0, '6', '2022-04-28 18:23:27', '2022-04-28 18:23:27', 6),
('IVP-022040007', 'SJ-022040007', 4583000, 0, '7', '2022-04-28 18:31:41', '2022-04-28 18:31:41', 7),
('IVP-022040008', 'SJ-022040008', 2139000, 0, '8', '2022-04-28 19:25:21', '2022-04-28 19:25:21', 8),
('IVP-022050001', 'SJ-022050001', 5295000, 0, '9', '2022-05-06 18:34:34', '2022-05-06 18:34:34', 9),
('IVP-022050002', 'SJ-022050003', 534000, 0, '10', '2022-05-06 19:02:43', '2022-05-06 19:02:43', 10),
('IVP-022050003', 'SJ-022050002', 881000, 0, '11', '2022-05-06 19:02:47', '2022-05-06 19:02:47', 11),
('IVP-122050001', 'SJ-122050001', 1164900, 0, '12', '2022-05-06 19:12:07', '2022-05-06 19:12:07', 12),
('IVP-022050004', 'SJ-022050004', 1059000, 0, '13', '2022-05-06 19:18:56', '2022-05-06 19:18:56', 13),
('IVP-022050005', 'SJ-022050007', 1780000, 0, '14', '2022-05-09 17:01:46', '2022-05-09 17:01:46', 14),
('IVP-022050006', 'SJ-022050006', 7120000, 0, '15', '2022-05-09 17:01:49', '2022-05-09 17:01:49', 15),
('IVP-022050007', 'SJ-022050005', 4396000, 0, '16', '2022-05-09 17:01:54', '2022-05-09 17:01:54', 16),
('IVP-022050008', 'SJ-022050010', 5280000, 0, '17', '2022-05-09 18:44:09', '2022-05-09 18:44:09', 17),
('IVP-022050009', 'SJ-022050009', 4410000, 0, '18', '2022-05-09 18:44:38', '2022-05-09 18:44:38', 18),
('IVP-022050010', 'SJ-022050008', 890000, 0, '19', '2022-05-09 18:44:46', '2022-05-09 18:44:46', 19),
('IVP-022050011', 'SJ-022050012', 2535000, 0, '20', '2022-05-09 18:45:02', '2022-05-09 18:45:02', 20),
('IVP-022050012', 'SJ-022050011', 890000, 0, '21', '2022-05-09 18:45:15', '2022-05-09 18:45:15', 21),
('IVP-022050013', 'SJ-022050013', 8095000, 0, '22', '2022-05-10 15:54:05', '2022-05-10 15:54:05', 22),
('IVP-022050014', 'SJ-022050014', 2296000, 0, '23', '2022-05-10 18:50:09', '2022-05-10 18:50:09', 23),
('IVP-022050015', 'SJ-022050015', 1690000, 0, '24', '2022-05-10 18:53:10', '2022-05-10 18:53:10', 24),
('IVP-022050016', 'SJ-022050016', 703000, 0, '25', '2022-05-10 19:01:57', '2022-05-10 19:01:57', 25),
('IVP-022050017', 'SJ-022050017', 2598000, 0, '26', '2022-05-11 17:45:07', '2022-05-11 17:45:07', 26),
('IVP-022050018', 'SJ-022050018', 1771000, 0, '27', '2022-05-11 17:51:22', '2022-05-11 17:51:22', 27),
('IVP-022050019', 'SJ-022050019', 2638000, 0, '28', '2022-05-11 17:56:29', '2022-05-11 17:56:29', 28),
('IVP-022050020', 'SJ-022050020', 2118000, 0, '29', '2022-05-11 05:05:50', '2022-05-11 05:05:50', 29),
('IVP-022050021', 'SJ-022050021', 356000, 0, '30', '2022-05-11 05:08:04', '2022-05-11 05:08:04', 30),
('IVP-022050022', 'SJ-022050022', 4985000, 0, '31', '2022-05-12 01:33:01', '2022-05-12 01:33:01', 31),
('IVP-022050023', 'SJ-022050023', 1406000, 0, '32', '2022-05-12 04:49:24', '2022-05-12 04:49:24', 32),
('IVP-022050024', 'SJ-022050024', 356000, 0, '33', '2022-05-12 04:53:22', '2022-05-12 04:53:22', 33),
('IVP-022050025', 'SJ-022050025', 540000, 0, '34', '2022-05-13 02:29:44', '2022-05-13 02:29:44', 34),
('IVP-022050026', 'SJ-022050026', 4360000, 0, '35', '2022-05-13 04:28:43', '2022-05-13 04:28:43', 35),
('IVP-022050027', 'SJ-022050027', 2646000, 0, '36', '2022-05-13 04:28:47', '2022-05-13 04:28:47', 36),
('IVP-022050028', 'SJ-022050028', 1059000, 0, '37', '2022-05-13 04:28:52', '2022-05-13 04:28:52', 37),
('IVP-022050029', 'SJ-022050029', 525000, 0, '38', '2022-05-13 04:28:55', '2022-05-13 04:28:55', 38),
('IVP-022050030', 'SJ-022050030', 4049000, 0, '39', '2022-05-13 04:28:59', '2022-05-13 04:28:59', 39),
('IVP-022050031', 'SJ-022050031', 3575000, 0, '40', '2022-05-14 04:14:15', '2022-05-14 04:14:15', 40),
('IVP-022050032', 'SJ-022050032', 1735000, 0, '41', '2022-05-14 04:14:20', '2022-05-14 04:14:20', 41),
('IVP-022050033', 'SJ-022050033', 1780000, 0, '42', '2022-05-14 04:40:31', '2022-05-14 04:40:31', 42),
('IVP-022050034', 'SJ-022050034', 534000, 0, '43', '2022-05-14 04:43:29', '2022-05-14 04:43:29', 43),
('IVP-122050002', 'SJ-122050002', 4573250, 0, '44', '2022-05-17 03:57:25', '2022-05-17 03:57:25', 44),
('IVP-122050003', 'SJ-122050003', 4296050, 0, '45', '2022-05-17 04:15:05', '2022-05-17 04:15:05', 45),
('IVP-122050004', 'SJ-122050004', 9121114.2, 0, '46', '2022-05-19 08:40:47', '2022-05-19 08:40:47', 46),
('IVP-122050005', 'SJ-122050005', 355999.2, 0, '47', '2022-05-19 08:50:26', '2022-05-19 08:50:26', 47),
('IVP-122050006', 'SJ-122050006', 881007, 0, '48', '2022-05-19 08:55:20', '2022-05-19 08:55:20', 48),
('IVP-122050007', 'SJ-122050007', 1415005.8, 0, '49', '2022-05-19 09:05:44', '2022-05-19 09:05:44', 49),
('IVP-122050008', 'SJ-122050008', 3229966.8, 0, '50', '2022-05-19 09:11:06', '2022-05-19 09:11:06', 50),
('IVP-122050009', 'SJ-122050009', 2630034, 0, '51', '2022-05-19 09:17:48', '2022-05-19 09:17:48', 51),
('IVP-122050010', 'SJ-122050010', 4335105, 0, '52', '2022-05-19 09:25:57', '2022-05-19 09:25:57', 52),
('IVP-122050011', 'SJ-122050011', 2366120.4, 0, '53', '2022-05-20 01:56:10', '2022-05-20 01:56:10', 53),
('IVP-122050012', 'SJ-122050012', 533998.8, 0, '54', '2022-05-20 02:00:44', '2022-05-20 02:00:44', 54),
('IVP-122050013', 'SJ-122050013', 2638026, 0, '55', '2022-05-20 02:11:02', '2022-05-20 02:11:02', 55),
('IVP-122050014', 'SJ-122050014', 1406014.8, 0, '56', '2022-05-20 02:25:59', '2022-05-20 02:25:59', 56),
('IVP-122050015', 'SJ-122050015', 177999.6, 0, '57', '2022-05-20 02:30:21', '2022-05-20 02:30:21', 57),
('IVP-122050016', 'SJ-122050016', 1423996.8, 0, '58', '2022-05-20 02:45:16', '2022-05-20 02:45:16', 58),
('IVP-122050017', 'SJ-122050017', 3615536.4, 0, '59', '2022-05-20 03:57:32', '2022-05-20 03:57:32', 59),
('IVP-122050018', 'SJ-122050018', 1376400, 0, '60', '2022-05-20 04:11:09', '2022-05-20 04:11:09', 60),
('IVP-122050019', 'SJ-122050019', 721588.8, 0, '61', '2022-05-20 04:28:03', '2022-05-20 04:28:03', 61),
('IVP-122050020', 'SJ-122050020', 355999.2, 0, '62', '2022-05-20 04:35:13', '2022-05-20 04:35:13', 62),
('IVP-122050021', 'SJ-122050021', 2135995.2, 0, '63', '2022-05-21 04:55:16', '2022-05-21 04:55:16', 63),
('IVP-122050022', 'SJ-122050022', 355999.2, 0, '64', '2022-05-21 04:58:25', '2022-05-21 04:58:25', 64),
('IVP-122050023', 'SJ-122050023', 3487930.8, 0, '65', '2022-05-21 07:38:15', '2022-05-21 07:38:15', 65),
('IVP-122050024', 'SJ-122050024', 5562942.6, 0, '66', '2022-05-23 01:57:40', '2022-05-23 01:57:40', 66),
('IVP-122050025', 'SJ-122050025', 355999.2, 0, '67', '2022-05-23 03:56:16', '2022-05-23 03:56:16', 67),
('IVP-122050026', 'SJ-122050026', 889998, 0, '68', '2022-05-23 04:01:51', '2022-05-23 04:01:51', 68),
('IVP-122050027', 'SJ-122050027', 2630034, 0, '69', '2022-05-23 04:09:48', '2022-05-23 04:09:48', 69),
('IVP-122050028', 'SJ-122050028', 3049969.2, 0, '70', '2022-05-23 04:14:39', '2022-05-23 04:14:39', 70),
('IVP-122050029', 'SJ-122050029', 3025993.2, 0, '71', '2022-05-23 04:17:44', '2022-05-23 04:17:44', 71),
('IVP-022110001', 'SJ-022110001', 64000, 0, '72', '2022-11-11 06:16:22', '2022-11-11 06:16:22', 72),
('IVP-022110002', 'SJ-022110002', 32000, 0, '73', '2022-11-11 06:26:14', '2022-11-11 06:26:14', 73),
('IVP-022120001', 'SJ-022120001', 250000, 0, '74', '2022-12-06 16:34:29', '2022-12-06 16:34:29', 74),
('IVP-023040001', 'SJ-023040001', 9000, 0, '75', '2023-04-28 17:38:57', '2023-04-28 17:38:57', 75);

-- --------------------------------------------------------

--
-- Struktur dari tabel `invoicepiutangs`
--

CREATE TABLE `invoicepiutangs` (
  `KodeInvoicePiutang` int(11) NOT NULL,
  `Tanggal` date NOT NULL,
  `KodePelanggan` varchar(191) NOT NULL,
  `Status` varchar(191) NOT NULL,
  `Total` double NOT NULL,
  `Keterangan` varchar(191) DEFAULT NULL,
  `NoFaktur` varchar(191) DEFAULT NULL,
  `KodeMataUang` varchar(191) NOT NULL,
  `KodeUser` varchar(191) NOT NULL,
  `Term` double DEFAULT NULL,
  `KodeLokasi` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `KodeInvoicePiutangShow` varchar(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `invoicepiutangs`
--

INSERT INTO `invoicepiutangs` (`KodeInvoicePiutang`, `Tanggal`, `KodePelanggan`, `Status`, `Total`, `Keterangan`, `NoFaktur`, `KodeMataUang`, `KodeUser`, `Term`, `KodeLokasi`, `created_at`, `updated_at`, `KodeInvoicePiutangShow`) VALUES
(1, '2022-04-26', 'PLG-008', 'CLS', 974500, NULL, NULL, 'Rp', 'may', 0, 'GUD-001', '2022-04-26 18:12:36', '2022-04-26 18:12:36', 'IVP-022040001'),
(2, '2022-04-26', 'PLG-007', 'CLS', 2535000, NULL, NULL, 'Rp', 'may', 0, 'GUD-001', '2022-04-26 18:18:23', '2022-04-26 18:18:23', 'IVP-022040002'),
(3, '2022-04-26', 'PLG-005', 'CLS', 2622000, NULL, NULL, 'Rp', 'may', 0, 'GUD-001', '2022-04-26 18:23:40', '2022-04-26 18:23:40', 'IVP-022040003'),
(4, '2022-04-27', 'PLG-007', 'CLS', 4788000, NULL, NULL, 'Rp', 'may', 0, 'GUD-001', '2022-04-27 18:46:29', '2022-04-27 18:46:29', 'IVP-022040004'),
(5, '2022-04-28', 'PLG-014', 'CLS', 2662000, NULL, NULL, 'Rp', 'may', 0, 'GUD-001', '2022-04-28 18:00:29', '2022-04-28 18:00:29', 'IVP-022040005'),
(6, '2022-04-28', 'PLG-005', 'CLS', 2670000, NULL, NULL, 'Rp', 'rika', 0, 'GUD-001', '2022-04-28 18:23:27', '2022-04-28 18:23:27', 'IVP-022040006'),
(7, '2022-04-28', 'PLG-015', 'CLS', 4583000, NULL, NULL, 'Rp', 'rika', 0, 'GUD-001', '2022-04-28 18:31:41', '2022-04-28 18:31:41', 'IVP-022040007'),
(8, '2022-04-28', 'PLG-008', 'CLS', 2139000, NULL, NULL, 'Rp', 'rika', 0, 'GUD-001', '2022-04-28 19:25:21', '2022-04-28 19:25:21', 'IVP-022040008'),
(9, '2022-05-06', 'PLG-015', 'CLS', 5295000, NULL, NULL, 'Rp', 'rika', 0, 'GUD-001', '2022-05-06 18:34:34', '2022-05-06 18:34:34', 'IVP-022050001'),
(10, '2022-05-06', 'PLG-008', 'CLS', 534000, NULL, NULL, 'Rp', 'rika', 0, 'GUD-001', '2022-05-06 19:02:43', '2022-05-06 19:02:43', 'IVP-022050002'),
(11, '2022-05-06', 'PLG-007', 'CLS', 881000, NULL, NULL, 'Rp', 'rika', 0, 'GUD-001', '2022-05-06 19:02:47', '2022-05-06 19:02:47', 'IVP-022050003'),
(12, '2022-05-06', 'PLG-007', 'CLS', 1164900, NULL, NULL, 'Rp', 'rika', 0, 'GUD-001', '2022-05-06 19:12:07', '2022-05-06 19:12:07', 'IVP-122050001'),
(13, '2022-05-06', 'PLG-007', 'CLS', 1059000, NULL, NULL, 'Rp', 'rika', 0, 'GUD-001', '2022-05-06 19:18:56', '2022-05-06 19:18:56', 'IVP-022050004'),
(14, '2022-05-09', 'PLG-011', 'CLS', 1780000, NULL, NULL, 'Rp', 'rika', 0, 'GUD-001', '2022-05-09 17:01:46', '2022-05-09 17:01:46', 'IVP-022050005'),
(15, '2022-05-09', 'PLG-015', 'CLS', 7120000, NULL, NULL, 'Rp', 'rika', 0, 'GUD-001', '2022-05-09 17:01:49', '2022-05-09 17:01:49', 'IVP-022050006'),
(16, '2022-05-09', 'PLG-010', 'CLS', 4396000, NULL, NULL, 'Rp', 'rika', 0, 'GUD-001', '2022-05-09 17:01:54', '2022-05-09 17:01:54', 'IVP-022050007'),
(17, '2022-05-09', 'PLG-005', 'OPN', 5280000, NULL, NULL, 'Rp', 'rika', 0, 'GUD-001', '2022-05-09 18:44:09', '2022-05-09 18:44:09', 'IVP-022050008'),
(18, '2022-05-09', 'PLG-014', 'CLS', 4410000, NULL, NULL, 'Rp', 'rika', 0, 'GUD-001', '2022-05-09 18:44:38', '2022-05-09 18:44:38', 'IVP-022050009'),
(19, '2022-05-09', 'PLG-012', 'CLS', 890000, NULL, NULL, 'Rp', 'rika', 0, 'GUD-001', '2022-05-09 18:44:46', '2022-05-09 18:44:46', 'IVP-022050010'),
(20, '2022-05-09', 'PLG-007', 'CLS', 2535000, NULL, NULL, 'Rp', 'rika', 0, 'GUD-001', '2022-05-09 18:45:02', '2022-05-09 18:45:02', 'IVP-022050011'),
(21, '2022-05-09', 'PLG-008', 'CLS', 890000, NULL, NULL, 'Rp', 'rika', 0, 'GUD-001', '2022-05-09 18:45:15', '2022-05-09 18:45:15', 'IVP-022050012'),
(22, '2022-05-10', 'PLG-009', 'CLS', 8095000, NULL, NULL, 'Rp', 'may', 0, 'GUD-001', '2022-05-10 15:54:05', '2022-05-10 15:54:05', 'IVP-022050013'),
(23, '2022-05-10', 'PLG-007', 'CLS', 2296000, NULL, NULL, 'Rp', 'may', 0, 'GUD-001', '2022-05-10 18:50:09', '2022-05-10 18:50:09', 'IVP-022050014'),
(24, '2022-05-10', 'PLG-007', 'CLS', 1690000, NULL, NULL, 'Rp', 'may', 0, 'GUD-001', '2022-05-10 18:53:10', '2022-05-10 18:53:10', 'IVP-022050015'),
(25, '2022-05-10', 'PLG-008', 'CLS', 703000, NULL, NULL, 'Rp', 'may', 0, 'GUD-001', '2022-05-10 19:01:57', '2022-05-10 19:01:57', 'IVP-022050016'),
(26, '2022-05-11', 'PLG-005', 'OPN', 2598000, NULL, NULL, 'Rp', 'may', 0, 'GUD-001', '2022-05-11 17:45:07', '2022-05-11 17:45:07', 'IVP-022050017'),
(27, '2022-05-11', 'PLG-011', 'CLS', 1771000, NULL, NULL, 'Rp', 'may', 0, 'GUD-001', '2022-05-11 17:51:22', '2022-05-11 17:51:22', 'IVP-022050018'),
(28, '2022-05-11', 'PLG-014', 'CLS', 2638000, NULL, NULL, 'Rp', 'may', 0, 'GUD-001', '2022-05-11 17:56:29', '2022-05-11 17:56:29', 'IVP-022050019'),
(29, '2022-05-11', 'PLG-007', 'CLS', 2118000, NULL, NULL, 'Rp', 'may', 0, 'GUD-001', '2022-05-11 05:05:50', '2022-05-11 05:05:50', 'IVP-022050020'),
(30, '2022-05-11', 'PLG-008', 'CLS', 356000, NULL, NULL, 'Rp', 'may', 0, 'GUD-001', '2022-05-11 05:08:04', '2022-05-11 05:08:04', 'IVP-022050021'),
(31, '2022-05-12', 'PLG-009', 'CLS', 4985000, NULL, NULL, 'Rp', 'rika', 0, 'GUD-001', '2022-05-12 01:33:01', '2022-05-12 01:33:01', 'IVP-022050022'),
(32, '2022-05-12', 'PLG-007', 'CLS', 1406000, NULL, NULL, 'Rp', 'may', 0, 'GUD-001', '2022-05-12 04:49:24', '2022-05-12 04:49:24', 'IVP-022050023'),
(33, '2022-05-12', 'PLG-008', 'CLS', 356000, NULL, NULL, 'Rp', 'may', 0, 'GUD-001', '2022-05-12 04:53:22', '2022-05-12 04:53:22', 'IVP-022050024'),
(34, '2022-05-13', 'PLG-012', 'CLS', 540000, NULL, NULL, 'Rp', 'may', 0, 'GUD-001', '2022-05-13 02:29:44', '2022-05-13 02:29:44', 'IVP-022050025'),
(35, '2022-05-13', 'PLG-015', 'CLS', 4360000, NULL, NULL, 'Rp', 'may', 0, 'GUD-001', '2022-05-13 04:28:43', '2022-05-13 04:28:43', 'IVP-022050026'),
(36, '2022-05-13', 'PLG-014', 'CLS', 2646000, NULL, NULL, 'Rp', 'may', 0, 'GUD-001', '2022-05-13 04:28:47', '2022-05-13 04:28:47', 'IVP-022050027'),
(37, '2022-05-13', 'PLG-007', 'CLS', 1059000, NULL, NULL, 'Rp', 'may', 0, 'GUD-001', '2022-05-13 04:28:52', '2022-05-13 04:28:52', 'IVP-022050028'),
(38, '2022-05-13', 'PLG-008', 'CLS', 525000, NULL, NULL, 'Rp', 'may', 0, 'GUD-001', '2022-05-13 04:28:55', '2022-05-13 04:28:55', 'IVP-022050029'),
(39, '2022-05-13', 'PLG-010', 'CLS', 4049000, NULL, NULL, 'Rp', 'may', 0, 'GUD-001', '2022-05-13 04:28:59', '2022-05-13 04:28:59', 'IVP-022050030'),
(40, '2022-05-14', 'PLG-015', 'OPN', 3575000, NULL, NULL, 'Rp', 'may', 0, 'GUD-001', '2022-05-14 04:14:15', '2022-05-14 04:14:15', 'IVP-022050031'),
(41, '2022-05-14', 'PLG-011', 'OPN', 1735000, NULL, NULL, 'Rp', 'may', 0, 'GUD-001', '2022-05-14 04:14:20', '2022-05-14 04:14:20', 'IVP-022050032'),
(42, '2022-05-14', 'PLG-007', 'OPN', 1780000, NULL, NULL, 'Rp', 'may', 0, 'GUD-001', '2022-05-14 04:40:30', '2022-05-14 04:40:30', 'IVP-022050033'),
(43, '2022-05-14', 'PLG-008', 'OPN', 534000, NULL, NULL, 'Rp', 'may', 0, 'GUD-001', '2022-05-14 04:43:29', '2022-05-14 04:43:29', 'IVP-022050034'),
(44, '2022-05-17', 'PLG-009', 'DEL', 4573250, NULL, NULL, 'Rp', 'may', 0, 'GUD-001', '2022-05-17 03:57:25', '2022-05-17 03:57:25', 'IVP-122050002'),
(45, '2022-05-17', 'PLG-009', 'DEL', 4296050, NULL, NULL, 'Rp', 'may', 0, 'GUD-001', '2022-05-17 04:15:05', '2022-05-17 04:15:05', 'IVP-122050003'),
(46, '2022-05-17', 'PLG-005', 'OPN', 9121114.2, NULL, '0100062259577700', 'Rp', 'may', 0, 'GUD-001', '2022-05-19 08:40:47', '2022-05-19 08:45:30', 'IVP-122050004'),
(47, '2022-05-17', 'PLG-017', 'OPN', 355999.2, NULL, '0100062259577701', 'Rp', 'may', 0, 'GUD-001', '2022-05-19 08:50:26', '2022-05-19 08:50:44', 'IVP-122050005'),
(48, '2022-05-17', 'PLG-017', 'OPN', 881007, NULL, '0100062259577702', 'Rp', 'may', 0, 'GUD-001', '2022-05-19 08:55:20', '2022-05-19 08:55:34', 'IVP-122050006'),
(49, '2022-05-17', 'PLG-017', 'OPN', 1415005.8, NULL, '0100062259577703', 'Rp', 'may', 0, 'GUD-001', '2022-05-19 09:05:44', '2022-05-19 09:06:15', 'IVP-122050007'),
(50, '2022-05-17', 'PLG-016', 'OPN', 3229966.8, NULL, '0100062259577704', 'Rp', 'may', 0, 'GUD-001', '2022-05-19 09:11:06', '2022-05-19 09:11:26', 'IVP-122050008'),
(51, '2022-05-17', 'PLG-014', 'OPN', 2630034, NULL, '0100062259577705', 'Rp', 'may', 0, 'GUD-001', '2022-05-19 09:17:48', '2022-05-19 09:18:08', 'IVP-122050009'),
(52, '2022-05-17', 'PLG-009', 'OPN', 4335105, NULL, '0100062259577706', 'Rp', 'may', 0, 'GUD-001', '2022-05-19 09:25:57', '2022-05-19 09:26:20', 'IVP-122050010'),
(53, '2022-05-18', 'PLG-017', 'OPN', 2366120.4, NULL, '0100062259577707', 'Rp', 'may', 0, 'GUD-001', '2022-05-20 01:56:10', '2022-05-20 02:03:39', 'IVP-122050011'),
(54, '2022-05-18', 'PLG-017', 'OPN', 533998.8, NULL, '0100062259577708', 'Rp', 'may', 0, 'GUD-001', '2022-05-20 02:00:44', '2022-05-20 02:03:52', 'IVP-122050012'),
(55, '2022-05-19', 'PLG-014', 'OPN', 2638026, NULL, '0100062259577709', 'Rp', 'may', 0, 'GUD-001', '2022-05-20 02:11:02', '2022-05-20 02:11:20', 'IVP-122050013'),
(56, '2022-05-19', 'PLG-017', 'OPN', 1406014.8, NULL, '0100062259577710', 'Rp', 'may', 0, 'GUD-001', '2022-05-20 02:25:59', '2022-05-20 02:26:21', 'IVP-122050014'),
(57, '2022-05-19', 'PLG-017', 'OPN', 177999.6, NULL, '0100062259577711', 'Rp', 'may', 0, 'GUD-001', '2022-05-20 02:30:21', '2022-05-20 02:31:16', 'IVP-122050015'),
(58, '2022-05-20', 'PLG-005', 'OPN', 1423996.8, NULL, '0100062259577712', 'Rp', 'may', 0, 'GUD-001', '2022-05-20 02:45:16', '2022-05-20 02:45:40', 'IVP-122050016'),
(59, '2022-05-20', 'PLG-005', 'OPN', 3615536.4, NULL, '0100062259577713', 'Rp', 'may', 0, 'GUD-001', '2022-05-20 03:57:32', '2022-05-20 03:57:50', 'IVP-122050017'),
(60, '2022-05-20', 'PLG-018', 'OPN', 1376400, NULL, '0100062259577714', 'Rp', 'may', 0, 'GUD-001', '2022-05-20 04:11:09', '2022-05-20 04:11:35', 'IVP-122050018'),
(61, '2022-05-20', 'PLG-017', 'OPN', 721588.8, NULL, '0100062259577715', 'Rp', 'may', 0, 'GUD-001', '2022-05-20 04:28:03', '2022-05-20 04:28:49', 'IVP-122050019'),
(62, '2022-05-20', 'PLG-017', 'OPN', 355999.2, NULL, '0100062259577716', 'Rp', 'may', 0, 'GUD-001', '2022-05-20 04:35:13', '2022-05-20 04:35:29', 'IVP-122050020'),
(63, '2022-05-21', 'PLG-017', 'OPN', 2135995.2, NULL, '0100062259577717', 'Rp', 'may', 0, 'GUD-001', '2022-05-21 04:55:16', '2022-05-21 04:55:33', 'IVP-122050021'),
(64, '2022-05-21', 'PLG-017', 'OPN', 355999.2, NULL, '0100062259577718', 'Rp', 'may', 0, 'GUD-001', '2022-05-21 04:58:25', '2022-05-21 04:58:45', 'IVP-122050022'),
(65, '2022-05-20', 'PLG-005', 'OPN', 3487930.8, NULL, '0100062259577713', 'Rp', 'may', 0, 'GUD-001', '2022-05-21 07:38:15', '2022-05-21 07:39:30', 'IVP-122050023'),
(66, '2022-05-23', 'PLG-017', 'OPN', 5562942.6, NULL, '0100062259577719', 'Rp', 'may', 0, 'GUD-001', '2022-05-23 01:57:40', '2022-05-23 01:58:17', 'IVP-122050024'),
(67, '2022-05-23', 'PLG-017', 'OPN', 355999.2, NULL, '0100062259577720', 'Rp', 'may', 0, 'GUD-001', '2022-05-23 03:56:16', '2022-05-23 03:56:32', 'IVP-122050025'),
(68, '2022-05-23', 'PLG-017', 'OPN', 889998, NULL, '0100062259577721', 'Rp', 'may', 0, 'GUD-001', '2022-05-23 04:01:51', '2022-05-23 04:02:07', 'IVP-122050026'),
(69, '2022-05-23', 'PLG-014', 'OPN', 2630034, NULL, '0100062259577722', 'Rp', 'may', 0, 'GUD-001', '2022-05-23 04:09:48', '2022-05-23 04:10:05', 'IVP-122050027'),
(70, '2022-05-23', 'PLG-016', 'OPN', 3049969.2, NULL, '0100062259577723', 'Rp', 'may', 0, 'GUD-001', '2022-05-23 04:14:39', '2022-05-23 04:14:58', 'IVP-122050028'),
(71, '2022-05-23', 'PLG-005', 'OPN', 3025993.2, NULL, '0100062259577724', 'Rp', 'may', 0, 'GUD-001', '2022-05-23 04:17:44', '2022-05-23 04:17:57', 'IVP-122050029'),
(72, '2022-11-11', 'PLG-005', 'OPN', 64000, NULL, NULL, 'Rp', 'admin', 0, 'GUD-001', '2022-11-11 06:16:22', '2022-11-11 06:16:22', 'IVP-022110001'),
(73, '2022-11-11', 'PLG-009', 'OPN', 32000, NULL, NULL, 'Rp', 'admin', 0, 'GUD-001', '2022-11-11 06:26:14', '2022-11-11 06:26:14', 'IVP-022110002'),
(74, '2022-12-06', 'PLG-005', 'OPN', 250000, NULL, NULL, 'Rp', 'admin', 0, 'GUD-001', '2022-12-06 16:34:29', '2022-12-06 16:34:29', 'IVP-022120001'),
(75, '2023-04-28', 'PLG-005', 'OPN', 9000, NULL, NULL, 'Rp', 'admin', 0, 'GUD-001', '2023-04-28 17:38:57', '2023-04-28 17:38:57', 'IVP-023040001');

-- --------------------------------------------------------

--
-- Struktur dari tabel `invopnames`
--

CREATE TABLE `invopnames` (
  `Tanggal` datetime NOT NULL,
  `Status` varchar(191) NOT NULL,
  `KodeLokasi` varchar(191) NOT NULL,
  `KodeItem` varchar(191) NOT NULL,
  `KodeSatuan` varchar(191) NOT NULL,
  `qtyOPN` double NOT NULL,
  `qtyIN` double NOT NULL,
  `qtyOUT` double NOT NULL,
  `qtyInHand` double NOT NULL,
  `qtyOpname` double NOT NULL,
  `qtyBlc` double NOT NULL,
  `HargaRata` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `itemkonversis`
--

CREATE TABLE `itemkonversis` (
  `id` int(11) NOT NULL,
  `KodeItem` varchar(191) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `KodeSatuan` varchar(191) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Konversi` double NOT NULL,
  `HargaBeli` double NOT NULL,
  `HargaJual` double NOT NULL,
  `HargaMember` double NOT NULL,
  `HargaGrosir` double NOT NULL,
  `Grab` double NOT NULL,
  `Shopee` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `itemkonversis`
--

INSERT INTO `itemkonversis` (`id`, `KodeItem`, `KodeSatuan`, `Konversi`, `HargaBeli`, `HargaJual`, `HargaMember`, `HargaGrosir`, `Grab`, `Shopee`, `created_at`, `updated_at`) VALUES
(1, 'FF-001', 'PAK', 1, 12000, 0, 0, 0, 0, 0, '2022-04-13 23:58:49', '2023-03-02 04:34:03'),
(2, 'BB-001', 'SAK', 1, 12000, 0, 0, 0, 0, 0, '2022-04-14 00:27:56', '2023-03-02 04:36:34'),
(3, 'FF-002', 'PAK', 1, 16000, 18000, 18000, 18000, 18000, 18000, '2022-04-22 20:39:51', '2023-02-13 06:33:06'),
(4, 'FF-003', 'PAK', 1, 15000, 20000, 20000, 20000, 20000, 20000, '2022-04-22 20:40:26', '2023-02-13 06:35:24'),
(5, 'FF-004', 'PAK', 1, 15000, 20000, 20000, 20000, 20000, 20000, '2022-04-22 20:41:03', '2023-01-24 12:04:45'),
(6, 'FF-005', 'PAK', 1, 15000, 0, 0, 0, 0, 0, '2022-04-22 20:41:32', '2022-04-22 20:41:32'),
(7, 'FF-006', 'PAK', 1, 15000, 0, 0, 0, 0, 0, '2022-04-22 20:41:55', '2022-04-22 20:41:55'),
(8, 'FF-007', 'PAK', 1, 15000, 0, 0, 0, 0, 0, '2022-04-22 20:42:49', '2022-04-22 20:42:49'),
(9, 'FF-008', 'PAK', 1, 15000, 0, 0, 0, 0, 0, '2022-04-22 20:43:20', '2022-04-22 20:43:20'),
(10, 'FF-009', 'PAK', 1, 15000, 0, 0, 0, 0, 0, '2022-04-22 20:44:32', '2022-04-22 20:44:32'),
(11, 'FF-0010', 'PAK', 1, 15000, 0, 0, 0, 0, 0, '2022-04-22 20:45:00', '2022-04-22 20:45:00'),
(12, 'FF-011', 'PAK', 1, 15000, 0, 0, 0, 0, 0, '2022-04-22 20:45:47', '2022-04-22 20:45:47'),
(13, 'FF-012', 'PCS', 1, 30000, 32000, 33000, 33000, 33000, 33000, '2022-11-11 05:43:41', '2022-11-11 05:43:41'),
(14, 'FF-012', 'Dus', 12, 300000, 320000, 330000, 330000, 330000, 330000, '2022-11-11 05:43:41', '2022-11-11 05:43:41'),
(15, 'FF-013', 'Dus', 1, 8000, 10000, 10000, 10000, 10000, 10000, '2023-02-15 08:12:40', '2023-02-15 08:15:23'),
(16, 'FF-014', 'KG', 1, 5000, 10000, 10000, 10000, 10000, 10000, '2023-03-02 04:18:52', '2023-03-02 04:24:47'),
(17, 'FF-015', 'PCS', 1, 10000, 11000, 11500, 12000, 0, 0, '2023-03-02 16:22:25', '2023-03-02 16:22:25'),
(18, 'BB-001', 'PCS', 1, 5000, 10000, 10000, 10000, 10000, 10000, '2023-03-02 04:32:56', '2023-03-02 04:32:56'),
(19, 'FF-016', 'PCS', 1, 1, 1, 1, 1, 0, 0, '2023-03-02 16:39:42', '2023-03-02 16:39:42'),
(20, 'FF-017', 'PCS', 1, 10000, 11000, 11000, 11000, 0, 0, '2023-03-08 17:46:22', '2023-03-08 17:46:22'),
(21, 'BB-003', 'PCS', 1, 30000, 40000, 40000, 40000, 40000, 40000, '2023-04-13 03:40:17', '2023-04-13 03:40:17'),
(22, 'BB-004', 'PCS', 1, 10000, 15000, 15000, 15000, 15000, 15000, '2023-05-10 08:06:24', '2023-05-10 08:06:24'),
(23, 'BB-005', 'PCS', 1, 10000, 13000, 11500, 12000, 0, 0, '2023-05-10 19:08:28', '2023-05-10 19:08:28'),
(24, 'FF-018', 'PCS', 1, 10000, 12000, 12000, 12000, 12000, 12000, '2023-05-29 08:27:26', '2023-05-29 08:27:26');

-- --------------------------------------------------------

--
-- Struktur dari tabel `items`
--

CREATE TABLE `items` (
  `id` int(11) NOT NULL,
  `KodeItem` varchar(191) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `KodeRak` varchar(191) NOT NULL DEFAULT 'Rak-001',
  `Barcode` varchar(255) NOT NULL,
  `KodeKategori` varchar(191) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `NamaItem` varchar(191) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Alias` varchar(191) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `jenisitem` enum('bahanbaku','bahanjadi','bahansetengahjadi') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Keterangan` varchar(191) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Status` varchar(191) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `BatasBawah` double NOT NULL,
  `KodeUser` varchar(191) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `TanggalExp` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `items`
--

INSERT INTO `items` (`id`, `KodeItem`, `KodeRak`, `Barcode`, `KodeKategori`, `NamaItem`, `Alias`, `jenisitem`, `Keterangan`, `Status`, `BatasBawah`, `KodeUser`, `TanggalExp`, `created_at`, `updated_at`) VALUES
(1, 'FF-001', 'Rak-001', 'FF-001', 'KLA-001', 'Gula Rafinasi', 'MB', 'bahanjadi', '-', 'DEL', 0, 'admin', NULL, '2022-04-13 23:58:49', '2023-03-02 04:34:03'),
(2, 'BB-001', 'Rak-001', 'BB-001', 'KLA-002', 'Sprite123', 'AF', 'bahanjadi', '*', 'DEL', 0, 'admin', NULL, '2022-04-14 00:27:56', '2023-03-02 04:36:34'),
(3, 'FF-002', 'Rak-001', 'FF-002', 'KLA-001', 'Mantao kotak Aneka Rasa', 'MB', 'bahanjadi', '-', 'OPN', 0, 'admin', NULL, '2022-04-22 20:39:51', '2023-02-13 06:33:06'),
(4, 'FF-003', 'Rak-001', 'FF-003', 'KLA-001', 'Mantao Bulat Rasa Cokelat', 'MTC', 'bahanjadi', '-', 'OPN', 0, 'may', NULL, '2022-04-22 20:40:26', '2023-02-13 06:35:24'),
(5, 'FF-004', 'Rak-001', 'FF-004', 'KLA-001', 'Mantao Rasa Original', 'MTP', 'bahanjadi', '-', 'OPN', 0, 'may', NULL, '2022-04-22 20:41:03', '2023-01-24 12:04:45'),
(6, 'FF-005', 'Rak-001', 'FF-005', 'KLA-001', 'Pao Mini Aneka Warna Isi Cokelat', 'RBC', 'bahanjadi', '-', 'OPN', 0, 'may', NULL, '2022-04-22 20:41:32', '2022-04-22 20:41:32'),
(7, 'FF-006', 'Rak-001', 'FF-006', 'KLA-001', 'Pao Mini Isi Ayam', 'MPA', 'bahanjadi', '-', 'OPN', 0, 'may', NULL, '2022-04-22 20:41:55', '2022-04-22 20:41:55'),
(8, 'FF-007', 'Rak-001', 'FF-007', 'KLA-001', 'Pao Mini Isi Cokelat', 'MPC', 'bahanjadi', '-', 'OPN', 0, 'may', NULL, '2022-04-22 20:42:49', '2022-04-22 20:42:49'),
(9, 'FF-008', 'Rak-001', 'FF-008', 'KLA-001', 'Pao Mini Isi Cokelat Keju', 'MPCKJ', 'bahanjadi', '-', 'OPN', 0, 'may', NULL, '2022-04-22 20:43:20', '2022-04-22 20:43:20'),
(10, 'FF-009', 'Rak-001', 'FF-009', 'KLA-001', 'Pao Mini Isi Kacang Hijau', 'MPKH', 'bahanjadi', '-', 'OPN', 0, 'may', NULL, '2022-04-22 20:44:32', '2022-04-22 20:44:32'),
(11, 'FF-0010', 'Rak-001', 'FF-0010', 'KLA-001', 'Pao Mini Isi Kacang Merah', 'MPKM', 'bahanjadi', '-', 'OPN', 0, 'may', NULL, '2022-04-22 20:45:00', '2022-04-22 20:45:00'),
(12, 'FF-011', 'Rak-001', 'FF-011', 'KLA-001', 'Pao Mini Isi Keju', 'MPKJ', 'bahanjadi', '-', 'OPN', 0, 'may', NULL, '2022-04-22 20:45:47', '2022-04-22 20:45:47'),
(13, 'FF-012', 'Rak-001', 'FF-012', 'KLA-001', 'minyak bimoli', '-', 'bahanjadi', '-', 'DEL', 0, 'admin', '2022-11-11', '2022-11-11 05:43:41', '2023-05-23 13:17:29'),
(14, 'FF-013', 'Rak-001', 'FF-013', 'KLA-001', 'Dimsum udang', '-', 'bahanjadi', '-', 'OPN', 0, 'Ardian', NULL, '2023-02-15 08:12:40', '2023-02-15 08:15:23'),
(15, 'FF-014', 'Rak-001', 'FF-014', 'KLA-001', 'Tes', '-', 'bahanjadi', '.', 'OPN', 0, 'Ardian', NULL, '2023-03-02 04:18:52', '2023-03-02 04:24:47'),
(16, 'FF-015', 'Rak-001', 'FF-015', 'KLA-001', 'coca cola', '-', 'bahanjadi', '-', 'OPN', 0, 'admin', NULL, '2023-03-02 16:22:25', '2023-03-02 16:22:25'),
(17, 'BB-001', 'Rak-001', 'BB-001', 'KLA-002', 'Sprite', '-', 'bahanjadi', '*', 'OPN', 0, 'Ardian', NULL, '2023-03-02 04:32:56', '2023-03-02 04:32:56'),
(18, 'FF-016', 'Rak-001', 'FF-016', 'KLA-001', 'item A', '-', 'bahanjadi', '-', 'OPN', 0, 'admin', NULL, '2023-03-02 16:39:42', '2023-03-02 16:39:42'),
(19, 'FF-017', 'Rak-001', 'FF-017', 'KLA-001', 'safecare', '-', 'bahanjadi', '-', 'OPN', 0, 'admin', NULL, '2023-03-08 17:46:22', '2023-03-08 17:46:22'),
(20, 'BB-003', 'Rak-001', 'BB-003', 'KLA-002', 'mouse komputer', '-', 'bahanjadi', 'wireless', 'OPN', 0, 'Ardian', NULL, '2023-04-13 03:40:17', '2023-04-13 03:40:17'),
(21, 'BB-004', 'Rak-001', 'BB-004', 'KLA-002', 'Solasi', '-', 'bahanjadi', '-', 'OPN', 0, 'Ardian', NULL, '2023-05-10 08:06:24', '2023-05-10 08:06:24'),
(22, 'BB-005', 'Rak-001', 'BB-005', 'KLA-002', 'solasi 1', '-', 'bahanjadi', '-', 'OPN', 2, 'admin', NULL, '2023-05-10 19:08:28', '2023-05-10 19:08:28'),
(23, 'FF-018', 'Rak-001', 'FF-018', 'KLA-001', 'buku java', '-', 'bahanjadi', '-', 'OPN', 0, 'Ardian', NULL, '2023-05-29 08:27:26', '2023-05-29 08:27:26');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jabatans`
--

CREATE TABLE `jabatans` (
  `id` int(10) UNSIGNED NOT NULL,
  `KodeJabatan` varchar(191) NOT NULL,
  `KeteranganJabatan` varchar(191) NOT NULL,
  `Status` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `jabatans`
--

INSERT INTO `jabatans` (`id`, `KodeJabatan`, `KeteranganJabatan`, `Status`, `created_at`, `updated_at`) VALUES
(1, 'Kasir', 'Kasir', 'OPN', '2022-04-14 00:08:16', '2022-12-20 19:51:11'),
(2, 'Driver', 'Driver', 'OPN', '2022-04-14 00:08:24', '2022-04-14 00:08:24'),
(3, 'Admin Gudang', 'Admin Gudang', 'DEL', '2022-04-14 00:08:42', '2022-04-14 00:08:42'),
(4, 'Admin Gudang', 'Admin Gudang', 'DEL', '2022-04-14 00:08:42', '2022-04-14 00:08:42'),
(5, 'Admin Gudang', 'Admin Gudang', 'OPN', '2022-04-22 20:46:32', '2022-04-22 20:46:32'),
(6, 'Mandor', 'Mandor', 'OPN', '2022-04-22 20:47:34', '2022-04-22 20:47:34'),
(7, 'Produksi', 'Produksi', 'OPN', '2022-04-22 20:48:29', '2022-04-22 20:48:29'),
(8, 'Sales', 'Sales', 'OPN', '2022-11-11 05:47:52', '2022-11-11 05:47:52');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jenisbayars`
--

CREATE TABLE `jenisbayars` (
  `KodeJenisBayar` varchar(191) NOT NULL,
  `JenisBayar` varchar(191) NOT NULL,
  `Status` varchar(191) NOT NULL,
  `Keterangan` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `karyawans`
--

CREATE TABLE `karyawans` (
  `id` int(10) UNSIGNED NOT NULL,
  `KodeKaryawan` varchar(191) NOT NULL,
  `Nama` varchar(191) NOT NULL,
  `Alamat` varchar(191) NOT NULL,
  `Kota` varchar(191) NOT NULL,
  `Telepon` varchar(191) NOT NULL,
  `JenisKelamin` enum('Laki-laki','Perempuan') NOT NULL,
  `KodeUser` varchar(191) NOT NULL,
  `Status` varchar(191) NOT NULL,
  `GajiPokok` varchar(191) NOT NULL,
  `KodeJabatan` varchar(191) NOT NULL,
  `KodeGolongan` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `karyawans`
--

INSERT INTO `karyawans` (`id`, `KodeKaryawan`, `Nama`, `Alamat`, `Kota`, `Telepon`, `JenisKelamin`, `KodeUser`, `Status`, `GajiPokok`, `KodeJabatan`, `KodeGolongan`, `created_at`, `updated_at`) VALUES
(1, 'KAR-001', 'May', 'Surabaya', 'Surabaya', '081219491977', 'Perempuan', 'may', 'OPN', '0', 'Kasir', 'GOL-01', '2022-04-14 00:09:30', '2022-04-22 20:50:54'),
(2, 'KAR-002', 'Rika', 'Jl. Kalikepiting Pompa No. 8', 'Surabaya', '0812-3990-5667', 'Perempuan', 'may', 'OPN', '0', 'Admin Gudang', 'GOL-01', '2022-04-22 20:50:44', '2022-04-22 20:50:44'),
(3, 'KAR-003', 'Adi Surya', 'Jl. Kedung Cowek No. 62', 'Surabaya', '082331425574', 'Laki-laki', 'may', 'OPN', '0', 'Admin Gudang', 'GOL-01', '2022-04-22 20:51:45', '2022-04-22 20:53:30'),
(4, 'KAR-004', 'Muis', 'Jl. Kenjeran 4C No. 88', 'Surabaya', '0838-6664-1516', 'Laki-laki', 'may', 'OPN', '0', 'Driver', 'GOL-01', '2022-04-22 20:53:17', '2022-04-22 21:01:35'),
(5, 'KAR-005', 'Lina', 'Dsn. Pejok', 'Bojonegoro', '0831-1967-6271', 'Perempuan', 'may', 'OPN', '0', 'Mandor', 'GOL-01', '2022-04-22 20:57:44', '2022-04-22 20:57:44'),
(6, 'KAR-006', 'Siska', 'Dsn. Kaliduren', 'Blitar', '0856-4518-1070', 'Perempuan', 'may', 'OPN', '0', 'Mandor', 'GOL-01', '2022-04-22 20:59:08', '2022-04-22 20:59:08'),
(7, 'KAR-007', 'Fitriyah S', 'Jl. Sidotopo Wetan Baru 1-A/20-B', 'Surabaya', '-', 'Perempuan', 'may', 'OPN', '0', 'Produksi', 'GOL-01', '2022-04-22 21:00:20', '2022-04-22 21:01:49'),
(8, 'KAR-008', 'Agus S', 'Dsn. Ringinanyar', 'Blitar', '0888-3163-189', 'Perempuan', 'may', 'OPN', '0', 'Mandor', 'GOL-01', '2022-04-22 21:03:43', '2022-04-22 21:03:43'),
(9, 'KAR-009', 'Angelina Dae', 'Jl. Nusa Indah', 'NTT - Kupang', '-', 'Perempuan', 'may', 'OPN', '0', 'Produksi', 'GOL-01', '2022-04-22 21:05:21', '2022-04-22 21:05:21'),
(10, 'KAR-010', 'Siti N', 'Dsn. Megal', 'Bojonegoro', '0821-3120-9752', 'Perempuan', 'may', 'OPN', '0', 'Produksi', 'GOL-01', '2022-04-22 21:06:29', '2022-04-22 21:06:29'),
(11, 'KAR-011', 'Hayeti', 'Dsn. Tengginah', 'Sampang', '-', 'Perempuan', 'may', 'OPN', '0', 'Produksi', 'GOL-01', '2022-04-22 21:07:43', '2022-04-22 21:07:43'),
(12, 'KAR-012', 'Maulida', 'Dsn. Ganden', 'Bangkalan', '-', 'Perempuan', 'may', 'OPN', '0', 'Produksi', 'GOL-01', '2022-04-22 21:09:42', '2022-04-22 21:09:42'),
(13, 'KAR-013', 'Candra A', 'Dsn. Pejok', 'Bojonegoro', '-', 'Laki-laki', 'may', 'OPN', '0', 'Produksi', 'GOL-01', '2022-04-22 21:10:36', '2022-04-22 21:10:36'),
(14, 'KAR-014', 'SALES A', '-', '-', '-', 'Laki-laki', 'admin', 'OPN', '0', 'Sales', 'GOL-01', '2022-11-11 05:48:25', '2022-11-11 05:48:25');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kasbanks`
--

CREATE TABLE `kasbanks` (
  `KodeKasBank` varchar(191) NOT NULL,
  `Tanggal` date NOT NULL,
  `Status` varchar(191) NOT NULL,
  `TanggalCheque` date NOT NULL,
  `KodeBayar` varchar(191) NOT NULL,
  `TipeBayar` varchar(191) NOT NULL,
  `NoLink` varchar(191) NOT NULL,
  `BayarDari` varchar(191) NOT NULL,
  `Untuk` varchar(191) NOT NULL,
  `KodeInvoice` varchar(191) NOT NULL,
  `Keterangan` varchar(191) DEFAULT NULL,
  `KodeUser` varchar(191) NOT NULL,
  `Tipe` varchar(191) NOT NULL,
  `Total` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `KodeKasBankID` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `kasbanks`
--

INSERT INTO `kasbanks` (`KodeKasBank`, `Tanggal`, `Status`, `TanggalCheque`, `KodeBayar`, `TipeBayar`, `NoLink`, `BayarDari`, `Untuk`, `KodeInvoice`, `Keterangan`, `KodeUser`, `Tipe`, `Total`, `created_at`, `updated_at`, `KodeKasBankID`) VALUES
('KM-22050001', '2022-05-10', 'CFM', '2022-05-10', 'Transfer', '', '', '', 'PEL', 'IVP-022040002', 'Pelunasan nota', 'may', 'AR', 2099400, '2022-05-10 23:53:51', '2022-05-10 23:53:51', 1),
('KM-22050002', '2022-05-13', 'CFM', '2022-05-13', 'Transfer', '', '', '', 'PEL', 'IVP-022040003', 'Pelunasan piutang', 'may', 'AR', 2622000, '2022-05-13 05:18:19', '2022-05-13 05:18:19', 2),
('KM-22050003', '2022-05-13', 'CFM', '2022-05-13', 'Transfer', '', '', '', 'PEL', 'IVP-022040006', 'Pelunasan piutang', 'may', 'AR', 2670000, '2022-05-13 05:18:49', '2022-05-13 05:18:49', 3),
('KM-22050004', '2022-05-13', 'CFM', '2022-05-13', 'Transfer', '', '', '', 'PEL', 'IVP-022040004', '-', 'may', 'AR', 4788000, '2022-05-13 05:19:33', '2022-05-13 05:19:33', 4),
('KM-22050005', '2022-05-13', 'CFM', '2022-05-13', 'Transfer', '', '', '', 'PEL', 'IVP-022050003', '-', 'may', 'AR', 881000, '2022-05-13 05:20:03', '2022-05-13 05:20:03', 5),
('KM-22050006', '2022-05-13', 'CFM', '2022-05-13', 'Transfer', '', '', '', 'PEL', 'IVP-122050001', '-', 'may', 'AR', 1164900, '2022-05-13 05:20:31', '2022-05-13 05:20:31', 6),
('KM-22050007', '2022-05-13', 'CFM', '2022-05-13', 'Transfer', '', '', '', 'PEL', 'IVP-022050004', '-', 'may', 'AR', 1059000, '2022-05-13 05:21:24', '2022-05-13 05:21:24', 7),
('KM-22050008', '2022-05-13', 'CFM', '2022-05-13', 'Transfer', '', '', '', 'PEL', 'IVP-022050011', '-', 'may', 'AR', 2535000, '2022-05-13 05:23:39', '2022-05-13 05:23:39', 8),
('KM-22050009', '2022-05-13', 'CFM', '2022-05-13', 'Transfer', '', '', '', 'PEL', 'IVP-022050014', 'Pelunasan piutang', 'may', 'AR', 2296000, '2022-05-13 05:24:05', '2022-05-13 05:24:05', 9),
('KM-22050010', '2022-05-13', 'CFM', '2022-05-13', 'Cash', '', '', '', 'PEL', 'IVP-022050015', 'Pelunasan piutang', 'may', 'AR', 1690000, '2022-05-13 05:25:52', '2022-05-13 05:25:52', 10),
('KM-22050011', '2022-05-13', 'CFM', '2022-05-13', 'Transfer', '', '', '', 'PEL', 'IVP-022050020', 'Pelunasan piutang', 'may', 'AR', 2118000, '2022-05-13 05:26:17', '2022-05-13 05:26:17', 11),
('KM-22050012', '2022-05-13', 'CFM', '2022-05-13', 'Transfer', '', '', '', 'PEL', 'IVP-022050023', 'Pelunasan piutang', 'may', 'AR', 1406000, '2022-05-13 05:26:44', '2022-05-13 05:26:44', 12),
('KM-22050013', '2022-05-13', 'CFM', '2022-05-13', 'Transfer', '', '', '', 'PEL', 'IVP-022050028', 'Pelunasan piutang', 'may', 'AR', 1059000, '2022-05-13 06:41:48', '2022-05-13 06:41:48', 13),
('KM-22050014', '2022-05-13', 'CFM', '2022-05-13', 'Transfer', '', '', '', 'PEL', 'IVP-022040001', 'Pelunasan piutang', 'may', 'AR', 974500, '2022-05-13 09:41:16', '2022-05-13 09:41:16', 14),
('KM-22050015', '2022-05-13', 'CFM', '2022-05-13', 'Transfer', '', '', '', 'PEL', 'IVP-022040008', 'Pelunasan piutang', 'may', 'AR', 2139000, '2022-05-13 09:41:51', '2022-05-13 09:41:51', 15),
('KM-22050016', '2022-05-13', 'CFM', '2022-05-13', 'Transfer', '', '', '', 'PEL', 'IVP-022050002', 'Pelunasan piutang', 'may', 'AR', 534000, '2022-05-13 09:42:14', '2022-05-13 09:42:14', 16),
('KM-22050017', '2022-05-13', 'CFM', '2022-05-13', 'Transfer', '', '', '', 'PEL', 'IVP-022050012', 'Pelunasan piutang', 'may', 'AR', 890000, '2022-05-13 09:42:40', '2022-05-13 09:42:40', 17),
('KM-22050018', '2022-05-13', 'CFM', '2022-05-13', 'Transfer', '', '', '', 'PEL', 'IVP-022050016', 'Pelunasan piutang', 'may', 'AR', 703000, '2022-05-13 09:43:11', '2022-05-13 09:43:11', 18),
('KM-22050019', '2022-05-13', 'CFM', '2022-05-13', 'Transfer', '', '', '', 'PEL', 'IVP-022050021', 'Pelunasan piutang', 'may', 'AR', 356000, '2022-05-13 09:44:10', '2022-05-13 09:44:10', 19),
('KM-22050020', '2022-05-13', 'CFM', '2022-05-13', 'Transfer', '', '', '', 'PEL', 'IVP-022050024', 'Pelunasan piutang', 'may', 'AR', 356000, '2022-05-13 09:44:54', '2022-05-13 09:44:54', 20),
('KM-22050021', '2022-05-13', 'CFM', '2022-05-13', 'Transfer', '', '', '', 'PEL', 'IVP-022050029', 'Pelunasan piutang', 'may', 'AR', 525000, '2022-05-13 09:45:20', '2022-05-13 09:45:20', 21),
('KM-22050022', '2022-05-13', 'CFM', '2022-05-13', 'Transfer', '', '', '', 'PEL', 'IVP-022050013', 'Pelunasan piutang', 'may', 'AR', 8095000, '2022-05-13 09:46:09', '2022-05-13 09:46:09', 22),
('KM-22050023', '2022-05-13', 'CFM', '2022-05-13', 'Transfer', '', '', '', 'PEL', 'IVP-022050022', 'Pelunasan piutang', 'may', 'AR', 4985000, '2022-05-13 09:46:38', '2022-05-13 09:46:38', 23),
('KM-22050024', '2022-05-13', 'CFM', '2022-05-13', 'Transfer', '', '', '', 'PEL', 'IVP-022050007', 'Pelunasan piutang', 'may', 'AR', 4396000, '2022-05-13 09:47:11', '2022-05-13 09:47:11', 24),
('KM-22050025', '2022-05-13', 'CFM', '2022-05-13', 'Transfer', '', '', '', 'PEL', 'IVP-022050030', 'Pelunasan piutang', 'may', 'AR', 4049000, '2022-05-13 09:47:56', '2022-05-13 09:47:56', 25),
('KM-22050026', '2022-05-13', 'CFM', '2022-05-13', 'Transfer', '', '', '', 'PEL', 'IVP-022050018', 'Pelunasan piutang', 'may', 'AR', 1771000, '2022-05-13 09:48:23', '2022-05-13 09:48:23', 26),
('KM-22050027', '2022-05-13', 'CFM', '2022-05-13', 'Transfer', '', '', '', 'PEL', 'IVP-022050005', 'Pelunasan piutang', 'may', 'AR', 1780000, '2022-05-13 09:48:49', '2022-05-13 09:48:49', 27),
('KM-22050028', '2022-05-13', 'CFM', '2022-05-13', 'Transfer', '', '', '', 'PEL', 'IVP-022050025', 'Pelunasan piutang', 'may', 'AR', 540000, '2022-05-13 09:49:21', '2022-05-13 09:49:21', 28),
('KM-22050029', '2022-05-13', 'CFM', '2022-05-13', 'Transfer', '', '', '', 'PEL', 'IVP-022050010', 'Pelunasan piutang', 'may', 'AR', 890000, '2022-05-13 09:49:50', '2022-05-13 09:49:50', 29),
('KM-22050030', '2022-05-13', 'CFM', '2022-05-13', 'Transfer', '', '', '', 'PEL', 'IVP-022040007', 'Pelunasan piutang', 'may', 'AR', 4583000, '2022-05-13 09:50:40', '2022-05-13 09:50:40', 30),
('KM-22050031', '2022-05-13', 'CFM', '2022-05-13', 'Transfer', '', '', '', 'PEL', 'IVP-022050001', 'Pelunasan piutang', 'may', 'AR', 5295000, '2022-05-13 09:51:15', '2022-05-13 09:51:15', 31),
('KM-22050032', '2022-05-13', 'CFM', '2022-05-13', 'Transfer', '', '', '', 'PEL', 'IVP-022050006', 'Pelunasan piutang', 'may', 'AR', 712000, '2022-05-13 09:52:20', '2022-05-13 09:52:20', 32),
('KM-22050033', '2022-05-13', 'CFM', '2022-05-13', 'Transfer', '', '', '', 'PEL', 'IVP-022050006', 'Pelunasan piutang', 'may', 'AR', 6408000, '2022-05-13 09:52:42', '2022-05-13 09:52:42', 33),
('KM-22050034', '2022-05-13', 'CFM', '2022-05-13', 'Transfer', '', '', '', 'PEL', 'IVP-022040005', 'Pelunasan piutang', 'may', 'AR', 2662000, '2022-05-13 09:53:12', '2022-05-13 09:53:12', 34),
('KM-22050035', '2022-05-13', 'CFM', '2022-05-13', 'Transfer', '', '', '', 'PEL', 'IVP-022050009', 'Pelunasan piutang', 'may', 'AR', 4410000, '2022-05-13 10:01:33', '2022-05-13 10:01:33', 35),
('KM-22050036', '2022-05-13', 'CFM', '2022-05-13', 'Transfer', '', '', '', 'PEL', 'IVP-022050026', 'Pelunasan piutang', 'may', 'AR', 4360000, '2022-05-13 10:02:17', '2022-05-13 10:02:17', 36),
('KM-22050037', '2022-05-13', 'CFM', '2022-05-13', 'Transfer', '', '', '', 'PEL', 'IVP-022050019', 'Pelunasan piutang', 'may', 'AR', 2638000, '2022-05-13 10:02:45', '2022-05-13 10:02:45', 37),
('KM-22050038', '2022-05-13', 'CFM', '2022-05-13', 'Transfer', '', '', '', 'PEL', 'IVP-022050027', 'Pelunasan piutang', 'may', 'AR', 2646000, '2022-05-13 10:04:18', '2022-05-13 10:04:18', 38),
('KM-22110001', '2022-11-11', 'CFM', '2022-11-11', 'Cash', '-', '-', '-', 'PLG-005', 'KSR-22110001', '-', 'admin', 'KS', 32000, '2022-11-11 06:52:22', '2022-11-11 06:52:22', 39),
('KM-22120001', '2022-12-06', 'CFM', '2022-12-06', 'Cash', '-', '-', '-', 'PLG-016', 'KSR-22120001', '-', 'admin', 'KS', 150000, '2022-12-06 16:47:06', '2022-12-06 16:47:06', 40),
('KM-22120002', '2022-12-06', 'CFM', '2022-12-06', 'Cash', '-', '-', '-', 'PLG-016', 'KSR-22120002', '-', 'admin', 'KS', 150000, '2022-12-06 17:06:13', '2022-12-06 17:06:13', 41),
('KM-22120003', '2022-12-06', 'CFM', '2022-12-06', 'Cash', '-', '-', '-', 'PLG-016', 'KSR-22120003', '-', 'admin', 'KS', 150000, '2022-12-06 17:06:57', '2022-12-06 17:06:57', 42),
('KM-23040001', '2023-04-13', 'CFM', '2023-04-13', 'Cash', '-', '-', '-', 'PLG-005', 'KSR-23040003', '-', 'admin', 'KS', 80000, '2023-04-13 15:11:59', '2023-04-13 15:11:59', 43),
('KM-23040002', '2023-04-28', 'CFM', '2023-04-28', 'Cash', '-', '-', '-', 'PLG-016', 'KSR-23040004', '-', 'admin', 'KS', 10000, '2023-04-28 16:37:15', '2023-04-28 16:37:15', 44),
('KM-23040003', '2023-04-28', 'CFM', '2023-04-28', 'Cash', '-', '-', '-', 'PLG-005', 'KSR-23040005', '-', 'KASIR', 'KS', 10000, '2023-04-28 17:45:19', '2023-04-28 17:45:19', 45),
('KM-23040004', '2023-04-28', 'CFM', '2023-04-28', 'Cash', '', '', '', 'PEL', 'IVP-023040001', '-', 'KASIR', 'AR', 5000, '2023-04-28 17:50:59', '2023-04-28 17:50:59', 46);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kasir`
--

CREATE TABLE `kasir` (
  `id` int(11) NOT NULL,
  `KodeKasir` varchar(191) NOT NULL,
  `Tanggal` date NOT NULL,
  `KodeLokasi` varchar(191) NOT NULL,
  `KodeMataUang` varchar(191) NOT NULL,
  `Status` varchar(191) NOT NULL,
  `KodeUser` varchar(191) NOT NULL,
  `Total` double NOT NULL,
  `PPN` varchar(191) NOT NULL,
  `NilaiPPN` double NOT NULL,
  `Printed` double NOT NULL,
  `Diskon` double NOT NULL,
  `NilaiDiskon` double NOT NULL,
  `Subtotal` double NOT NULL,
  `Bayar` double NOT NULL,
  `Kembalian` double NOT NULL,
  `KodePelanggan` varchar(191) NOT NULL,
  `Keterangan` varchar(191) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `kasir`
--

INSERT INTO `kasir` (`id`, `KodeKasir`, `Tanggal`, `KodeLokasi`, `KodeMataUang`, `Status`, `KodeUser`, `Total`, `PPN`, `NilaiPPN`, `Printed`, `Diskon`, `NilaiDiskon`, `Subtotal`, `Bayar`, `Kembalian`, `KodePelanggan`, `Keterangan`, `created_at`, `updated_at`) VALUES
(1, 'KSR-23080001', '2023-08-19', 'GUD-001', 'Rp', 'OPN', 'Ardian', 18000, 'iya', 0, 0, 0, 0, 16000, 18000, 0, 'PLG-003', '', '2023-08-31 02:14:24', '2023-08-19 08:00:35'),
(2, 'KSR-23080002', '2023-08-29', 'GUD-001', 'Rp', 'OPN', 'Ardian', 18000, 'iya', 0, 0, 0, 0, 17000, 18000, 0, 'PLG-005', '', '2023-08-31 02:14:19', '2023-08-29 07:08:47'),
(3, 'KSR-23080003', '2023-08-29', 'GUD-001', 'Rp', 'OPN', 'Ardian', 18000, 'iya', 0, 0, 0, 0, 19000, 18000, 0, 'PLG-001', '', '2023-08-31 02:14:12', '2023-08-29 07:09:11');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kasirdetail`
--

CREATE TABLE `kasirdetail` (
  `id` int(11) NOT NULL,
  `KodeKasir` varchar(191) NOT NULL,
  `KodeItem` varchar(191) NOT NULL,
  `Qty` double NOT NULL,
  `Harga` double NOT NULL,
  `HargaRata` double NOT NULL,
  `KodeSatuan` varchar(191) NOT NULL,
  `NoUrut` int(11) NOT NULL,
  `Subtotal` double NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `kasirdetail`
--

INSERT INTO `kasirdetail` (`id`, `KodeKasir`, `KodeItem`, `Qty`, `Harga`, `HargaRata`, `KodeSatuan`, `NoUrut`, `Subtotal`, `created_at`, `updated_at`) VALUES
(1, 'KSR-23080001', 'FF-002', 1, 18000, 18000, 'PAK', 1, 18000, '2023-08-19 08:00:35', '2023-08-19 08:00:35'),
(2, 'KSR-23080002', 'FF-002', 1, 18000, 18000, 'PAK', 1, 18000, '2023-08-29 07:08:47', '2023-08-29 07:08:47'),
(3, 'KSR-23080003', 'FF-002', 1, 18000, 18000, 'PAK', 1, 18000, '2023-08-29 07:09:11', '2023-08-29 07:09:11');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kasirdetails`
--

CREATE TABLE `kasirdetails` (
  `id` int(11) NOT NULL,
  `KodeKasir` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `KodeItem` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Qty` double NOT NULL,
  `Harga` double NOT NULL,
  `HargaRata` double NOT NULL,
  `KodeSatuan` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `NoUrut` int(11) NOT NULL,
  `Subtotal` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `kasirdetails`
--

INSERT INTO `kasirdetails` (`id`, `KodeKasir`, `KodeItem`, `Qty`, `Harga`, `HargaRata`, `KodeSatuan`, `NoUrut`, `Subtotal`, `created_at`, `updated_at`) VALUES
(1, 'KSR-23080001', 'FF-003', 1, 20000, 20000, 'PAK', 1, 20000, '2023-08-19 08:01:03', '2023-08-19 08:01:03'),
(2, 'KSR-23080002', 'FF-002', 1, 18000, 18000, 'PAK', 1, 18000, '2023-08-29 07:13:40', '2023-08-29 07:13:40');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kasirreturndetails`
--

CREATE TABLE `kasirreturndetails` (
  `id` int(11) NOT NULL,
  `KodeKasirReturn` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `KodeKasir` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `KodeItem` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `KodeSatuan` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Harga` double NOT NULL,
  `Qty` double NOT NULL,
  `Keterangan` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `NoUrut` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kasirreturns`
--

CREATE TABLE `kasirreturns` (
  `id` int(11) NOT NULL,
  `KodeKasirReturn` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `KodeKasir` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Tanggal` date NOT NULL,
  `Status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `KodeUser` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Keterangan` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `PPN` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `NilaiPPN` double NOT NULL,
  `Diskon` double NOT NULL,
  `NilaiDiskon` double NOT NULL,
  `Subtotal` double NOT NULL,
  `Total` double NOT NULL,
  `Printed` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kasirs`
--

CREATE TABLE `kasirs` (
  `id` int(11) NOT NULL,
  `KodeKasir` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Tanggal` date NOT NULL,
  `KodeLokasi` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `KodeMataUang` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `KodeUser` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Total` double NOT NULL,
  `PPN` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `NilaiPPN` double NOT NULL,
  `Printed` double DEFAULT NULL,
  `Diskon` double NOT NULL,
  `NilaiDiskon` double NOT NULL,
  `Subtotal` double NOT NULL,
  `Bayar` double NOT NULL,
  `Kembalian` double NOT NULL,
  `KodePelanggan` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Keterangan` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `kasirs`
--

INSERT INTO `kasirs` (`id`, `KodeKasir`, `Tanggal`, `KodeLokasi`, `KodeMataUang`, `Status`, `KodeUser`, `Total`, `PPN`, `NilaiPPN`, `Printed`, `Diskon`, `NilaiDiskon`, `Subtotal`, `Bayar`, `Kembalian`, `KodePelanggan`, `Keterangan`, `created_at`, `updated_at`) VALUES
(1, 'KSR-23080001', '2023-08-19', 'GUD-001', 'Rp', 'OPN', 'Ardian', 20000, 'iya', 0, 0, 0, 0, 20000, 20000, 0, 'PLG-002', '', '2023-08-19 08:01:03', '2023-08-19 08:01:03'),
(2, 'KSR-23080002', '2023-08-29', 'GUD-001', 'Rp', 'OPN', 'Ardian', 18000, 'iya', 0, 0, 0, 0, 18000, 18000, 0, 'PLG-002', '', '2023-08-29 07:13:40', '2023-08-29 07:13:40');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kaslacis`
--

CREATE TABLE `kaslacis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Tanggal` date NOT NULL,
  `Nominal` varchar(20) NOT NULL,
  `Transaksi` varchar(10) NOT NULL,
  `SaldoLaci` varchar(20) NOT NULL,
  `Status` varchar(10) NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `KodeUser` varchar(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategoris`
--

CREATE TABLE `kategoris` (
  `KodeKategori` varchar(191) NOT NULL,
  `NamaKategori` varchar(191) NOT NULL,
  `KodeItemAwal` varchar(191) NOT NULL,
  `Status` varchar(191) NOT NULL,
  `KodeUser` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `kategoris`
--

INSERT INTO `kategoris` (`KodeKategori`, `NamaKategori`, `KodeItemAwal`, `Status`, `KodeUser`, `created_at`, `updated_at`) VALUES
('KLA-001', 'FROZEN FOOD', 'FF', 'OPN', 'admin', '2022-04-13 23:47:58', '2022-04-13 23:47:58'),
('KLA-002', 'Bahan Baku', 'BB', 'OPN', 'admin', '2022-04-14 00:27:01', '2022-04-14 00:27:01');

-- --------------------------------------------------------

--
-- Struktur dari tabel `keluarmasukbarangs`
--

CREATE TABLE `keluarmasukbarangs` (
  `id` bigint(20) NOT NULL,
  `Tanggal` date NOT NULL,
  `KodeLokasi` varchar(191) NOT NULL,
  `KodeItem` varchar(191) NOT NULL,
  `JenisTransaksi` varchar(191) NOT NULL,
  `KodeTransaksi` varchar(191) NOT NULL,
  `Qty` double NOT NULL,
  `HargaRata` varchar(191) NOT NULL,
  `KodeUser` varchar(191) NOT NULL,
  `idx` bigint(20) NOT NULL,
  `indexmov` bigint(20) NOT NULL,
  `saldo` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `keluarmasukbarangs`
--

INSERT INTO `keluarmasukbarangs` (`id`, `Tanggal`, `KodeLokasi`, `KodeItem`, `JenisTransaksi`, `KodeTransaksi`, `Qty`, `HargaRata`, `KodeUser`, `idx`, `indexmov`, `saldo`, `created_at`, `updated_at`) VALUES
(1, '2022-04-23', 'GUD-001', 'FF-002', 'SLM', 'SLM-22040001', 9999, '0', 'may', 0, 0, 9999, '2022-04-23 21:14:38', '2022-04-23 21:14:38'),
(2, '2022-04-23', 'GUD-001', 'FF-003', 'SLM', 'SLM-22040001', 9999, '0', 'may', 0, 0, 9999, '2022-04-23 21:14:38', '2022-04-23 21:14:38'),
(3, '2022-04-23', 'GUD-001', 'FF-004', 'SLM', 'SLM-22040001', 9999, '0', 'may', 0, 0, 9999, '2022-04-23 21:14:38', '2022-04-23 21:14:38'),
(4, '2022-04-23', 'GUD-001', 'FF-005', 'SLM', 'SLM-22040001', 9999, '0', 'may', 0, 0, 9999, '2022-04-23 21:14:38', '2022-04-23 21:14:38'),
(5, '2022-04-23', 'GUD-001', 'FF-006', 'SLM', 'SLM-22040001', 9999, '0', 'may', 0, 0, 9999, '2022-04-23 21:14:38', '2022-04-23 21:14:38'),
(6, '2022-04-23', 'GUD-001', 'FF-007', 'SLM', 'SLM-22040001', 9999, '0', 'may', 0, 0, 9999, '2022-04-23 21:14:38', '2022-04-23 21:14:38'),
(7, '2022-04-23', 'GUD-001', 'FF-008', 'SLM', 'SLM-22040001', 9999, '0', 'may', 0, 0, 9999, '2022-04-23 21:14:38', '2022-04-23 21:14:38'),
(8, '2022-04-23', 'GUD-001', 'FF-009', 'SLM', 'SLM-22040001', 9999, '0', 'may', 0, 0, 9999, '2022-04-23 21:14:38', '2022-04-23 21:14:38'),
(9, '2022-04-23', 'GUD-001', 'FF-0010', 'SLM', 'SLM-22040001', 9999, '0', 'may', 0, 0, 9999, '2022-04-23 21:14:38', '2022-04-23 21:14:38'),
(10, '2022-04-23', 'GUD-001', 'FF-011', 'SLM', 'SLM-22040001', 9999, '0', 'may', 0, 0, 9999, '2022-04-23 21:14:38', '2022-04-23 21:14:38'),
(11, '2022-04-23', 'GUD-001', 'FF-002', 'SJB', 'SJ-022040001', -40, '0', 'may', 0, 1, 9959, '2022-04-23 21:15:11', '2022-04-23 21:15:11'),
(12, '2022-04-23', 'GUD-001', 'FF-006', 'SJB', 'SJ-022040001', -40, '0', 'may', 0, 2, 9959, '2022-04-23 21:15:11', '2022-04-23 21:15:11'),
(13, '2022-04-23', 'GUD-001', 'FF-007', 'SJB', 'SJ-022040001', -120, '0', 'may', 0, 3, 9879, '2022-04-23 21:15:11', '2022-04-23 21:15:11'),
(14, '2022-04-26', 'GUD-001', 'FF-002', 'SJB', 'SJ-022040002', -80, '0', 'may', 0, 1, 9879, '2022-04-26 16:13:07', '2022-04-26 16:13:07'),
(15, '2022-04-26', 'GUD-001', 'FF-006', 'SJB', 'SJ-022040002', -40, '0', 'may', 0, 2, 9919, '2022-04-26 16:13:07', '2022-04-26 16:13:07'),
(16, '2022-04-26', 'GUD-001', 'FF-007', 'SJB', 'SJ-022040002', -120, '0', 'may', 0, 3, 9759, '2022-04-26 16:13:07', '2022-04-26 16:13:07'),
(17, '2022-04-26', 'GUD-001', 'FF-009', 'SJB', 'SJ-022040002', -60, '0', 'may', 0, 4, 9939, '2022-04-26 16:13:07', '2022-04-26 16:13:07'),
(18, '2022-04-26', 'GUD-001', 'FF-002', 'SJB', 'SJ-022040003', -300, '0', 'may', 0, 1, 9579, '2022-04-26 16:19:07', '2022-04-26 16:19:07'),
(19, '2022-04-26', 'GUD-001', 'FF-002', 'SJB', 'SJ-022040004', -10, '0', 'may', 0, 1, 9569, '2022-04-26 16:24:15', '2022-04-26 16:24:15'),
(20, '2022-04-26', 'GUD-001', 'FF-006', 'SJB', 'SJ-022040004', -30, '0', 'may', 0, 2, 9889, '2022-04-26 16:24:15', '2022-04-26 16:24:15'),
(21, '2022-04-26', 'GUD-001', 'FF-007', 'SJB', 'SJ-022040004', -40, '0', 'may', 0, 3, 9719, '2022-04-26 16:24:15', '2022-04-26 16:24:15'),
(22, '2022-04-26', 'GUD-001', 'FF-009', 'SJB', 'SJ-022040004', -30, '0', 'may', 0, 4, 9909, '2022-04-26 16:24:15', '2022-04-26 16:24:15'),
(23, '2022-04-26', 'GUD-001', 'FF-002', 'SJB', 'SJ-022040001', -10, '0', 'may', 0, 1, 9559, '2022-04-26 18:12:36', '2022-04-26 18:12:36'),
(24, '2022-04-26', 'GUD-001', 'FF-006', 'SJB', 'SJ-022040001', -30, '0', 'may', 0, 2, 9859, '2022-04-26 18:12:36', '2022-04-26 18:12:36'),
(25, '2022-04-26', 'GUD-001', 'FF-007', 'SJB', 'SJ-022040001', -40, '0', 'may', 0, 3, 9679, '2022-04-26 18:12:36', '2022-04-26 18:12:36'),
(26, '2022-04-26', 'GUD-001', 'FF-009', 'SJB', 'SJ-022040001', -30, '0', 'may', 0, 4, 9879, '2022-04-26 18:12:36', '2022-04-26 18:12:36'),
(27, '2022-04-26', 'GUD-001', 'FF-002', 'SJB', 'SJ-022040002', -300, '0', 'may', 0, 1, 9259, '2022-04-26 18:18:23', '2022-04-26 18:18:23'),
(28, '2022-04-26', 'GUD-001', 'FF-002', 'SJB', 'SJ-022040003', -80, '0', 'may', 0, 1, 9179, '2022-04-26 18:23:40', '2022-04-26 18:23:40'),
(29, '2022-04-26', 'GUD-001', 'FF-006', 'SJB', 'SJ-022040003', -40, '0', 'may', 0, 2, 9819, '2022-04-26 18:23:40', '2022-04-26 18:23:40'),
(30, '2022-04-26', 'GUD-001', 'FF-007', 'SJB', 'SJ-022040003', -120, '0', 'may', 0, 3, 9559, '2022-04-26 18:23:40', '2022-04-26 18:23:40'),
(31, '2022-04-26', 'GUD-001', 'FF-009', 'SJB', 'SJ-022040003', -60, '0', 'may', 0, 4, 9819, '2022-04-26 18:23:40', '2022-04-26 18:23:40'),
(32, '2022-04-27', 'GUD-001', 'FF-002', 'SJB', 'SJ-022040004', -40, '0', 'may', 0, 1, 9139, '2022-04-27 18:46:29', '2022-04-27 18:46:29'),
(33, '2022-04-27', 'GUD-001', 'FF-006', 'SJB', 'SJ-022040004', -180, '0', 'may', 0, 2, 9639, '2022-04-27 18:46:29', '2022-04-27 18:46:29'),
(34, '2022-04-27', 'GUD-001', 'FF-007', 'SJB', 'SJ-022040004', -240, '0', 'may', 0, 3, 9319, '2022-04-27 18:46:29', '2022-04-27 18:46:29'),
(35, '2022-04-27', 'GUD-001', 'FF-009', 'SJB', 'SJ-022040004', -80, '0', 'may', 0, 4, 9739, '2022-04-27 18:46:29', '2022-04-27 18:46:29'),
(36, '2022-04-28', 'GUD-001', 'FF-002', 'SJB', 'SJ-022040005', -20, '0', 'may', 0, 1, 9119, '2022-04-28 18:00:29', '2022-04-28 18:00:29'),
(37, '2022-04-28', 'GUD-001', 'FF-006', 'SJB', 'SJ-022040005', -60, '0', 'may', 0, 2, 9579, '2022-04-28 18:00:29', '2022-04-28 18:00:29'),
(38, '2022-04-28', 'GUD-001', 'FF-007', 'SJB', 'SJ-022040005', -180, '0', 'may', 0, 3, 9139, '2022-04-28 18:00:29', '2022-04-28 18:00:29'),
(39, '2022-04-28', 'GUD-001', 'FF-009', 'SJB', 'SJ-022040005', -40, '0', 'may', 0, 4, 9699, '2022-04-28 18:00:29', '2022-04-28 18:00:29'),
(40, '2022-04-28', 'GUD-001', 'FF-006', 'SJB', 'SJ-022040006', -60, '0', 'rika', 0, 1, 9519, '2022-04-28 18:23:28', '2022-04-28 18:23:28'),
(41, '2022-04-28', 'GUD-001', 'FF-007', 'SJB', 'SJ-022040006', -240, '0', 'rika', 0, 2, 8899, '2022-04-28 18:23:28', '2022-04-28 18:23:28'),
(42, '2022-04-28', 'GUD-001', 'FF-002', 'SJB', 'SJ-022040007', -100, '0', 'rika', 0, 1, 9019, '2022-04-28 18:31:41', '2022-04-28 18:31:41'),
(43, '2022-04-28', 'GUD-001', 'FF-006', 'SJB', 'SJ-022040007', -60, '0', 'rika', 0, 2, 9459, '2022-04-28 18:31:41', '2022-04-28 18:31:41'),
(44, '2022-04-28', 'GUD-001', 'FF-007', 'SJB', 'SJ-022040007', -300, '0', 'rika', 0, 3, 8599, '2022-04-28 18:31:41', '2022-04-28 18:31:41'),
(45, '2022-04-28', 'GUD-001', 'FF-009', 'SJB', 'SJ-022040007', -60, '0', 'rika', 0, 4, 9639, '2022-04-28 18:31:41', '2022-04-28 18:31:41'),
(46, '2022-04-28', 'GUD-001', 'FF-005', 'SJB', 'SJ-022040008', -20, '0', 'rika', 0, 1, 9979, '2022-04-28 19:25:21', '2022-04-28 19:25:21'),
(47, '2022-04-28', 'GUD-001', 'FF-006', 'SJB', 'SJ-022040008', -70, '0', 'rika', 0, 2, 9389, '2022-04-28 19:25:21', '2022-04-28 19:25:21'),
(48, '2022-04-28', 'GUD-001', 'FF-007', 'SJB', 'SJ-022040008', -130, '0', 'rika', 0, 3, 8469, '2022-04-28 19:25:21', '2022-04-28 19:25:21'),
(49, '2022-04-28', 'GUD-001', 'FF-009', 'SJB', 'SJ-022040008', -20, '0', 'rika', 0, 4, 9619, '2022-04-28 19:25:21', '2022-04-28 19:25:21'),
(50, '2022-05-06', 'GUD-001', 'FF-002', 'SJB', 'SJ-022050001', -100, '0', 'rika', 0, 1, 8919, '2022-05-06 18:34:34', '2022-05-06 18:34:34'),
(51, '2022-05-06', 'GUD-001', 'FF-006', 'SJB', 'SJ-022050001', -100, '0', 'rika', 0, 2, 9289, '2022-05-06 18:34:34', '2022-05-06 18:34:34'),
(52, '2022-05-06', 'GUD-001', 'FF-007', 'SJB', 'SJ-022050001', -300, '0', 'rika', 0, 3, 8169, '2022-05-06 18:34:34', '2022-05-06 18:34:34'),
(53, '2022-05-06', 'GUD-001', 'FF-009', 'SJB', 'SJ-022050001', -100, '0', 'rika', 0, 4, 9519, '2022-05-06 18:34:34', '2022-05-06 18:34:34'),
(54, '2022-05-06', 'GUD-001', 'FF-006', 'SJB', 'SJ-022050003', -20, '0', 'rika', 0, 1, 9269, '2022-05-06 19:02:43', '2022-05-06 19:02:43'),
(55, '2022-05-06', 'GUD-001', 'FF-007', 'SJB', 'SJ-022050003', -20, '0', 'rika', 0, 2, 8149, '2022-05-06 19:02:43', '2022-05-06 19:02:43'),
(56, '2022-05-06', 'GUD-001', 'FF-009', 'SJB', 'SJ-022050003', -20, '0', 'rika', 0, 3, 9499, '2022-05-06 19:02:43', '2022-05-06 19:02:43'),
(57, '2022-05-06', 'GUD-001', 'FF-002', 'SJB', 'SJ-022050002', -20, '0', 'rika', 0, 1, 8899, '2022-05-06 19:02:47', '2022-05-06 19:02:47'),
(58, '2022-05-06', 'GUD-001', 'FF-006', 'SJB', 'SJ-022050002', -40, '0', 'rika', 0, 2, 9229, '2022-05-06 19:02:47', '2022-05-06 19:02:47'),
(59, '2022-05-06', 'GUD-001', 'FF-007', 'SJB', 'SJ-022050002', -40, '0', 'rika', 0, 3, 8109, '2022-05-06 19:02:47', '2022-05-06 19:02:47'),
(60, '2022-05-06', 'GUD-001', 'FF-009', 'SJB', 'SJ-022050002', -20, '0', 'rika', 0, 4, 9479, '2022-05-06 19:02:47', '2022-05-06 19:02:47'),
(61, '2022-05-06', 'GUD-001', 'FF-002', 'SJB', 'SJ-122050001', -20, '0', 'rika', 0, 1, 8879, '2022-05-06 19:12:07', '2022-05-06 19:12:07'),
(62, '2022-05-06', 'GUD-001', 'FF-006', 'SJB', 'SJ-122050001', -40, '0', 'rika', 0, 2, 9189, '2022-05-06 19:12:07', '2022-05-06 19:12:07'),
(63, '2022-05-06', 'GUD-001', 'FF-007', 'SJB', 'SJ-122050001', -40, '0', 'rika', 0, 3, 8069, '2022-05-06 19:12:07', '2022-05-06 19:12:07'),
(64, '2022-05-06', 'GUD-001', 'FF-009', 'SJB', 'SJ-122050001', -20, '0', 'rika', 0, 4, 9459, '2022-05-06 19:12:07', '2022-05-06 19:12:07'),
(65, '2022-05-06', 'GUD-001', 'FF-002', 'SJB', 'SJ-022050004', -20, '0', 'rika', 0, 1, 8859, '2022-05-06 19:18:56', '2022-05-06 19:18:56'),
(66, '2022-05-06', 'GUD-001', 'FF-006', 'SJB', 'SJ-022050004', -40, '0', 'rika', 0, 2, 9149, '2022-05-06 19:18:56', '2022-05-06 19:18:56'),
(67, '2022-05-06', 'GUD-001', 'FF-007', 'SJB', 'SJ-022050004', -40, '0', 'rika', 0, 3, 8029, '2022-05-06 19:18:56', '2022-05-06 19:18:56'),
(68, '2022-05-06', 'GUD-001', 'FF-009', 'SJB', 'SJ-022050004', -20, '0', 'rika', 0, 4, 9439, '2022-05-06 19:18:56', '2022-05-06 19:18:56'),
(69, '2022-05-09', 'GUD-001', 'FF-006', 'SJB', 'SJ-022050007', -40, '0', 'rika', 0, 1, 9109, '2022-05-09 17:01:46', '2022-05-09 17:01:46'),
(70, '2022-05-09', 'GUD-001', 'FF-007', 'SJB', 'SJ-022050007', -100, '0', 'rika', 0, 2, 7929, '2022-05-09 17:01:46', '2022-05-09 17:01:46'),
(71, '2022-05-09', 'GUD-001', 'FF-009', 'SJB', 'SJ-022050007', -60, '0', 'rika', 0, 3, 9379, '2022-05-09 17:01:46', '2022-05-09 17:01:46'),
(72, '2022-05-09', 'GUD-001', 'FF-006', 'SJB', 'SJ-022050006', -300, '0', 'rika', 0, 1, 8809, '2022-05-09 17:01:49', '2022-05-09 17:01:49'),
(73, '2022-05-09', 'GUD-001', 'FF-007', 'SJB', 'SJ-022050006', -300, '0', 'rika', 0, 2, 7629, '2022-05-09 17:01:49', '2022-05-09 17:01:49'),
(74, '2022-05-09', 'GUD-001', 'FF-009', 'SJB', 'SJ-022050006', -200, '0', 'rika', 0, 3, 9179, '2022-05-09 17:01:49', '2022-05-09 17:01:49'),
(75, '2022-05-09', 'GUD-001', 'FF-002', 'SJB', 'SJ-022050005', -120, '0', 'rika', 0, 1, 8739, '2022-05-09 17:01:54', '2022-05-09 17:01:54'),
(76, '2022-05-09', 'GUD-001', 'FF-006', 'SJB', 'SJ-022050005', -80, '0', 'rika', 0, 2, 8729, '2022-05-09 17:01:54', '2022-05-09 17:01:54'),
(77, '2022-05-09', 'GUD-001', 'FF-007', 'SJB', 'SJ-022050005', -240, '0', 'rika', 0, 3, 7389, '2022-05-09 17:01:54', '2022-05-09 17:01:54'),
(78, '2022-05-09', 'GUD-001', 'FF-009', 'SJB', 'SJ-022050005', -60, '0', 'rika', 0, 4, 9119, '2022-05-09 17:01:54', '2022-05-09 17:01:54'),
(79, '2022-05-09', 'GUD-001', 'FF-002', 'SJB', 'SJ-022050010', -100, '0', 'rika', 0, 1, 8639, '2022-05-09 18:44:09', '2022-05-09 18:44:09'),
(80, '2022-05-09', 'GUD-001', 'FF-006', 'SJB', 'SJ-022050010', -100, '0', 'rika', 0, 2, 8629, '2022-05-09 18:44:09', '2022-05-09 18:44:09'),
(81, '2022-05-09', 'GUD-001', 'FF-007', 'SJB', 'SJ-022050010', -300, '0', 'rika', 0, 3, 7089, '2022-05-09 18:44:09', '2022-05-09 18:44:09'),
(82, '2022-05-09', 'GUD-001', 'FF-009', 'SJB', 'SJ-022050010', -100, '0', 'rika', 0, 4, 9019, '2022-05-09 18:44:09', '2022-05-09 18:44:09'),
(83, '2022-05-09', 'GUD-001', 'FF-002', 'SJB', 'SJ-022050009', -100, '0', 'rika', 0, 1, 8539, '2022-05-09 18:44:38', '2022-05-09 18:44:38'),
(84, '2022-05-09', 'GUD-001', 'FF-006', 'SJB', 'SJ-022050009', -80, '0', 'rika', 0, 2, 8549, '2022-05-09 18:44:38', '2022-05-09 18:44:38'),
(85, '2022-05-09', 'GUD-001', 'FF-007', 'SJB', 'SJ-022050009', -240, '0', 'rika', 0, 3, 6849, '2022-05-09 18:44:38', '2022-05-09 18:44:38'),
(86, '2022-05-09', 'GUD-001', 'FF-009', 'SJB', 'SJ-022050009', -80, '0', 'rika', 0, 4, 8939, '2022-05-09 18:44:38', '2022-05-09 18:44:38'),
(87, '2022-05-09', 'GUD-001', 'FF-002', 'SJB', 'SJ-022050008', -20, '0', 'rika', 0, 1, 8519, '2022-05-09 18:44:46', '2022-05-09 18:44:46'),
(88, '2022-05-09', 'GUD-001', 'FF-006', 'SJB', 'SJ-022050008', -20, '0', 'rika', 0, 2, 8529, '2022-05-09 18:44:46', '2022-05-09 18:44:46'),
(89, '2022-05-09', 'GUD-001', 'FF-007', 'SJB', 'SJ-022050008', -60, '0', 'rika', 0, 3, 6789, '2022-05-09 18:44:46', '2022-05-09 18:44:46'),
(90, '2022-05-09', 'GUD-001', 'FF-002', 'SJB', 'SJ-022050012', -300, '0', 'rika', 0, 1, 8219, '2022-05-09 18:45:02', '2022-05-09 18:45:02'),
(91, '2022-05-09', 'GUD-001', 'FF-006', 'SJB', 'SJ-022050011', -40, '0', 'rika', 0, 1, 8489, '2022-05-09 18:45:15', '2022-05-09 18:45:15'),
(92, '2022-05-09', 'GUD-001', 'FF-007', 'SJB', 'SJ-022050011', -40, '0', 'rika', 0, 2, 6749, '2022-05-09 18:45:15', '2022-05-09 18:45:15'),
(93, '2022-05-09', 'GUD-001', 'FF-009', 'SJB', 'SJ-022050011', -20, '0', 'rika', 0, 3, 8919, '2022-05-09 18:45:15', '2022-05-09 18:45:15'),
(94, '2022-05-10', 'GUD-001', 'FF-002', 'SJB', 'SJ-022050013', -300, '0', 'may', 0, 1, 7919, '2022-05-10 15:54:05', '2022-05-10 15:54:05'),
(95, '2022-05-10', 'GUD-001', 'FF-005', 'SJB', 'SJ-022050013', -400, '0', 'may', 0, 2, 9579, '2022-05-10 15:54:05', '2022-05-10 15:54:05'),
(96, '2022-05-10', 'GUD-001', 'FF-006', 'SJB', 'SJ-022050013', -60, '0', 'may', 0, 3, 8429, '2022-05-10 15:54:05', '2022-05-10 15:54:05'),
(97, '2022-05-10', 'GUD-001', 'FF-007', 'SJB', 'SJ-022050013', -100, '0', 'may', 0, 4, 6649, '2022-05-10 15:54:05', '2022-05-10 15:54:05'),
(98, '2022-05-10', 'GUD-001', 'FF-009', 'SJB', 'SJ-022050013', -40, '0', 'may', 0, 5, 8879, '2022-05-10 15:54:05', '2022-05-10 15:54:05'),
(99, '2022-05-10', 'GUD-001', 'FF-002', 'SJB', 'SJ-022050014', -40, '0', 'may', 0, 1, 7879, '2022-05-10 18:50:09', '2022-05-10 18:50:09'),
(100, '2022-05-10', 'GUD-001', 'FF-006', 'SJB', 'SJ-022050014', -40, '0', 'may', 0, 2, 8389, '2022-05-10 18:50:09', '2022-05-10 18:50:09'),
(101, '2022-05-10', 'GUD-001', 'FF-007', 'SJB', 'SJ-022050014', -160, '0', 'may', 0, 3, 6489, '2022-05-10 18:50:09', '2022-05-10 18:50:09'),
(102, '2022-05-10', 'GUD-001', 'FF-009', 'SJB', 'SJ-022050014', -20, '0', 'may', 0, 4, 8859, '2022-05-10 18:50:09', '2022-05-10 18:50:09'),
(103, '2022-05-10', 'GUD-001', 'FF-002', 'SJB', 'SJ-022050015', -200, '0', 'may', 0, 1, 7679, '2022-05-10 18:53:10', '2022-05-10 18:53:10'),
(104, '2022-05-10', 'GUD-001', 'FF-002', 'SJB', 'SJ-022050016', -20, '0', 'may', 0, 1, 7659, '2022-05-10 19:01:57', '2022-05-10 19:01:57'),
(105, '2022-05-10', 'GUD-001', 'FF-006', 'SJB', 'SJ-022050016', -20, '0', 'may', 0, 2, 8369, '2022-05-10 19:01:57', '2022-05-10 19:01:57'),
(106, '2022-05-10', 'GUD-001', 'FF-007', 'SJB', 'SJ-022050016', -20, '0', 'may', 0, 3, 6469, '2022-05-10 19:01:57', '2022-05-10 19:01:57'),
(107, '2022-05-10', 'GUD-001', 'FF-009', 'SJB', 'SJ-022050016', -20, '0', 'may', 0, 4, 8839, '2022-05-10 19:01:57', '2022-05-10 19:01:57'),
(108, '2022-05-11', 'GUD-001', 'FF-002', 'SJB', 'SJ-022050017', -120, '0', 'may', 0, 1, 7539, '2022-05-11 17:45:07', '2022-05-11 17:45:07'),
(109, '2022-05-11', 'GUD-001', 'FF-006', 'SJB', 'SJ-022050017', -60, '0', 'may', 0, 2, 8309, '2022-05-11 17:45:07', '2022-05-11 17:45:07'),
(110, '2022-05-11', 'GUD-001', 'FF-007', 'SJB', 'SJ-022050017', -120, '0', 'may', 0, 3, 6349, '2022-05-11 17:45:07', '2022-05-11 17:45:07'),
(111, '2022-05-11', 'GUD-001', 'FF-002', 'SJB', 'SJ-022050018', -20, '0', 'may', 0, 1, 7519, '2022-05-11 17:51:22', '2022-05-11 17:51:22'),
(112, '2022-05-11', 'GUD-001', 'FF-006', 'SJB', 'SJ-022050018', -40, '0', 'may', 0, 2, 8269, '2022-05-11 17:51:22', '2022-05-11 17:51:22'),
(113, '2022-05-11', 'GUD-001', 'FF-007', 'SJB', 'SJ-022050018', -100, '0', 'may', 0, 3, 6249, '2022-05-11 17:51:22', '2022-05-11 17:51:22'),
(114, '2022-05-11', 'GUD-001', 'FF-009', 'SJB', 'SJ-022050018', -40, '0', 'may', 0, 4, 8799, '2022-05-11 17:51:22', '2022-05-11 17:51:22'),
(115, '2022-05-11', 'GUD-001', 'FF-002', 'SJB', 'SJ-022050019', -80, '0', 'may', 0, 1, 7439, '2022-05-11 17:56:29', '2022-05-11 17:56:29'),
(116, '2022-05-11', 'GUD-001', 'FF-006', 'SJB', 'SJ-022050019', -60, '0', 'may', 0, 2, 8209, '2022-05-11 17:56:29', '2022-05-11 17:56:29'),
(117, '2022-05-11', 'GUD-001', 'FF-007', 'SJB', 'SJ-022050019', -100, '0', 'may', 0, 3, 6149, '2022-05-11 17:56:29', '2022-05-11 17:56:29'),
(118, '2022-05-11', 'GUD-001', 'FF-009', 'SJB', 'SJ-022050019', -60, '0', 'may', 0, 4, 8739, '2022-05-11 17:56:29', '2022-05-11 17:56:29'),
(119, '2022-05-11', 'GUD-001', 'FF-002', 'SJB', 'SJ-022050020', -40, '0', 'may', 0, 1, 7399, '2022-05-11 05:05:50', '2022-05-11 05:05:50'),
(120, '2022-05-11', 'GUD-001', 'FF-007', 'SJB', 'SJ-022050020', -160, '0', 'may', 0, 2, 5989, '2022-05-11 05:05:50', '2022-05-11 05:05:50'),
(121, '2022-05-11', 'GUD-001', 'FF-009', 'SJB', 'SJ-022050020', -40, '0', 'may', 0, 3, 8699, '2022-05-11 05:05:50', '2022-05-11 05:05:50'),
(122, '2022-05-11', 'GUD-001', 'FF-006', 'SJB', 'SJ-022050021', -20, '0', 'may', 0, 1, 8189, '2022-05-11 05:08:04', '2022-05-11 05:08:04'),
(123, '2022-05-11', 'GUD-001', 'FF-007', 'SJB', 'SJ-022050021', -20, '0', 'may', 0, 2, 5969, '2022-05-11 05:08:04', '2022-05-11 05:08:04'),
(124, '2022-05-12', 'GUD-001', 'FF-005', 'SJB', 'SJ-022050022', -440, '0', 'rika', 0, 1, 9139, '2022-05-12 01:33:01', '2022-05-12 01:33:01'),
(125, '2022-05-12', 'GUD-001', 'FF-007', 'SJB', 'SJ-022050022', -100, '0', 'rika', 0, 2, 5869, '2022-05-12 01:33:01', '2022-05-12 01:33:01'),
(126, '2022-05-12', 'GUD-001', 'FF-002', 'SJB', 'SJ-022050023', -40, '0', 'may', 0, 1, 7359, '2022-05-12 04:49:24', '2022-05-12 04:49:24'),
(127, '2022-05-12', 'GUD-001', 'FF-007', 'SJB', 'SJ-022050023', -100, '0', 'may', 0, 2, 5769, '2022-05-12 04:49:24', '2022-05-12 04:49:24'),
(128, '2022-05-12', 'GUD-001', 'FF-009', 'SJB', 'SJ-022050023', -20, '0', 'may', 0, 3, 8679, '2022-05-12 04:49:24', '2022-05-12 04:49:24'),
(129, '2022-05-12', 'GUD-001', 'FF-006', 'SJB', 'SJ-022050024', -20, '0', 'may', 0, 1, 8169, '2022-05-12 04:53:22', '2022-05-12 04:53:22'),
(130, '2022-05-12', 'GUD-001', 'FF-007', 'SJB', 'SJ-022050024', -20, '0', 'may', 0, 2, 5749, '2022-05-12 04:53:22', '2022-05-12 04:53:22'),
(131, '2022-05-13', 'GUD-001', 'FF-006', 'SJB', 'SJ-022050025', -20, '0', 'may', 0, 1, 8149, '2022-05-13 02:29:44', '2022-05-13 02:29:44'),
(132, '2022-05-13', 'GUD-001', 'FF-007', 'SJB', 'SJ-022050025', -20, '0', 'may', 0, 2, 5729, '2022-05-13 02:29:44', '2022-05-13 02:29:44'),
(133, '2022-05-13', 'GUD-001', 'FF-009', 'SJB', 'SJ-022050025', -20, '0', 'may', 0, 3, 8659, '2022-05-13 02:29:44', '2022-05-13 02:29:44'),
(134, '2022-05-13', 'GUD-001', 'FF-002', 'SJB', 'SJ-022050026', -200, '0', 'may', 0, 1, 7159, '2022-05-13 04:28:43', '2022-05-13 04:28:43'),
(135, '2022-05-13', 'GUD-001', 'FF-007', 'SJB', 'SJ-022050026', -300, '0', 'may', 0, 2, 5429, '2022-05-13 04:28:43', '2022-05-13 04:28:43'),
(136, '2022-05-13', 'GUD-001', 'FF-002', 'SJB', 'SJ-022050027', -60, '0', 'may', 0, 1, 7099, '2022-05-13 04:28:47', '2022-05-13 04:28:47'),
(137, '2022-05-13', 'GUD-001', 'FF-006', 'SJB', 'SJ-022050027', -80, '0', 'may', 0, 2, 8069, '2022-05-13 04:28:47', '2022-05-13 04:28:47'),
(138, '2022-05-13', 'GUD-001', 'FF-007', 'SJB', 'SJ-022050027', -80, '0', 'may', 0, 3, 5349, '2022-05-13 04:28:47', '2022-05-13 04:28:47'),
(139, '2022-05-13', 'GUD-001', 'FF-009', 'SJB', 'SJ-022050027', -80, '0', 'may', 0, 4, 8579, '2022-05-13 04:28:47', '2022-05-13 04:28:47'),
(140, '2022-05-13', 'GUD-001', 'FF-002', 'SJB', 'SJ-022050028', -20, '0', 'may', 0, 1, 7079, '2022-05-13 04:28:52', '2022-05-13 04:28:52'),
(141, '2022-05-13', 'GUD-001', 'FF-006', 'SJB', 'SJ-022050028', -20, '0', 'may', 0, 2, 8049, '2022-05-13 04:28:52', '2022-05-13 04:28:52'),
(142, '2022-05-13', 'GUD-001', 'FF-007', 'SJB', 'SJ-022050028', -80, '0', 'may', 0, 3, 5269, '2022-05-13 04:28:52', '2022-05-13 04:28:52'),
(143, '2022-05-13', 'GUD-001', 'FF-002', 'SJB', 'SJ-022050029', -20, '0', 'may', 0, 1, 7059, '2022-05-13 04:28:55', '2022-05-13 04:28:55'),
(144, '2022-05-13', 'GUD-001', 'FF-006', 'SJB', 'SJ-022050029', -20, '0', 'may', 0, 2, 8029, '2022-05-13 04:28:55', '2022-05-13 04:28:55'),
(145, '2022-05-13', 'GUD-001', 'FF-007', 'SJB', 'SJ-022050029', -20, '0', 'may', 0, 3, 5249, '2022-05-13 04:28:55', '2022-05-13 04:28:55'),
(146, '2022-05-13', 'GUD-001', 'FF-002', 'SJB', 'SJ-022050030', -100, '0', 'may', 0, 1, 6959, '2022-05-13 04:28:59', '2022-05-13 04:28:59'),
(147, '2022-05-13', 'GUD-001', 'FF-006', 'SJB', 'SJ-022050030', -60, '0', 'may', 0, 2, 7969, '2022-05-13 04:28:59', '2022-05-13 04:28:59'),
(148, '2022-05-13', 'GUD-001', 'FF-007', 'SJB', 'SJ-022050030', -240, '0', 'may', 0, 3, 5009, '2022-05-13 04:28:59', '2022-05-13 04:28:59'),
(149, '2022-05-13', 'GUD-001', 'FF-009', 'SJB', 'SJ-022050030', -60, '0', 'may', 0, 4, 8519, '2022-05-13 04:28:59', '2022-05-13 04:28:59'),
(150, '2022-05-14', 'GUD-001', 'FF-005', 'SJB', 'SJ-022050031', -100, '0', 'may', 0, 1, 9039, '2022-05-14 04:14:15', '2022-05-14 04:14:15'),
(151, '2022-05-14', 'GUD-001', 'FF-007', 'SJB', 'SJ-022050031', -300, '0', 'may', 0, 2, 4709, '2022-05-14 04:14:15', '2022-05-14 04:14:15'),
(152, '2022-05-14', 'GUD-001', 'FF-002', 'SJB', 'SJ-022050032', -100, '0', 'may', 0, 1, 6859, '2022-05-14 04:14:20', '2022-05-14 04:14:20'),
(153, '2022-05-14', 'GUD-001', 'FF-007', 'SJB', 'SJ-022050032', -100, '0', 'may', 0, 2, 4609, '2022-05-14 04:14:20', '2022-05-14 04:14:20'),
(154, '2022-05-14', 'GUD-001', 'FF-006', 'SJB', 'SJ-022050033', -40, '0', 'may', 0, 1, 7929, '2022-05-14 04:40:31', '2022-05-14 04:40:31'),
(155, '2022-05-14', 'GUD-001', 'FF-007', 'SJB', 'SJ-022050033', -120, '0', 'may', 0, 2, 4489, '2022-05-14 04:40:31', '2022-05-14 04:40:31'),
(156, '2022-05-14', 'GUD-001', 'FF-009', 'SJB', 'SJ-022050033', -40, '0', 'may', 0, 3, 8479, '2022-05-14 04:40:31', '2022-05-14 04:40:31'),
(157, '2022-05-14', 'GUD-001', 'FF-006', 'SJB', 'SJ-022050034', -20, '0', 'may', 0, 1, 7909, '2022-05-14 04:43:29', '2022-05-14 04:43:29'),
(158, '2022-05-14', 'GUD-001', 'FF-007', 'SJB', 'SJ-022050034', -20, '0', 'may', 0, 2, 4469, '2022-05-14 04:43:29', '2022-05-14 04:43:29'),
(159, '2022-05-14', 'GUD-001', 'FF-009', 'SJB', 'SJ-022050034', -20, '0', 'may', 0, 3, 8459, '2022-05-14 04:43:29', '2022-05-14 04:43:29'),
(160, '2022-05-17', 'GUD-001', 'FF-005', 'SJB', 'SJ-122050002', -400, '0', 'may', 0, 1, 8639, '2022-05-17 03:57:25', '2022-05-17 03:57:25'),
(161, '2022-05-17', 'GUD-001', 'FF-006', 'SJB', 'SJ-122050002', -60, '0', 'may', 0, 2, 7849, '2022-05-17 03:57:25', '2022-05-17 03:57:25'),
(162, '2022-05-17', 'GUD-001', 'FF-009', 'SJB', 'SJ-122050002', -40, '0', 'may', 0, 3, 8419, '2022-05-17 03:57:25', '2022-05-17 03:57:25'),
(163, '2022-05-17', 'GUD-001', 'FF-002', 'SJB', 'SJ-122050003', -400, '0', 'may', 0, 1, 6459, '2022-05-17 04:15:05', '2022-05-17 04:15:05'),
(164, '2022-05-17', 'GUD-001', 'FF-006', 'SJB', 'SJ-122050003', -60, '0', 'may', 0, 2, 7789, '2022-05-17 04:15:05', '2022-05-17 04:15:05'),
(165, '2022-05-17', 'GUD-001', 'FF-009', 'SJB', 'SJ-122050003', -40, '0', 'may', 0, 3, 8379, '2022-05-17 04:15:05', '2022-05-17 04:15:05'),
(166, '2022-05-17', 'GUD-001', 'FF-002', 'SJB', 'SJ-122050004', -300, '0', 'may', 0, 1, 6159, '2022-05-19 08:40:47', '2022-05-19 08:40:47'),
(167, '2022-05-17', 'GUD-001', 'FF-006', 'SJB', 'SJ-122050004', -140, '0', 'may', 0, 2, 7649, '2022-05-19 08:40:47', '2022-05-19 08:40:47'),
(168, '2022-05-17', 'GUD-001', 'FF-007', 'SJB', 'SJ-122050004', -460, '0', 'may', 0, 3, 4009, '2022-05-19 08:40:47', '2022-05-19 08:40:47'),
(169, '2022-05-17', 'GUD-001', 'FF-009', 'SJB', 'SJ-122050004', -140, '0', 'may', 0, 4, 8239, '2022-05-19 08:40:47', '2022-05-19 08:40:47'),
(170, '2022-05-17', 'GUD-001', 'FF-007', 'SJB', 'SJ-122050005', -20, '0', 'may', 0, 1, 3989, '2022-05-19 08:50:26', '2022-05-19 08:50:26'),
(171, '2022-05-17', 'GUD-001', 'FF-009', 'SJB', 'SJ-122050005', -20, '0', 'may', 0, 2, 8219, '2022-05-19 08:50:26', '2022-05-19 08:50:26'),
(172, '2022-05-17', 'GUD-001', 'FF-002', 'SJB', 'SJ-122050006', -20, '0', 'may', 0, 1, 6139, '2022-05-19 08:55:20', '2022-05-19 08:55:20'),
(173, '2022-05-17', 'GUD-001', 'FF-006', 'SJB', 'SJ-122050006', -30, '0', 'may', 0, 2, 7619, '2022-05-19 08:55:20', '2022-05-19 08:55:20'),
(174, '2022-05-17', 'GUD-001', 'FF-007', 'SJB', 'SJ-122050006', -40, '0', 'may', 0, 3, 3949, '2022-05-19 08:55:20', '2022-05-19 08:55:20'),
(175, '2022-05-17', 'GUD-001', 'FF-009', 'SJB', 'SJ-122050006', -10, '0', 'may', 0, 4, 8209, '2022-05-19 08:55:20', '2022-05-19 08:55:20'),
(176, '2022-05-17', 'GUD-001', 'FF-002', 'SJB', 'SJ-122050007', -20, '0', 'may', 0, 1, 6119, '2022-05-19 09:05:44', '2022-05-19 09:05:44'),
(177, '2022-05-17', 'GUD-001', 'FF-006', 'SJB', 'SJ-122050007', -20, '0', 'may', 0, 2, 7599, '2022-05-19 09:05:44', '2022-05-19 09:05:44'),
(178, '2022-05-17', 'GUD-001', 'FF-007', 'SJB', 'SJ-122050007', -100, '0', 'may', 0, 3, 3849, '2022-05-19 09:05:44', '2022-05-19 09:05:44'),
(179, '2022-05-17', 'GUD-001', 'FF-009', 'SJB', 'SJ-122050007', -20, '0', 'may', 0, 4, 8189, '2022-05-19 09:05:44', '2022-05-19 09:05:44'),
(180, '2022-05-17', 'GUD-001', 'FF-002', 'SJB', 'SJ-122050008', -20, '0', 'may', 0, 1, 6099, '2022-05-19 09:11:06', '2022-05-19 09:11:06'),
(181, '2022-05-17', 'GUD-001', 'FF-006', 'SJB', 'SJ-122050008', -100, '0', 'may', 0, 2, 7499, '2022-05-19 09:11:06', '2022-05-19 09:11:06'),
(182, '2022-05-17', 'GUD-001', 'FF-007', 'SJB', 'SJ-122050008', -140, '0', 'may', 0, 3, 3709, '2022-05-19 09:11:06', '2022-05-19 09:11:06'),
(183, '2022-05-17', 'GUD-001', 'FF-009', 'SJB', 'SJ-122050008', -100, '0', 'may', 0, 4, 8089, '2022-05-19 09:11:06', '2022-05-19 09:11:06'),
(184, '2022-05-17', 'GUD-001', 'FF-002', 'SJB', 'SJ-122050009', -100, '0', 'may', 0, 1, 5999, '2022-05-19 09:17:48', '2022-05-19 09:17:48'),
(185, '2022-05-17', 'GUD-001', 'FF-006', 'SJB', 'SJ-122050009', -20, '0', 'may', 0, 2, 7479, '2022-05-19 09:17:48', '2022-05-19 09:17:48'),
(186, '2022-05-17', 'GUD-001', 'FF-007', 'SJB', 'SJ-122050009', -120, '0', 'may', 0, 3, 3589, '2022-05-19 09:17:48', '2022-05-19 09:17:48'),
(187, '2022-05-17', 'GUD-001', 'FF-009', 'SJB', 'SJ-122050009', -60, '0', 'may', 0, 4, 8029, '2022-05-19 09:17:48', '2022-05-19 09:17:48'),
(188, '2022-05-19', 'GUD-001', 'FF-002', 'SJB', 'SJ-122050010', -400, '0', 'may', 0, 1, 5599, '2022-05-19 09:25:57', '2022-05-19 09:25:57'),
(189, '2022-05-19', 'GUD-001', 'FF-006', 'SJB', 'SJ-122050010', -60, '0', 'may', 0, 2, 7419, '2022-05-19 09:25:57', '2022-05-19 09:25:57'),
(190, '2022-05-19', 'GUD-001', 'FF-009', 'SJB', 'SJ-122050010', -40, '0', 'may', 0, 3, 7989, '2022-05-19 09:25:57', '2022-05-19 09:25:57'),
(191, '2022-05-18', 'GUD-001', 'FF-002', 'SJB', 'SJ-122050011', -280, '0', 'may', 0, 1, 5319, '2022-05-20 01:56:10', '2022-05-20 01:56:10'),
(192, '2022-05-18', 'GUD-001', 'FF-006', 'SJB', 'SJ-122050012', -20, '0', 'may', 0, 1, 7399, '2022-05-20 02:00:44', '2022-05-20 02:00:44'),
(193, '2022-05-18', 'GUD-001', 'FF-007', 'SJB', 'SJ-122050012', -40, '0', 'may', 0, 2, 3549, '2022-05-20 02:00:44', '2022-05-20 02:00:44'),
(194, '2022-05-19', 'GUD-001', 'FF-002', 'SJB', 'SJ-122050013', -80, '0', 'may', 0, 1, 5239, '2022-05-20 02:11:02', '2022-05-20 02:11:02'),
(195, '2022-05-19', 'GUD-001', 'FF-006', 'SJB', 'SJ-122050013', -60, '0', 'may', 0, 2, 7339, '2022-05-20 02:11:02', '2022-05-20 02:11:02'),
(196, '2022-05-19', 'GUD-001', 'FF-007', 'SJB', 'SJ-122050013', -140, '0', 'may', 0, 3, 3409, '2022-05-20 02:11:02', '2022-05-20 02:11:02'),
(197, '2022-05-19', 'GUD-001', 'FF-009', 'SJB', 'SJ-122050013', -20, '0', 'may', 0, 4, 7969, '2022-05-20 02:11:02', '2022-05-20 02:11:02'),
(198, '2022-05-19', 'GUD-001', 'FF-002', 'SJB', 'SJ-122050014', -40, '0', 'may', 0, 1, 5199, '2022-05-20 02:25:59', '2022-05-20 02:25:59'),
(199, '2022-05-19', 'GUD-001', 'FF-007', 'SJB', 'SJ-122050014', -120, '0', 'may', 0, 2, 3289, '2022-05-20 02:25:59', '2022-05-20 02:25:59'),
(200, '2022-05-19', 'GUD-001', 'FF-007', 'SJB', 'SJ-122050015', -20, '0', 'may', 0, 1, 3269, '2022-05-20 02:30:21', '2022-05-20 02:30:21'),
(201, '2022-05-20', 'GUD-001', 'FF-006', 'SJB', 'SJ-122050016', -40, '0', 'may', 0, 1, 7299, '2022-05-20 02:45:16', '2022-05-20 02:45:16'),
(202, '2022-05-20', 'GUD-001', 'FF-007', 'SJB', 'SJ-122050016', -100, '0', 'may', 0, 2, 3169, '2022-05-20 02:45:16', '2022-05-20 02:45:16'),
(203, '2022-05-20', 'GUD-001', 'FF-009', 'SJB', 'SJ-122050016', -20, '0', 'may', 0, 3, 7949, '2022-05-20 02:45:16', '2022-05-20 02:45:16'),
(204, '2022-05-20', 'GUD-001', 'FF-002', 'SJB', 'SJ-122050017', -120, '0', 'may', 0, 1, 5079, '2022-05-20 03:57:32', '2022-05-20 03:57:32'),
(205, '2022-05-20', 'GUD-001', 'FF-006', 'SJB', 'SJ-122050017', -100, '0', 'may', 0, 2, 7199, '2022-05-20 03:57:32', '2022-05-20 03:57:32'),
(206, '2022-05-20', 'GUD-001', 'FF-007', 'SJB', 'SJ-122050017', -120, '0', 'may', 0, 3, 3049, '2022-05-20 03:57:32', '2022-05-20 03:57:32'),
(207, '2022-05-20', 'GUD-001', 'FF-009', 'SJB', 'SJ-122050017', -60, '0', 'may', 0, 4, 7889, '2022-05-20 03:57:32', '2022-05-20 03:57:32'),
(208, '2022-05-20', 'GUD-001', 'FF-002', 'SJB', 'SJ-122050018', -40, '0', 'may', 0, 1, 5039, '2022-05-20 04:11:09', '2022-05-20 04:11:09'),
(209, '2022-05-20', 'GUD-001', 'FF-006', 'SJB', 'SJ-122050018', -20, '0', 'may', 0, 2, 7179, '2022-05-20 04:11:09', '2022-05-20 04:11:09'),
(210, '2022-05-20', 'GUD-001', 'FF-007', 'SJB', 'SJ-122050018', -60, '0', 'may', 0, 3, 2989, '2022-05-20 04:11:09', '2022-05-20 04:11:09'),
(211, '2022-05-20', 'GUD-001', 'FF-009', 'SJB', 'SJ-122050018', -20, '0', 'may', 0, 4, 7869, '2022-05-20 04:11:09', '2022-05-20 04:11:09'),
(212, '2022-05-20', 'GUD-001', 'FF-002', 'SJB', 'SJ-122050019', -20, '0', 'may', 0, 1, 5019, '2022-05-20 04:28:03', '2022-05-20 04:28:03'),
(213, '2022-05-20', 'GUD-001', 'FF-007', 'SJB', 'SJ-122050019', -60, '0', 'may', 0, 2, 2929, '2022-05-20 04:28:03', '2022-05-20 04:28:03'),
(214, '2022-05-20', 'GUD-001', 'FF-007', 'SJB', 'SJ-122050020', -20, '0', 'may', 0, 1, 2909, '2022-05-20 04:35:13', '2022-05-20 04:35:13'),
(215, '2022-05-20', 'GUD-001', 'FF-009', 'SJB', 'SJ-122050020', -20, '0', 'may', 0, 2, 7849, '2022-05-20 04:35:13', '2022-05-20 04:35:13'),
(216, '2022-05-21', 'GUD-001', 'FF-006', 'SJB', 'SJ-122050021', -40, '0', 'may', 0, 1, 7139, '2022-05-21 04:55:16', '2022-05-21 04:55:16'),
(217, '2022-05-21', 'GUD-001', 'FF-007', 'SJB', 'SJ-122050021', -160, '0', 'may', 0, 2, 2749, '2022-05-21 04:55:16', '2022-05-21 04:55:16'),
(218, '2022-05-21', 'GUD-001', 'FF-009', 'SJB', 'SJ-122050021', -40, '0', 'may', 0, 3, 7809, '2022-05-21 04:55:16', '2022-05-21 04:55:16'),
(219, '2022-05-21', 'GUD-001', 'FF-006', 'SJB', 'SJ-122050022', -20, '0', 'may', 0, 1, 7119, '2022-05-21 04:58:25', '2022-05-21 04:58:25'),
(220, '2022-05-21', 'GUD-001', 'FF-007', 'SJB', 'SJ-122050022', -20, '0', 'may', 0, 2, 2729, '2022-05-21 04:58:25', '2022-05-21 04:58:25'),
(221, '2022-05-20', 'GUD-001', 'FF-002', 'SJB', 'SJ-122050023', -120, '0', 'may', 0, 1, 4899, '2022-05-21 07:38:15', '2022-05-21 07:38:15'),
(222, '2022-05-20', 'GUD-001', 'FF-006', 'SJB', 'SJ-122050023', -100, '0', 'may', 0, 2, 7019, '2022-05-21 07:38:15', '2022-05-21 07:38:15'),
(223, '2022-05-20', 'GUD-001', 'FF-007', 'SJB', 'SJ-122050023', -120, '0', 'may', 0, 3, 2609, '2022-05-21 07:38:15', '2022-05-21 07:38:15'),
(224, '2022-05-20', 'GUD-001', 'FF-009', 'SJB', 'SJ-122050023', -60, '0', 'may', 0, 4, 7749, '2022-05-21 07:38:15', '2022-05-21 07:38:15'),
(225, '2022-05-23', 'GUD-001', 'FF-005', 'SJB', 'SJ-122050024', -300, '0', 'may', 0, 1, 8339, '2022-05-23 01:57:40', '2022-05-23 01:57:40'),
(226, '2022-05-23', 'GUD-001', 'FF-006', 'SJB', 'SJ-122050024', -100, '0', 'may', 0, 2, 6919, '2022-05-23 01:57:40', '2022-05-23 01:57:40'),
(227, '2022-05-23', 'GUD-001', 'FF-007', 'SJB', 'SJ-122050024', -160, '0', 'may', 0, 3, 2449, '2022-05-23 01:57:40', '2022-05-23 01:57:40'),
(228, '2022-05-23', 'GUD-001', 'FF-009', 'SJB', 'SJ-122050024', -60, '0', 'may', 0, 4, 7689, '2022-05-23 01:57:40', '2022-05-23 01:57:40'),
(229, '2022-05-23', 'GUD-001', 'FF-006', 'SJB', 'SJ-122050025', -20, '0', 'may', 0, 1, 6899, '2022-05-23 03:56:16', '2022-05-23 03:56:16'),
(230, '2022-05-23', 'GUD-001', 'FF-007', 'SJB', 'SJ-122050025', -20, '0', 'may', 0, 2, 2429, '2022-05-23 03:56:16', '2022-05-23 03:56:16'),
(231, '2022-05-23', 'GUD-001', 'FF-007', 'SJB', 'SJ-122050026', -100, '0', 'may', 0, 1, 2329, '2022-05-23 04:01:51', '2022-05-23 04:01:51'),
(232, '2022-05-23', 'GUD-001', 'FF-002', 'SJB', 'SJ-122050027', -100, '0', 'may', 0, 1, 4799, '2022-05-23 04:09:48', '2022-05-23 04:09:48'),
(233, '2022-05-23', 'GUD-001', 'FF-006', 'SJB', 'SJ-122050027', -60, '0', 'may', 0, 2, 6839, '2022-05-23 04:09:48', '2022-05-23 04:09:48'),
(234, '2022-05-23', 'GUD-001', 'FF-007', 'SJB', 'SJ-122050027', -80, '0', 'may', 0, 3, 2249, '2022-05-23 04:09:48', '2022-05-23 04:09:48'),
(235, '2022-05-23', 'GUD-001', 'FF-009', 'SJB', 'SJ-122050027', -60, '0', 'may', 0, 4, 7629, '2022-05-23 04:09:48', '2022-05-23 04:09:48'),
(236, '2022-05-23', 'GUD-001', 'FF-002', 'SJB', 'SJ-122050028', -20, '0', 'may', 0, 1, 4779, '2022-05-23 04:14:39', '2022-05-23 04:14:39'),
(237, '2022-05-23', 'GUD-001', 'FF-006', 'SJB', 'SJ-122050028', -100, '0', 'may', 0, 2, 6739, '2022-05-23 04:14:39', '2022-05-23 04:14:39'),
(238, '2022-05-23', 'GUD-001', 'FF-007', 'SJB', 'SJ-122050028', -140, '0', 'may', 0, 3, 2109, '2022-05-23 04:14:39', '2022-05-23 04:14:39'),
(239, '2022-05-23', 'GUD-001', 'FF-009', 'SJB', 'SJ-122050028', -80, '0', 'may', 0, 4, 7549, '2022-05-23 04:14:39', '2022-05-23 04:14:39'),
(240, '2022-05-23', 'GUD-001', 'FF-006', 'SJB', 'SJ-122050029', -100, '0', 'may', 0, 1, 6639, '2022-05-23 04:17:44', '2022-05-23 04:17:44'),
(241, '2022-05-23', 'GUD-001', 'FF-007', 'SJB', 'SJ-122050029', -120, '0', 'may', 0, 2, 1989, '2022-05-23 04:17:44', '2022-05-23 04:17:44'),
(242, '2022-05-23', 'GUD-001', 'FF-009', 'SJB', 'SJ-122050029', -120, '0', 'may', 0, 3, 7429, '2022-05-23 04:17:44', '2022-05-23 04:17:44'),
(243, '2022-11-11', 'GUD-001', 'FF-012', 'LPB', 'LPB-022110001', 24, '0', 'admin', 1, 1, 24, '2022-11-11 05:49:26', '2022-11-11 05:49:26'),
(244, '2022-11-11', 'GUD-001', 'FF-012', 'SJB', 'SJ-022110001', -2, '0', 'admin', 0, 1, 22, '2022-11-11 06:16:22', '2022-11-11 06:16:22'),
(245, '2022-11-11', 'GUD-001', 'FF-012', 'SJB', 'SJ-022110002', -1, '0', 'admin', 0, 1, 21, '2022-11-11 06:26:14', '2022-11-11 06:26:14'),
(246, '2022-11-11', 'GUD-001', 'FF-012', 'LPB', 'LPB-022110002', 10, '0', 'admin', 1, 1, 31, '2022-11-11 06:50:21', '2022-11-11 06:50:21'),
(247, '2022-11-11', 'GUD-001', 'FF-012', 'KS', 'KSR-22110001', -1, '30000', 'admin', 1, 1, 30, '2022-11-11 06:52:22', '2022-11-11 06:52:22'),
(248, '2022-12-06', 'GUD-001', 'FF-002', 'SJB', 'SJ-022120001', -10, '0', 'admin', 0, 1, 4769, '2022-12-06 16:34:29', '2022-12-06 16:34:29'),
(249, '2022-12-06', 'GUD-001', 'FF-003', 'SJB', 'SJ-022120001', -5, '0', 'admin', 0, 2, 9994, '2022-12-06 16:34:29', '2022-12-06 16:34:29'),
(250, '2022-12-06', 'GUD-001', 'FF-002', 'KS', 'KSR-22120001', -10, '15000', 'admin', 1, 1, 4759, '2022-12-06 16:47:06', '2022-12-06 16:47:06'),
(251, '2022-12-06', 'GUD-001', 'FF-002', 'KS', 'KSR-22120002', -10, '15000', 'admin', 1, 1, 4749, '2022-12-06 17:06:13', '2022-12-06 17:06:13'),
(252, '2022-12-06', 'GUD-001', 'FF-002', 'KS', 'KSR-22120003', -10, '15000', 'admin', 1, 1, 4739, '2022-12-06 17:06:57', '2022-12-06 17:06:57'),
(253, '2022-12-07', 'GUD-001', 'FF-003', 'LPB', 'LPB-022120001', 10, '0', 'admin', 1, 1, 10004, '2022-12-06 17:17:36', '2022-12-06 17:17:36'),
(254, '2023-01-20', 'GUD-001', 'FF-002', 'KS', 'KSR-23010001', -1, '17000', 'Ardian', 0, 0, 4738, '2023-01-20 14:13:51', '2023-01-20 14:13:51'),
(255, '2023-01-20', 'GUD-001', 'FF-002', 'KS', 'KSR-23010002', -1, '17000', 'Ardian', 0, 0, 4737, '2023-01-20 14:14:27', '2023-01-20 14:14:27'),
(256, '2023-01-20', 'GUD-001', 'FF-002', 'KS', 'KSR-23010003', -1, '17000', 'Ardian', 0, 0, 4736, '2023-01-20 14:24:23', '2023-01-20 14:24:23'),
(257, '2023-01-20', 'GUD-001', 'FF-002', 'KS', 'KSR-23010004', -1, '17000', 'Ardian', 0, 0, 4735, '2023-01-20 14:24:35', '2023-01-20 14:24:35'),
(258, '2023-01-20', 'GUD-001', 'FF-002', 'KS', 'KSR-23010005', -1, '17000', 'Ardian', 0, 0, 4734, '2023-01-20 14:24:51', '2023-01-20 14:24:51'),
(259, '2023-01-20', 'GUD-001', 'FF-002', 'KS', 'KSR-23010006', -1, '17000', 'Ardian', 0, 0, 4733, '2023-01-20 14:27:10', '2023-01-20 14:27:10'),
(260, '2023-01-20', 'GUD-001', 'FF-002', 'KS', 'KSR-23010007', -1, '17000', 'Ardian', 0, 0, 4732, '2023-01-20 14:27:21', '2023-01-20 14:27:21'),
(261, '2023-01-20', 'GUD-001', 'FF-002', 'KS', 'KSR-23010008', -2, '17000', 'Ardian', 0, 0, 4730, '2023-01-20 14:27:35', '2023-01-20 14:27:35'),
(262, '2023-01-20', 'GUD-001', 'FF-002', 'KS', 'KSR-23010009', -3, '17000', 'Ardian', 0, 0, 4727, '2023-01-20 14:40:55', '2023-01-20 14:40:55'),
(263, '2023-01-20', 'GUD-001', 'FF-002', 'KS', 'KSR-23010010', -2, '17000', 'Ardian', 0, 0, 4725, '2023-01-20 14:45:11', '2023-01-20 14:45:11'),
(264, '2023-01-20', 'GUD-001', 'FF-002', 'RK', 'RKS-23010001', 2, '17000', 'Ardian', 0, 0, 4727, '2023-01-20 14:45:30', '2023-01-20 14:45:30'),
(265, '2023-01-21', 'GUD-001', 'FF-002', 'KS', 'KSR-23010011', -2, '17000', 'Ardian', 0, 0, 4725, '2023-01-21 11:31:13', '2023-01-21 11:31:13'),
(266, '2023-01-21', 'GUD-001', 'FF-002', 'RK', 'RKS-23010002', 1, '17000', 'Ardian', 0, 0, 4726, '2023-01-21 11:31:24', '2023-01-21 11:31:24'),
(267, '2023-01-21', 'GUD-001', 'FF-002', 'KS', 'KSR-23010012', -3, '17000', 'Ardian', 0, 0, 4723, '2023-01-21 11:38:00', '2023-01-21 11:38:00'),
(268, '2023-01-24', 'GUD-001', 'FF-002', 'KS', 'KSR-23010013', -3, '17000', 'Ardian', 0, 0, 4720, '2023-01-24 11:42:22', '2023-01-24 11:42:22'),
(269, '2023-01-24', 'GUD-001', 'FF-002', 'RK', 'RKS-23010003', 3, '17000', 'Ardian', 0, 0, 4723, '2023-01-24 11:42:41', '2023-01-24 11:42:41'),
(270, '2023-01-24', 'GUD-001', 'FF-002', 'KS', 'KSR-23010014', -16, '17000', 'Ardian', 0, 0, 4707, '2023-01-24 11:49:52', '2023-01-24 11:49:52'),
(271, '2023-01-24', 'GUD-001', 'FF-002', 'RK', 'RKS-23010004', 16, '17000', 'Ardian', 0, 0, 4723, '2023-01-24 11:50:27', '2023-01-24 11:50:27'),
(272, '2023-01-24', 'GUD-002', 'FF-003', 'WHT', 'WHT-23010004', 4, '0', 'Ardian', 0, 0, 4, '2023-01-24 12:11:56', '2023-01-24 12:11:56'),
(273, '2023-01-24', 'GUD-001', 'FF-003', 'WHT', 'WHT-23010004', -4, '0', 'Ardian', 0, 0, 10000, '2023-01-24 12:11:56', '2023-01-24 12:11:56'),
(274, '2023-01-11', 'GUD-002', 'FF-003', 'WHT', 'WHT-23010003', 10, '0', 'Ardian', 0, 0, 14, '2023-01-24 12:17:16', '2023-01-24 12:17:16'),
(275, '2023-01-11', 'GUD-001', 'FF-003', 'WHT', 'WHT-23010003', -10, '0', 'Ardian', 0, 0, 9990, '2023-01-24 12:17:16', '2023-01-24 12:17:16'),
(276, '2023-01-24', 'GUD-001', 'FF-002', 'KS', 'KSR-23010015', -2, '17000', 'Ardian', 0, 0, 4721, '2023-01-24 12:17:56', '2023-01-24 12:17:56'),
(277, '2023-01-24', 'GUD-001', 'FF-003', 'KS', 'KSR-23010015', -3, '0', 'Ardian', 1, 1, 9987, '2023-01-24 12:17:56', '2023-01-24 12:17:56'),
(278, '2023-01-24', 'GUD-001', 'FF-004', 'KS', 'KSR-23010015', -4, '20000', 'Ardian', 2, 2, 9995, '2023-01-24 12:17:56', '2023-01-24 12:17:56'),
(279, '2023-01-24', 'GUD-001', 'FF-005', 'KS', 'KSR-23010015', -3, '0', 'Ardian', 3, 3, 8336, '2023-01-24 12:17:56', '2023-01-24 12:17:56'),
(280, '2023-01-24', 'GUD-001', 'FF-006', 'KS', 'KSR-23010015', -3, '0', 'Ardian', 4, 4, 6636, '2023-01-24 12:17:56', '2023-01-24 12:17:56'),
(281, '2023-01-24', 'GUD-001', 'FF-007', 'KS', 'KSR-23010015', -3, '0', 'Ardian', 5, 5, 1986, '2023-01-24 12:17:56', '2023-01-24 12:17:56'),
(282, '2023-01-24', 'GUD-001', 'FF-011', 'KS', 'KSR-23010015', -2, '0', 'Ardian', 6, 6, 9997, '2023-01-24 12:17:56', '2023-01-24 12:17:56'),
(283, '2023-01-24', 'GUD-001', 'FF-008', 'KS', 'KSR-23010015', -2, '0', 'Ardian', 7, 7, 9997, '2023-01-24 12:17:56', '2023-01-24 12:17:56'),
(284, '2023-01-24', 'GUD-001', 'FF-0010', 'KS', 'KSR-23010015', -1, '0', 'Ardian', 8, 8, 9998, '2023-01-24 12:17:56', '2023-01-24 12:17:56'),
(285, '2023-01-24', 'GUD-001', 'FF-009', 'KS', 'KSR-23010015', -1, '0', 'Ardian', 9, 9, 7428, '2023-01-24 12:17:56', '2023-01-24 12:17:56'),
(286, '2023-01-24', 'GUD-001', 'FF-012', 'KS', 'KSR-23010015', -3, '32000', 'Ardian', 10, 10, 27, '2023-01-24 12:17:56', '2023-01-24 12:17:56'),
(287, '2023-01-31', 'GUD-001', 'FF-002', 'KS', 'KSR-23010016', -110, '17000', 'Ardian', 0, 0, 4611, '2023-01-31 13:12:34', '2023-01-31 13:12:34'),
(288, '2023-01-31', 'GUD-001', 'FF-003', 'KS', 'KSR-23010016', -1, '0', 'Ardian', 1, 1, 9986, '2023-01-31 13:12:34', '2023-01-31 13:12:34'),
(289, '2023-01-31', 'GUD-001', 'FF-004', 'KS', 'KSR-23010016', -1, '20000', 'Ardian', 2, 2, 9994, '2023-01-31 13:12:34', '2023-01-31 13:12:34'),
(290, '2023-01-31', 'GUD-001', 'FF-007', 'KS', 'KSR-23010016', -1, '0', 'Ardian', 3, 3, 1985, '2023-01-31 13:12:34', '2023-01-31 13:12:34'),
(291, '2023-01-31', 'GUD-001', 'FF-005', 'KS', 'KSR-23010016', -1, '0', 'Ardian', 4, 4, 8335, '2023-01-31 13:12:34', '2023-01-31 13:12:34'),
(292, '2023-01-31', 'GUD-001', 'FF-006', 'KS', 'KSR-23010016', -1, '0', 'Ardian', 5, 5, 6635, '2023-01-31 13:12:34', '2023-01-31 13:12:34'),
(293, '2023-01-31', 'GUD-001', 'FF-011', 'KS', 'KSR-23010016', -1, '0', 'Ardian', 6, 6, 9996, '2023-01-31 13:12:34', '2023-01-31 13:12:34'),
(294, '2023-01-31', 'GUD-001', 'FF-008', 'KS', 'KSR-23010016', -1, '0', 'Ardian', 7, 7, 9996, '2023-01-31 13:12:34', '2023-01-31 13:12:34'),
(295, '2023-01-31', 'GUD-001', 'FF-0010', 'KS', 'KSR-23010016', -1, '0', 'Ardian', 8, 8, 9997, '2023-01-31 13:12:34', '2023-01-31 13:12:34'),
(296, '2023-01-31', 'GUD-001', 'FF-009', 'KS', 'KSR-23010016', -1, '0', 'Ardian', 9, 9, 7427, '2023-01-31 13:12:34', '2023-01-31 13:12:34'),
(297, '2023-01-31', 'GUD-001', 'FF-002', 'RK', 'RKS-23010005', 110, '17000', 'Ardian', 0, 0, 4721, '2023-01-31 13:13:29', '2023-01-31 13:13:29'),
(298, '2023-01-31', 'GUD-001', 'FF-004', 'RK', 'RKS-23010005', 1, '20000', 'Ardian', 2, 2, 9995, '2023-01-31 13:13:29', '2023-01-31 13:13:29'),
(299, '2023-02-01', 'GUD-001', 'FF-002', 'RK', 'RKS-23020001', 2, '17000', 'Ardian', 0, 0, 4723, '2023-02-01 02:58:50', '2023-02-01 02:58:50'),
(300, '2023-02-01', 'GUD-001', 'FF-003', 'RK', 'RKS-23020001', 3, '0', 'Ardian', 1, 1, 9989, '2023-02-01 02:58:50', '2023-02-01 02:58:50'),
(301, '2023-02-01', 'GUD-001', 'FF-004', 'RK', 'RKS-23020001', 4, '20000', 'Ardian', 2, 2, 9999, '2023-02-01 02:58:50', '2023-02-01 02:58:50'),
(302, '2023-02-01', 'GUD-001', 'FF-005', 'RK', 'RKS-23020001', 3, '0', 'Ardian', 3, 3, 8338, '2023-02-01 02:58:50', '2023-02-01 02:58:50'),
(303, '2023-02-01', 'GUD-001', 'FF-006', 'RK', 'RKS-23020001', 3, '0', 'Ardian', 4, 4, 6638, '2023-02-01 02:58:50', '2023-02-01 02:58:50'),
(304, '2023-02-01', 'GUD-001', 'FF-007', 'RK', 'RKS-23020001', 3, '0', 'Ardian', 5, 5, 1988, '2023-02-01 02:58:50', '2023-02-01 02:58:50'),
(305, '2023-02-01', 'GUD-001', 'FF-008', 'RK', 'RKS-23020001', 2, '0', 'Ardian', 6, 6, 9998, '2023-02-01 02:58:50', '2023-02-01 02:58:50'),
(306, '2023-02-01', 'GUD-001', 'FF-009', 'RK', 'RKS-23020001', 1, '0', 'Ardian', 7, 7, 7428, '2023-02-01 02:58:50', '2023-02-01 02:58:50'),
(307, '2023-02-01', 'GUD-001', 'FF-0010', 'RK', 'RKS-23020001', 1, '0', 'Ardian', 8, 8, 9998, '2023-02-01 02:58:50', '2023-02-01 02:58:50'),
(308, '2023-02-01', 'GUD-001', 'FF-011', 'RK', 'RKS-23020001', 2, '0', 'Ardian', 9, 9, 9998, '2023-02-01 02:58:50', '2023-02-01 02:58:50'),
(309, '2023-02-01', 'GUD-001', 'FF-012', 'RK', 'RKS-23020001', 3, '32000', 'Ardian', 10, 10, 30, '2023-02-01 02:58:50', '2023-02-01 02:58:50'),
(310, '2023-02-01', 'GUD-001', 'FF-003', 'RK', 'RKS-23020002', 1, '0', 'Ardian', 1, 1, 9990, '2023-02-01 03:03:49', '2023-02-01 03:03:49'),
(311, '2023-02-01', 'GUD-001', 'FF-005', 'RK', 'RKS-23020002', 1, '0', 'Ardian', 3, 3, 8339, '2023-02-01 03:03:49', '2023-02-01 03:03:49'),
(312, '2023-02-01', 'GUD-001', 'FF-006', 'RK', 'RKS-23020002', 1, '0', 'Ardian', 4, 4, 6639, '2023-02-01 03:03:49', '2023-02-01 03:03:49'),
(313, '2023-02-01', 'GUD-001', 'FF-007', 'RK', 'RKS-23020002', 1, '0', 'Ardian', 5, 5, 1989, '2023-02-01 03:03:49', '2023-02-01 03:03:49'),
(314, '2023-02-01', 'GUD-001', 'FF-008', 'RK', 'RKS-23020002', 1, '0', 'Ardian', 6, 6, 9999, '2023-02-01 03:03:49', '2023-02-01 03:03:49'),
(315, '2023-02-01', 'GUD-001', 'FF-009', 'RK', 'RKS-23020002', 1, '0', 'Ardian', 7, 7, 7429, '2023-02-01 03:03:49', '2023-02-01 03:03:49'),
(316, '2023-02-01', 'GUD-001', 'FF-0010', 'RK', 'RKS-23020002', 1, '0', 'Ardian', 8, 8, 9999, '2023-02-01 03:03:49', '2023-02-01 03:03:49'),
(317, '2023-02-01', 'GUD-001', 'FF-011', 'RK', 'RKS-23020002', 1, '0', 'Ardian', 9, 9, 9999, '2023-02-01 03:03:49', '2023-02-01 03:03:49'),
(318, '2023-02-15', 'GUD-002', 'FF-002', 'WHT', 'WHT-23020001', 4, '0', 'Ardian', 0, 0, 4, '2023-02-15 08:10:52', '2023-02-15 08:10:52'),
(319, '2023-02-15', 'GUD-001', 'FF-002', 'WHT', 'WHT-23020001', -4, '0', 'Ardian', 0, 0, 4719, '2023-02-15 08:10:52', '2023-02-15 08:10:52'),
(320, '2023-02-15', 'GUD-002', 'FF-003', 'WHT', 'WHT-23020001', 2, '0', 'Ardian', 1, 1, 16, '2023-02-15 08:10:52', '2023-02-15 08:10:52'),
(321, '2023-02-15', 'GUD-001', 'FF-003', 'WHT', 'WHT-23020001', -2, '0', 'Ardian', 1, 1, 9988, '2023-02-15 08:10:52', '2023-02-15 08:10:52'),
(322, '2023-02-15', 'GUD-001', 'FF-002', 'RK', 'RKS-23020003', 2, '18000', 'Ardian', 0, 0, 4721, '2023-02-15 08:17:59', '2023-02-15 08:17:59'),
(323, '2023-02-15', 'GUD-001', 'FF-002', 'KS', 'KSR-23020001', -4, '18000', 'Ardian', 0, 0, 4717, '2023-02-15 09:33:56', '2023-02-15 09:33:56'),
(324, '2023-02-15', 'GUD-001', 'FF-002', 'RK', 'RKS-23020004', 2, '18000', 'Ardian', 0, 0, 4719, '2023-02-15 09:34:44', '2023-02-15 09:34:44'),
(325, '2023-03-02', 'GUD-001', 'FF-013', 'LPB', 'LPB-023030001', 10, '0', 'admin', 1, 1, 10, '2023-03-02 16:24:04', '2023-03-02 16:24:04'),
(326, '2023-03-02', 'GUD-001', 'FF-015', 'LPB', 'LPB-023030001', 10, '0', 'admin', 2, 2, 10, '2023-03-02 16:24:04', '2023-03-02 16:24:04'),
(327, '2023-03-02', 'GUD-001', 'FF-002', 'KS', 'KSR-23030001', -5, '18000', 'Ardian', 0, 0, 4714, '2023-03-02 04:46:51', '2023-03-02 04:46:51'),
(328, '2023-03-02', 'GUD-001', 'FF-003', 'KS', 'KSR-23030001', -5, '20000', 'Ardian', 1, 1, 9983, '2023-03-02 04:46:51', '2023-03-02 04:46:51'),
(329, '2023-03-03', 'GUD-001', 'FF-002', 'KS', 'KSR-23030002', -2, '18000', 'Ardian', 0, 0, 4712, '2023-03-03 04:38:32', '2023-03-03 04:38:32'),
(330, '2023-03-03', 'GUD-001', 'FF-003', 'KS', 'KSR-23030003', -4, '20000', 'Ardian', 0, 0, 9979, '2023-03-03 04:39:17', '2023-03-03 04:39:17'),
(331, '2023-04-13', 'GUD-001', 'BB-003', 'KS', 'KSR-23040001', -10, '40000', 'Ardian', 0, 0, -10, '2023-04-13 03:45:04', '2023-04-13 03:45:04'),
(332, '2023-04-13', 'GUD-001', 'BB-003', 'LPB', 'LPB-023040001', 100, '0', 'admin', 1, 1, 90, '2023-04-13 14:49:23', '2023-04-13 14:49:23'),
(333, '2023-04-13', 'GUD-001', 'BB-003', 'KS', 'KSR-23040002', -1, '40000', 'Ardian', 0, 0, 89, '2023-04-13 04:02:02', '2023-04-13 04:02:02'),
(334, '2023-04-13', 'GUD-001', 'BB-003', 'KS', 'KSR-23040003', -2, '30000', 'admin', 1, 1, 87, '2023-04-13 15:11:59', '2023-04-13 15:11:59'),
(335, '2023-04-28', 'GUD-001', 'FF-013', 'KS', 'KSR-23040004', -1, '8000', 'admin', 1, 1, 9, '2023-04-28 16:36:50', '2023-04-28 16:36:50'),
(336, '2023-04-28', 'GUD-001', 'FF-013', 'KS', 'KSR-23040004', -1, '8000', 'admin', 1, 1, 8, '2023-04-28 16:37:15', '2023-04-28 16:37:15'),
(337, '2023-04-28', 'GUD-001', 'FF-013', 'SJB', 'SJ-023040001', -1, '0', 'admin', 0, 1, 7, '2023-04-28 17:38:57', '2023-04-28 17:38:57'),
(338, '2023-04-28', 'GUD-001', 'FF-013', 'KS', 'KSR-23040005', -1, '8000', 'KASIR', 1, 1, 6, '2023-04-28 17:45:19', '2023-04-28 17:45:19'),
(339, '2023-04-28', 'GUD-001', 'FF-013', 'LPB', 'LPB-023040002', 10, '0', 'KASIR', 1, 1, 16, '2023-04-28 17:52:55', '2023-04-28 17:52:55'),
(340, '2023-05-01', 'GUD-001', 'FF-002', 'KS', 'KSR-23050001', -1, '18000', 'Ardian', 0, 0, 4711, '2023-05-01 05:03:41', '2023-05-01 05:03:41'),
(341, '2023-05-01', 'GUD-001', 'FF-004', 'KS', 'KSR-23050002', -1, '20000', 'Ardian', 0, 0, 9998, '2023-05-01 05:26:44', '2023-05-01 05:26:44'),
(342, '2023-05-01', 'GUD-001', 'FF-004', 'KS', 'KSR-23050003', -1, '20000', 'Ardian', 0, 0, 9997, '2023-05-01 05:41:14', '2023-05-01 05:41:14'),
(343, '2023-05-01', 'GUD-001', 'FF-002', 'KS', 'KSR-23050004', -1, '18000', 'Ardian', 0, 0, 4710, '2023-05-01 05:49:50', '2023-05-01 05:49:50'),
(344, '2023-05-01', 'GUD-001', 'FF-002', 'KS', 'KSR-23050005', -2, '18000', 'Ardian', 0, 0, 4708, '2023-05-01 05:50:31', '2023-05-01 05:50:31'),
(345, '2023-05-01', 'GUD-001', 'FF-002', 'KS', 'KSR-23050006', -3, '18000', 'Ardian', 0, 0, 4705, '2023-05-01 06:37:52', '2023-05-01 06:37:52'),
(346, '2023-05-01', 'GUD-001', 'FF-002', 'KS', 'KSR-23050007', -2, '18000', 'Ardian', 0, 0, 4703, '2023-05-01 06:38:25', '2023-05-01 06:38:25'),
(347, '2023-05-01', 'GUD-001', 'FF-003', 'KS', 'KSR-23050008', -2, '20000', 'Ardian', 0, 0, 9977, '2023-05-01 06:38:47', '2023-05-01 06:38:47'),
(348, '2023-05-01', 'GUD-001', 'FF-003', 'KS', 'KSR-23050009', -2, '20000', 'Ardian', 0, 0, 9975, '2023-05-01 06:49:09', '2023-05-01 06:49:09'),
(349, '2023-05-01', 'GUD-001', 'FF-002', 'KS', 'KSR-23050010', -2, '18000', 'Ardian', 0, 0, 4701, '2023-05-01 06:55:29', '2023-05-01 06:55:29'),
(350, '2023-05-01', 'GUD-001', 'FF-003', 'KS', 'KSR-23050010', -2, '20000', 'Ardian', 1, 1, 9973, '2023-05-01 06:55:29', '2023-05-01 06:55:29'),
(351, '2023-05-01', 'GUD-001', 'FF-004', 'KS', 'KSR-23050010', -1, '20000', 'Ardian', 2, 2, 9996, '2023-05-01 06:55:29', '2023-05-01 06:55:29'),
(352, '2023-05-01', 'GUD-001', 'FF-002', 'KS', 'KSR-23050011', -3, '18000', 'Ardian', 0, 0, 4698, '2023-05-01 06:56:10', '2023-05-01 06:56:10'),
(353, '2023-05-01', 'GUD-001', 'FF-003', 'KS', 'KSR-23050011', -2, '20000', 'Ardian', 1, 1, 9971, '2023-05-01 06:56:10', '2023-05-01 06:56:10'),
(354, '2023-05-01', 'GUD-001', 'FF-004', 'KS', 'KSR-23050011', -2, '20000', 'Ardian', 2, 2, 9994, '2023-05-01 06:56:10', '2023-05-01 06:56:10'),
(355, '2023-05-01', 'GUD-001', 'FF-002', 'KS', 'KSR-23050012', -2, '18000', 'Ardian', 0, 0, 4696, '2023-05-01 07:13:03', '2023-05-01 07:13:03'),
(356, '2023-05-01', 'GUD-001', 'FF-003', 'KS', 'KSR-23050013', -2, '20000', 'Ardian', 0, 0, 9969, '2023-05-01 07:17:58', '2023-05-01 07:17:58'),
(357, '2023-05-01', 'GUD-001', 'FF-002', 'KS', 'KSR-23050014', -1, '18000', 'Ardian', 0, 0, 4695, '2023-05-01 07:25:10', '2023-05-01 07:25:10'),
(358, '2023-05-01', 'GUD-001', 'FF-003', 'KS', 'KSR-23050014', -1, '20000', 'Ardian', 1, 1, 9968, '2023-05-01 07:25:10', '2023-05-01 07:25:10');
INSERT INTO `keluarmasukbarangs` (`id`, `Tanggal`, `KodeLokasi`, `KodeItem`, `JenisTransaksi`, `KodeTransaksi`, `Qty`, `HargaRata`, `KodeUser`, `idx`, `indexmov`, `saldo`, `created_at`, `updated_at`) VALUES
(359, '2023-05-01', 'GUD-001', 'FF-002', 'KS', 'KSR-23050015', -1, '18000', 'Ardian', 0, 0, 4694, '2023-05-01 07:26:57', '2023-05-01 07:26:57'),
(360, '2023-05-01', 'GUD-001', 'FF-003', 'KS', 'KSR-23050015', -1, '20000', 'Ardian', 1, 1, 9967, '2023-05-01 07:26:57', '2023-05-01 07:26:57'),
(361, '2023-05-01', 'GUD-001', 'FF-002', 'KS', 'KSR-23050016', -1, '18000', 'Ardian', 0, 0, 4693, '2023-05-01 07:47:20', '2023-05-01 07:47:20'),
(362, '2023-05-01', 'GUD-001', 'FF-003', 'KS', 'KSR-23050016', -1, '20000', 'Ardian', 1, 1, 9966, '2023-05-01 07:47:20', '2023-05-01 07:47:20'),
(363, '2023-05-01', 'GUD-001', 'FF-004', 'KS', 'KSR-23050016', -1, '20000', 'Ardian', 2, 2, 9993, '2023-05-01 07:47:20', '2023-05-01 07:47:20'),
(364, '2023-05-01', 'GUD-001', 'FF-002', 'KS', 'KSR-23050017', -1, '18000', 'Ardian', 0, 0, 4692, '2023-05-01 07:48:19', '2023-05-01 07:48:19'),
(365, '2023-05-01', 'GUD-001', 'FF-003', 'KS', 'KSR-23050017', -1, '20000', 'Ardian', 1, 1, 9965, '2023-05-01 07:48:19', '2023-05-01 07:48:19'),
(366, '2023-05-01', 'GUD-001', 'FF-004', 'KS', 'KSR-23050017', -1, '20000', 'Ardian', 2, 2, 9992, '2023-05-01 07:48:19', '2023-05-01 07:48:19'),
(367, '2023-05-01', 'GUD-001', 'FF-002', 'KS', 'KSR-23050018', -1, '18000', 'Ardian', 0, 0, 4691, '2023-05-01 07:49:58', '2023-05-01 07:49:58'),
(368, '2023-05-01', 'GUD-001', 'FF-003', 'KS', 'KSR-23050018', -1, '20000', 'Ardian', 1, 1, 9964, '2023-05-01 07:49:58', '2023-05-01 07:49:58'),
(369, '2023-05-01', 'GUD-001', 'FF-004', 'KS', 'KSR-23050018', -1, '20000', 'Ardian', 2, 2, 9991, '2023-05-01 07:49:58', '2023-05-01 07:49:58'),
(370, '2023-05-01', 'GUD-001', 'FF-002', 'KS', 'KSR-23050019', -1, '18000', 'Ardian', 0, 0, 4690, '2023-05-01 07:53:48', '2023-05-01 07:53:48'),
(371, '2023-05-01', 'GUD-001', 'FF-003', 'KS', 'KSR-23050019', -1, '20000', 'Ardian', 1, 1, 9963, '2023-05-01 07:53:48', '2023-05-01 07:53:48'),
(372, '2023-05-01', 'GUD-001', 'FF-004', 'KS', 'KSR-23050019', -1, '20000', 'Ardian', 2, 2, 9990, '2023-05-01 07:53:48', '2023-05-01 07:53:48'),
(373, '2023-05-01', 'GUD-001', 'FF-002', 'KS', 'KSR-23050020', -1, '18000', 'Ardian', 0, 0, 4689, '2023-05-01 07:54:17', '2023-05-01 07:54:17'),
(374, '2023-05-01', 'GUD-001', 'FF-003', 'KS', 'KSR-23050020', -1, '20000', 'Ardian', 1, 1, 9962, '2023-05-01 07:54:17', '2023-05-01 07:54:17'),
(375, '2023-05-01', 'GUD-001', 'FF-004', 'KS', 'KSR-23050020', -1, '20000', 'Ardian', 2, 2, 9989, '2023-05-01 07:54:17', '2023-05-01 07:54:17'),
(376, '2023-05-01', 'GUD-001', 'FF-002', 'KS', 'KSR-23050021', -1, '18000', 'Ardian', 0, 0, 4688, '2023-05-01 07:54:57', '2023-05-01 07:54:57'),
(377, '2023-05-01', 'GUD-001', 'FF-003', 'KS', 'KSR-23050021', -1, '20000', 'Ardian', 1, 1, 9961, '2023-05-01 07:54:57', '2023-05-01 07:54:57'),
(378, '2023-05-01', 'GUD-001', 'FF-004', 'KS', 'KSR-23050021', -1, '20000', 'Ardian', 2, 2, 9988, '2023-05-01 07:54:57', '2023-05-01 07:54:57'),
(379, '2023-05-01', 'GUD-001', 'FF-002', 'KS', 'KSR-23050022', -1, '18000', 'Ardian', 0, 0, 4687, '2023-05-01 07:55:22', '2023-05-01 07:55:22'),
(380, '2023-05-01', 'GUD-001', 'FF-003', 'KS', 'KSR-23050022', -1, '20000', 'Ardian', 1, 1, 9960, '2023-05-01 07:55:22', '2023-05-01 07:55:22'),
(381, '2023-05-01', 'GUD-001', 'FF-004', 'KS', 'KSR-23050022', -1, '20000', 'Ardian', 2, 2, 9987, '2023-05-01 07:55:22', '2023-05-01 07:55:22'),
(382, '2023-05-01', 'GUD-001', 'FF-002', 'KS', 'KSR-23050023', -1, '18000', 'Ardian', 0, 0, 4686, '2023-05-01 08:05:14', '2023-05-01 08:05:14'),
(383, '2023-05-01', 'GUD-001', 'FF-003', 'KS', 'KSR-23050023', -1, '20000', 'Ardian', 1, 1, 9959, '2023-05-01 08:05:14', '2023-05-01 08:05:14'),
(384, '2023-05-01', 'GUD-001', 'FF-002', 'KS', 'KSR-23050024', -1, '18000', 'Ardian', 0, 0, 4685, '2023-05-01 08:18:04', '2023-05-01 08:18:04'),
(385, '2023-05-01', 'GUD-001', 'FF-003', 'KS', 'KSR-23050024', -1, '20000', 'Ardian', 1, 1, 9958, '2023-05-01 08:18:04', '2023-05-01 08:18:04'),
(386, '2023-05-01', 'GUD-001', 'FF-004', 'KS', 'KSR-23050024', -1, '20000', 'Ardian', 2, 2, 9986, '2023-05-01 08:18:04', '2023-05-01 08:18:04'),
(387, '2023-05-01', 'GUD-001', 'FF-002', 'KS', 'KSR-23050025', -2, '18000', 'Ardian', 0, 0, 4683, '2023-05-01 08:28:20', '2023-05-01 08:28:20'),
(388, '2023-05-01', 'GUD-001', 'FF-003', 'KS', 'KSR-23050025', -2, '20000', 'Ardian', 1, 1, 9956, '2023-05-01 08:28:20', '2023-05-01 08:28:20'),
(389, '2023-05-01', 'GUD-001', 'FF-002', 'KS', 'KSR-23050026', -2, '18000', 'Ardian', 0, 0, 4681, '2023-05-01 08:28:51', '2023-05-01 08:28:51'),
(390, '2023-05-01', 'GUD-001', 'FF-003', 'KS', 'KSR-23050026', -2, '20000', 'Ardian', 1, 1, 9954, '2023-05-01 08:28:51', '2023-05-01 08:28:51'),
(391, '2023-05-01', 'GUD-001', 'FF-002', 'KS', 'KSR-23050027', -1, '18000', 'Ardian', 0, 0, 4680, '2023-05-01 08:32:48', '2023-05-01 08:32:48'),
(392, '2023-05-01', 'GUD-001', 'FF-003', 'KS', 'KSR-23050027', -1, '20000', 'Ardian', 1, 1, 9953, '2023-05-01 08:32:48', '2023-05-01 08:32:48'),
(393, '2023-05-01', 'GUD-001', 'FF-002', 'KS', 'KSR-23050028', -1, '18000', 'Ardian', 0, 0, 4679, '2023-05-01 08:33:24', '2023-05-01 08:33:24'),
(394, '2023-05-01', 'GUD-001', 'FF-002', 'KS', 'KSR-23050029', -1, '18000', 'Ardian', 0, 0, 4678, '2023-05-01 08:34:09', '2023-05-01 08:34:09'),
(395, '2023-05-01', 'GUD-001', 'FF-003', 'KS', 'KSR-23050029', -1, '20000', 'Ardian', 1, 1, 9952, '2023-05-01 08:34:09', '2023-05-01 08:34:09'),
(396, '2023-05-01', 'GUD-001', 'FF-002', 'KS', 'KSR-23050030', -1, '18000', 'Ardian', 0, 0, 4677, '2023-05-01 08:53:12', '2023-05-01 08:53:12'),
(397, '2023-05-01', 'GUD-001', 'FF-003', 'KS', 'KSR-23050030', -1, '20000', 'Ardian', 1, 1, 9951, '2023-05-01 08:53:12', '2023-05-01 08:53:12'),
(398, '2023-05-01', 'GUD-001', 'FF-002', 'KS', 'KSR-23050031', -1, '18000', 'Ardian', 0, 0, 4676, '2023-05-01 08:53:42', '2023-05-01 08:53:42'),
(399, '2023-05-01', 'GUD-001', 'FF-003', 'KS', 'KSR-23050031', -1, '20000', 'Ardian', 1, 1, 9950, '2023-05-01 08:53:42', '2023-05-01 08:53:42'),
(400, '2023-05-01', 'GUD-001', 'FF-004', 'KS', 'KSR-23050031', -1, '20000', 'Ardian', 2, 2, 9985, '2023-05-01 08:53:42', '2023-05-01 08:53:42'),
(401, '2023-05-01', 'GUD-001', 'FF-003', 'KS', 'KSR-23050032', -1, '20000', 'Ardian', 0, 0, 9949, '2023-05-01 08:58:26', '2023-05-01 08:58:26'),
(402, '2023-05-01', 'GUD-001', 'FF-004', 'KS', 'KSR-23050032', -1, '20000', 'Ardian', 1, 1, 9984, '2023-05-01 08:58:26', '2023-05-01 08:58:26'),
(403, '2023-05-10', 'GUD-001', 'FF-002', 'KS', 'KSR-23050033', -8, '18000', 'Ardian', 0, 0, 4668, '2023-05-10 04:10:39', '2023-05-10 04:10:39'),
(404, '2023-05-10', 'GUD-001', 'FF-002', 'KS', 'KSR-23050034', -1, '18000', 'Ardian', 0, 0, 4667, '2023-05-10 04:12:45', '2023-05-10 04:12:45'),
(405, '2023-05-10', 'GUD-001', 'FF-002', 'KS', 'KSR-23050035', -2, '18000', 'Ardian', 0, 0, 4665, '2023-05-10 08:02:15', '2023-05-10 08:02:15'),
(406, '2023-05-10', 'GUD-001', 'FF-002', 'KS', 'KSR-23050036', -2, '18000', 'Ardian', 0, 0, 4663, '2023-05-10 08:03:10', '2023-05-10 08:03:10'),
(407, '2023-05-12', 'GUD-001', 'FF-002', 'KS', 'KSR-23050037', -1, '18000', 'Ardian', 0, 0, 4662, '2023-05-12 01:46:58', '2023-05-12 01:46:58'),
(408, '2023-05-12', 'GUD-001', 'FF-002', 'KS', 'KSR-23050038', -1, '18000', 'Ardian', 0, 0, 4661, '2023-05-12 01:47:25', '2023-05-12 01:47:25'),
(409, '2023-05-12', 'GUD-001', 'FF-003', 'KS', 'KSR-23050039', -1, '20000', 'Ardian', 0, 0, 9948, '2023-05-12 01:48:13', '2023-05-12 01:48:13'),
(410, '2023-05-12', 'GUD-001', 'FF-003', 'KS', 'KSR-23050040', -1, '20000', 'Ardian', 0, 0, 9947, '2023-05-12 01:49:01', '2023-05-12 01:49:01'),
(411, '2023-05-12', 'GUD-001', 'FF-002', 'KS', 'KSR-23050041', -1, '18000', 'Ardian', 0, 0, 4660, '2023-05-12 01:55:26', '2023-05-12 01:55:26'),
(412, '2023-05-12', 'GUD-001', 'FF-003', 'KS', 'KSR-23050041', -1, '20000', 'Ardian', 1, 1, 9946, '2023-05-12 01:55:26', '2023-05-12 01:55:26'),
(413, '2023-05-12', 'GUD-001', 'FF-002', 'KS', 'KSR-23050042', -1, '18000', 'Ardian', 0, 0, 4659, '2023-05-12 01:57:21', '2023-05-12 01:57:21'),
(414, '2023-05-12', 'GUD-001', 'FF-003', 'KS', 'KSR-23050043', -1, '20000', 'Ardian', 0, 0, 9945, '2023-05-12 02:08:05', '2023-05-12 02:08:05'),
(415, '2023-05-12', 'GUD-001', 'FF-003', 'KS', 'KSR-23050044', -1, '20000', 'Ardian', 0, 0, 9944, '2023-05-12 02:10:02', '2023-05-12 02:10:02'),
(416, '2023-05-12', 'GUD-001', 'FF-003', 'KS', 'KSR-23050045', -1, '20000', 'Ardian', 0, 0, 9943, '2023-05-12 02:11:28', '2023-05-12 02:11:28'),
(417, '2023-05-12', 'GUD-001', 'FF-003', 'KS', 'KSR-23050046', -1, '20000', 'Ardian', 0, 0, 9942, '2023-05-12 02:13:28', '2023-05-12 02:13:28'),
(418, '2023-05-12', 'GUD-001', 'FF-003', 'KS', 'KSR-23050047', -1, '20000', 'Ardian', 0, 0, 9941, '2023-05-12 02:14:33', '2023-05-12 02:14:33'),
(419, '2023-05-12', 'GUD-001', 'FF-002', 'KS', 'KSR-23050048', -5, '18000', 'Ardian', 0, 0, 4654, '2023-05-12 06:41:57', '2023-05-12 06:41:57'),
(420, '2023-05-12', 'GUD-001', 'FF-002', 'KS', 'KSR-23050049', -4, '18000', 'Ardian', 0, 0, 4650, '2023-05-12 06:48:39', '2023-05-12 06:48:39'),
(421, '2023-05-12', 'GUD-001', 'FF-002', 'KS', 'KSR-23050050', -4, '18000', 'Ardian', 0, 0, 4646, '2023-05-12 06:48:39', '2023-05-12 06:48:39'),
(422, '2023-05-12', 'GUD-001', 'FF-003', 'KS', 'KSR-23050051', -2, '20000', 'Ardian', 0, 0, 9939, '2023-05-12 06:49:31', '2023-05-12 06:49:31'),
(423, '2023-05-12', 'GUD-001', 'FF-002', 'KS', 'KSR-23050052', -6, '18000', 'Ardian', 0, 0, 4640, '2023-05-12 06:59:51', '2023-05-12 06:59:51'),
(424, '2023-05-12', 'GUD-001', 'FF-003', 'KS', 'KSR-23050052', -3, '20000', 'Ardian', 1, 1, 9936, '2023-05-12 06:59:51', '2023-05-12 06:59:51'),
(425, '2023-05-12', 'GUD-001', 'FF-004', 'KS', 'KSR-23050052', -1, '20000', 'Ardian', 2, 2, 9983, '2023-05-12 06:59:51', '2023-05-12 06:59:51'),
(426, '2023-05-22', 'GUD-001', 'FF-002', 'KS', 'KSR-23050053', -4, '18000', 'Ardian', 0, 0, 4636, '2023-05-22 07:08:45', '2023-05-22 07:08:45'),
(427, '2023-05-22', 'GUD-001', 'FF-002', 'KS', 'KSR-23050054', -4, '18000', 'Ardian', 0, 0, 4632, '2023-05-22 07:09:32', '2023-05-22 07:09:32'),
(428, '2023-05-22', 'GUD-001', 'FF-002', 'KS', 'KSR-23050055', -4, '18000', 'Ardian', 0, 0, 4628, '2023-05-22 07:10:22', '2023-05-22 07:10:22'),
(429, '2023-05-22', 'GUD-001', 'FF-003', 'KS', 'KSR-23050056', -10, '20000', 'Ardian', 0, 0, 9926, '2023-05-22 07:11:23', '2023-05-22 07:11:23'),
(430, '2023-05-23', 'GUD-002', 'FF-012', 'WHT', 'WHT-23050004', 2, '0', 'Ardian', 0, 0, 2, '2023-05-23 01:42:20', '2023-05-23 01:42:20'),
(431, '2023-05-23', 'GUD-001', 'FF-012', 'WHT', 'WHT-23050004', -2, '0', 'Ardian', 0, 0, 28, '2023-05-23 01:42:20', '2023-05-23 01:42:20'),
(432, '2023-05-23', 'GUD-002', 'FF-012', 'LPB', 'LPB-023050001', 8, '0', 'admin', 1, 1, 36, '2023-05-23 12:45:26', '2023-05-23 12:45:26'),
(433, '2023-05-23', 'GUD-001', 'FF-012', 'WHT', 'WHT-23050005', 2, '0', 'Ardian', 0, 0, 30, '2023-05-23 01:54:06', '2023-05-23 01:54:06'),
(434, '2023-05-23', 'GUD-002', 'FF-012', 'WHT', 'WHT-23050005', -2, '0', 'Ardian', 0, 0, 34, '2023-05-23 01:54:06', '2023-05-23 01:54:06'),
(435, '2023-05-22', 'GUD-002', 'FF-015', 'WHT', 'WHT-23050006', 5, '0', 'Ardian', 0, 0, 5, '2023-05-23 02:09:23', '2023-05-23 02:09:23'),
(436, '2023-05-22', 'GUD-001', 'FF-015', 'WHT', 'WHT-23050006', -5, '0', 'Ardian', 0, 0, 5, '2023-05-23 02:09:23', '2023-05-23 02:09:23'),
(437, '2023-05-22', 'GUD-001', 'FF-015', 'WHT', 'WHT-23050007', 5, '0', 'Ardian', 0, 0, 10, '2023-05-23 02:14:07', '2023-05-23 02:14:07'),
(438, '2023-05-22', 'GUD-002', 'FF-015', 'WHT', 'WHT-23050007', -5, '0', 'Ardian', 0, 0, 0, '2023-05-23 02:14:07', '2023-05-23 02:14:07'),
(439, '2023-05-22', 'GUD-002', 'FF-015', 'WHT', 'WHT-23050008', 5, '0', 'Ardian', 0, 0, 5, '2023-05-23 02:34:57', '2023-05-23 02:34:57'),
(440, '2023-05-22', 'GUD-001', 'FF-015', 'WHT', 'WHT-23050008', -5, '0', 'Ardian', 0, 0, 5, '2023-05-23 02:34:57', '2023-05-23 02:34:57'),
(441, '2023-05-23', 'GUD-002', 'FF-015', 'WHT', 'WHT-23050009', 5, '0', 'Ardian', 0, 0, 10, '2023-05-23 02:38:01', '2023-05-23 02:38:01'),
(442, '2023-05-23', 'GUD-001', 'FF-015', 'WHT', 'WHT-23050009', -5, '0', 'Ardian', 0, 0, 0, '2023-05-23 02:38:01', '2023-05-23 02:38:01'),
(443, '2023-05-23', 'GUD-001', 'FF-015', 'WHT', 'WHT-23050010', 10, '0', 'Ardian', 0, 0, 10, '2023-05-23 02:43:50', '2023-05-23 02:43:50'),
(444, '2023-05-23', 'GUD-002', 'FF-015', 'WHT', 'WHT-23050010', -10, '0', 'Ardian', 0, 0, 0, '2023-05-23 02:43:50', '2023-05-23 02:43:50'),
(445, '2023-05-22', 'GUD-002', 'FF-015', 'WHT', 'WHT-23050011', 10, '0', 'Ardian', 0, 0, 10, '2023-05-23 03:00:18', '2023-05-23 03:00:18'),
(446, '2023-05-22', 'GUD-001', 'FF-015', 'WHT', 'WHT-23050011', -10, '0', 'Ardian', 0, 0, 0, '2023-05-23 03:00:18', '2023-05-23 03:00:18'),
(447, '2023-05-22', 'GUD-001', 'FF-015', 'WHT', 'WHT-23050012', 10, '0', 'Ardian', 0, 0, 10, '2023-05-23 03:03:28', '2023-05-23 03:03:28'),
(448, '2023-05-22', 'GUD-002', 'FF-015', 'WHT', 'WHT-23050012', -10, '0', 'Ardian', 0, 0, 0, '2023-05-23 03:03:28', '2023-05-23 03:03:28'),
(449, '2023-05-23', 'GUD-001', 'FF-002', 'KS', 'KSR-23050057', -1, '18000', 'Ardian', 0, 0, 4627, '2023-05-23 03:44:04', '2023-05-23 03:44:04'),
(450, '2023-05-23', 'GUD-001', 'FF-002', 'KS', 'KSR-23050058', -5, '18000', 'Ardian', 0, 0, 4622, '2023-05-23 03:49:25', '2023-05-23 03:49:25'),
(451, '2023-05-23', 'GUD-001', 'FF-003', 'RK', 'RKS-23050001', 5, '20000', 'Ardian', 0, 0, 9931, '2023-05-23 04:16:40', '2023-05-23 04:16:40'),
(452, '2023-05-26', 'GUD-001', 'FF-002', 'KS', 'KSR-23050059', -1, '18000', 'Ardian', 0, 0, 4621, '2023-05-26 03:13:38', '2023-05-26 03:13:38'),
(453, '2023-06-08', 'GUD-001', 'FF-002', 'KS', 'KSR-23060001', -1, '18000', 'Ardian', 0, 0, 4620, '2023-06-08 04:31:19', '2023-06-08 04:31:19'),
(454, '2023-06-08', 'GUD-001', 'FF-003', 'KS', 'KSR-23060002', -2, '20000', 'Ardian', 0, 0, 9929, '2023-06-08 07:02:25', '2023-06-08 07:02:25'),
(455, '2023-06-13', 'GUD-001', 'FF-002', 'RK', 'RKS-23060001', 1, '18000', 'Ardian', 0, 0, 4621, '2023-06-13 04:35:34', '2023-06-13 04:35:34'),
(456, '2023-06-14', 'GUD-001', 'FF-003', 'KS', 'KSR-23060003', -8, '20000', 'Ardian', 0, 0, 9921, '2023-06-14 02:32:02', '2023-06-14 02:32:02'),
(457, '2023-06-19', 'GUD-001', 'FF-003', 'KS', 'KSR-23060004', -2, '20000', 'Ardian', 0, 0, 9919, '2023-06-19 08:45:27', '2023-06-19 08:45:27'),
(458, '2023-06-19', 'GUD-001', 'FF-003', 'KS', 'KSR-23060005', -8, '20000', 'Ardian', 0, 0, 9911, '2023-06-19 08:47:56', '2023-06-19 08:47:56'),
(459, '2023-06-19', 'GUD-001', 'FF-005', 'KS', 'KSR-23060005', -1, '0', 'Ardian', 1, 1, 8338, '2023-06-19 08:47:56', '2023-06-19 08:47:56'),
(460, '2023-06-19', 'GUD-001', 'FF-004', 'KS', 'KSR-23060005', -1, '20000', 'Ardian', 2, 2, 9982, '2023-06-19 08:47:56', '2023-06-19 08:47:56'),
(461, '2023-06-30', 'GUD-001', 'FF-002', 'KS', 'KSR-23060006', -1, '18000', 'Ardian', 0, 0, 4620, '2023-06-30 06:18:34', '2023-06-30 06:18:34'),
(462, '2023-06-30', 'GUD-001', 'FF-002', 'KS', 'KSR-23060007', -2, '18000', 'Ardian', 0, 0, 4618, '2023-06-30 06:18:59', '2023-06-30 06:18:59'),
(463, '2023-06-30', 'GUD-001', 'FF-002', 'KS', 'KSR-23060008', -1, '18000', 'Ardian', 0, 0, 4617, '2023-06-30 07:06:01', '2023-06-30 07:06:01'),
(464, '2023-06-30', 'GUD-001', 'FF-002', 'KS', 'KSR-23060009', -1, '18000', 'Ardian', 0, 0, 4616, '2023-06-30 07:06:43', '2023-06-30 07:06:43'),
(465, '2023-06-30', 'GUD-001', 'FF-002', 'KS', 'KSR-23060010', -3, '18000', 'Ardian', 0, 0, 4613, '2023-06-30 07:07:11', '2023-06-30 07:07:11'),
(466, '2023-06-30', 'GUD-001', 'FF-002', 'KS', 'KSR-23060011', -1, '18000', 'Ardian', 0, 0, 4612, '2023-06-30 07:10:34', '2023-06-30 07:10:34'),
(467, '2023-06-30', 'GUD-001', 'FF-002', 'KS', 'KSR-23060012', -2, '18000', 'Ardian', 0, 0, 4610, '2023-06-30 07:10:53', '2023-06-30 07:10:53'),
(468, '2023-06-30', 'GUD-001', 'FF-002', 'KS', 'KSR-23060013', -3, '18000', 'Ardian', 0, 0, 4607, '2023-06-30 07:33:32', '2023-06-30 07:33:32'),
(469, '2023-07-01', 'GUD-001', 'FF-002', 'KS', 'KSR-23070001', -3, '18000', 'Ardian', 0, 0, 4604, '2023-07-01 02:25:13', '2023-07-01 02:25:13'),
(470, '2023-07-01', 'GUD-001', 'FF-003', 'KS', 'KSR-23070001', -1, '20000', 'Ardian', 1, 1, 9910, '2023-07-01 02:25:13', '2023-07-01 02:25:13'),
(471, '2023-07-01', 'GUD-001', 'FF-004', 'KS', 'KSR-23070002', -1, '20000', 'Ardian', 0, 0, 9981, '2023-07-01 02:37:26', '2023-07-01 02:37:26'),
(472, '2023-07-01', 'GUD-001', 'FF-004', 'KS', 'KSR-23070003', -2, '20000', 'Ardian', 0, 0, 9979, '2023-07-01 02:37:56', '2023-07-01 02:37:56'),
(473, '2023-07-01', 'GUD-001', 'FF-004', 'KS', 'KSR-23070004', -1, '20000', 'Ardian', 0, 0, 9978, '2023-07-01 03:11:12', '2023-07-01 03:11:12'),
(474, '2023-07-01', 'GUD-001', 'FF-002', 'KS', 'KSR-23070005', -1, '18000', 'Ardian', 0, 0, 4603, '2023-07-01 03:23:27', '2023-07-01 03:23:27'),
(475, '2023-07-03', 'GUD-001', 'FF-002', 'KS', 'KSR-23070006', -1, '18000', 'Ardian', 0, 0, 4602, '2023-07-03 03:48:06', '2023-07-03 03:48:06'),
(476, '2023-07-03', 'GUD-001', 'FF-002', 'KS', 'undefined', -1, '18000', 'Ardian', 0, 0, 4601, '2023-07-03 06:22:52', '2023-07-03 06:22:52'),
(477, '2023-07-03', 'GUD-001', 'FF-002', 'KS', 'undefined', -1, '18000', 'Ardian', 0, 0, 4600, '2023-07-03 06:52:48', '2023-07-03 06:52:48'),
(478, '2023-07-03', 'GUD-001', 'FF-002', 'KS', 'KSR-23070005', -1, '18000', 'Ardian', 0, 0, 4599, '2023-07-03 07:32:55', '2023-07-03 07:32:55'),
(479, '2023-07-04', 'GUD-001', 'FF-002', 'KS', 'KSR-23070008', -1, '18000', 'Ardian', 0, 0, 4598, '2023-07-04 05:51:57', '2023-07-04 05:51:57'),
(480, '2023-07-04', 'GUD-001', 'FF-002', 'KS', 'KSR-23070008', -1, '18000', 'Ardian', 0, 0, 4597, '2023-07-04 05:52:17', '2023-07-04 05:52:17'),
(481, '2023-07-04', 'GUD-001', 'FF-003', 'KS', 'KSR-23070008', -1, '20000', 'Ardian', 1, 1, 9909, '2023-07-04 05:52:17', '2023-07-04 05:52:17'),
(482, '2023-07-04', 'GUD-001', 'FF-004', 'KS', 'KSR-23070009', -1, '20000', 'Ardian', 0, 0, 9977, '2023-07-04 05:58:54', '2023-07-04 05:58:54'),
(483, '2023-07-04', 'GUD-001', 'FF-004', 'KS', 'KSR-23070009', -1, '20000', 'Ardian', 0, 0, 9976, '2023-07-04 05:59:25', '2023-07-04 05:59:25'),
(484, '2023-07-04', 'GUD-001', 'FF-003', 'KS', 'KSR-23070009', -2, '20000', 'Ardian', 1, 1, 9907, '2023-07-04 05:59:25', '2023-07-04 05:59:25'),
(485, '2023-07-07', 'GUD-001', 'FF-002', 'KS', 'KSR-23070010', -1, '18000', 'Ardian', 0, 0, 4596, '2023-07-07 04:29:52', '2023-07-07 04:29:52'),
(486, '2023-07-07', 'GUD-001', 'FF-002', 'KS', 'KSR-23070010', -1, '18000', 'Ardian', 0, 0, 4595, '2023-07-07 04:30:11', '2023-07-07 04:30:11'),
(487, '2023-07-07', 'GUD-001', 'FF-003', 'KS', 'KSR-23070010', -1, '20000', 'Ardian', 1, 1, 9906, '2023-07-07 04:30:11', '2023-07-07 04:30:11'),
(488, '2023-07-01', 'GUD-002', 'FF-002', 'WHT', 'WHT-23070001', 1, '0', 'Ardian', 0, 0, 5, '2023-07-08 04:45:27', '2023-07-08 04:45:27'),
(489, '2023-07-01', 'GUD-001', 'FF-002', 'WHT', 'WHT-23070001', -1, '0', 'Ardian', 0, 0, 4594, '2023-07-08 04:45:27', '2023-07-08 04:45:27'),
(490, '2023-07-08', 'GUD-001', 'FF-002', 'KS', 'KSR-23070011', -1, '18000', 'Ardian', 0, 0, 4593, '2023-07-08 06:14:24', '2023-07-08 06:14:24'),
(491, '2023-07-08', 'GUD-001', 'FF-002', 'KS', 'KSR-23070012', -1, '18000', 'Ardian', 0, 0, 4592, '2023-07-08 07:16:12', '2023-07-08 07:16:12'),
(492, '2023-07-11', 'GUD-001', 'FF-002', 'KS', 'KSR-23070013', -1, '18000', 'Ardian', 0, 0, 4591, '2023-07-11 02:28:55', '2023-07-11 02:28:55'),
(493, '2023-07-11', 'GUD-001', 'FF-002', 'KS', 'KSR-23070013', -1, '18000', 'Ardian', 0, 0, 4590, '2023-07-11 02:29:21', '2023-07-11 02:29:21'),
(494, '2023-07-11', 'GUD-001', 'FF-003', 'KS', 'KSR-23070014', -1, '20000', 'Ardian', 0, 0, 9905, '2023-07-11 02:42:19', '2023-07-11 02:42:19'),
(495, '2023-07-11', 'GUD-001', 'FF-003', 'KS', 'KSR-23070014', -1, '20000', 'Ardian', 0, 0, 9904, '2023-07-11 02:42:36', '2023-07-11 02:42:36'),
(496, '2023-07-11', 'GUD-001', 'FF-002', 'KS', 'KSR-23070014', -1, '18000', 'Ardian', 1, 1, 4589, '2023-07-11 02:42:36', '2023-07-11 02:42:36'),
(497, '2023-07-11', 'GUD-001', 'FF-002', 'KS', 'KSR-23070015', -1, '18000', 'Ardian', 0, 0, 4588, '2023-07-11 03:15:49', '2023-07-11 03:15:49'),
(498, '2023-07-11', 'GUD-001', 'FF-003', 'KS', 'KSR-23070016', -1, '20000', 'Ardian', 0, 0, 9903, '2023-07-11 03:17:58', '2023-07-11 03:17:58'),
(499, '2023-07-11', 'GUD-001', 'FF-002', 'KS', 'KSR-23070017', -1, '18000', 'Ardian', 0, 0, 4587, '2023-07-11 04:15:46', '2023-07-11 04:15:46'),
(500, '2023-07-11', 'GUD-001', 'FF-002', 'KS', 'KSR-23070017', -1, '18000', 'Ardian', 0, 0, 4586, '2023-07-11 05:08:12', '2023-07-11 05:08:12'),
(501, '2023-07-11', 'GUD-001', 'FF-003', 'KS', 'KSR-23070017', -1, '20000', 'Ardian', 1, 1, 9902, '2023-07-11 05:08:12', '2023-07-11 05:08:12'),
(502, '2023-07-11', 'GUD-001', 'FF-002', 'KS', 'KSR-23070018', -1, '18000', 'Ardian', 0, 0, 4585, '2023-07-11 05:54:02', '2023-07-11 05:54:02'),
(503, '2023-07-11', 'GUD-001', 'FF-002', 'KS', 'KSR-23070018', -1, '18000', 'Ardian', 0, 0, 4584, '2023-07-11 05:54:17', '2023-07-11 05:54:17'),
(504, '2023-07-11', 'GUD-001', 'FF-003', 'KS', 'KSR-23070018', -1, '20000', 'Ardian', 1, 1, 9901, '2023-07-11 05:54:17', '2023-07-11 05:54:17'),
(505, '2023-07-11', 'GUD-001', 'FF-002', 'KS', 'KSR-23070019', -1, '18000', 'Ardian', 0, 0, 4583, '2023-07-11 06:49:21', '2023-07-11 06:49:21'),
(506, '2023-07-11', 'GUD-001', 'FF-002', 'KS', 'KSR-23070019', -1, '18000', 'Ardian', 0, 0, 4582, '2023-07-11 06:50:01', '2023-07-11 06:50:01'),
(507, '2023-07-11', 'GUD-001', 'FF-003', 'KS', 'KSR-23070019', -1, '20000', 'Ardian', 1, 1, 9900, '2023-07-11 06:50:01', '2023-07-11 06:50:01'),
(508, '2023-07-11', 'GUD-001', 'FF-003', 'KS', 'KSR-23070016', -1, '20000', 'Ardian', 0, 0, 9899, '2023-07-11 06:57:45', '2023-07-11 06:57:45'),
(509, '2023-07-11', 'GUD-001', 'FF-002', 'KS', 'KSR-23070015', -1, '18000', 'Ardian', 0, 0, 4581, '2023-07-11 07:03:49', '2023-07-11 07:03:49'),
(510, '2023-07-11', 'GUD-001', 'FF-002', 'KS', 'KSR-23070012', -1, '18000', 'Ardian', 0, 0, 4580, '2023-07-11 08:29:31', '2023-07-11 08:29:31'),
(511, '2023-07-12', 'GUD-001', 'FF-002', 'KS', 'KSR-23070020', -1, '18000', 'Ardian', 0, 0, 4579, '2023-07-12 01:52:59', '2023-07-12 01:52:59'),
(512, '2023-07-12', 'GUD-001', 'FF-002', 'KS', 'KSR-23070020', -1, '18000', 'Ardian', 0, 0, 4578, '2023-07-12 01:53:52', '2023-07-12 01:53:52'),
(513, '2023-07-12', 'GUD-001', 'FF-003', 'KS', 'KSR-23070021', -1, '20000', 'Ardian', 0, 0, 9898, '2023-07-12 02:05:04', '2023-07-12 02:05:04'),
(514, '2023-07-12', 'GUD-001', 'FF-002', 'KS', 'KSR-23070022', -1, '18000', 'Ardian', 0, 0, 4577, '2023-07-12 02:12:42', '2023-07-12 02:12:42'),
(515, '2023-07-12', 'GUD-001', 'FF-002', 'KS', 'KSR-23070022', -1, '18000', 'Ardian', 0, 0, 4576, '2023-07-12 02:13:22', '2023-07-12 02:13:22'),
(516, '2023-07-12', 'GUD-001', 'FF-002', 'KS', 'KSR-23070023', -1, '18000', 'Ardian', 0, 0, 4575, '2023-07-12 03:12:31', '2023-07-12 03:12:31'),
(517, '2023-07-12', 'GUD-001', 'FF-002', 'KS', 'KSR-23070023', -1, '18000', 'Ardian', 0, 0, 4574, '2023-07-12 03:13:23', '2023-07-12 03:13:23'),
(518, '2023-07-12', 'GUD-001', 'FF-002', 'KS', 'KSR-23070024', -1, '18000', 'Ardian', 0, 0, 4573, '2023-07-12 04:09:34', '2023-07-12 04:09:34'),
(519, '2023-07-12', 'GUD-001', 'FF-002', 'KS', 'KSR-23070024', -1, '18000', 'Ardian', 0, 0, 4572, '2023-07-12 04:31:13', '2023-07-12 04:31:13'),
(520, '2023-07-12', 'GUD-001', 'FF-003', 'KS', 'KSR-23070025', -1, '20000', 'Ardian', 0, 0, 9897, '2023-07-12 04:33:32', '2023-07-12 04:33:32'),
(521, '2023-07-12', 'GUD-001', 'FF-003', 'KS', 'KSR-23070025', -1, '20000', 'Ardian', 0, 0, 9896, '2023-07-12 04:34:05', '2023-07-12 04:34:05'),
(522, '2023-07-12', 'GUD-001', 'FF-002', 'KS', 'KSR-23070025', -1, '18000', 'Ardian', 1, 1, 4571, '2023-07-12 04:34:05', '2023-07-12 04:34:05'),
(523, '2023-07-12', 'GUD-001', 'FF-004', 'KS', 'KSR-23070025', -1, '20000', 'Ardian', 2, 2, 9975, '2023-07-12 04:34:05', '2023-07-12 04:34:05'),
(524, '2023-07-12', 'GUD-001', 'FF-002', 'KS', 'KSR-23070026', -1, '18000', 'Ardian', 0, 0, 4570, '2023-07-12 04:43:03', '2023-07-12 04:43:03'),
(525, '2023-07-12', 'GUD-001', 'FF-002', 'KS', 'KSR-23070026', -1, '18000', 'Ardian', 0, 0, 4569, '2023-07-12 04:43:19', '2023-07-12 04:43:19'),
(526, '2023-07-12', 'GUD-001', 'FF-003', 'KS', 'KSR-23070026', -1, '20000', 'Ardian', 1, 1, 9895, '2023-07-12 04:43:19', '2023-07-12 04:43:19'),
(527, '2023-07-12', 'GUD-001', 'FF-003', 'KS', 'KSR-23070027', -1, '20000', 'Ardian', 0, 0, 9894, '2023-07-12 05:46:03', '2023-07-12 05:46:03'),
(528, '2023-07-12', 'GUD-001', 'FF-003', 'KS', 'KSR-23070027', -1, '20000', 'Ardian', 0, 0, 9893, '2023-07-12 05:46:50', '2023-07-12 05:46:50'),
(529, '2023-07-12', 'GUD-001', 'FF-002', 'KS', 'KSR-23070028', -1, '18000', 'Ardian', 0, 0, 4568, '2023-07-12 06:07:26', '2023-07-12 06:07:26'),
(530, '2023-07-12', 'GUD-001', 'FF-002', 'KS', 'KSR-23070028', -1, '18000', 'Ardian', 0, 0, 4567, '2023-07-12 06:12:54', '2023-07-12 06:12:54'),
(531, '2023-07-12', 'GUD-001', 'FF-003', 'KS', 'KSR-23070028', -1, '20000', 'Ardian', 1, 1, 9892, '2023-07-12 06:12:54', '2023-07-12 06:12:54'),
(532, '2023-07-12', 'GUD-001', 'FF-003', 'KS', 'KSR-23070029', -1, '20000', 'Ardian', 0, 0, 9891, '2023-07-12 06:19:58', '2023-07-12 06:19:58'),
(533, '2023-07-12', 'GUD-001', 'FF-003', 'KS', 'KSR-23070029', -1, '20000', 'Ardian', 0, 0, 9890, '2023-07-12 06:20:14', '2023-07-12 06:20:14'),
(534, '2023-07-12', 'GUD-001', 'FF-002', 'KS', 'KSR-23070029', -1, '18000', 'Ardian', 1, 1, 4566, '2023-07-12 06:20:14', '2023-07-12 06:20:14'),
(535, '2023-07-12', 'GUD-001', 'FF-002', 'KS', 'KSR-23070030', -1, '18000', 'Ardian', 0, 0, 4565, '2023-07-12 06:31:56', '2023-07-12 06:31:56'),
(536, '2023-07-12', 'GUD-001', 'FF-002', 'KS', 'KSR-23070030', -1, '18000', 'Ardian', 0, 0, 4564, '2023-07-12 07:07:20', '2023-07-12 07:07:20'),
(537, '2023-07-12', 'GUD-001', 'FF-003', 'KS', 'KSR-23070030', -1, '20000', 'Ardian', 1, 1, 9889, '2023-07-12 07:07:20', '2023-07-12 07:07:20'),
(538, '2023-07-12', 'GUD-001', 'FF-002', 'KS', 'KSR-23070031', -1, '18000', 'Ardian', 0, 0, 4563, '2023-07-12 07:11:16', '2023-07-12 07:11:16'),
(539, '2023-07-12', 'GUD-001', 'FF-003', 'KS', 'KSR-23070032', -1, '20000', 'Ardian', 0, 0, 9888, '2023-07-12 07:18:43', '2023-07-12 07:18:43'),
(540, '2023-07-12', 'GUD-001', 'FF-003', 'KS', 'KSR-23070032', -1, '20000', 'Ardian', 0, 0, 9887, '2023-07-12 07:19:18', '2023-07-12 07:19:18'),
(541, '2023-07-12', 'GUD-001', 'FF-003', 'KS', 'KSR-23070033', -1, '20000', 'Ardian', 0, 0, 9886, '2023-07-12 07:24:09', '2023-07-12 07:24:09'),
(542, '2023-07-12', 'GUD-001', 'FF-003', 'KS', 'KSR-23070033', -1, '20000', 'Ardian', 0, 0, 9885, '2023-07-12 07:24:28', '2023-07-12 07:24:28'),
(543, '2023-07-12', 'GUD-001', 'FF-002', 'KS', 'KSR-23070033', -1, '18000', 'Ardian', 1, 1, 4562, '2023-07-12 07:24:28', '2023-07-12 07:24:28'),
(544, '2023-07-12', 'GUD-001', 'FF-002', 'KS', 'KSR-23070034', -1, '18000', 'Ardian', 0, 0, 4561, '2023-07-12 07:46:45', '2023-07-12 07:46:45'),
(545, '2023-07-12', 'GUD-001', 'FF-002', 'KS', 'KSR-23070034', -1, '18000', 'Ardian', 0, 0, 4560, '2023-07-12 07:47:13', '2023-07-12 07:47:13'),
(546, '2023-07-12', 'GUD-001', 'FF-002', 'KS', 'KSR-23070035', -1, '18000', 'Ardian', 0, 0, 4559, '2023-07-12 08:45:30', '2023-07-12 08:45:30'),
(547, '2023-07-12', 'GUD-001', 'FF-002', 'KS', 'KSR-23070035', -1, '18000', 'Ardian', 0, 0, 4558, '2023-07-12 08:45:49', '2023-07-12 08:45:49'),
(548, '2023-07-12', 'GUD-001', 'FF-003', 'KS', 'KSR-23070035', -1, '20000', 'Ardian', 1, 1, 9884, '2023-07-12 08:45:49', '2023-07-12 08:45:49'),
(549, '2023-07-13', 'GUD-001', 'FF-002', 'KS', 'KSR-23070036', -1, '18000', 'Ardian', 0, 0, 4557, '2023-07-13 03:08:05', '2023-07-13 03:08:05'),
(550, '2023-07-13', 'GUD-001', 'FF-003', 'KS', 'KSR-23070037', -1, '20000', 'Ardian', 0, 0, 9883, '2023-07-13 03:41:48', '2023-07-13 03:41:48'),
(551, '2023-07-13', 'GUD-001', 'FF-003', 'KS', 'KSR-23070038', -1, '20000', 'Ardian', 0, 0, 9882, '2023-07-13 04:11:19', '2023-07-13 04:11:19'),
(552, '2023-07-13', 'GUD-001', 'FF-002', 'KS', 'KSR-23070039', -1, '18000', 'Ardian', 0, 0, 4556, '2023-07-13 04:13:13', '2023-07-13 04:13:13'),
(553, '2023-07-13', 'GUD-001', 'FF-003', 'KS', 'KSR-23070039', -1, '20000', 'Ardian', 1, 1, 9881, '2023-07-13 04:13:13', '2023-07-13 04:13:13'),
(554, '2023-07-13', 'GUD-001', 'FF-003', 'KS', 'KSR-23070040', -1, '20000', 'Ardian', 0, 0, 9880, '2023-07-13 05:18:03', '2023-07-13 05:18:03'),
(555, '2023-07-13', 'GUD-001', 'FF-003', 'KS', 'KSR-23070041', -1, '20000', 'Ardian', 0, 0, 9879, '2023-07-13 05:54:08', '2023-07-13 05:54:08'),
(556, '2023-07-13', 'GUD-001', 'FF-002', 'KS', 'KSR-23070042', -1, '18000', 'Ardian', 0, 0, 4555, '2023-07-13 08:35:04', '2023-07-13 08:35:04'),
(557, '2023-07-18', 'GUD-001', 'FF-003', 'KS', 'KSR-23070043', -1, '20000', 'Ardian', 0, 0, 9878, '2023-07-18 05:23:40', '2023-07-18 05:23:40'),
(558, '2023-08-01', 'GUD-001', 'FF-002', 'KS', 'KSR-23080001', -1, '18000', 'Ardian', 0, 0, 4554, '2023-08-01 02:35:16', '2023-08-01 02:35:16'),
(559, '2023-08-01', 'GUD-001', 'FF-003', 'KS', 'KSR-23080001', -1, '20000', 'Ardian', 1, 1, 9877, '2023-08-01 02:35:16', '2023-08-01 02:35:16'),
(560, '2023-08-01', 'GUD-001', 'FF-002', 'KS', 'KSR-23080002', -1, '18000', 'Ardian', 0, 0, 4553, '2023-08-01 02:36:13', '2023-08-01 02:36:13'),
(561, '2023-08-01', 'GUD-001', 'FF-002', 'KS', 'KSR-23080003', -2, '18000', 'Ardian', 0, 0, 4551, '2023-08-01 05:34:29', '2023-08-01 05:34:29'),
(562, '2023-08-01', 'GUD-001', 'FF-003', 'KS', 'KSR-23080004', -2, '20000', 'Ardian', 0, 0, 9875, '2023-08-01 10:30:01', '2023-08-01 10:30:01'),
(563, '2023-08-02', 'GUD-001', 'FF-002', 'KS', 'KSR-23080005', -1, '18000', 'Ardian', 0, 0, 4550, '2023-08-02 18:13:23', '2023-08-02 18:13:23'),
(564, '2023-08-02', 'GUD-001', 'FF-002', 'KS', 'KSR-23080006', -1, '18000', 'Ardian', 0, 0, 4549, '2023-08-02 19:03:34', '2023-08-02 19:03:34'),
(565, '2023-08-02', 'GUD-001', 'FF-003', 'KS', 'KSR-23080006', -1, '20000', 'Ardian', 1, 1, 9874, '2023-08-02 19:03:34', '2023-08-02 19:03:34'),
(566, '2023-08-02', 'GUD-001', 'FF-002', 'KS', 'KSR-23080006', -2, '18000', 'Ardian', 0, 0, 4547, '2023-08-02 19:07:16', '2023-08-02 19:07:16'),
(567, '2023-08-02', 'GUD-001', 'FF-003', 'KS', 'KSR-23080006', -1, '20000', 'Ardian', 1, 1, 9873, '2023-08-02 19:07:16', '2023-08-02 19:07:16'),
(568, '2023-08-02', 'GUD-001', 'FF-004', 'KS', 'KSR-23080007', -1, '20000', 'Ardian', 0, 0, 9974, '2023-08-02 19:19:13', '2023-08-02 19:19:13'),
(569, '2023-08-02', 'GUD-001', 'FF-002', 'KS', 'KSR-23080008', -1, '18000', 'Ardian', 0, 0, 4546, '2023-08-02 19:41:13', '2023-08-02 19:41:13'),
(570, '2023-08-02', 'GUD-001', 'FF-003', 'KS', 'KSR-23080009', -1, '20000', 'Ardian', 0, 0, 9872, '2023-08-02 19:44:29', '2023-08-02 19:44:29'),
(571, '2023-08-02', 'GUD-001', 'FF-003', 'KS', 'KSR-23080009', -2, '20000', 'Ardian', 0, 0, 9870, '2023-08-02 20:52:47', '2023-08-02 20:52:47'),
(572, '2023-08-02', 'GUD-001', 'FF-002', 'KS', 'KSR-23080009', -1, '18000', 'Ardian', 1, 1, 4545, '2023-08-02 20:52:47', '2023-08-02 20:52:47'),
(573, '2023-08-02', 'GUD-001', 'FF-002', 'KS', 'KSR-23080010', -1, '18000', 'Ardian', 0, 0, 4544, '2023-08-02 21:16:34', '2023-08-02 21:16:34'),
(574, '2023-08-02', 'GUD-001', 'FF-003', 'KS', 'KSR-23080010', -1, '20000', 'Ardian', 0, 0, 9869, '2023-08-02 21:16:56', '2023-08-02 21:16:56'),
(575, '2023-08-02', 'GUD-001', 'FF-004', 'KS', 'KSR-23080010', -1, '20000', 'Ardian', 1, 1, 9973, '2023-08-02 21:16:56', '2023-08-02 21:16:56'),
(576, '2023-08-02', 'GUD-001', 'FF-002', 'KS', 'KSR-23080011', -1, '18000', 'Ardian', 0, 0, 4543, '2023-08-02 21:43:12', '2023-08-02 21:43:12'),
(577, '2023-08-02', 'GUD-001', 'FF-002', 'KS', 'KSR-23080014', -1, '18000', 'Ardian', 0, 0, 4542, '2023-08-02 23:42:04', '2023-08-02 23:42:04'),
(578, '2023-08-02', 'GUD-001', 'FF-003', 'KS', 'KSR-23080014', -1, '20000', 'Ardian', 0, 0, 9868, '2023-08-02 23:56:51', '2023-08-02 23:56:51'),
(579, '2023-08-03', 'GUD-001', 'FF-003', 'KS', 'KSR-23080015', -1, '20000', 'Ardian', 0, 0, 9867, '2023-08-03 00:05:32', '2023-08-03 00:05:32'),
(580, '2023-08-03', 'GUD-001', 'FF-002', 'KS', 'KSR-23080015', -1, '18000', 'Ardian', 0, 0, 4541, '2023-08-03 00:09:51', '2023-08-03 00:09:51'),
(581, '2023-08-09', 'GUD-001', 'FF-002', 'KS', 'KSR-23080017', -1, '18000', 'Ardian', 0, 0, 4540, '2023-08-09 02:40:48', '2023-08-09 02:40:48'),
(582, '2023-08-09', 'GUD-001', 'FF-002', 'KS', 'KSR-23080018', -1, '18000', 'Ardian', 0, 0, 4539, '2023-08-09 03:24:00', '2023-08-09 03:24:00'),
(583, '2023-08-09', 'GUD-001', 'FF-003', 'KS', 'KSR-23080018', -2, '20000', 'Ardian', 1, 1, 9865, '2023-08-09 03:24:00', '2023-08-09 03:24:00'),
(584, '2023-08-09', 'GUD-001', 'FF-002', 'KS', 'KSR-23080018', -2, '18000', 'Ardian', 0, 0, 4537, '2023-08-09 03:24:23', '2023-08-09 03:24:23'),
(585, '2023-08-09', 'GUD-001', 'FF-004', 'KS', 'KSR-23080018', -3, '20000', 'Ardian', 0, 0, 9970, '2023-08-09 03:24:38', '2023-08-09 03:24:38'),
(586, '2023-08-09', 'GUD-001', 'FF-002', 'KS', 'KSR-23080019', -1, '18000', 'Ardian', 0, 0, 4536, '2023-08-09 03:39:11', '2023-08-09 03:39:11'),
(587, '2023-08-09', 'GUD-001', 'FF-003', 'KS', 'KSR-23080019', -1, '20000', 'Ardian', 1, 1, 9864, '2023-08-09 03:39:11', '2023-08-09 03:39:11'),
(588, '2023-08-09', 'GUD-001', 'FF-002', 'KS', 'KSR-23080020', -1, '18000', 'Ardian', 0, 0, 4535, '2023-08-09 03:43:20', '2023-08-09 03:43:20'),
(589, '2023-08-09', 'GUD-001', 'FF-003', 'KS', 'KSR-23080020', -2, '20000', 'Ardian', 1, 1, 9862, '2023-08-09 03:43:20', '2023-08-09 03:43:20'),
(590, '2023-08-16', 'GUD-001', 'FF-003', 'KS', 'KSR-23080021', -1, '20000', 'Ardian', 0, 0, 9861, '2023-08-16 04:50:03', '2023-08-16 04:50:03'),
(591, '2023-08-16', 'GUD-001', 'FF-002', 'KS', 'KSR-23080022', -1, '18000', 'Ardian', 0, 0, 4534, '2023-08-16 05:02:34', '2023-08-16 05:02:34'),
(592, '2023-08-16', 'GUD-001', 'FF-003', 'KS', 'KSR-23080023', -1, '20000', 'Ardian', 0, 0, 9860, '2023-08-16 05:06:53', '2023-08-16 05:06:53'),
(593, '2023-08-16', 'GUD-001', 'FF-003', 'KS', 'KSR-23080024', -1, '20000', 'Ardian', 0, 0, 9859, '2023-08-16 05:13:51', '2023-08-16 05:13:51'),
(594, '2023-08-16', 'GUD-001', 'FF-003', 'KS', 'KSR-23080025', -1, '20000', 'Ardian', 0, 0, 9858, '2023-08-16 05:18:59', '2023-08-16 05:18:59'),
(595, '2023-08-16', 'GUD-001', 'FF-002', 'KS', 'KSR-23080026', -1, '18000', 'Ardian', 0, 0, 4533, '2023-08-16 05:31:50', '2023-08-16 05:31:50'),
(596, '2023-08-16', 'GUD-001', 'FF-003', 'KS', 'KSR-23080027', -1, '20000', 'Ardian', 0, 0, 9857, '2023-08-16 07:11:12', '2023-08-16 07:11:12'),
(597, '2023-08-16', 'GUD-001', 'FF-002', 'KS', 'KSR-23080028', -1, '18000', 'Ardian', 0, 0, 4532, '2023-08-16 07:11:27', '2023-08-16 07:11:27'),
(598, '2023-08-19', 'GUD-001', 'FF-002', 'KS', 'KSR-23080029', -1, '18000', 'Ardian', 0, 0, 4531, '2023-08-19 03:56:26', '2023-08-19 03:56:26'),
(599, '2023-08-19', 'GUD-001', 'FF-003', 'KS', 'KSR-23080030', -1, '20000', 'Ardian', 0, 0, 9856, '2023-08-19 06:15:34', '2023-08-19 06:15:34'),
(600, '2023-08-19', 'GUD-001', 'FF-002', 'KS', 'KSR-23080031', -1, '18000', 'Ardian', 0, 0, 4530, '2023-08-19 06:19:37', '2023-08-19 06:19:37'),
(601, '2023-08-19', 'GUD-001', 'FF-002', 'KS', 'KSR-23080032', -1, '18000', 'Ardian', 0, 0, 4529, '2023-08-19 07:43:45', '2023-08-19 07:43:45'),
(602, '2023-08-19', 'GUD-001', 'FF-003', 'KS', 'KSR-23080032', -1, '20000', 'Ardian', 0, 0, 9855, '2023-08-19 07:47:48', '2023-08-19 07:47:48'),
(603, '2023-08-19', 'GUD-001', 'FF-002', 'KS', 'KSR-23080001', -1, '18000', 'Ardian', 0, 0, 4528, '2023-08-19 08:00:35', '2023-08-19 08:00:35'),
(604, '2023-08-19', 'GUD-001', 'FF-003', 'KS', 'KSR-23080001', -1, '20000', 'Ardian', 0, 0, 9854, '2023-08-19 08:01:03', '2023-08-19 08:01:03'),
(605, '2023-08-29', 'GUD-001', 'FF-002', 'KS', 'KSR-23080002', -1, '18000', 'Ardian', 0, 0, 4527, '2023-08-29 07:08:47', '2023-08-29 07:08:47'),
(606, '2023-08-29', 'GUD-001', 'FF-002', 'KS', 'KSR-23080002', -1, '18000', 'Ardian', 0, 0, 4526, '2023-08-29 07:09:11', '2023-08-29 07:09:11'),
(607, '2023-08-29', 'GUD-001', 'FF-002', 'KS', 'KSR-23080002', -1, '18000', 'Ardian', 0, 0, 4525, '2023-08-29 07:13:40', '2023-08-29 07:13:40');

-- --------------------------------------------------------

--
-- Struktur dari tabel `koreksigajians`
--

CREATE TABLE `koreksigajians` (
  `KodeGaji` varchar(191) NOT NULL,
  `Kekurangan` varchar(10) NOT NULL,
  `Kelebihan` varchar(10) NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `lokasiitems`
--

CREATE TABLE `lokasiitems` (
  `KodeLokasi` varchar(191) NOT NULL,
  `Qty` double NOT NULL,
  `Konversi` double NOT NULL,
  `HargaRata` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `lokasis`
--

CREATE TABLE `lokasis` (
  `KodeLokasi` varchar(191) NOT NULL,
  `NamaLokasi` varchar(191) NOT NULL,
  `Tipe` varchar(191) NOT NULL,
  `Status` varchar(191) NOT NULL,
  `KodeUser` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `lokasis`
--

INSERT INTO `lokasis` (`KodeLokasi`, `NamaLokasi`, `Tipe`, `Status`, `KodeUser`, `created_at`, `updated_at`) VALUES
('GUD-001', 'CV. Suka Makmur', 'INV', 'OPN', 'admin', '2022-04-14 00:13:14', '2022-11-11 05:27:07'),
('GUD-002', 'CV.MajuMundur', 'INV', 'OPN', 'admin', '2022-11-11 05:26:41', '2022-11-11 05:26:41');

-- --------------------------------------------------------

--
-- Struktur dari tabel `matauangs`
--

CREATE TABLE `matauangs` (
  `KodeMataUang` varchar(191) NOT NULL,
  `NamaMataUang` varchar(191) NOT NULL,
  `Nilai` double NOT NULL,
  `Status` varchar(191) NOT NULL,
  `KodeUser` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `matauangs`
--

INSERT INTO `matauangs` (`KodeMataUang`, `NamaMataUang`, `Nilai`, `Status`, `KodeUser`, `created_at`, `updated_at`) VALUES
('Rp', 'Rupiah', 1, 'OPN', 'admin', '2022-04-14 00:02:47', '2022-04-14 00:02:47');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `ongkirs`
--

CREATE TABLE `ongkirs` (
  `ID` int(11) NOT NULL,
  `Kode` varchar(191) DEFAULT NULL,
  `Modal` varchar(10) DEFAULT NULL,
  `TarifPelanggan` varchar(10) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `ongkirs`
--

INSERT INTO `ongkirs` (`ID`, `Kode`, `Modal`, `TarifPelanggan`, `created_at`, `updated_at`) VALUES
(1, 'KSR-22110001', '0', '0', '2022-11-11 06:52:22', '2022-11-11 06:52:22'),
(2, 'KSR-22120001', '0', '0', '2022-12-06 16:47:06', '2022-12-06 16:47:06'),
(3, 'KSR-22120002', '0', '0', '2022-12-06 17:06:13', '2022-12-06 17:06:13'),
(4, 'KSR-22120003', '0', '0', '2022-12-06 17:06:57', '2022-12-06 17:06:57'),
(5, 'KSR-23040003', '0', '0', '2023-04-13 15:11:59', '2023-04-13 15:11:59'),
(6, 'KSR-23040004', '0', '0', '2023-04-28 16:37:15', '2023-04-28 16:37:15'),
(7, 'KSR-23040005', '0', '0', '2023-04-28 17:45:19', '2023-04-28 17:45:19');

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pelanggans`
--

CREATE TABLE `pelanggans` (
  `KodePelanggan` varchar(191) NOT NULL,
  `NamaPelanggan` varchar(191) NOT NULL,
  `Kontak` varchar(191) NOT NULL,
  `Handphone` varchar(191) DEFAULT NULL,
  `Email` varchar(191) DEFAULT NULL,
  `NIK` varchar(191) DEFAULT NULL,
  `NPWP` varchar(191) DEFAULT NULL,
  `LimitPiutang` double DEFAULT NULL,
  `Diskon` double DEFAULT NULL,
  `Status` varchar(191) NOT NULL,
  `KodeLokasi` varchar(191) DEFAULT NULL,
  `KodeUser` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pelanggans`
--

INSERT INTO `pelanggans` (`KodePelanggan`, `NamaPelanggan`, `Kontak`, `Handphone`, `Email`, `NIK`, `NPWP`, `LimitPiutang`, `Diskon`, `Status`, `KodeLokasi`, `KodeUser`, `created_at`, `updated_at`) VALUES
('PLG-001', 'Penjaringan', '081219491977', NULL, NULL, '35781044002281', '-', NULL, NULL, 'DEL', NULL, 'may', '2022-04-15 05:17:57', '2022-04-20 09:11:59'),
('PLG-002', 'ARIADI', '0813-5715-4767', NULL, NULL, '-', '-', NULL, NULL, 'DEL', NULL, 'may', '2022-04-20 09:18:31', '2022-04-22 04:42:39'),
('PLG-003', 'BABATAN', '0812-3188-8121', NULL, NULL, '-', '-', NULL, NULL, 'DEL', NULL, 'may', '2022-04-20 09:19:57', '2022-05-19 09:12:50'),
('PLG-004', 'KALIANAK', '0812-3188-8121', NULL, NULL, '-', '-', NULL, NULL, 'DEL', NULL, 'may', '2022-04-20 09:20:55', '2022-05-19 09:12:56'),
('PLG-005', 'YUDHI SETIADI', '0858-9553-9585', NULL, NULL, '3578273005830001', '76.303.684.5-604.000', NULL, NULL, 'OPN', NULL, 'may', '2022-04-20 09:21:45', '2022-05-14 07:16:07'),
('PLG-006', 'KAPASAN', '0812-3138-727', NULL, NULL, '-', '-', NULL, NULL, 'DEL', NULL, 'may', '2022-04-20 09:22:32', '2022-05-19 09:13:01'),
('PLG-007', 'KR.ASEM GUDANG', '0812-3188-8121', NULL, NULL, '-', '-', NULL, NULL, 'DEL', NULL, 'may', '2022-04-20 09:23:27', '2022-05-19 09:13:05'),
('PLG-008', 'KR.ASEM TOKO', '0812-3188-8121', NULL, NULL, '-', '-', NULL, NULL, 'DEL', NULL, 'may', '2022-04-20 09:26:58', '2022-05-19 09:13:09'),
('PLG-009', 'CV. DHARMA MULIA', '0812-9904-2286', NULL, NULL, '-', '01.438.557.9-612.000', NULL, NULL, 'OPN', NULL, 'may', '2022-04-20 09:28:19', '2022-05-14 07:26:21'),
('PLG-010', 'MEDOKAN', '0812-3188-8121', NULL, NULL, '-', '-', NULL, NULL, 'DEL', NULL, 'may', '2022-04-20 09:29:03', '2022-05-19 09:13:14'),
('PLG-011', 'MULYOREJO', '0812-3188-8121', NULL, NULL, '-', '-', NULL, NULL, 'DEL', NULL, 'may', '2022-04-20 09:30:31', '2022-05-19 09:13:19'),
('PLG-012', 'OKTA', '0897-0888-880', NULL, NULL, '-', '-', NULL, NULL, 'DEL', NULL, 'may', '2022-04-20 09:31:45', '2022-05-19 09:13:23'),
('PLG-013', 'SILVI', '0812-3036-588', NULL, NULL, '-', '-', NULL, NULL, 'DEL', NULL, 'may', '2022-04-20 09:33:48', '2022-05-19 09:13:27'),
('PLG-014', 'UNTUNG SUPRASETYO', '0812-3136-254', NULL, NULL, '-', '24.625.532.7-617.000', NULL, NULL, 'OPN', NULL, 'may', '2022-04-20 09:34:51', '2022-05-19 09:12:44'),
('PLG-015', 'PENJARINGAN', '-', NULL, NULL, '-', '-', NULL, NULL, 'DEL', NULL, 'rika', '2022-04-28 18:26:07', '2022-05-19 09:13:37'),
('PLG-016', 'CV. PRIMARAYA SUKSES', '0813-5715-4767', NULL, NULL, '-', '83.692.465.4-606.000', NULL, NULL, 'OPN', NULL, 'may', '2022-05-14 07:26:08', '2022-05-14 07:26:08'),
('PLG-017', 'WENNY TANDERIEL', '0812-3188-8121', NULL, NULL, '-', '64.316.261.3-619.000', NULL, NULL, 'OPN', NULL, 'may', '2022-05-19 08:47:51', '2022-05-19 08:47:51'),
('PLG-018', 'TARSISIUS TJATUR OKTARIANTO', '0897-0888-880', NULL, NULL, '3578201610640001', '-', NULL, NULL, 'OPN', NULL, 'may', '2022-05-20 04:04:52', '2022-05-20 04:04:52'),
('PLG-019', 'christ', 'christ', NULL, NULL, '139458372848', '0', NULL, NULL, 'OPN', NULL, 'admin', '2023-03-02 16:49:39', '2023-03-02 16:49:39');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pelunasanhutangs`
--

CREATE TABLE `pelunasanhutangs` (
  `KodePelunasanHutangID` int(11) NOT NULL,
  `KodePelunasanHutang` varchar(191) NOT NULL,
  `Tanggal` date NOT NULL,
  `Status` varchar(191) NOT NULL,
  `KodeHutang` varchar(191) NOT NULL,
  `KodeInvoice` varchar(191) NOT NULL,
  `KodeBayar` varchar(191) NOT NULL,
  `TipeBayar` varchar(191) NOT NULL,
  `Jumlah` double NOT NULL,
  `Keterangan` varchar(191) NOT NULL,
  `KodeMataUang` varchar(191) NOT NULL,
  `KodeUser` varchar(191) NOT NULL,
  `KodeSupplier` varchar(191) NOT NULL,
  `KodeKasBank` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pelunasanhutangs`
--

INSERT INTO `pelunasanhutangs` (`KodePelunasanHutangID`, `KodePelunasanHutang`, `Tanggal`, `Status`, `KodeHutang`, `KodeInvoice`, `KodeBayar`, `TipeBayar`, `Jumlah`, `Keterangan`, `KodeMataUang`, `KodeUser`, `KodeSupplier`, `KodeKasBank`, `created_at`, `updated_at`) VALUES
(1, 'PL-22030001', '2022-03-22', 'CFM', '', '240', 'Cash', 'Cash', 240000, '-', 'Rp', 'KASIR', 'SUP', 'KK-22030482', '2022-03-22 07:00:08', '2022-03-22 07:00:08');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pelunasanpiutangs`
--

CREATE TABLE `pelunasanpiutangs` (
  `KodePelunasanPiutang` varchar(191) NOT NULL,
  `Tanggal` date NOT NULL,
  `Status` varchar(191) NOT NULL,
  `KodePiutang` varchar(191) NOT NULL,
  `KodeInvoice` varchar(191) NOT NULL,
  `KodeBayar` varchar(191) NOT NULL,
  `TipeBayar` varchar(191) NOT NULL,
  `Jumlah` double NOT NULL,
  `Keterangan` varchar(191) NOT NULL,
  `KodeMataUang` varchar(191) NOT NULL,
  `KodeUser` varchar(191) NOT NULL,
  `KodeSupplier` varchar(191) NOT NULL,
  `KodeKasBank` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `KodePelunasanPiutangID` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pelunasanpiutangs`
--

INSERT INTO `pelunasanpiutangs` (`KodePelunasanPiutang`, `Tanggal`, `Status`, `KodePiutang`, `KodeInvoice`, `KodeBayar`, `TipeBayar`, `Jumlah`, `Keterangan`, `KodeMataUang`, `KodeUser`, `KodeSupplier`, `KodeKasBank`, `created_at`, `updated_at`, `KodePelunasanPiutangID`) VALUES
('PL-22040001', '2022-04-13', 'CFM', '', '2', 'Cash', 'Cash', 435600, 'pelunasan', 'Rp', 'admin', 'SUP', 'KM-22040369', '2022-04-13 15:11:12', '2022-04-13 15:11:12', 1),
('PL-22050001', '2022-05-10', 'CFM', '', '2', 'Transfer', 'Transfer', 2099400, 'Pelunasan nota', 'Rp', 'may', 'SUP', 'KM-22050001', '2022-05-10 23:53:51', '2022-05-10 23:53:51', 2),
('PL-22050002', '2022-05-13', 'CFM', '', '3', 'Transfer', 'Transfer', 2622000, 'Pelunasan piutang', 'Rp', 'may', 'SUP', 'KM-22050002', '2022-05-13 05:18:19', '2022-05-13 05:18:19', 3),
('PL-22050003', '2022-05-13', 'CFM', '', '6', 'Transfer', 'Transfer', 2670000, 'Pelunasan piutang', 'Rp', 'may', 'SUP', 'KM-22050003', '2022-05-13 05:18:49', '2022-05-13 05:18:49', 4),
('PL-22050004', '2022-05-13', 'CFM', '', '4', 'Transfer', 'Transfer', 4788000, '-', 'Rp', 'may', 'SUP', 'KM-22050004', '2022-05-13 05:19:33', '2022-05-13 05:19:33', 5),
('PL-22050005', '2022-05-13', 'CFM', '', '11', 'Transfer', 'Transfer', 881000, '-', 'Rp', 'may', 'SUP', 'KM-22050005', '2022-05-13 05:20:03', '2022-05-13 05:20:03', 6),
('PL-22050006', '2022-05-13', 'CFM', '', '12', 'Transfer', 'Transfer', 1164900, '-', 'Rp', 'may', 'SUP', 'KM-22050006', '2022-05-13 05:20:31', '2022-05-13 05:20:31', 7),
('PL-22050007', '2022-05-13', 'CFM', '', '13', 'Transfer', 'Transfer', 1059000, '-', 'Rp', 'may', 'SUP', 'KM-22050007', '2022-05-13 05:21:25', '2022-05-13 05:21:25', 8),
('PL-22050008', '2022-05-13', 'CFM', '', '20', 'Transfer', 'Transfer', 2535000, '-', 'Rp', 'may', 'SUP', 'KM-22050008', '2022-05-13 05:23:39', '2022-05-13 05:23:39', 9),
('PL-22050009', '2022-05-13', 'CFM', '', '23', 'Transfer', 'Transfer', 2296000, 'Pelunasan piutang', 'Rp', 'may', 'SUP', 'KM-22050009', '2022-05-13 05:24:05', '2022-05-13 05:24:05', 10),
('PL-22050010', '2022-05-13', 'CFM', '', '24', 'Cash', 'Cash', 1690000, 'Pelunasan piutang', 'Rp', 'may', 'SUP', 'KM-22050010', '2022-05-13 05:25:52', '2022-05-13 05:25:52', 11),
('PL-22050011', '2022-05-13', 'CFM', '', '29', 'Transfer', 'Transfer', 2118000, 'Pelunasan piutang', 'Rp', 'may', 'SUP', 'KM-22050011', '2022-05-13 05:26:17', '2022-05-13 05:26:17', 12),
('PL-22050012', '2022-05-13', 'CFM', '', '32', 'Transfer', 'Transfer', 1406000, 'Pelunasan piutang', 'Rp', 'may', 'SUP', 'KM-22050012', '2022-05-13 05:26:44', '2022-05-13 05:26:44', 13),
('PL-22050013', '2022-05-13', 'CFM', '', '37', 'Transfer', 'Transfer', 1059000, 'Pelunasan piutang', 'Rp', 'may', 'SUP', 'KM-22050013', '2022-05-13 06:41:48', '2022-05-13 06:41:48', 14),
('PL-22050014', '2022-05-13', 'CFM', '', '1', 'Transfer', 'Transfer', 974500, 'Pelunasan piutang', 'Rp', 'may', 'SUP', 'KM-22050014', '2022-05-13 09:41:16', '2022-05-13 09:41:16', 15),
('PL-22050015', '2022-05-13', 'CFM', '', '8', 'Transfer', 'Transfer', 2139000, 'Pelunasan piutang', 'Rp', 'may', 'SUP', 'KM-22050015', '2022-05-13 09:41:51', '2022-05-13 09:41:51', 16),
('PL-22050016', '2022-05-13', 'CFM', '', '10', 'Transfer', 'Transfer', 534000, 'Pelunasan piutang', 'Rp', 'may', 'SUP', 'KM-22050016', '2022-05-13 09:42:14', '2022-05-13 09:42:14', 17),
('PL-22050017', '2022-05-13', 'CFM', '', '21', 'Transfer', 'Transfer', 890000, 'Pelunasan piutang', 'Rp', 'may', 'SUP', 'KM-22050017', '2022-05-13 09:42:40', '2022-05-13 09:42:40', 18),
('PL-22050018', '2022-05-13', 'CFM', '', '25', 'Transfer', 'Transfer', 703000, 'Pelunasan piutang', 'Rp', 'may', 'SUP', 'KM-22050018', '2022-05-13 09:43:11', '2022-05-13 09:43:11', 19),
('PL-22050019', '2022-05-13', 'CFM', '', '30', 'Transfer', 'Transfer', 356000, 'Pelunasan piutang', 'Rp', 'may', 'SUP', 'KM-22050019', '2022-05-13 09:44:10', '2022-05-13 09:44:10', 20),
('PL-22050020', '2022-05-13', 'CFM', '', '33', 'Transfer', 'Transfer', 356000, 'Pelunasan piutang', 'Rp', 'may', 'SUP', 'KM-22050020', '2022-05-13 09:44:54', '2022-05-13 09:44:54', 21),
('PL-22050021', '2022-05-13', 'CFM', '', '38', 'Transfer', 'Transfer', 525000, 'Pelunasan piutang', 'Rp', 'may', 'SUP', 'KM-22050021', '2022-05-13 09:45:20', '2022-05-13 09:45:20', 22),
('PL-22050022', '2022-05-13', 'CFM', '', '22', 'Transfer', 'Transfer', 8095000, 'Pelunasan piutang', 'Rp', 'may', 'SUP', 'KM-22050022', '2022-05-13 09:46:09', '2022-05-13 09:46:09', 23),
('PL-22050023', '2022-05-13', 'CFM', '', '31', 'Transfer', 'Transfer', 4985000, 'Pelunasan piutang', 'Rp', 'may', 'SUP', 'KM-22050023', '2022-05-13 09:46:38', '2022-05-13 09:46:38', 24),
('PL-22050024', '2022-05-13', 'CFM', '', '16', 'Transfer', 'Transfer', 4396000, 'Pelunasan piutang', 'Rp', 'may', 'SUP', 'KM-22050024', '2022-05-13 09:47:11', '2022-05-13 09:47:11', 25),
('PL-22050025', '2022-05-13', 'CFM', '', '39', 'Transfer', 'Transfer', 4049000, 'Pelunasan piutang', 'Rp', 'may', 'SUP', 'KM-22050025', '2022-05-13 09:47:56', '2022-05-13 09:47:56', 26),
('PL-22050026', '2022-05-13', 'CFM', '', '27', 'Transfer', 'Transfer', 1771000, 'Pelunasan piutang', 'Rp', 'may', 'SUP', 'KM-22050026', '2022-05-13 09:48:23', '2022-05-13 09:48:23', 27),
('PL-22050027', '2022-05-13', 'CFM', '', '14', 'Transfer', 'Transfer', 1780000, 'Pelunasan piutang', 'Rp', 'may', 'SUP', 'KM-22050027', '2022-05-13 09:48:49', '2022-05-13 09:48:49', 28),
('PL-22050028', '2022-05-13', 'CFM', '', '34', 'Transfer', 'Transfer', 540000, 'Pelunasan piutang', 'Rp', 'may', 'SUP', 'KM-22050028', '2022-05-13 09:49:21', '2022-05-13 09:49:21', 29),
('PL-22050029', '2022-05-13', 'CFM', '', '19', 'Transfer', 'Transfer', 890000, 'Pelunasan piutang', 'Rp', 'may', 'SUP', 'KM-22050029', '2022-05-13 09:49:50', '2022-05-13 09:49:50', 30),
('PL-22050030', '2022-05-13', 'CFM', '', '7', 'Transfer', 'Transfer', 4583000, 'Pelunasan piutang', 'Rp', 'may', 'SUP', 'KM-22050030', '2022-05-13 09:50:40', '2022-05-13 09:50:40', 31),
('PL-22050031', '2022-05-13', 'CFM', '', '9', 'Transfer', 'Transfer', 5295000, 'Pelunasan piutang', 'Rp', 'may', 'SUP', 'KM-22050031', '2022-05-13 09:51:15', '2022-05-13 09:51:15', 32),
('PL-22050032', '2022-05-13', 'CFM', '', '15', 'Transfer', 'Transfer', 712000, 'Pelunasan piutang', 'Rp', 'may', 'SUP', 'KM-22050032', '2022-05-13 09:52:20', '2022-05-13 09:52:20', 33),
('PL-22050033', '2022-05-13', 'CFM', '', '15', 'Transfer', 'Transfer', 6408000, 'Pelunasan piutang', 'Rp', 'may', 'SUP', 'KM-22050033', '2022-05-13 09:52:42', '2022-05-13 09:52:42', 34),
('PL-22050034', '2022-05-13', 'CFM', '', '5', 'Transfer', 'Transfer', 2662000, 'Pelunasan piutang', 'Rp', 'may', 'SUP', 'KM-22050034', '2022-05-13 09:53:12', '2022-05-13 09:53:12', 35),
('PL-22050035', '2022-05-13', 'CFM', '', '18', 'Transfer', 'Transfer', 4410000, 'Pelunasan piutang', 'Rp', 'may', 'SUP', 'KM-22050035', '2022-05-13 10:01:33', '2022-05-13 10:01:33', 36),
('PL-22050036', '2022-05-13', 'CFM', '', '35', 'Transfer', 'Transfer', 4360000, 'Pelunasan piutang', 'Rp', 'may', 'SUP', 'KM-22050036', '2022-05-13 10:02:17', '2022-05-13 10:02:17', 37),
('PL-22050037', '2022-05-13', 'CFM', '', '28', 'Transfer', 'Transfer', 2638000, 'Pelunasan piutang', 'Rp', 'may', 'SUP', 'KM-22050037', '2022-05-13 10:02:45', '2022-05-13 10:02:45', 38),
('PL-22050038', '2022-05-13', 'CFM', '', '36', 'Transfer', 'Transfer', 2646000, 'Pelunasan piutang', 'Rp', 'may', 'SUP', 'KM-22050038', '2022-05-13 10:04:18', '2022-05-13 10:04:18', 39),
('PL-23040001', '2023-04-28', 'CFM', '', '75', 'Cash', 'Cash', 5000, '-', 'Rp', 'KASIR', 'SUP', 'KM-23040004', '2023-04-28 17:50:59', '2023-04-28 17:50:59', 40);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembelianlangsungdetails`
--

CREATE TABLE `pembelianlangsungdetails` (
  `KodePembelianLangsung` varchar(191) NOT NULL,
  `KodeItem` varchar(191) NOT NULL,
  `KodeSatuan` varchar(191) NOT NULL,
  `Qty` double NOT NULL,
  `Harga` double NOT NULL,
  `Keterangan` varchar(191) NOT NULL,
  `NoUrut` int(11) NOT NULL,
  `Subtotal` double NOT NULL,
  `Diskon` double NOT NULL,
  `NilaiDiskon` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembelianlangsungs`
--

CREATE TABLE `pembelianlangsungs` (
  `KodePembelianLangsung` varchar(191) NOT NULL,
  `Tanggal` date NOT NULL,
  `KodeLokasi` varchar(191) NOT NULL,
  `KodeMataUang` varchar(191) NOT NULL,
  `KodeUser` varchar(191) NOT NULL,
  `Status` varchar(191) NOT NULL,
  `Total` double NOT NULL,
  `PPN` varchar(191) NOT NULL,
  `NilaiPPN` double NOT NULL,
  `Printed` double NOT NULL,
  `Diskon` double NOT NULL,
  `NilaiDiskon` double NOT NULL,
  `Subtotal` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pemesananpembeliandetails`
--

CREATE TABLE `pemesananpembeliandetails` (
  `id` bigint(20) NOT NULL,
  `KodePO` varchar(100) NOT NULL,
  `KodeItem` varchar(100) NOT NULL,
  `KodeSatuan` varchar(191) NOT NULL,
  `Qty` double NOT NULL,
  `Harga` double NOT NULL,
  `NoUrut` int(11) NOT NULL,
  `Subtotal` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `pemesananpembeliandetails`
--

INSERT INTO `pemesananpembeliandetails` (`id`, `KodePO`, `KodeItem`, `KodeSatuan`, `Qty`, `Harga`, `NoUrut`, `Subtotal`, `created_at`, `updated_at`) VALUES
(1, 'PO-122040001', 'BB-001', 'SAK', 1, 12000, 1, 12000, '2022-04-14 00:29:50', '2022-04-14 00:29:50'),
(2, 'PO-022110001', 'FF-012', 'Dus', 2, 300000, 1, 600000, '2022-11-11 05:45:17', '2022-11-11 05:45:17'),
(3, 'PO-022110002', 'FF-012', 'PCS', 10, 30000, 1, 300000, '2022-11-11 06:48:40', '2022-11-11 06:48:40'),
(4, 'PO-022120001', 'FF-003', 'PAK', 10, 15000, 1, 150000, '2022-12-06 17:17:25', '2022-12-06 17:17:25'),
(5, 'PO-023030001', 'FF-015', 'PCS', 10, 10000, 1, 100000, '2023-03-02 16:23:35', '2023-03-02 16:23:35'),
(6, 'PO-023030001', 'FF-013', 'Dus', 10, 8000, 2, 80000, '2023-03-02 16:23:35', '2023-03-02 16:23:35'),
(7, 'PO-023040001', 'BB-003', 'PCS', 100, 30000, 1, 3000000, '2023-04-13 14:49:17', '2023-04-13 14:49:17'),
(8, 'PO-023040002', 'FF-013', 'Dus', 10, 8000, 1, 80000, '2023-04-28 17:52:42', '2023-04-28 17:52:42'),
(9, 'PO-023050001', 'FF-012', 'PCS', 8, 30000, 1, 240000, '2023-05-23 12:45:16', '2023-05-23 12:45:16');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pemesananpembelians`
--

CREATE TABLE `pemesananpembelians` (
  `id` int(11) NOT NULL,
  `KodePO` varchar(191) NOT NULL,
  `KodeLokasi` varchar(191) DEFAULT NULL,
  `KodeMataUang` varchar(191) NOT NULL,
  `Status` varchar(191) DEFAULT NULL,
  `KodeUser` varchar(191) DEFAULT NULL,
  `Total` double DEFAULT NULL,
  `PPN` varchar(191) DEFAULT NULL,
  `NilaiPPN` double DEFAULT NULL,
  `Printed` double DEFAULT NULL,
  `Diskon` double DEFAULT NULL,
  `NilaiDiskon` double DEFAULT NULL,
  `Subtotal` double DEFAULT NULL,
  `KodeSupplier` varchar(191) NOT NULL,
  `Expired` varchar(191) DEFAULT NULL,
  `Tanggal` date DEFAULT NULL,
  `Keterangan` varchar(191) DEFAULT NULL,
  `term` varchar(191) DEFAULT NULL,
  `KodeSJ` varchar(191) DEFAULT NULL,
  `NoFaktur` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pemesananpembelians`
--

INSERT INTO `pemesananpembelians` (`id`, `KodePO`, `KodeLokasi`, `KodeMataUang`, `Status`, `KodeUser`, `Total`, `PPN`, `NilaiPPN`, `Printed`, `Diskon`, `NilaiDiskon`, `Subtotal`, `KodeSupplier`, `Expired`, `Tanggal`, `Keterangan`, `term`, `KodeSJ`, `NoFaktur`, `created_at`, `updated_at`) VALUES
(1, 'PO-122040001', 'GUD-001', 'Rp', 'DEL', 'admin', 13200, 'ya', 1200, NULL, 0, 0, 12000, 'SUP-001', '0', '2022-04-13', '-', '1', NULL, '-', '2022-04-14 00:29:50', '2022-04-14 00:29:50'),
(2, 'PO-022110001', 'GUD-001', 'Rp', 'CLS', 'admin', 600000, 'tidak', 0, NULL, 0, 0, 600000, 'SUP-001', '0', '2022-11-11', NULL, '0', NULL, '-', '2022-11-11 05:45:17', '2022-11-11 05:49:26'),
(3, 'PO-022110002', 'GUD-001', 'Rp', 'CFM', 'admin', 300000, 'tidak', 0, NULL, 0, 0, 300000, 'SUP-001', '0', '2022-11-11', NULL, '0', NULL, '-', '2022-11-11 06:48:40', '2022-11-11 06:48:53'),
(4, 'PO-022120001', 'GUD-001', 'Rp', 'CFM', 'admin', 150000, 'tidak', 0, NULL, 0, 0, 150000, 'SUP-001', '0', '2022-12-07', NULL, '0', NULL, '-', '2022-12-06 17:17:25', '2022-12-06 17:17:36'),
(5, 'PO-023030001', 'GUD-001', 'Rp', 'CFM', 'admin', 180000, 'tidak', 0, NULL, 0, 0, 180000, 'SUP-001', '0', '2023-03-02', NULL, '0', NULL, '-', '2023-03-02 16:23:35', '2023-03-02 16:24:04'),
(6, 'PO-023040001', 'GUD-001', 'Rp', 'CFM', 'admin', 3000000, 'tidak', 0, NULL, 0, 0, 3000000, 'SUP-001', '0', '2023-04-13', NULL, '0', NULL, '-', '2023-04-13 14:49:17', '2023-04-13 14:49:23'),
(7, 'PO-023040002', 'GUD-001', 'Rp', 'CFM', 'KASIR', 80000, 'tidak', 0, NULL, 0, 0, 80000, 'SUP-001', '0', '2023-04-28', NULL, '0', NULL, '-', '2023-04-28 17:52:42', '2023-04-28 17:52:55'),
(8, 'PO-023050001', 'GUD-002', 'Rp', 'CFM', 'admin', 240000, 'tidak', 0, NULL, 0, 0, 240000, 'SUP-001', '0', '2023-05-23', NULL, '0', NULL, '-', '2023-05-23 12:45:16', '2023-05-23 12:45:26');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pemesananpenjualans`
--

CREATE TABLE `pemesananpenjualans` (
  `id` int(11) NOT NULL,
  `KodeSO` varchar(191) NOT NULL,
  `Tanggal` date NOT NULL,
  `KodeLokasi` varchar(191) NOT NULL,
  `KodeMataUang` varchar(191) NOT NULL,
  `Status` varchar(191) NOT NULL,
  `KodeUser` varchar(191) DEFAULT NULL,
  `Total` double NOT NULL,
  `PPN` varchar(191) NOT NULL,
  `NilaiPPN` double DEFAULT NULL,
  `Printed` double DEFAULT NULL,
  `Diskon` double DEFAULT 0,
  `NilaiDiskon` double DEFAULT 0,
  `Subtotal` double DEFAULT NULL,
  `KodePelanggan` varchar(191) NOT NULL,
  `Expired` double DEFAULT NULL,
  `KodeSales` varchar(191) DEFAULT NULL,
  `POPelanggan` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `tgl_kirim` date DEFAULT NULL,
  `term` varchar(191) DEFAULT NULL,
  `keterangan` varchar(191) DEFAULT NULL,
  `NoFaktur` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pemesananpenjualans`
--

INSERT INTO `pemesananpenjualans` (`id`, `KodeSO`, `Tanggal`, `KodeLokasi`, `KodeMataUang`, `Status`, `KodeUser`, `Total`, `PPN`, `NilaiPPN`, `Printed`, `Diskon`, `NilaiDiskon`, `Subtotal`, `KodePelanggan`, `Expired`, `KodeSales`, `POPelanggan`, `created_at`, `updated_at`, `tgl_kirim`, `term`, `keterangan`, `NoFaktur`) VALUES
(1, 'SO-022040001', '2022-04-23', 'GUD-001', 'Rp', 'CLS', 'may', 1762000, 'tidak', 0, 0, 0, 0, 1762000, 'PLG-007', 0, '0', 'PO', '2022-04-23 20:34:41', '2022-04-23 21:15:11', '2022-04-23', '-', NULL, NULL),
(2, 'SO-022040002', '2022-04-26', 'GUD-001', 'Rp', 'DEL', 'may', 2322000, 'tidak', 0, 0, 0, 0, 2322000, 'PLG-005', 0, '0', 'PO', '2022-04-26 16:10:42', '2022-04-26 16:13:07', '2022-04-26', '-', '-', NULL),
(3, 'SO-022040003', '2022-04-26', 'GUD-001', 'Rp', 'DEL', 'may', 2235000, 'tidak', 0, 0, 0, 0, 2235000, 'PLG-007', 0, '0', 'PO', '2022-04-26 16:18:06', '2022-04-26 16:19:07', '2022-04-26', '-', '-', '-'),
(4, 'SO-022040004', '2022-04-26', 'GUD-001', 'Rp', 'DEL', 'may', 864500, 'tidak', 0, 0, 0, 0, 864500, 'PLG-008', 0, '0', 'PO', '2022-04-26 16:23:15', '2022-04-26 16:24:15', '2022-04-26', '-', '-', NULL),
(5, 'SO-022040005', '2022-04-25', 'GUD-001', 'Rp', 'CLS', 'may', 974500, 'tidak', 0, 0, 0, 0, 974500, 'PLG-008', 0, '0', 'PO', '2022-04-26 18:11:07', '2022-04-26 18:12:36', '2022-04-25', '0', '-', NULL),
(6, 'SO-022040006', '2022-04-25', 'GUD-001', 'Rp', 'CLS', 'may', 2535000, 'tidak', 0, 0, 0, 0, 2535000, 'PLG-007', 0, '0', 'PO', '2022-04-26 18:17:42', '2022-04-26 18:18:23', '2022-04-25', '-', '-', NULL),
(7, 'SO-022040007', '2022-04-25', 'GUD-001', 'Rp', 'CLS', 'may', 2622000, 'tidak', 0, 0, 0, 0, 2622000, 'PLG-005', 0, '0', 'PO', '2022-04-26 18:22:31', '2022-04-26 18:23:40', '2022-04-25', '-', '-', NULL),
(8, 'SO-022040008', '2022-04-27', 'GUD-001', 'Rp', 'DEL', 'may', 2848000, 'tidak', 0, 0, 0, 0, 2848000, 'PLG-007', 0, '0', 'PO', '2022-04-27 18:24:18', '2022-04-27 18:24:23', '2022-04-27', '-', '-', NULL),
(9, 'SO-022040009', '2022-04-26', 'GUD-001', 'Rp', 'CLS', 'may', 4788000, 'tidak', 0, 0, 0, 0, 4788000, 'PLG-007', 0, '0', 'PO', '2022-04-27 18:45:18', '2022-04-27 18:46:29', '2022-04-26', '-', '-', NULL),
(10, 'SO-022040010', '2022-04-28', 'GUD-001', 'Rp', 'CLS', 'may', 2662000, 'tidak', 0, 0, 0, 0, 2662000, 'PLG-014', 0, '0', 'PO', '2022-04-28 17:58:34', '2022-04-28 18:00:29', '2022-04-28', '-', '-', NULL),
(11, 'SO-022040011', '2022-04-27', 'GUD-001', 'Rp', 'CLS', 'rika', 2670000, 'tidak', 0, 0, 0, 0, 2670000, 'PLG-005', 0, '0', 'PO', '2022-04-28 18:21:15', '2022-04-28 18:23:27', '2022-04-27', '-', '-', NULL),
(12, 'SO-022040012', '2022-04-27', 'GUD-001', 'Rp', 'CLS', 'rika', 4583000, 'tidak', 0, 0, 0, 0, 4583000, 'PLG-015', 0, '0', 'PO', '2022-04-28 18:29:50', '2022-04-28 18:31:41', '2022-04-27', '-', '-', NULL),
(13, 'SO-022040013', '2022-04-27', 'GUD-001', 'Rp', 'CLS', 'rika', 2139000, 'tidak', 0, 0, 0, 0, 2139000, 'PLG-008', 0, '0', 'PO', '2022-04-28 19:23:57', '2022-04-28 19:25:21', '2022-04-27', '-', '-', NULL),
(14, 'SO-022050001', '2022-05-05', 'GUD-001', 'Rp', 'DEL', 'rika', 1059000, 'tidak', 0, 0, 0, 0, 1059000, 'PLG-007', 0, '0', 'PO', '2022-05-06 18:09:25', '2022-05-06 18:10:12', '2022-05-05', '-', '-', NULL),
(15, 'SO-022050002', '2022-05-06', 'GUD-001', 'Rp', 'CLS', 'rika', 534000, 'tidak', 0, 0, 0, 0, 534000, 'PLG-008', 0, '0', 'PO', '2022-05-06 18:19:16', '2022-05-06 19:02:43', '2022-05-06', '-', '-', NULL),
(16, 'SO-022050003', '2022-05-06', 'GUD-001', 'Rp', 'CLS', 'rika', 5295000, 'tidak', 0, 0, 0, 0, 5295000, 'PLG-015', 0, '0', 'PO', '2022-05-06 18:23:44', '2022-05-06 18:34:34', '2022-05-06', '-', '-', NULL),
(17, 'SO-022050004', '2022-05-06', 'GUD-001', 'Rp', 'DEL', 'rika', 881000, 'tidak', 0, 0, 0, 0, 881000, 'PLG-007', 0, '0', 'PO', '2022-05-06 18:26:43', '2022-05-06 19:02:47', '2022-05-06', '-', '-', NULL),
(18, 'SO-122050001', '2022-05-06', 'GUD-001', 'Rp', 'DEL', 'rika', 1059000, 'ya', 0, 0, 0, 0, 1059000, 'PLG-007', 0, '0', 'PO', '2022-05-06 19:09:34', '2022-05-06 19:12:07', '2022-05-06', '-', '-', '-'),
(19, 'SO-022050005', '2022-05-06', 'GUD-001', 'Rp', 'CLS', 'rika', 1059000, 'tidak', 0, 0, 0, 0, 1059000, 'PLG-007', 0, '0', 'PO', '2022-05-06 19:16:28', '2022-05-06 19:18:56', '2022-05-06', '-', '-', NULL),
(20, 'SO-022050006', '2022-05-09', 'GUD-001', 'Rp', 'CLS', 'rika', 4396000, 'tidak', 0, 0, 0, 0, 4396000, 'PLG-010', 0, '0', 'PO', '2022-05-09 16:51:25', '2022-05-09 17:01:54', '2022-05-09', '-', '-', NULL),
(21, 'SO-022050007', '2022-05-09', 'GUD-001', 'Rp', 'CLS', 'rika', 7120000, 'tidak', 0, 0, 0, 0, 7120000, 'PLG-015', 0, '0', 'PO', '2022-05-09 16:54:00', '2022-05-09 17:01:49', '2022-05-09', '-', '-', NULL),
(22, 'SO-022050008', '2022-05-09', 'GUD-001', 'Rp', 'CLS', 'rika', 1780000, 'tidak', 0, 0, 0, 0, 1780000, 'PLG-011', 0, '0', 'PO', '2022-05-09 16:56:42', '2022-05-09 17:01:45', '2022-05-09', '-', '-', NULL),
(23, 'SO-022050009', '2022-05-09', 'GUD-001', 'Rp', 'CLS', 'rika', 4410000, 'tidak', 0, 0, 0, 0, 4410000, 'PLG-014', 0, '0', 'PO', '2022-05-09 17:58:38', '2022-05-09 18:44:38', '2022-05-09', '-', '-', NULL),
(24, 'SO-022050010', '2022-05-09', 'GUD-001', 'Rp', 'CLS', 'rika', 890000, 'tidak', 0, 0, 0, 0, 890000, 'PLG-012', 0, '0', 'PO', '2022-05-09 18:08:46', '2022-05-09 18:44:46', '2022-05-09', '-', '-', NULL),
(25, 'SO-022050011', '2022-05-09', 'GUD-001', 'Rp', 'CLS', 'rika', 890000, 'tidak', 0, 0, 0, 0, 890000, 'PLG-008', 0, '0', 'PO', '2022-05-09 18:15:26', '2022-05-09 18:45:15', '2022-05-09', '-', '-', NULL),
(26, 'SO-022050012', '2022-05-09', 'GUD-001', 'Rp', 'CLS', 'rika', 5280000, 'tidak', 0, 0, 0, 0, 5280000, 'PLG-005', 0, '0', 'PO', '2022-05-09 18:22:30', '2022-05-09 18:44:09', '2022-05-09', '-', '-', NULL),
(27, 'SO-022050013', '2022-05-09', 'GUD-001', 'Rp', 'CLS', 'rika', 2535000, 'tidak', 0, 0, 0, 0, 2535000, 'PLG-007', 0, '0', 'PO', '2022-05-09 18:37:19', '2022-05-09 18:45:02', '2022-05-09', '-', '-', NULL),
(28, 'SO-022050014', '2022-05-09', 'GUD-001', 'Rp', 'DEL', 'may', 8095000, 'tidak', 0, 0, 0, 0, 8095000, 'PLG-009', 0, '0', 'PO', '2022-05-10 15:52:55', '2022-05-10 15:54:05', '2022-05-09', '-', '-', NULL),
(29, 'SO-022050015', '2022-05-10', 'GUD-001', 'Rp', 'CFM', 'may', 8095000, 'tidak', 0, 0, 0, 0, 8095000, 'PLG-009', 0, '0', 'PO', '2022-05-10 17:07:08', '2022-05-10 17:07:13', '2022-05-10', '-', '-', NULL),
(30, 'SO-022050016', '2022-05-10', 'GUD-001', 'Rp', 'CLS', 'may', 2296000, 'tidak', 0, 0, 0, 0, 2296000, 'PLG-007', 0, '0', 'PO', '2022-05-10 18:48:30', '2022-05-10 18:50:09', '2022-05-10', '-', '-', NULL),
(31, 'SO-022050017', '2022-05-10', 'GUD-001', 'Rp', 'CLS', 'may', 1690000, 'tidak', 0, 0, 0, 0, 1690000, 'PLG-007', 0, '0', 'PO', '2022-05-10 18:52:28', '2022-05-10 18:53:10', '2022-05-10', '-', '-', NULL),
(32, 'SO-022050018', '2022-05-09', 'GUD-001', 'Rp', 'CLS', 'may', 703000, 'tidak', 0, 0, 0, 0, 703000, 'PLG-008', 0, '0', 'PO', '2022-05-10 19:01:13', '2022-05-10 19:01:57', '2022-05-09', '-', '-', NULL),
(33, 'SO-022050019', '2022-05-11', 'GUD-001', 'Rp', 'CLS', 'may', 2598000, 'tidak', 0, 0, 0, 0, 2598000, 'PLG-005', 0, '0', 'PO', '2022-05-11 17:44:20', '2022-05-11 17:45:07', '2022-05-11', '-', '-', NULL),
(34, 'SO-022050020', '2022-05-11', 'GUD-001', 'Rp', 'CLS', 'may', 1771000, 'tidak', 0, 0, 0, 0, 1771000, 'PLG-011', 0, '0', 'PO', '2022-05-11 17:50:19', '2022-05-11 17:51:22', '2022-05-11', '-', '-', NULL),
(35, 'SO-022050021', '2022-05-11', 'GUD-001', 'Rp', 'CLS', 'may', 2638000, 'tidak', 0, 0, 0, 0, 2638000, 'PLG-014', 0, '0', 'PO', '2022-05-11 17:55:02', '2022-05-11 17:56:29', '2022-05-11', '-', '-', NULL),
(36, 'SO-022050022', '2022-05-11', 'GUD-001', 'Rp', 'CLS', 'may', 2118000, 'tidak', 0, 0, 0, 0, 2118000, 'PLG-007', 0, '0', 'PO', '2022-05-11 05:04:54', '2022-05-11 05:05:50', '2022-05-11', '-', '-', NULL),
(37, 'SO-022050023', '2022-05-11', 'GUD-001', 'Rp', 'CLS', 'may', 356000, 'tidak', 0, 0, 0, 0, 356000, 'PLG-008', 0, '0', 'PO', '2022-05-11 05:07:26', '2022-05-11 05:08:04', '2022-05-11', '-', '-', NULL),
(38, 'SO-022050024', '2022-05-12', 'GUD-001', 'Rp', 'CLS', 'rika', 4985000, 'tidak', 0, 0, 0, 0, 4985000, 'PLG-009', 0, '0', 'PO', '2022-05-12 01:29:56', '2022-05-12 01:33:01', '2022-05-12', '-', '-', NULL),
(39, 'SO-022050025', '2022-05-12', 'GUD-001', 'Rp', 'CLS', 'may', 1406000, 'tidak', 0, 0, 0, 0, 1406000, 'PLG-007', 0, '0', 'PO', '2022-05-12 04:47:46', '2022-05-12 04:49:24', '2022-05-12', '-', '-', NULL),
(40, 'SO-022050026', '2022-05-12', 'GUD-001', 'Rp', 'CLS', 'may', 356000, 'tidak', 0, 0, 0, 0, 356000, 'PLG-008', 0, '0', 'PO', '2022-05-12 04:52:11', '2022-05-12 04:53:22', '2022-05-12', '-', '-', NULL),
(41, 'SO-022050027', '2022-05-13', 'GUD-001', 'Rp', 'CLS', 'may', 540000, 'tidak', 0, 0, 0, 0, 540000, 'PLG-012', 0, '0', 'PO', '2022-05-13 02:28:58', '2022-05-13 02:29:44', '2022-05-13', '-', '-', NULL),
(42, 'SO-022050028', '2022-05-13', 'GUD-001', 'Rp', 'CLS', 'may', 4360000, 'tidak', 0, 0, 0, 0, 4360000, 'PLG-015', 0, '0', 'PO', '2022-05-13 04:13:31', '2022-05-13 04:28:43', '2022-05-13', '-', '-', NULL),
(43, 'SO-022050029', '2022-05-13', 'GUD-001', 'Rp', 'CLS', 'may', 2646000, 'tidak', 0, 0, 0, 0, 2646000, 'PLG-014', 0, '0', 'PO', '2022-05-13 04:16:09', '2022-05-13 04:28:47', '2022-05-13', '-', '-', NULL),
(44, 'SO-022050030', '2022-05-13', 'GUD-001', 'Rp', 'CLS', 'may', 1059000, 'tidak', 0, 0, 0, 0, 1059000, 'PLG-007', 0, '0', 'PO', '2022-05-13 04:18:20', '2022-05-13 04:28:52', '2022-05-13', '-', '-', NULL),
(45, 'SO-022050031', '2022-05-13', 'GUD-001', 'Rp', 'CLS', 'may', 525000, 'tidak', 0, 0, 0, 0, 525000, 'PLG-008', 0, '0', 'PO', '2022-05-13 04:19:57', '2022-05-13 04:28:55', '2022-05-13', '-', '-', NULL),
(46, 'SO-022050032', '2022-05-13', 'GUD-001', 'Rp', 'CLS', 'may', 4049000, 'tidak', 0, 0, 0, 0, 4049000, 'PLG-010', 0, '0', 'PO', '2022-05-13 04:22:48', '2022-05-13 04:28:59', '2022-05-13', '-', '-', NULL),
(47, 'SO-022050033', '2022-05-14', 'GUD-001', 'Rp', 'CLS', 'may', 1735000, 'tidak', 0, 0, 0, 0, 1735000, 'PLG-011', 0, '0', 'PO', '2022-05-14 04:06:56', '2022-05-14 04:14:20', '2022-05-14', '-', '-', NULL),
(48, 'SO-022050034', '2022-05-14', 'GUD-001', 'Rp', 'CLS', 'may', 3575000, 'tidak', 0, 0, 0, 0, 3575000, 'PLG-015', 0, '0', 'PO', '2022-05-14 04:10:14', '2022-05-14 04:14:15', '2022-05-14', '-', '-', NULL),
(49, 'SO-022050035', '2022-05-14', 'GUD-001', 'Rp', 'CLS', 'may', 1780000, 'tidak', 0, 0, 0, 0, 1780000, 'PLG-007', 0, '0', 'PO', '2022-05-14 04:39:40', '2022-05-14 04:40:30', '2022-05-14', '-', '-', NULL),
(50, 'SO-022050036', '2022-05-14', 'GUD-001', 'Rp', 'CLS', 'may', 534000, 'tidak', 0, 0, 0, 0, 534000, 'PLG-008', 0, '0', 'PO', '2022-05-14 04:42:42', '2022-05-14 04:43:29', '2022-05-14', '-', '-', NULL),
(51, 'SO-122050002', '2022-05-17', 'GUD-001', 'Rp', 'DEL', 'may', 4614825, 'ya', 457325, 0, 0, 0, 4157500, 'PLG-009', 0, '0', 'PO', '2022-05-17 03:53:24', '2022-05-17 03:57:25', '2022-05-17', '0', '-', NULL),
(52, 'SO-122050003', '2022-05-17', 'GUD-001', 'Rp', 'DEL', 'may', 4335105, 'ya', 429605, 0, 0, 0, 3905500, 'PLG-009', 0, '0', 'PO', '2022-05-17 04:12:36', '2022-05-17 04:15:05', '2022-05-17', '-', '-', '0100062259577700'),
(53, 'SO-122050004', '2022-05-17', 'GUD-001', 'Rp', 'CLS', 'may', 9121114.2, 'ya', 903894.2, 0, 0, 0, 8217220, 'PLG-005', 0, '0', 'PO', '2022-05-19 08:38:49', '2022-05-19 08:40:47', '2022-05-17', '-', '-', '0100062259577700'),
(54, 'SO-122050005', '2022-05-17', 'GUD-001', 'Rp', 'CLS', 'may', 355999.2, 'ya', 35279.2, 0, 0, 0, 320720, 'PLG-017', 0, '0', 'PO', '2022-05-19 08:49:34', '2022-05-19 08:50:26', '2022-05-17', '-', '-', '0100062259577701'),
(55, 'SO-122050006', '2022-05-17', 'GUD-001', 'Rp', 'CLS', 'may', 881007, 'ya', 87307, 0, 0, 0, 793700, 'PLG-017', 0, '0', 'PO', '2022-05-19 08:53:45', '2022-05-19 08:55:20', '2022-05-17', '-', '-', '0100062259577702'),
(56, 'SO-122050007', '2022-05-17', 'GUD-001', 'Rp', 'CLS', 'may', 1415005.8, 'ya', 140225.8, 0, 0, 0, 1274780, 'PLG-017', 0, '0', 'PO', '2022-05-19 09:04:11', '2022-05-19 09:05:44', '2022-05-17', '-', '-', '0100062259577703'),
(57, 'SO-122050008', '2022-05-17', 'GUD-001', 'Rp', 'CLS', 'may', 3229966.8, 'ya', 320086.8, 0, 0, 0, 2909880, 'PLG-016', 0, '0', 'PO', '2022-05-19 09:10:06', '2022-05-19 09:11:06', '2022-05-17', '-', '-', '0100062259577704'),
(58, 'SO-122050009', '2022-05-17', 'GUD-001', 'Rp', 'CLS', 'may', 2630034, 'ya', 260634, 0, 0, 0, 2369400, 'PLG-014', 0, '0', 'PO', '2022-05-19 09:16:42', '2022-05-19 09:17:48', '2022-05-17', '-', '-', '0100062259577705'),
(59, 'SO-122050010', '2022-05-17', 'GUD-001', 'Rp', 'CLS', 'may', 4335105, 'ya', 429605, 0, 0, 0, 3905500, 'PLG-009', 0, '0', 'PO', '2022-05-19 09:23:54', '2022-05-19 09:25:57', '2022-05-17', '-', '-', '0100062259577706'),
(60, 'SO-122050011', '2022-05-20', 'GUD-001', 'Rp', 'DEL', 'may', 2366120.4, 'ya', 234480.4, 0, 0, 0, 2131640, 'PLG-017', 0, '0', 'PO', '2022-05-20 01:30:51', '2022-05-20 01:31:29', '2022-05-20', '-', '-', '0100062259577707'),
(61, 'SO-122050012', '2022-05-18', 'GUD-001', 'Rp', 'CLS', 'may', 2366120.4, 'ya', 234480.4, 0, 0, 0, 2131640, 'PLG-017', 0, '0', 'PO', '2022-05-20 01:52:31', '2022-05-20 01:56:10', '2022-05-18', '-', '-', '0100062259577707'),
(62, 'SO-122050013', '2022-05-18', 'GUD-001', 'Rp', 'CLS', 'may', 533998.8, 'ya', 52918.8, 0, 0, 0, 481080, 'PLG-017', 0, '0', 'PO', '2022-05-20 01:59:17', '2022-05-20 02:00:44', '2022-05-18', '-', '-', '0100062259577708'),
(63, 'SO-122050014', '2022-05-19', 'GUD-001', 'Rp', 'CLS', 'may', 2638026, 'ya', 261426, 0, 0, 0, 2376600, 'PLG-014', 0, '0', 'PO', '2022-05-20 02:09:20', '2022-05-20 02:11:02', '2022-05-19', '-', '-', '0100062259577709'),
(64, 'SO-122050015', '2022-05-19', 'GUD-001', 'Rp', 'CLS', 'may', 1406014.8, 'ya', 139334.8, 0, 0, 0, 1266680, 'PLG-017', 0, '0', 'PO', '2022-05-20 02:21:07', '2022-05-20 02:25:59', '2022-05-19', '-', '-', '0100062259577710'),
(65, 'SO-122050016', '2022-05-19', 'GUD-001', 'Rp', 'CLS', 'may', 177999.6, 'ya', 17639.6, 0, 0, 0, 160360, 'PLG-017', 0, '0', 'PO', '2022-05-20 02:28:17', '2022-05-20 02:30:21', '2022-05-19', '-', '-', '0100062259577711'),
(66, 'SO-122050017', '2022-05-20', 'GUD-001', 'Rp', 'CLS', 'may', 1423996.8, 'ya', 141116.8, 0, 0, 0, 1282880, 'PLG-005', 0, '0', 'PO', '2022-05-20 02:42:58', '2022-05-20 02:45:16', '2022-05-20', '-', '-', '0100062259577712'),
(67, 'SO-122050018', '2022-05-20', 'GUD-001', 'Rp', 'CLS', 'may', 3615536.4, 'ya', 358296.4, 0, 0, 0, 3257240, 'PLG-005', 0, '0', 'PO', '2022-05-20 03:55:55', '2022-05-20 03:57:32', '2022-05-20', '-', '-', '0100062259577713'),
(68, 'SO-122050019', '2022-05-20', 'GUD-001', 'Rp', 'CLS', 'may', 1376400, 'ya', 136400, 0, 0, 0, 1240000, 'PLG-018', 0, '0', 'PO', '2022-05-20 04:09:48', '2022-05-20 04:11:09', '2022-05-20', '-', '-', '0100062259577714'),
(69, 'SO-122050020', '2022-05-20', 'GUD-001', 'Rp', 'CLS', 'may', 721588.8, 'ya', 71508.8, 0, 0, 0, 650080, 'PLG-017', 0, '0', 'PO', '2022-05-20 04:27:02', '2022-05-20 04:28:03', '2022-05-20', '-', '-', '0100062259577714'),
(70, 'SO-122050021', '2022-05-20', 'GUD-001', 'Rp', 'CLS', 'may', 355999.2, 'ya', 35279.2, 0, 0, 0, 320720, 'PLG-017', 0, '0', 'PO', '2022-05-20 04:34:37', '2022-05-20 04:35:13', '2022-05-20', '-', '-', '0100062259577716'),
(71, 'SO-122050022', '2022-05-21', 'GUD-001', 'Rp', 'CLS', 'may', 2135995.2, 'ya', 211675.2, 0, 0, 0, 1924320, 'PLG-017', 0, '0', 'PO', '2022-05-21 04:54:30', '2022-05-21 04:55:16', '2022-05-21', '-', '-', '0100062259577717'),
(72, 'SO-122050023', '2022-05-21', 'GUD-001', 'Rp', 'CLS', 'may', 355999.2, 'ya', 35279.2, 0, 0, 0, 320720, 'PLG-017', 0, '0', 'PO', '2022-05-21 04:57:46', '2022-05-21 04:58:25', '2022-05-21', '-', '-', '0100062259577718'),
(73, 'SO-122050024', '2022-05-20', 'GUD-001', 'Rp', 'CLS', 'may', 3487930.8, 'ya', 345650.8, 0, 0, 0, 3142280, 'PLG-005', 0, '0', 'PO', '2022-05-21 07:36:49', '2022-05-21 07:38:15', '2022-05-20', '-', '-', '0100062259577713'),
(74, 'SO-122050025', '2022-05-23', 'GUD-001', 'Rp', 'CLS', 'may', 5562942.6, 'ya', 551282.6, 0, 0, 0, 5011660, 'PLG-017', 0, '0', 'PO', '2022-05-23 01:54:54', '2022-05-23 01:57:40', '2022-05-23', '-', '-', '0100062259577719'),
(75, 'SO-122050026', '2022-05-23', 'GUD-001', 'Rp', 'CLS', 'may', 355999.2, 'ya', 35279.2, 0, 0, 0, 320720, 'PLG-017', 0, '0', 'PO', '2022-05-23 03:55:39', '2022-05-23 03:56:16', '2022-05-23', '-', '-', '0100062259577720'),
(76, 'SO-122050027', '2022-05-23', 'GUD-001', 'Rp', 'CLS', 'may', 889998, 'ya', 88198, 0, 0, 0, 801800, 'PLG-017', 0, '0', 'PO', '2022-05-23 04:00:25', '2022-05-23 04:01:51', '2022-05-23', '-', '-', '0100062259577721'),
(77, 'SO-122050028', '2022-05-23', 'GUD-001', 'Rp', 'CLS', 'may', 2630034, 'ya', 260634, 0, 0, 0, 2369400, 'PLG-014', 0, '0', 'PO', '2022-05-23 04:09:00', '2022-05-23 04:09:48', '2022-05-23', '-', '-', '0100062259577722'),
(78, 'SO-122050029', '2022-05-23', 'GUD-001', 'Rp', 'CLS', 'may', 3049969.2, 'ya', 302249.2, 0, 0, 0, 2747720, 'PLG-016', 0, '0', 'PO', '2022-05-23 04:13:56', '2022-05-23 04:14:39', '2022-05-23', '-', '-', '0100062259577723'),
(79, 'SO-122050030', '2022-05-23', 'GUD-001', 'Rp', 'CLS', 'may', 3025993.2, 'ya', 299873.2, 0, 0, 0, 2726120, 'PLG-005', 0, '0', 'PO', '2022-05-23 04:16:57', '2022-05-23 04:17:44', '2022-05-23', '-', '-', '0100062259577724'),
(80, 'SO-022110001', '2022-11-11', 'GUD-001', 'Rp', 'CLS', 'admin', 64000, 'tidak', 0, 0, 0, 0, 64000, 'PLG-005', 0, '0', 'PO', '2022-11-11 06:14:06', '2022-11-11 06:16:22', '2022-11-11', '0', '-', NULL),
(81, 'SO-022110002', '2022-11-11', 'GUD-001', 'Rp', 'CLS', 'admin', 32000, 'tidak', 0, 0, 0, 0, 32000, 'PLG-009', 0, '0', 'PO', '2022-11-11 06:23:39', '2022-11-11 06:26:14', '2022-11-11', '0', '-', NULL),
(82, 'SO-022120001', '2022-12-06', 'GUD-001', 'Rp', 'CLS', 'admin', 250000, 'tidak', 0, 0, 0, 0, 250000, 'PLG-005', 0, '0', 'PO', '2022-12-06 16:33:08', '2022-12-06 16:34:29', '2022-12-06', '0', '-', NULL),
(83, 'SO-022120002', '2022-12-06', 'GUD-001', 'Rp', 'OPN', 'admin', 125000, 'tidak', 0, 0, 0, 0, 125000, 'PLG-005', 0, '0', 'PO', '2022-12-06 16:35:29', '2022-12-06 16:35:29', '2022-12-06', '0', '-', NULL),
(84, 'SO-023040001', '2023-04-28', 'GUD-001', 'Rp', 'CLS', 'admin', 9000, 'tidak', 0, 0, 10, 1000, 10000, 'PLG-005', 0, '0', 'PO', '2023-04-28 17:37:05', '2023-04-28 17:38:57', '2023-04-28', '0', '-', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pemesanan_penjualan_detail`
--

CREATE TABLE `pemesanan_penjualan_detail` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `KodeSO` varchar(191) NOT NULL,
  `KodeItem` varchar(191) NOT NULL,
  `KodeSatuan` varchar(100) DEFAULT NULL,
  `Qty` double NOT NULL,
  `Harga` double NOT NULL,
  `HargaRata` double NOT NULL,
  `NoUrut` int(11) NOT NULL,
  `Subtotal` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pemesanan_penjualan_detail`
--

INSERT INTO `pemesanan_penjualan_detail` (`id`, `KodeSO`, `KodeItem`, `KodeSatuan`, `Qty`, `Harga`, `HargaRata`, `NoUrut`, `Subtotal`, `created_at`, `updated_at`) VALUES
(1, 'SO-022040001', 'FF-006', 'PAK', 40, 8900, 8900, 1, 356000, '2022-04-23 20:34:41', '2022-04-23 20:34:41'),
(2, 'SO-022040001', 'FF-007', 'PAK', 120, 8900, 8900, 2, 1068000, '2022-04-23 20:34:41', '2022-04-23 20:34:41'),
(3, 'SO-022040001', 'FF-002', 'PAK', 40, 8450, 8450, 3, 338000, '2022-04-23 20:34:41', '2022-04-23 20:34:41'),
(4, 'SO-022040002', 'FF-006', 'PAK', 40, 7900, 7900, 1, 316000, '2022-04-26 16:10:42', '2022-04-26 16:10:42'),
(5, 'SO-022040002', 'FF-007', 'PAK', 120, 7900, 7900, 2, 948000, '2022-04-26 16:10:42', '2022-04-26 16:10:42'),
(6, 'SO-022040002', 'FF-009', 'PAK', 60, 7900, 7900, 3, 474000, '2022-04-26 16:10:42', '2022-04-26 16:10:42'),
(7, 'SO-022040002', 'FF-002', 'PAK', 80, 7300, 7300, 4, 584000, '2022-04-26 16:10:42', '2022-04-26 16:10:42'),
(8, 'SO-022040003', 'FF-002', 'PAK', 300, 7450, 7450, 1, 2235000, '2022-04-26 16:18:06', '2022-04-26 16:18:06'),
(9, 'SO-022040004', 'FF-006', 'PAK', 30, 7900, 7900, 1, 237000, '2022-04-26 16:23:15', '2022-04-26 16:23:15'),
(10, 'SO-022040004', 'FF-007', 'PAK', 40, 7900, 7900, 2, 316000, '2022-04-26 16:23:15', '2022-04-26 16:23:15'),
(11, 'SO-022040004', 'FF-009', 'PAK', 30, 7900, 7900, 3, 237000, '2022-04-26 16:23:15', '2022-04-26 16:23:15'),
(12, 'SO-022040004', 'FF-002', 'PAK', 10, 7450, 7450, 4, 74500, '2022-04-26 16:23:15', '2022-04-26 16:23:15'),
(13, 'SO-022040005', 'FF-002', 'PAK', 10, 8450, 8450, 1, 84500, '2022-04-26 18:11:07', '2022-04-26 18:11:07'),
(14, 'SO-022040005', 'FF-006', 'PAK', 30, 8900, 8900, 2, 267000, '2022-04-26 18:11:07', '2022-04-26 18:11:07'),
(15, 'SO-022040005', 'FF-007', 'PAK', 40, 8900, 8900, 3, 356000, '2022-04-26 18:11:07', '2022-04-26 18:11:07'),
(16, 'SO-022040005', 'FF-009', 'PAK', 30, 8900, 8900, 4, 267000, '2022-04-26 18:11:07', '2022-04-26 18:11:07'),
(17, 'SO-022040006', 'FF-002', 'PAK', 300, 8450, 8450, 1, 2535000, '2022-04-26 18:17:42', '2022-04-26 18:17:42'),
(18, 'SO-022040007', 'FF-002', 'PAK', 80, 8300, 8300, 1, 664000, '2022-04-26 18:22:31', '2022-04-26 18:22:31'),
(19, 'SO-022040007', 'FF-006', 'PAK', 40, 8900, 8900, 2, 356000, '2022-04-26 18:22:31', '2022-04-26 18:22:31'),
(20, 'SO-022040007', 'FF-007', 'PAK', 120, 8900, 8900, 3, 1068000, '2022-04-26 18:22:31', '2022-04-26 18:22:31'),
(21, 'SO-022040007', 'FF-009', 'PAK', 60, 8900, 8900, 4, 534000, '2022-04-26 18:22:31', '2022-04-26 18:22:31'),
(22, 'SO-022040008', 'FF-006', 'PAK', 120, 8900, 8900, 1, 1068000, '2022-04-27 18:24:18', '2022-04-27 18:24:18'),
(23, 'SO-022040008', 'FF-007', 'PAK', 160, 8900, 8900, 2, 1424000, '2022-04-27 18:24:18', '2022-04-27 18:24:18'),
(24, 'SO-022040008', 'FF-009', 'PAK', 40, 8900, 8900, 3, 356000, '2022-04-27 18:24:18', '2022-04-27 18:24:18'),
(25, 'SO-022040009', 'FF-006', 'PAK', 180, 8900, 8900, 1, 1602000, '2022-04-27 18:45:18', '2022-04-27 18:45:18'),
(26, 'SO-022040009', 'FF-007', 'PAK', 240, 8900, 8900, 2, 2136000, '2022-04-27 18:45:18', '2022-04-27 18:45:18'),
(27, 'SO-022040009', 'FF-009', 'PAK', 80, 8900, 8900, 3, 712000, '2022-04-27 18:45:18', '2022-04-27 18:45:18'),
(28, 'SO-022040009', 'FF-002', 'PAK', 40, 8450, 8450, 4, 338000, '2022-04-27 18:45:18', '2022-04-27 18:45:18'),
(29, 'SO-022040010', 'FF-006', 'PAK', 60, 8900, 8900, 1, 534000, '2022-04-28 17:58:34', '2022-04-28 17:58:34'),
(30, 'SO-022040010', 'FF-007', 'PAK', 180, 8900, 8900, 2, 1602000, '2022-04-28 17:58:34', '2022-04-28 17:58:34'),
(31, 'SO-022040010', 'FF-009', 'PAK', 40, 8900, 8900, 3, 356000, '2022-04-28 17:58:34', '2022-04-28 17:58:34'),
(32, 'SO-022040010', 'FF-002', 'PAK', 20, 8500, 8500, 4, 170000, '2022-04-28 17:58:34', '2022-04-28 17:58:34'),
(33, 'SO-022040011', 'FF-006', 'PAK', 60, 8900, 8900, 1, 534000, '2022-04-28 18:21:15', '2022-04-28 18:21:15'),
(34, 'SO-022040011', 'FF-007', 'PAK', 240, 8900, 8900, 2, 2136000, '2022-04-28 18:21:15', '2022-04-28 18:21:15'),
(35, 'SO-022040012', 'FF-006', 'PAK', 60, 8900, 8900, 1, 534000, '2022-04-28 18:29:50', '2022-04-28 18:29:50'),
(36, 'SO-022040012', 'FF-007', 'PAK', 300, 8900, 8900, 2, 2670000, '2022-04-28 18:29:50', '2022-04-28 18:29:50'),
(37, 'SO-022040012', 'FF-009', 'PAK', 60, 8900, 8900, 3, 534000, '2022-04-28 18:29:50', '2022-04-28 18:29:50'),
(38, 'SO-022040012', 'FF-002', 'PAK', 100, 8450, 8450, 4, 845000, '2022-04-28 18:29:50', '2022-04-28 18:29:50'),
(39, 'SO-022040013', 'FF-007', 'PAK', 130, 8900, 8900, 1, 1157000, '2022-04-28 19:23:57', '2022-04-28 19:23:57'),
(40, 'SO-022040013', 'FF-006', 'PAK', 70, 8900, 8900, 2, 623000, '2022-04-28 19:23:57', '2022-04-28 19:23:57'),
(41, 'SO-022040013', 'FF-009', 'PAK', 20, 8900, 8900, 3, 178000, '2022-04-28 19:23:57', '2022-04-28 19:23:57'),
(42, 'SO-022040013', 'FF-005', 'PAK', 20, 9050, 9050, 4, 181000, '2022-04-28 19:23:57', '2022-04-28 19:23:57'),
(43, 'SO-022050001', 'FF-006', 'PAK', 40, 8900, 8900, 1, 356000, '2022-05-06 18:09:25', '2022-05-06 18:09:25'),
(44, 'SO-022050001', 'FF-007', 'PAK', 40, 8900, 8900, 2, 356000, '2022-05-06 18:09:25', '2022-05-06 18:09:25'),
(45, 'SO-022050001', 'FF-009', 'PAK', 20, 8900, 8900, 3, 178000, '2022-05-06 18:09:25', '2022-05-06 18:09:25'),
(46, 'SO-022050001', 'FF-002', 'PAK', 20, 8450, 8450, 4, 169000, '2022-05-06 18:09:25', '2022-05-06 18:09:25'),
(47, 'SO-022050002', 'FF-006', 'PAK', 20, 8900, 8900, 1, 178000, '2022-05-06 18:19:16', '2022-05-06 18:19:16'),
(48, 'SO-022050002', 'FF-007', 'PAK', 20, 8900, 8900, 2, 178000, '2022-05-06 18:19:16', '2022-05-06 18:19:16'),
(49, 'SO-022050002', 'FF-009', 'PAK', 20, 8900, 8900, 3, 178000, '2022-05-06 18:19:16', '2022-05-06 18:19:16'),
(50, 'SO-022050003', 'FF-006', 'PAK', 100, 8900, 8900, 1, 890000, '2022-05-06 18:23:44', '2022-05-06 18:29:02'),
(51, 'SO-022050003', 'FF-007', 'PAK', 300, 8900, 8900, 2, 2670000, '2022-05-06 18:23:44', '2022-05-06 18:29:02'),
(52, 'SO-022050003', 'FF-009', 'PAK', 100, 8900, 8900, 3, 890000, '2022-05-06 18:23:44', '2022-05-06 18:29:02'),
(53, 'SO-022050003', 'FF-002', 'PAK', 100, 8450, 8450, 4, 845000, '2022-05-06 18:23:44', '2022-05-06 18:29:02'),
(54, 'SO-022050004', 'FF-006', 'PAK', 40, 8900, 8900, 1, 356000, '2022-05-06 18:26:43', '2022-05-06 18:29:27'),
(55, 'SO-022050004', 'FF-007', 'PAK', 40, 8900, 8900, 2, 356000, '2022-05-06 18:26:43', '2022-05-06 18:29:27'),
(56, 'SO-022050004', 'FF-009', 'PAK', 20, 0, 0, 3, 0, '2022-05-06 18:26:43', '2022-05-06 18:29:27'),
(57, 'SO-022050004', 'FF-002', 'PAK', 20, 8450, 8450, 4, 169000, '2022-05-06 18:26:43', '2022-05-06 18:29:27'),
(58, 'SO-122050001', 'FF-006', 'PAK', 40, 8900, 8900, 1, 356000, '2022-05-06 19:09:34', '2022-05-06 19:09:34'),
(59, 'SO-122050001', 'FF-007', 'PAK', 40, 8900, 8900, 2, 356000, '2022-05-06 19:09:34', '2022-05-06 19:09:34'),
(60, 'SO-122050001', 'FF-009', 'PAK', 20, 8900, 8900, 3, 178000, '2022-05-06 19:09:34', '2022-05-06 19:09:34'),
(61, 'SO-122050001', 'FF-002', 'PAK', 20, 8450, 8450, 4, 169000, '2022-05-06 19:09:34', '2022-05-06 19:09:34'),
(62, 'SO-022050005', 'FF-006', 'PAK', 40, 8900, 8900, 1, 356000, '2022-05-06 19:16:28', '2022-05-06 19:16:28'),
(63, 'SO-022050005', 'FF-007', 'PAK', 40, 8900, 8900, 2, 356000, '2022-05-06 19:16:28', '2022-05-06 19:16:28'),
(64, 'SO-022050005', 'FF-009', 'PAK', 20, 8900, 8900, 3, 178000, '2022-05-06 19:16:28', '2022-05-06 19:16:28'),
(65, 'SO-022050005', 'FF-002', 'PAK', 20, 8450, 8450, 4, 169000, '2022-05-06 19:16:28', '2022-05-06 19:16:28'),
(66, 'SO-022050006', 'FF-006', 'PAK', 80, 8900, 8900, 1, 712000, '2022-05-09 16:51:25', '2022-05-09 16:51:25'),
(67, 'SO-022050006', 'FF-007', 'PAK', 240, 8900, 8900, 2, 2136000, '2022-05-09 16:51:25', '2022-05-09 16:51:25'),
(68, 'SO-022050006', 'FF-009', 'PAK', 60, 8900, 8900, 3, 534000, '2022-05-09 16:51:25', '2022-05-09 16:51:25'),
(69, 'SO-022050006', 'FF-002', 'PAK', 120, 8450, 8450, 4, 1014000, '2022-05-09 16:51:25', '2022-05-09 16:51:25'),
(70, 'SO-022050007', 'FF-006', 'PAK', 300, 8900, 8900, 1, 2670000, '2022-05-09 16:54:00', '2022-05-09 16:54:00'),
(71, 'SO-022050007', 'FF-007', 'PAK', 300, 8900, 8900, 2, 2670000, '2022-05-09 16:54:00', '2022-05-09 16:54:00'),
(72, 'SO-022050007', 'FF-009', 'PAK', 200, 8900, 8900, 3, 1780000, '2022-05-09 16:54:00', '2022-05-09 16:54:00'),
(73, 'SO-022050008', 'FF-006', 'PAK', 40, 8900, 8900, 1, 356000, '2022-05-09 16:56:42', '2022-05-09 16:56:42'),
(74, 'SO-022050008', 'FF-007', 'PAK', 100, 8900, 8900, 2, 890000, '2022-05-09 16:56:42', '2022-05-09 16:56:42'),
(75, 'SO-022050008', 'FF-009', 'PAK', 60, 8900, 8900, 3, 534000, '2022-05-09 16:56:42', '2022-05-09 16:56:42'),
(76, 'SO-022050009', 'FF-006', 'PAK', 80, 8900, 8900, 1, 712000, '2022-05-09 17:58:38', '2022-05-09 18:00:31'),
(77, 'SO-022050009', 'FF-007', 'PAK', 240, 8900, 8900, 2, 2136000, '2022-05-09 17:58:38', '2022-05-09 18:00:31'),
(78, 'SO-022050009', 'FF-009', 'PAK', 80, 8900, 8900, 3, 712000, '2022-05-09 17:58:38', '2022-05-09 18:00:31'),
(79, 'SO-022050009', 'FF-002', 'PAK', 100, 8500, 8500, 4, 850000, '2022-05-09 17:58:38', '2022-05-09 18:00:31'),
(80, 'SO-022050010', 'FF-006', 'PAK', 20, 9000, 9000, 1, 180000, '2022-05-09 18:08:46', '2022-05-09 18:08:46'),
(81, 'SO-022050010', 'FF-007', 'PAK', 60, 9000, 9000, 2, 540000, '2022-05-09 18:08:46', '2022-05-09 18:08:46'),
(82, 'SO-022050010', 'FF-002', 'PAK', 20, 8500, 8500, 3, 170000, '2022-05-09 18:08:46', '2022-05-09 18:08:46'),
(83, 'SO-022050011', 'FF-006', 'PAK', 40, 8900, 8900, 1, 356000, '2022-05-09 18:15:26', '2022-05-09 18:15:26'),
(84, 'SO-022050011', 'FF-007', 'PAK', 40, 8900, 8900, 2, 356000, '2022-05-09 18:15:26', '2022-05-09 18:15:26'),
(85, 'SO-022050011', 'FF-009', 'PAK', 20, 8900, 8900, 3, 178000, '2022-05-09 18:15:26', '2022-05-09 18:15:26'),
(86, 'SO-022050012', 'FF-006', 'PAK', 100, 8900, 8900, 1, 890000, '2022-05-09 18:22:30', '2022-05-09 18:22:30'),
(87, 'SO-022050012', 'FF-007', 'PAK', 300, 8900, 8900, 2, 2670000, '2022-05-09 18:22:30', '2022-05-09 18:22:30'),
(88, 'SO-022050012', 'FF-009', 'PAK', 100, 8900, 8900, 3, 890000, '2022-05-09 18:22:30', '2022-05-09 18:22:30'),
(89, 'SO-022050012', 'FF-002', 'PAK', 100, 8300, 8300, 4, 830000, '2022-05-09 18:22:30', '2022-05-09 18:22:30'),
(90, 'SO-022050013', 'FF-002', 'PAK', 300, 8450, 8450, 1, 2535000, '2022-05-09 18:37:19', '2022-05-09 18:37:19'),
(91, 'SO-022050014', 'FF-006', 'PAK', 60, 9150, 9150, 1, 549000, '2022-05-10 15:52:55', '2022-05-10 15:52:55'),
(92, 'SO-022050014', 'FF-007', 'PAK', 100, 9150, 9150, 2, 915000, '2022-05-10 15:52:55', '2022-05-10 15:52:55'),
(93, 'SO-022050014', 'FF-009', 'PAK', 40, 9150, 9150, 3, 366000, '2022-05-10 15:52:55', '2022-05-10 15:52:55'),
(94, 'SO-022050014', 'FF-002', 'PAK', 300, 8550, 8550, 4, 2565000, '2022-05-10 15:52:55', '2022-05-10 15:52:55'),
(95, 'SO-022050014', 'FF-005', 'PAK', 400, 9250, 9250, 5, 3700000, '2022-05-10 15:52:55', '2022-05-10 15:52:55'),
(96, 'SO-022050015', 'FF-006', 'PAK', 60, 9150, 9150, 1, 549000, '2022-05-10 17:07:08', '2022-05-10 17:07:08'),
(97, 'SO-022050015', 'FF-007', 'PAK', 100, 9150, 9150, 2, 915000, '2022-05-10 17:07:08', '2022-05-10 17:07:08'),
(98, 'SO-022050015', 'FF-009', 'PAK', 40, 9150, 9150, 3, 366000, '2022-05-10 17:07:08', '2022-05-10 17:07:08'),
(99, 'SO-022050015', 'FF-002', 'PAK', 300, 8550, 8550, 4, 2565000, '2022-05-10 17:07:08', '2022-05-10 17:07:08'),
(100, 'SO-022050015', 'FF-005', 'PAK', 400, 9250, 9250, 5, 3700000, '2022-05-10 17:07:08', '2022-05-10 17:07:08'),
(101, 'SO-022050016', 'FF-006', 'PAK', 40, 8900, 8900, 1, 356000, '2022-05-10 18:48:30', '2022-05-10 18:48:30'),
(102, 'SO-022050016', 'FF-007', 'PAK', 160, 8900, 8900, 2, 1424000, '2022-05-10 18:48:30', '2022-05-10 18:48:30'),
(103, 'SO-022050016', 'FF-009', 'PAK', 20, 8900, 8900, 3, 178000, '2022-05-10 18:48:30', '2022-05-10 18:48:30'),
(104, 'SO-022050016', 'FF-002', 'PAK', 40, 8450, 8450, 4, 338000, '2022-05-10 18:48:30', '2022-05-10 18:48:30'),
(105, 'SO-022050017', 'FF-002', 'PAK', 200, 8450, 8450, 1, 1690000, '2022-05-10 18:52:28', '2022-05-10 18:52:28'),
(106, 'SO-022050018', 'FF-006', 'PAK', 20, 8900, 8900, 1, 178000, '2022-05-10 19:01:13', '2022-05-10 19:01:13'),
(107, 'SO-022050018', 'FF-007', 'PAK', 20, 8900, 8900, 2, 178000, '2022-05-10 19:01:13', '2022-05-10 19:01:13'),
(108, 'SO-022050018', 'FF-009', 'PAK', 20, 8900, 8900, 3, 178000, '2022-05-10 19:01:13', '2022-05-10 19:01:13'),
(109, 'SO-022050018', 'FF-002', 'PAK', 20, 8450, 8450, 4, 169000, '2022-05-10 19:01:13', '2022-05-10 19:01:13'),
(110, 'SO-022050019', 'FF-006', 'PAK', 60, 8900, 8900, 1, 534000, '2022-05-11 17:44:20', '2022-05-11 17:44:20'),
(111, 'SO-022050019', 'FF-007', 'PAK', 120, 8900, 8900, 2, 1068000, '2022-05-11 17:44:20', '2022-05-11 17:44:20'),
(112, 'SO-022050019', 'FF-002', 'PAK', 120, 8300, 8300, 3, 996000, '2022-05-11 17:44:20', '2022-05-11 17:44:20'),
(113, 'SO-022050020', 'FF-006', 'PAK', 40, 8900, 8900, 1, 356000, '2022-05-11 17:50:19', '2022-05-11 17:50:19'),
(114, 'SO-022050020', 'FF-007', 'PAK', 100, 8900, 8900, 2, 890000, '2022-05-11 17:50:19', '2022-05-11 17:50:19'),
(115, 'SO-022050020', 'FF-009', 'PAK', 40, 8900, 8900, 3, 356000, '2022-05-11 17:50:19', '2022-05-11 17:50:19'),
(116, 'SO-022050020', 'FF-002', 'PAK', 20, 8450, 8450, 4, 169000, '2022-05-11 17:50:19', '2022-05-11 17:50:19'),
(117, 'SO-022050021', 'FF-006', 'PAK', 60, 8900, 8900, 1, 534000, '2022-05-11 17:55:02', '2022-05-11 17:55:02'),
(118, 'SO-022050021', 'FF-007', 'PAK', 100, 8900, 8900, 2, 890000, '2022-05-11 17:55:02', '2022-05-11 17:55:02'),
(119, 'SO-022050021', 'FF-009', 'PAK', 60, 8900, 8900, 3, 534000, '2022-05-11 17:55:02', '2022-05-11 17:55:02'),
(120, 'SO-022050021', 'FF-002', 'PAK', 80, 8500, 8500, 4, 680000, '2022-05-11 17:55:02', '2022-05-11 17:55:02'),
(121, 'SO-022050022', 'FF-007', 'PAK', 160, 8900, 8900, 1, 1424000, '2022-05-11 05:04:55', '2022-05-11 05:04:55'),
(122, 'SO-022050022', 'FF-009', 'PAK', 40, 8900, 8900, 2, 356000, '2022-05-11 05:04:55', '2022-05-11 05:04:55'),
(123, 'SO-022050022', 'FF-002', 'PAK', 40, 8450, 8450, 3, 338000, '2022-05-11 05:04:55', '2022-05-11 05:04:55'),
(124, 'SO-022050023', 'FF-006', 'PAK', 20, 8900, 8900, 1, 178000, '2022-05-11 05:07:26', '2022-05-11 05:07:26'),
(125, 'SO-022050023', 'FF-007', 'PAK', 20, 8900, 8900, 2, 178000, '2022-05-11 05:07:26', '2022-05-11 05:07:26'),
(126, 'SO-022050024', 'FF-007', 'PAK', 100, 9150, 9150, 1, 915000, '2022-05-12 01:29:56', '2022-05-12 01:30:38'),
(127, 'SO-022050024', 'FF-005', 'PAK', 440, 9250, 9250, 2, 4070000, '2022-05-12 01:29:56', '2022-05-12 01:30:38'),
(128, 'SO-022050025', 'FF-007', 'PAK', 100, 8900, 8900, 1, 890000, '2022-05-12 04:47:46', '2022-05-12 04:47:46'),
(129, 'SO-022050025', 'FF-009', 'PAK', 20, 8900, 8900, 2, 178000, '2022-05-12 04:47:46', '2022-05-12 04:47:46'),
(130, 'SO-022050025', 'FF-002', 'PAK', 40, 8450, 8450, 3, 338000, '2022-05-12 04:47:46', '2022-05-12 04:47:46'),
(131, 'SO-022050026', 'FF-006', 'PAK', 20, 8900, 8900, 1, 178000, '2022-05-12 04:52:11', '2022-05-12 04:52:11'),
(132, 'SO-022050026', 'FF-007', 'PAK', 20, 8900, 8900, 2, 178000, '2022-05-12 04:52:11', '2022-05-12 04:52:11'),
(133, 'SO-022050027', 'FF-006', 'PAK', 20, 9000, 9000, 1, 180000, '2022-05-13 02:28:58', '2022-05-13 02:28:58'),
(134, 'SO-022050027', 'FF-007', 'PAK', 20, 9000, 9000, 2, 180000, '2022-05-13 02:28:58', '2022-05-13 02:28:58'),
(135, 'SO-022050027', 'FF-009', 'PAK', 20, 9000, 9000, 3, 180000, '2022-05-13 02:28:58', '2022-05-13 02:28:58'),
(136, 'SO-022050028', 'FF-007', 'PAK', 300, 8900, 8900, 1, 2670000, '2022-05-13 04:13:32', '2022-05-13 04:13:32'),
(137, 'SO-022050028', 'FF-002', 'PAK', 200, 8450, 8450, 2, 1690000, '2022-05-13 04:13:32', '2022-05-13 04:13:32'),
(138, 'SO-022050029', 'FF-006', 'PAK', 80, 8900, 8900, 1, 712000, '2022-05-13 04:16:09', '2022-05-13 04:16:09'),
(139, 'SO-022050029', 'FF-007', 'PAK', 80, 8900, 8900, 2, 712000, '2022-05-13 04:16:09', '2022-05-13 04:16:09'),
(140, 'SO-022050029', 'FF-009', 'PAK', 80, 8900, 8900, 3, 712000, '2022-05-13 04:16:09', '2022-05-13 04:16:09'),
(141, 'SO-022050029', 'FF-002', 'PAK', 60, 8500, 8500, 4, 510000, '2022-05-13 04:16:09', '2022-05-13 04:16:09'),
(142, 'SO-022050030', 'FF-006', 'PAK', 20, 8900, 8900, 1, 178000, '2022-05-13 04:18:20', '2022-05-13 04:18:20'),
(143, 'SO-022050030', 'FF-007', 'PAK', 80, 8900, 8900, 2, 712000, '2022-05-13 04:18:20', '2022-05-13 04:18:20'),
(144, 'SO-022050030', 'FF-002', 'PAK', 20, 8450, 8450, 3, 169000, '2022-05-13 04:18:20', '2022-05-13 04:18:20'),
(145, 'SO-022050031', 'FF-006', 'PAK', 20, 8900, 8900, 1, 178000, '2022-05-13 04:19:57', '2022-05-13 04:19:57'),
(146, 'SO-022050031', 'FF-007', 'PAK', 20, 8900, 8900, 2, 178000, '2022-05-13 04:19:57', '2022-05-13 04:19:57'),
(147, 'SO-022050031', 'FF-002', 'PAK', 20, 8450, 8450, 3, 169000, '2022-05-13 04:19:57', '2022-05-13 04:19:57'),
(148, 'SO-022050032', 'FF-006', 'PAK', 60, 8900, 8900, 1, 534000, '2022-05-13 04:22:48', '2022-05-13 04:22:48'),
(149, 'SO-022050032', 'FF-007', 'PAK', 240, 8900, 8900, 2, 2136000, '2022-05-13 04:22:48', '2022-05-13 04:22:48'),
(150, 'SO-022050032', 'FF-009', 'PAK', 60, 8900, 8900, 3, 534000, '2022-05-13 04:22:48', '2022-05-13 04:22:48'),
(151, 'SO-022050032', 'FF-002', 'PAK', 100, 8450, 8450, 4, 845000, '2022-05-13 04:22:48', '2022-05-13 04:22:48'),
(152, 'SO-022050033', 'FF-007', 'PAK', 100, 8900, 8900, 1, 890000, '2022-05-14 04:06:56', '2022-05-14 04:06:56'),
(153, 'SO-022050033', 'FF-002', 'PAK', 100, 8450, 8450, 2, 845000, '2022-05-14 04:06:56', '2022-05-14 04:06:56'),
(154, 'SO-022050034', 'FF-007', 'PAK', 300, 8900, 8900, 1, 2670000, '2022-05-14 04:10:14', '2022-05-14 04:10:14'),
(155, 'SO-022050034', 'FF-005', 'PAK', 100, 9050, 9050, 2, 905000, '2022-05-14 04:10:14', '2022-05-14 04:10:14'),
(156, 'SO-022050035', 'FF-006', 'PAK', 40, 8900, 8900, 1, 356000, '2022-05-14 04:39:40', '2022-05-14 04:39:40'),
(157, 'SO-022050035', 'FF-007', 'PAK', 120, 8900, 8900, 2, 1068000, '2022-05-14 04:39:40', '2022-05-14 04:39:40'),
(158, 'SO-022050035', 'FF-009', 'PAK', 40, 8900, 8900, 3, 356000, '2022-05-14 04:39:40', '2022-05-14 04:39:40'),
(159, 'SO-022050036', 'FF-006', 'PAK', 20, 8900, 8900, 1, 178000, '2022-05-14 04:42:42', '2022-05-14 04:42:42'),
(160, 'SO-022050036', 'FF-007', 'PAK', 20, 8900, 8900, 2, 178000, '2022-05-14 04:42:42', '2022-05-14 04:42:42'),
(161, 'SO-022050036', 'FF-009', 'PAK', 20, 8900, 8900, 3, 178000, '2022-05-14 04:42:42', '2022-05-14 04:42:42'),
(162, 'SO-122050002', 'FF-006', 'PAK', 60, 8243, 8243, 1, 494580, '2022-05-17 03:53:24', '2022-05-17 03:53:24'),
(163, 'SO-122050002', 'FF-009', 'PAK', 40, 8243, 8243, 2, 329720, '2022-05-17 03:53:24', '2022-05-17 03:53:24'),
(164, 'SO-122050002', 'FF-005', 'PAK', 400, 8333, 8333, 3, 3333200, '2022-05-17 03:53:24', '2022-05-17 03:53:24'),
(165, 'SO-122050003', 'FF-006', 'PAK', 60, 8243, 8243, 1, 494580, '2022-05-17 04:12:36', '2022-05-17 04:12:36'),
(166, 'SO-122050003', 'FF-009', 'PAK', 40, 8243, 8243, 2, 329720, '2022-05-17 04:12:36', '2022-05-17 04:12:36'),
(167, 'SO-122050003', 'FF-002', 'PAK', 400, 7703, 7703, 3, 3081200, '2022-05-17 04:12:36', '2022-05-17 04:12:36'),
(168, 'SO-122050004', 'FF-002', 'PAK', 300, 7613, 7613, 1, 2283900, '2022-05-19 08:38:49', '2022-05-19 08:38:49'),
(169, 'SO-122050004', 'FF-006', 'PAK', 140, 8018, 8018, 2, 1122520, '2022-05-19 08:38:49', '2022-05-19 08:38:49'),
(170, 'SO-122050004', 'FF-007', 'PAK', 460, 8018, 8018, 3, 3688280, '2022-05-19 08:38:49', '2022-05-19 08:38:49'),
(171, 'SO-122050004', 'FF-009', 'PAK', 140, 8018, 8018, 4, 1122520, '2022-05-19 08:38:49', '2022-05-19 08:38:49'),
(172, 'SO-122050005', 'FF-007', 'PAK', 20, 8018, 8018, 1, 160360, '2022-05-19 08:49:34', '2022-05-19 08:49:34'),
(173, 'SO-122050005', 'FF-009', 'PAK', 20, 8018, 8018, 2, 160360, '2022-05-19 08:49:34', '2022-05-19 08:49:34'),
(174, 'SO-122050006', 'FF-002', 'PAK', 20, 7613, 7613, 1, 152260, '2022-05-19 08:53:45', '2022-05-19 08:53:45'),
(175, 'SO-122050006', 'FF-006', 'PAK', 30, 8018, 8018, 2, 240540, '2022-05-19 08:53:45', '2022-05-19 08:53:45'),
(176, 'SO-122050006', 'FF-007', 'PAK', 40, 8018, 8018, 3, 320720, '2022-05-19 08:53:45', '2022-05-19 08:53:45'),
(177, 'SO-122050006', 'FF-009', 'PAK', 10, 8018, 8018, 4, 80180, '2022-05-19 08:53:45', '2022-05-19 08:53:45'),
(178, 'SO-122050007', 'FF-002', 'PAK', 20, 7613, 7613, 1, 152260, '2022-05-19 09:04:11', '2022-05-19 09:04:11'),
(179, 'SO-122050007', 'FF-006', 'PAK', 20, 8018, 8018, 2, 160360, '2022-05-19 09:04:11', '2022-05-19 09:04:11'),
(180, 'SO-122050007', 'FF-007', 'PAK', 100, 8018, 8018, 3, 801800, '2022-05-19 09:04:11', '2022-05-19 09:04:11'),
(181, 'SO-122050007', 'FF-009', 'PAK', 20, 8018, 8018, 4, 160360, '2022-05-19 09:04:11', '2022-05-19 09:04:11'),
(182, 'SO-122050008', 'FF-002', 'PAK', 20, 7658, 7658, 1, 153160, '2022-05-19 09:10:06', '2022-05-19 09:10:06'),
(183, 'SO-122050008', 'FF-006', 'PAK', 100, 8108, 8108, 2, 810800, '2022-05-19 09:10:06', '2022-05-19 09:10:06'),
(184, 'SO-122050008', 'FF-007', 'PAK', 140, 8108, 8108, 3, 1135120, '2022-05-19 09:10:06', '2022-05-19 09:10:06'),
(185, 'SO-122050008', 'FF-009', 'PAK', 100, 8108, 8108, 4, 810800, '2022-05-19 09:10:06', '2022-05-19 09:10:06'),
(186, 'SO-122050009', 'FF-002', 'PAK', 100, 7658, 7658, 1, 765800, '2022-05-19 09:16:42', '2022-05-19 09:16:42'),
(187, 'SO-122050009', 'FF-006', 'PAK', 20, 8018, 8018, 2, 160360, '2022-05-19 09:16:42', '2022-05-19 09:16:42'),
(188, 'SO-122050009', 'FF-007', 'PAK', 120, 8018, 8018, 3, 962160, '2022-05-19 09:16:42', '2022-05-19 09:16:42'),
(189, 'SO-122050009', 'FF-009', 'PAK', 60, 8018, 8018, 4, 481080, '2022-05-19 09:16:42', '2022-05-19 09:16:42'),
(190, 'SO-122050010', 'FF-002', 'PAK', 400, 7703, 7703, 1, 3081200, '2022-05-19 09:23:54', '2022-05-19 09:23:54'),
(191, 'SO-122050010', 'FF-006', 'PAK', 60, 8243, 8243, 2, 494580, '2022-05-19 09:23:54', '2022-05-19 09:23:54'),
(192, 'SO-122050010', 'FF-009', 'PAK', 40, 8243, 8243, 3, 329720, '2022-05-19 09:23:54', '2022-05-19 09:23:54'),
(193, 'SO-122050011', 'FF-002', 'PAK', 280, 7613, 7613, 1, 2131640, '2022-05-20 01:30:51', '2022-05-20 01:30:51'),
(194, 'SO-122050012', 'FF-002', 'PAK', 280, 7613, 7613, 1, 2131640, '2022-05-20 01:52:31', '2022-05-20 01:52:31'),
(195, 'SO-122050013', 'FF-006', 'PAK', 20, 8018, 8018, 1, 160360, '2022-05-20 01:59:17', '2022-05-20 01:59:17'),
(196, 'SO-122050013', 'FF-007', 'PAK', 40, 8018, 8018, 2, 320720, '2022-05-20 01:59:17', '2022-05-20 01:59:17'),
(197, 'SO-122050014', 'FF-006', 'PAK', 60, 8018, 8018, 1, 481080, '2022-05-20 02:09:20', '2022-05-20 02:09:20'),
(198, 'SO-122050014', 'FF-007', 'PAK', 140, 8018, 8018, 2, 1122520, '2022-05-20 02:09:20', '2022-05-20 02:09:20'),
(199, 'SO-122050014', 'FF-009', 'PAK', 20, 8018, 8018, 3, 160360, '2022-05-20 02:09:20', '2022-05-20 02:09:20'),
(200, 'SO-122050014', 'FF-002', 'PAK', 80, 7658, 7658, 4, 612640, '2022-05-20 02:09:20', '2022-05-20 02:09:20'),
(201, 'SO-122050015', 'FF-007', 'PAK', 120, 8018, 8018, 1, 962160, '2022-05-20 02:21:07', '2022-05-20 02:21:07'),
(202, 'SO-122050015', 'FF-002', 'PAK', 40, 7613, 7613, 2, 304520, '2022-05-20 02:21:07', '2022-05-20 02:21:07'),
(203, 'SO-122050016', 'FF-007', 'PAK', 20, 8018, 8018, 1, 160360, '2022-05-20 02:28:17', '2022-05-20 02:28:17'),
(204, 'SO-122050017', 'FF-006', 'PAK', 40, 8018, 8018, 1, 320720, '2022-05-20 02:42:58', '2022-05-20 02:42:58'),
(205, 'SO-122050017', 'FF-007', 'PAK', 100, 8018, 8018, 2, 801800, '2022-05-20 02:42:58', '2022-05-20 02:42:58'),
(206, 'SO-122050017', 'FF-009', 'PAK', 20, 8018, 8018, 3, 160360, '2022-05-20 02:42:58', '2022-05-20 02:42:58'),
(207, 'SO-122050018', 'FF-006', 'PAK', 100, 8018, 8018, 1, 801800, '2022-05-20 03:55:55', '2022-05-20 03:55:55'),
(208, 'SO-122050018', 'FF-007', 'PAK', 120, 8108, 8108, 2, 972960, '2022-05-20 03:55:55', '2022-05-20 03:55:55'),
(209, 'SO-122050018', 'FF-009', 'PAK', 60, 8108, 8108, 3, 486480, '2022-05-20 03:55:55', '2022-05-20 03:55:55'),
(210, 'SO-122050018', 'FF-002', 'PAK', 120, 8300, 8300, 4, 996000, '2022-05-20 03:55:55', '2022-05-20 03:55:55'),
(211, 'SO-122050019', 'FF-006', 'PAK', 20, 9000, 9000, 1, 180000, '2022-05-20 04:09:48', '2022-05-20 04:09:48'),
(212, 'SO-122050019', 'FF-007', 'PAK', 60, 9000, 9000, 2, 540000, '2022-05-20 04:09:48', '2022-05-20 04:09:48'),
(213, 'SO-122050019', 'FF-009', 'PAK', 20, 9000, 9000, 3, 180000, '2022-05-20 04:09:48', '2022-05-20 04:09:48'),
(214, 'SO-122050019', 'FF-002', 'PAK', 40, 8500, 8500, 4, 340000, '2022-05-20 04:09:48', '2022-05-20 04:09:48'),
(215, 'SO-122050020', 'FF-007', 'PAK', 60, 8018, 8018, 1, 481080, '2022-05-20 04:27:02', '2022-05-20 04:27:02'),
(216, 'SO-122050020', 'FF-002', 'PAK', 20, 8450, 8450, 2, 169000, '2022-05-20 04:27:02', '2022-05-20 04:27:02'),
(217, 'SO-122050021', 'FF-007', 'PAK', 20, 8018, 8018, 1, 160360, '2022-05-20 04:34:37', '2022-05-20 04:34:37'),
(218, 'SO-122050021', 'FF-009', 'PAK', 20, 8018, 8018, 2, 160360, '2022-05-20 04:34:37', '2022-05-20 04:34:37'),
(219, 'SO-122050022', 'FF-006', 'PAK', 40, 8018, 8018, 1, 320720, '2022-05-21 04:54:30', '2022-05-21 04:54:30'),
(220, 'SO-122050022', 'FF-007', 'PAK', 160, 8018, 8018, 2, 1282880, '2022-05-21 04:54:30', '2022-05-21 04:54:30'),
(221, 'SO-122050022', 'FF-009', 'PAK', 40, 8018, 8018, 3, 320720, '2022-05-21 04:54:30', '2022-05-21 04:54:30'),
(222, 'SO-122050023', 'FF-006', 'PAK', 20, 8018, 8018, 1, 160360, '2022-05-21 04:57:46', '2022-05-21 04:57:46'),
(223, 'SO-122050023', 'FF-007', 'PAK', 20, 8018, 8018, 2, 160360, '2022-05-21 04:57:46', '2022-05-21 04:57:46'),
(224, 'SO-122050024', 'FF-006', 'PAK', 100, 8018, 8018, 1, 801800, '2022-05-21 07:36:49', '2022-05-21 07:36:49'),
(225, 'SO-122050024', 'FF-007', 'PAK', 120, 8018, 8018, 2, 962160, '2022-05-21 07:36:49', '2022-05-21 07:36:49'),
(226, 'SO-122050024', 'FF-009', 'PAK', 60, 8018, 8018, 3, 481080, '2022-05-21 07:36:49', '2022-05-21 07:36:49'),
(227, 'SO-122050024', 'FF-002', 'PAK', 120, 7477, 7477, 4, 897240, '2022-05-21 07:36:49', '2022-05-21 07:36:49'),
(228, 'SO-122050025', 'FF-006', 'PAK', 100, 8018, 8018, 1, 801800, '2022-05-23 01:54:54', '2022-05-23 01:54:54'),
(229, 'SO-122050025', 'FF-007', 'PAK', 160, 8018, 8018, 2, 1282880, '2022-05-23 01:54:54', '2022-05-23 01:54:54'),
(230, 'SO-122050025', 'FF-009', 'PAK', 60, 8018, 8018, 3, 481080, '2022-05-23 01:54:54', '2022-05-23 01:54:54'),
(231, 'SO-122050025', 'FF-005', 'PAK', 300, 8153, 8153, 4, 2445900, '2022-05-23 01:54:54', '2022-05-23 01:54:54'),
(232, 'SO-122050026', 'FF-006', 'PAK', 20, 8018, 8018, 1, 160360, '2022-05-23 03:55:39', '2022-05-23 03:55:39'),
(233, 'SO-122050026', 'FF-007', 'PAK', 20, 8018, 8018, 2, 160360, '2022-05-23 03:55:39', '2022-05-23 03:55:39'),
(234, 'SO-122050027', 'FF-007', 'PAK', 100, 8018, 8018, 1, 801800, '2022-05-23 04:00:25', '2022-05-23 04:00:25'),
(235, 'SO-122050028', 'FF-006', 'PAK', 60, 8018, 8018, 1, 481080, '2022-05-23 04:09:00', '2022-05-23 04:09:00'),
(236, 'SO-122050028', 'FF-007', 'PAK', 80, 8018, 8018, 2, 641440, '2022-05-23 04:09:00', '2022-05-23 04:09:00'),
(237, 'SO-122050028', 'FF-009', 'PAK', 60, 8018, 8018, 3, 481080, '2022-05-23 04:09:00', '2022-05-23 04:09:00'),
(238, 'SO-122050028', 'FF-002', 'PAK', 100, 7658, 7658, 4, 765800, '2022-05-23 04:09:00', '2022-05-23 04:09:00'),
(239, 'SO-122050029', 'FF-006', 'PAK', 100, 8108, 8108, 1, 810800, '2022-05-23 04:13:56', '2022-05-23 04:13:56'),
(240, 'SO-122050029', 'FF-007', 'PAK', 140, 8108, 8108, 2, 1135120, '2022-05-23 04:13:56', '2022-05-23 04:13:56'),
(241, 'SO-122050029', 'FF-009', 'PAK', 80, 8108, 8108, 3, 648640, '2022-05-23 04:13:56', '2022-05-23 04:13:56'),
(242, 'SO-122050029', 'FF-002', 'PAK', 20, 7658, 7658, 4, 153160, '2022-05-23 04:13:56', '2022-05-23 04:13:56'),
(243, 'SO-122050030', 'FF-006', 'PAK', 100, 8018, 8018, 1, 801800, '2022-05-23 04:16:57', '2022-05-23 04:16:57'),
(244, 'SO-122050030', 'FF-007', 'PAK', 120, 8018, 8018, 2, 962160, '2022-05-23 04:16:57', '2022-05-23 04:16:57'),
(245, 'SO-122050030', 'FF-009', 'PAK', 120, 8018, 8018, 3, 962160, '2022-05-23 04:16:57', '2022-05-23 04:16:57'),
(246, 'SO-022110001', 'FF-012', 'PCS', 2, 32000, 32000, 1, 64000, '2022-11-11 06:14:06', '2022-11-11 06:14:06'),
(247, 'SO-022110002', 'FF-012', 'PCS', 1, 32000, 32000, 1, 32000, '2022-11-11 06:23:39', '2022-11-11 06:23:39'),
(248, 'SO-022120001', 'FF-002', 'PAK', 10, 15000, 15000, 1, 150000, '2022-12-06 16:33:08', '2022-12-06 16:33:08'),
(249, 'SO-022120001', 'FF-003', 'PAK', 5, 20000, 20000, 2, 100000, '2022-12-06 16:33:08', '2022-12-06 16:33:08'),
(250, 'SO-022120002', 'FF-004', 'PAK', 5, 12000, 12000, 1, 60000, '2022-12-06 16:35:29', '2022-12-06 16:35:29'),
(251, 'SO-022120002', 'FF-005', 'PAK', 5, 13000, 13000, 2, 65000, '2022-12-06 16:35:29', '2022-12-06 16:35:29'),
(252, 'SO-023040001', 'FF-013', 'Dus', 1, 10000, 10000, 1, 10000, '2023-04-28 17:37:05', '2023-04-28 17:37:05');

-- --------------------------------------------------------

--
-- Struktur dari tabel `penerimaanbarangdetails`
--

CREATE TABLE `penerimaanbarangdetails` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `KodePenerimaanBarang` varchar(100) NOT NULL,
  `KodeItem` varchar(100) NOT NULL,
  `KodeSatuan` varchar(100) DEFAULT NULL,
  `Harga` double DEFAULT NULL,
  `Qty` double NOT NULL,
  `Keterangan` varchar(100) DEFAULT NULL,
  `NoUrut` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `penerimaanbarangdetails`
--

INSERT INTO `penerimaanbarangdetails` (`id`, `KodePenerimaanBarang`, `KodeItem`, `KodeSatuan`, `Harga`, `Qty`, `Keterangan`, `NoUrut`, `created_at`, `updated_at`) VALUES
(1, 'LPB-022110001', 'FF-012', 'Dus', 300000, 2, '-', 1, '2022-11-11 05:49:11', '2022-11-11 05:49:11'),
(2, 'LPB-022110002', 'FF-012', 'PCS', 30000, 10, '-', 1, '2022-11-11 06:48:40', '2022-11-11 06:48:40'),
(3, 'LPB-022120001', 'FF-003', 'PAK', 15000, 10, '-', 1, '2022-12-06 17:17:25', '2022-12-06 17:17:25'),
(4, 'LPB-023030001', 'FF-015', 'PCS', 10000, 10, '-', 1, '2023-03-02 16:23:35', '2023-03-02 16:23:35'),
(5, 'LPB-023030001', 'FF-013', 'Dus', 8000, 10, '-', 2, '2023-03-02 16:23:35', '2023-03-02 16:23:35'),
(6, 'LPB-023040001', 'BB-003', 'PCS', 30000, 100, '-', 1, '2023-04-13 14:49:17', '2023-04-13 14:49:17'),
(7, 'LPB-023040002', 'FF-013', 'Dus', 8000, 10, '-', 1, '2023-04-28 17:52:42', '2023-04-28 17:52:42'),
(8, 'LPB-023050001', 'FF-012', 'PCS', 30000, 8, '-', 1, '2023-05-23 12:45:16', '2023-05-23 12:45:16');

-- --------------------------------------------------------

--
-- Struktur dari tabel `penerimaanbarangreturndetails`
--

CREATE TABLE `penerimaanbarangreturndetails` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `KodePenerimaanBarangReturn` varchar(100) NOT NULL,
  `KodeItem` varchar(100) NOT NULL,
  `KodeSatuan` varchar(100) DEFAULT NULL,
  `Harga` double DEFAULT NULL,
  `Qty` double NOT NULL,
  `Keterangan` varchar(100) DEFAULT NULL,
  `NoUrut` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `penerimaanbarangreturns`
--

CREATE TABLE `penerimaanbarangreturns` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `KodePenerimaanBarangReturn` varchar(100) NOT NULL,
  `Tanggal` date NOT NULL,
  `Status` varchar(100) NOT NULL,
  `KodeUser` varchar(100) NOT NULL,
  `KodeLokasi` varchar(100) NOT NULL,
  `KodeSupplier` varchar(100) NOT NULL,
  `Keterangan` varchar(191) DEFAULT NULL,
  `Total` double NOT NULL,
  `PPN` varchar(100) NOT NULL,
  `NilaiPPN` double NOT NULL,
  `Printed` double NOT NULL,
  `Diskon` double NOT NULL,
  `NilaiDiskon` double NOT NULL,
  `Subtotal` double NOT NULL,
  `KodePenerimaanBarang` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `penerimaanbarangs`
--

CREATE TABLE `penerimaanbarangs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `KodePenerimaanBarang` varchar(100) NOT NULL,
  `Tanggal` date NOT NULL,
  `KodeLokasi` varchar(100) NOT NULL,
  `KodeMataUang` varchar(100) DEFAULT NULL,
  `Status` varchar(100) DEFAULT NULL,
  `KodeUser` varchar(100) DEFAULT NULL,
  `Total` double NOT NULL,
  `PPN` varchar(100) NOT NULL,
  `NilaiPPN` double NOT NULL,
  `Printed` double DEFAULT NULL,
  `Diskon` double NOT NULL,
  `NilaiDiskon` double NOT NULL,
  `Subtotal` double NOT NULL,
  `KodeSupplier` varchar(100) NOT NULL,
  `KodeSales` varchar(191) DEFAULT NULL,
  `TotalItem` varchar(191) DEFAULT NULL,
  `Keterangan` varchar(191) DEFAULT NULL,
  `KodeSJ` varchar(191) DEFAULT NULL,
  `KodePO` varchar(100) NOT NULL,
  `NoFaktur` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `penerimaanbarangs`
--

INSERT INTO `penerimaanbarangs` (`id`, `KodePenerimaanBarang`, `Tanggal`, `KodeLokasi`, `KodeMataUang`, `Status`, `KodeUser`, `Total`, `PPN`, `NilaiPPN`, `Printed`, `Diskon`, `NilaiDiskon`, `Subtotal`, `KodeSupplier`, `KodeSales`, `TotalItem`, `Keterangan`, `KodeSJ`, `KodePO`, `NoFaktur`, `created_at`, `updated_at`) VALUES
(1, 'LPB-022110001', '2022-11-11', 'GUD-001', 'Rp', 'CFM', 'admin', 0, 'tidak', 0, 0, 0, 0, 600000, 'SUP-001', 'KAR-014', '2', '-', '-', 'PO-022110001', NULL, '2022-11-11 05:49:11', '2022-11-11 05:49:26'),
(2, 'LPB-022110002', '2022-11-11', 'GUD-001', 'Rp', 'CFM', 'admin', 0, 'tidak', 0, 0, 0, 0, 300000, 'SUP-001', NULL, NULL, NULL, NULL, 'PO-022110002', '-', '2022-11-11 06:48:40', '2022-11-11 06:48:40'),
(3, 'LPB-022120001', '2022-12-07', 'GUD-001', 'Rp', 'CFM', 'admin', 0, 'tidak', 0, 0, 0, 0, 150000, 'SUP-001', NULL, NULL, NULL, NULL, 'PO-022120001', '-', '2022-12-06 17:17:25', '2022-12-06 17:17:25'),
(4, 'LPB-023030001', '2023-03-02', 'GUD-001', 'Rp', 'CFM', 'admin', 0, 'tidak', 0, 0, 0, 0, 180000, 'SUP-001', NULL, NULL, NULL, NULL, 'PO-023030001', '-', '2023-03-02 16:23:35', '2023-03-02 16:23:35'),
(5, 'LPB-023040001', '2023-04-13', 'GUD-001', 'Rp', 'CFM', 'admin', 0, 'tidak', 0, 0, 0, 0, 3000000, 'SUP-001', NULL, NULL, NULL, NULL, 'PO-023040001', '-', '2023-04-13 14:49:17', '2023-04-13 14:49:17'),
(6, 'LPB-023040002', '2023-04-28', 'GUD-001', 'Rp', 'CFM', 'KASIR', 0, 'tidak', 0, 0, 0, 0, 80000, 'SUP-001', NULL, NULL, NULL, NULL, 'PO-023040002', '-', '2023-04-28 17:52:42', '2023-04-28 17:52:42'),
(7, 'LPB-023050001', '2023-05-23', 'GUD-002', 'Rp', 'CFM', 'admin', 0, 'tidak', 0, 0, 0, 0, 240000, 'SUP-001', NULL, NULL, NULL, NULL, 'PO-023050001', '-', '2023-05-23 12:45:16', '2023-05-23 12:45:16');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengeluarantambahans`
--

CREATE TABLE `pengeluarantambahans` (
  `id` int(11) UNSIGNED NOT NULL,
  `KodePengeluaran` varchar(191) NOT NULL,
  `Nama` varchar(191) NOT NULL,
  `Karyawan` varchar(191) NOT NULL,
  `Tanggal` date NOT NULL,
  `KodeLokasi` varchar(191) NOT NULL,
  `KodeMataUang` varchar(191) NOT NULL,
  `Metode` varchar(191) NOT NULL,
  `Transaksi` varchar(191) NOT NULL,
  `Total` double NOT NULL,
  `KodeUser` varchar(191) NOT NULL,
  `Keterangan` varchar(999) DEFAULT NULL,
  `Status` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `penggunas`
--

CREATE TABLE `penggunas` (
  `KodeUser` varchar(191) NOT NULL,
  `Password` varchar(191) NOT NULL,
  `NamaUser` varchar(191) NOT NULL,
  `TanggalDaftar` varchar(191) NOT NULL,
  `Aktif` varchar(191) NOT NULL,
  `Keterangan` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `penjualanlangsungdetails`
--

CREATE TABLE `penjualanlangsungdetails` (
  `id` int(11) UNSIGNED NOT NULL,
  `KodePenjualanLangsung` varchar(191) NOT NULL,
  `KodeItem` varchar(191) NOT NULL,
  `KodeSatuan` varchar(191) NOT NULL,
  `Qty` double NOT NULL,
  `Harga` double NOT NULL,
  `Keterangan` varchar(191) NOT NULL,
  `NoUrut` int(11) NOT NULL,
  `Subtotal` double NOT NULL,
  `Diskon` double NOT NULL,
  `NilaiDiskon` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `penjualanlangsungreturndetails`
--

CREATE TABLE `penjualanlangsungreturndetails` (
  `KodePenjualanLangsungReturn` varchar(191) NOT NULL,
  `KodeItem` varchar(191) NOT NULL,
  `KodeSatuan` varchar(191) NOT NULL,
  `Qty` double NOT NULL,
  `Harga` double NOT NULL,
  `Keterangan` varchar(191) NOT NULL,
  `NoUrut` int(11) NOT NULL,
  `Subtotal` double NOT NULL,
  `Diskon` double NOT NULL,
  `NilaiDiskon` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `penjualanlangsungreturns`
--

CREATE TABLE `penjualanlangsungreturns` (
  `KodePenjualanLangsungReturn` varchar(191) NOT NULL,
  `Tanggal` datetime NOT NULL,
  `KodePenjualanLangsung` varchar(191) NOT NULL,
  `Status` varchar(191) NOT NULL,
  `KodeUser` varchar(191) NOT NULL,
  `Total` double NOT NULL,
  `PPN` varchar(191) NOT NULL,
  `NilaiPPN` double NOT NULL,
  `Printed` double NOT NULL,
  `Diskon` double NOT NULL,
  `NilaiDiskon` double NOT NULL,
  `Subtotal` double NOT NULL,
  `KodePelanggan` varchar(191) NOT NULL,
  `NoIndeks` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `penjualanlangsungs`
--

CREATE TABLE `penjualanlangsungs` (
  `KodePenjualanLangsung` varchar(191) NOT NULL,
  `Tanggal` date NOT NULL,
  `KodeLokasi` varchar(191) NOT NULL,
  `KodeMataUang` varchar(191) NOT NULL,
  `Status` varchar(191) NOT NULL,
  `KodeUser` varchar(191) NOT NULL,
  `Total` double NOT NULL,
  `PPN` varchar(191) NOT NULL,
  `NilaiPPN` double NOT NULL,
  `Printed` double NOT NULL,
  `Diskon` double NOT NULL,
  `NilaiDiskon` double NOT NULL,
  `Subtotal` double NOT NULL,
  `KodePelanggan` varchar(191) NOT NULL,
  `NoIndeks` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `perizinan`
--

CREATE TABLE `perizinan` (
  `ID` int(11) NOT NULL,
  `KodeDokumen` varchar(191) NOT NULL,
  `NamaDokumen` varchar(191) NOT NULL,
  `TanggalBerakhir` date NOT NULL,
  `TanggalPeringatan` date NOT NULL,
  `Status` varchar(191) NOT NULL,
  `Tahun` varchar(191) NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pindahgudangdetails`
--

CREATE TABLE `pindahgudangdetails` (
  `id` int(11) NOT NULL,
  `KodePindah` varchar(191) NOT NULL,
  `KodeItem` varchar(191) NOT NULL,
  `KodeSatuan` varchar(191) NOT NULL,
  `Qty` double NOT NULL,
  `Keterangan` varchar(191) NOT NULL,
  `NoUrut` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pindahgudangdetails`
--

INSERT INTO `pindahgudangdetails` (`id`, `KodePindah`, `KodeItem`, `KodeSatuan`, `Qty`, `Keterangan`, `NoUrut`, `created_at`, `updated_at`) VALUES
(1, 'WHT-23010001', 'FF-003', 'PAK', 4, '-', 1, '2023-01-24 11:56:01', '2023-01-24 11:56:01'),
(2, 'WHT-23010002', 'FF-003', 'PAK', 4, '-', 1, '2023-01-24 12:05:18', '2023-01-24 12:05:18'),
(4, 'WHT-23010004', 'FF-003', 'PAK', 4, '-', 1, '2023-01-24 12:10:47', '2023-01-24 12:10:47'),
(5, 'WHT-23010003', 'FF-003', 'PAK', 10, 'null', 1, '2023-01-24 12:17:12', '2023-01-24 12:17:12'),
(8, 'WHT-23020001', 'FF-002', 'PAK', 4, '-', 1, '2023-02-15 08:10:48', '2023-02-15 08:10:48'),
(9, 'WHT-23020001', 'FF-003', 'PAK', 2, '-', 2, '2023-02-15 08:10:48', '2023-02-15 08:10:48'),
(11, 'WHT-23020002', 'FF-003', 'PAK', 1, '-', 1, '2023-02-15 08:11:37', '2023-02-15 08:11:37'),
(12, 'WHT-23030001', 'BB-001', 'SAK', 1, 'Test', 1, '2023-03-02 04:06:15', '2023-03-02 04:06:15'),
(13, 'WHT-23050002', 'FF-002', 'PAK', 1, 'Ii', 1, '2023-05-10 04:11:35', '2023-05-10 04:11:35'),
(14, 'WHT-23050003', 'BB-001', 'SAK', 1, '-', 1, '2023-05-12 06:41:18', '2023-05-12 06:41:18'),
(15, 'WHT-23050003', 'FF-001', 'PAK', 1, '-', 2, '2023-05-12 06:41:18', '2023-05-12 06:41:18'),
(16, 'WHT-23050003', 'FF-002', 'PAK', 5, '-', 3, '2023-05-12 06:41:18', '2023-05-12 06:41:18'),
(17, 'WHT-23050004', 'FF-012', 'PCS', 2, '-', 1, '2023-05-23 01:42:07', '2023-05-23 01:42:07'),
(18, 'WHT-23050005', 'FF-012', 'PCS', 2, 'G', 1, '2023-05-23 01:53:04', '2023-05-23 01:53:04'),
(19, 'WHT-23050006', 'FF-015', 'PCS', 5, '-', 1, '2023-05-23 02:09:19', '2023-05-23 02:09:19'),
(20, 'WHT-23050007', 'FF-015', 'PCS', 5, '-', 1, '2023-05-23 02:13:39', '2023-05-23 02:13:39'),
(21, 'WHT-23050008', 'FF-015', 'PCS', 5, '-', 1, '2023-05-23 02:34:50', '2023-05-23 02:34:50'),
(22, 'WHT-23050009', 'FF-015', 'PCS', 5, 'G', 1, '2023-05-23 02:37:57', '2023-05-23 02:37:57'),
(23, 'WHT-23050010', 'FF-015', 'PCS', 10, '-', 1, '2023-05-23 02:43:47', '2023-05-23 02:43:47'),
(24, 'WHT-23050011', 'FF-015', 'PCS', 10, '-', 1, '2023-05-23 03:00:14', '2023-05-23 03:00:14'),
(25, 'WHT-23050012', 'FF-015', 'PCS', 10, '-', 1, '2023-05-23 03:03:24', '2023-05-23 03:03:24'),
(26, 'WHT-23050013', 'FF-002', 'PAK', 1, '-', 1, '2023-05-23 03:45:05', '2023-05-23 03:45:05'),
(27, 'WHT-23060001', 'FF-002', 'PAK', 1, '-', 1, '2023-06-13 04:36:44', '2023-06-13 04:36:44'),
(29, 'WHT-23070001', 'FF-002', 'PAK', 1, 'test ubah 1', 1, '2023-07-01 03:45:25', '2023-07-01 03:45:25');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pindahgudangs`
--

CREATE TABLE `pindahgudangs` (
  `id` int(11) NOT NULL,
  `KodePindah` varchar(191) NOT NULL,
  `KodeUser` varchar(191) NOT NULL,
  `Status` varchar(191) NOT NULL,
  `DariLokasi` varchar(191) NOT NULL,
  `KeLokasi` varchar(191) NOT NULL,
  `Tanggal` datetime NOT NULL,
  `Keterangan` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pindahgudangs`
--

INSERT INTO `pindahgudangs` (`id`, `KodePindah`, `KodeUser`, `Status`, `DariLokasi`, `KeLokasi`, `Tanggal`, `Keterangan`, `created_at`, `updated_at`) VALUES
(1, 'WHT-23010001', 'Ardian', 'DEL', 'GUD-001', 'GUD-002', '2023-01-24 00:00:00', '-', '2023-01-24 11:56:01', '2023-01-24 12:17:21'),
(2, 'WHT-23010002', 'Ardian', 'DEL', 'GUD-001', 'GUD-002', '2023-01-24 00:00:00', '-', '2023-01-24 12:05:18', '2023-01-24 12:17:18'),
(3, 'WHT-23010003', 'Ardian', 'CFM', 'GUD-001', 'GUD-002', '2023-01-11 00:00:00', 'null', '2023-01-24 12:06:43', '2023-01-24 12:17:16'),
(4, 'WHT-23010004', 'Ardian', 'CFM', 'GUD-001', 'GUD-002', '2023-01-24 00:00:00', '-', '2023-01-24 12:10:47', '2023-01-24 12:11:56'),
(5, 'WHT-23020001', 'Ardian', 'CFM', 'GUD-001', 'GUD-002', '2023-02-15 00:00:00', '-', '2023-02-15 08:10:35', '2023-02-15 08:10:52'),
(6, 'WHT-23020002', 'Ardian', 'DEL', 'GUD-002', 'GUD-001', '2023-02-15 00:00:00', '-', '2023-02-15 08:11:31', '2023-02-15 08:11:40'),
(7, 'WHT-23030001', 'Ardian', 'DEL', 'GUD-001', 'GUD-002', '2023-03-01 00:00:00', 'Test', '2023-03-02 04:06:15', '2023-03-02 04:06:48'),
(8, 'WHT-23050001', 'Ardian', 'OPN', 'GUD-001', 'GUD-002', '2023-05-10 00:00:00', 'Ii', '2023-05-10 04:11:27', '2023-05-10 04:11:27'),
(9, 'WHT-23050002', 'Ardian', 'OPN', 'GUD-001', 'GUD-002', '2023-05-10 00:00:00', 'Ii', '2023-05-10 04:11:35', '2023-05-10 04:11:35'),
(10, 'WHT-23050003', 'Ardian', 'DEL', 'GUD-001', 'GUD-002', '2023-05-12 00:00:00', '-', '2023-05-12 06:41:18', '2023-05-12 06:41:25'),
(11, 'WHT-23050004', 'Ardian', 'CFM', 'GUD-001', 'GUD-002', '2023-05-23 00:00:00', '-', '2023-05-23 01:42:07', '2023-05-23 01:42:20'),
(12, 'WHT-23050005', 'Ardian', 'CFM', 'GUD-002', 'GUD-001', '2023-05-23 00:00:00', 'G', '2023-05-23 01:53:04', '2023-05-23 01:54:06'),
(13, 'WHT-23050006', 'Ardian', 'CFM', 'GUD-001', 'GUD-002', '2023-05-22 00:00:00', '-', '2023-05-23 02:09:19', '2023-05-23 02:09:23'),
(14, 'WHT-23050007', 'Ardian', 'CFM', 'GUD-002', 'GUD-001', '2023-05-22 00:00:00', '-', '2023-05-23 02:13:39', '2023-05-23 02:14:07'),
(15, 'WHT-23050008', 'Ardian', 'CFM', 'GUD-001', 'GUD-002', '2023-05-22 00:00:00', '-', '2023-05-23 02:34:50', '2023-05-23 02:34:57'),
(16, 'WHT-23050009', 'Ardian', 'CFM', 'GUD-001', 'GUD-002', '2023-05-23 00:00:00', 'G', '2023-05-23 02:37:57', '2023-05-23 02:38:01'),
(17, 'WHT-23050010', 'Ardian', 'CFM', 'GUD-002', 'GUD-001', '2023-05-23 00:00:00', '-', '2023-05-23 02:43:47', '2023-05-23 02:43:50'),
(18, 'WHT-23050011', 'Ardian', 'CFM', 'GUD-001', 'GUD-002', '2023-05-22 00:00:00', '-', '2023-05-23 03:00:14', '2023-05-23 03:00:18'),
(19, 'WHT-23050012', 'Ardian', 'CFM', 'GUD-002', 'GUD-001', '2023-05-22 00:00:00', '-', '2023-05-23 03:03:24', '2023-05-23 03:03:28'),
(20, 'WHT-23050013', 'Ardian', 'OPN', 'GUD-001', 'GUD-002', '2023-05-23 00:00:00', '-', '2023-05-23 03:45:05', '2023-05-23 03:45:05'),
(21, 'WHT-23060001', 'Ardian', 'OPN', 'GUD-001', 'GUD-002', '2023-06-13 00:00:00', '-', '2023-06-13 04:36:44', '2023-06-13 04:36:44'),
(22, 'WHT-23070001', 'Ardian', 'CFM', 'GUD-001', 'GUD-002', '2023-07-01 00:00:00', 'test ubah 1', '2023-07-01 03:45:03', '2023-07-08 04:45:27');

-- --------------------------------------------------------

--
-- Struktur dari tabel `piutangs`
--

CREATE TABLE `piutangs` (
  `KodePiutang` varchar(191) NOT NULL,
  `Tanggal` datetime NOT NULL,
  `KodePelanggan` varchar(191) NOT NULL,
  `Status` varchar(191) NOT NULL,
  `KodeSuratJalan` varchar(191) NOT NULL,
  `Invoice` varchar(191) NOT NULL,
  `Jumlah` double NOT NULL,
  `Keterangan` varchar(191) NOT NULL,
  `KodeMataUang` varchar(191) NOT NULL,
  `KodeUser` varchar(191) NOT NULL,
  `Term` double NOT NULL,
  `Koreksi` varchar(191) NOT NULL,
  `Kembali` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `ppn`
--

CREATE TABLE `ppn` (
  `ID` int(11) NOT NULL,
  `Kode_PPN` varchar(191) NOT NULL,
  `nilai_PPN` int(10) NOT NULL,
  `Status` varchar(191) NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `ppn`
--

INSERT INTO `ppn` (`ID`, `Kode_PPN`, `nilai_PPN`, `Status`, `created_at`, `updated_at`) VALUES
(1, 'PPN-001', 13, 'OPN', '2022-04-13', '2022-11-11'),
(2, 'PPN-002', 12, 'OPN', '2022-11-11', '2022-11-11');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rak_item`
--

CREATE TABLE `rak_item` (
  `nama_rak` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `KodeUser` varchar(255) NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL,
  `KodeRak` varchar(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `rak_item`
--

INSERT INTO `rak_item` (`nama_rak`, `status`, `KodeUser`, `created_at`, `updated_at`, `KodeRak`) VALUES
('RAK A', 'OPN', 'admin', '2022-01-21', '2022-01-21', 'Rak-001');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rugilaba`
--

CREATE TABLE `rugilaba` (
  `KodeTransaksi` varchar(255) NOT NULL,
  `TotalLaba` int(25) NOT NULL,
  `TotalRugi` int(25) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `rugilaba`
--

INSERT INTO `rugilaba` (`KodeTransaksi`, `TotalLaba`, `TotalRugi`, `created_at`) VALUES
('KSR-22110001', 2000, 0, '2022-11-11 06:52:22'),
('KSR-22120001', 0, 0, '2022-12-06 16:47:06'),
('KSR-22120002', 0, 0, '2022-12-06 17:06:13'),
('KSR-22120003', 0, 0, '2022-12-06 17:06:57'),
('KSR-23040003', 20000, 0, '2023-04-13 15:11:59'),
('KSR-23040004', 2000, 0, '2023-04-28 16:37:15'),
('KSR-23040005', 2000, 0, '2023-04-28 17:45:19');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rugilaba_details`
--

CREATE TABLE `rugilaba_details` (
  `KodeTransaksi` varchar(255) NOT NULL,
  `KodeItem` varchar(255) NOT NULL,
  `Laba` int(25) NOT NULL,
  `Rugi` int(25) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `rugilaba_details`
--

INSERT INTO `rugilaba_details` (`KodeTransaksi`, `KodeItem`, `Laba`, `Rugi`, `created_at`) VALUES
('KSR-22110001', 'FF-012', 2000, 0, '2022-11-11 06:52:22'),
('KSR-22120001', 'FF-002', 0, 0, '2022-12-06 16:47:06'),
('KSR-22120002', 'FF-002', 0, 0, '2022-12-06 17:06:13'),
('KSR-22120003', 'FF-002', 0, 0, '2022-12-06 17:06:57'),
('KSR-23040003', 'BB-003', 20000, 0, '2023-04-13 15:11:59'),
('KSR-23040004', 'FF-013', 2000, 0, '2023-04-28 16:36:50'),
('KSR-23040004', 'FF-013', 2000, 0, '2023-04-28 16:37:15'),
('KSR-23040005', 'FF-013', 2000, 0, '2023-04-28 17:45:19');

-- --------------------------------------------------------

--
-- Struktur dari tabel `saldos`
--

CREATE TABLE `saldos` (
  `id` int(11) UNSIGNED NOT NULL,
  `KodeTransaksi` varchar(191) NOT NULL,
  `Transaksi` varchar(191) NOT NULL,
  `Tanggal` date NOT NULL,
  `Jumlah` double NOT NULL,
  `Tipe` varchar(191) NOT NULL,
  `SaldoCash` double NOT NULL,
  `SaldoRekening` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `sales`
--

CREATE TABLE `sales` (
  `KodeSales` varchar(191) NOT NULL,
  `NamaSales` varchar(191) NOT NULL,
  `Kontak` varchar(191) NOT NULL,
  `Status` varchar(191) NOT NULL,
  `KodeKaryawan` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `sales`
--

INSERT INTO `sales` (`KodeSales`, `NamaSales`, `Kontak`, `Status`, `KodeKaryawan`, `created_at`, `updated_at`) VALUES
('SAL-001', 'SALES A', '-', 'OPN', 'KAR-014', '2022-11-11 05:48:25', '2022-11-11 05:48:25');

-- --------------------------------------------------------

--
-- Struktur dari tabel `satuans`
--

CREATE TABLE `satuans` (
  `KodeSatuan` varchar(191) NOT NULL,
  `NamaSatuan` varchar(191) NOT NULL,
  `Status` varchar(191) NOT NULL,
  `KodeUser` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `satuans`
--

INSERT INTO `satuans` (`KodeSatuan`, `NamaSatuan`, `Status`, `KodeUser`, `created_at`, `updated_at`) VALUES
('DOS', 'DOS', 'DEL', 'admin', '2022-02-05 08:15:58', '2022-02-05 08:45:41'),
('Dus', 'DUS', 'OPN', 'admin', '2022-11-11 05:29:24', '2022-11-11 05:29:24'),
('GR', 'GRAM', 'DEL', 'KASIR', '2022-03-02 05:00:01', '2022-04-13 23:48:12'),
('Kardus', 'Kardus', 'DEL', 'admin', '2022-04-13 14:40:36', '2022-05-11 17:42:14'),
('KG', 'KILOGRAM', 'DEL', 'KASIR', '2022-03-07 09:38:27', '2022-04-13 23:48:19'),
('PAK', 'PAK', 'OPN', 'KASIR', '2022-03-02 05:00:43', '2022-03-02 05:00:43'),
('PCS', 'PCS', 'OPN', 'admin', '2022-01-21 04:25:30', '2022-04-13 23:48:25'),
('SAK', 'SAK', 'DEL', 'admin', '2022-04-14 00:19:57', '2022-05-11 17:42:18'),
('Ton', 'Ton', 'OPN', 'admin', '2023-03-08 17:46:41', '2023-03-08 17:46:41');

-- --------------------------------------------------------

--
-- Struktur dari tabel `stokkeluardetails`
--

CREATE TABLE `stokkeluardetails` (
  `KodeStokKeluar` varchar(191) NOT NULL,
  `KodeItem` varchar(191) NOT NULL,
  `KodeSatuan` varchar(191) NOT NULL,
  `Qty` double NOT NULL,
  `Keterangan` varchar(191) NOT NULL,
  `NoUrut` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `stokkeluars`
--

CREATE TABLE `stokkeluars` (
  `KodeStokKeluar` varchar(191) NOT NULL,
  `KodeLokasi` varchar(191) NOT NULL,
  `Tanggal` datetime NOT NULL,
  `Keterangan` varchar(191) DEFAULT NULL,
  `Status` varchar(191) NOT NULL,
  `KodeUser` varchar(191) NOT NULL,
  `TotalItem` double NOT NULL,
  `Printed` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `stokmasukdetails`
--

CREATE TABLE `stokmasukdetails` (
  `KodeStokMasuk` varchar(191) NOT NULL,
  `KodeItem` varchar(191) NOT NULL,
  `KodeSatuan` varchar(191) NOT NULL,
  `Qty` double NOT NULL,
  `Keterangan` varchar(191) NOT NULL,
  `NoUrut` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `stokmasukdetails`
--

INSERT INTO `stokmasukdetails` (`KodeStokMasuk`, `KodeItem`, `KodeSatuan`, `Qty`, `Keterangan`, `NoUrut`, `created_at`, `updated_at`, `id`) VALUES
('SLM-22040001', 'FF-002', 'PAK', 9999, '-', 0, '2022-04-23 21:14:38', '2022-04-23 21:14:38', 0),
('SLM-22040001', 'FF-003', 'PAK', 9999, '-', 0, '2022-04-23 21:14:38', '2022-04-23 21:14:38', 0),
('SLM-22040001', 'FF-004', 'PAK', 9999, '-', 0, '2022-04-23 21:14:38', '2022-04-23 21:14:38', 0),
('SLM-22040001', 'FF-005', 'PAK', 9999, '-', 0, '2022-04-23 21:14:38', '2022-04-23 21:14:38', 0),
('SLM-22040001', 'FF-006', 'PAK', 9999, '-', 0, '2022-04-23 21:14:38', '2022-04-23 21:14:38', 0),
('SLM-22040001', 'FF-007', 'PAK', 9999, '-', 0, '2022-04-23 21:14:38', '2022-04-23 21:14:38', 0),
('SLM-22040001', 'FF-008', 'PAK', 9999, '-', 0, '2022-04-23 21:14:38', '2022-04-23 21:14:38', 0),
('SLM-22040001', 'FF-009', 'PAK', 9999, '-', 0, '2022-04-23 21:14:38', '2022-04-23 21:14:38', 0),
('SLM-22040001', 'FF-0010', 'PAK', 9999, '-', 0, '2022-04-23 21:14:38', '2022-04-23 21:14:38', 0),
('SLM-22040001', 'FF-011', 'PAK', 9999, '-', 0, '2022-04-23 21:14:38', '2022-04-23 21:14:38', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `stokmasuks`
--

CREATE TABLE `stokmasuks` (
  `KodeStokMasuk` varchar(191) NOT NULL,
  `KodeLokasi` varchar(191) NOT NULL,
  `Tanggal` date NOT NULL,
  `Keterangan` varchar(191) DEFAULT NULL,
  `Status` varchar(191) NOT NULL,
  `KodeUser` varchar(191) NOT NULL,
  `TotalItem` double NOT NULL,
  `Printed` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `stokmasuks`
--

INSERT INTO `stokmasuks` (`KodeStokMasuk`, `KodeLokasi`, `Tanggal`, `Keterangan`, `Status`, `KodeUser`, `TotalItem`, `Printed`, `created_at`, `updated_at`) VALUES
('SLM-22040001', 'GUD-001', '2022-04-23', '-', 'CFM', 'may', 99990, 0, '2022-04-23 21:14:38', '2022-04-23 21:14:38');

-- --------------------------------------------------------

--
-- Struktur dari tabel `suppliers`
--

CREATE TABLE `suppliers` (
  `KodeSupplier` varchar(191) NOT NULL,
  `NamaSupplier` varchar(191) NOT NULL,
  `Kontak` varchar(191) NOT NULL,
  `Handphone` varchar(191) DEFAULT NULL,
  `Email` varchar(191) DEFAULT NULL,
  `NIK` varchar(191) DEFAULT NULL,
  `Status` varchar(191) NOT NULL,
  `KodeLokasi` varchar(191) DEFAULT NULL,
  `KodeUser` varchar(191) DEFAULT NULL,
  `Alamat` varchar(191) NOT NULL,
  `Kota` varchar(191) DEFAULT NULL,
  `Provinsi` varchar(191) DEFAULT NULL,
  `Negara` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `suppliers`
--

INSERT INTO `suppliers` (`KodeSupplier`, `NamaSupplier`, `Kontak`, `Handphone`, `Email`, `NIK`, `Status`, `KodeLokasi`, `KodeUser`, `Alamat`, `Kota`, `Provinsi`, `Negara`, `created_at`, `updated_at`) VALUES
('SUP-001', 'CV. Putra Nusa Sejati', '081219491977', NULL, NULL, NULL, 'OPN', NULL, 'admin', 'Surabaya', 'Surabaya', NULL, NULL, '2022-04-14 00:04:33', '2022-04-14 00:04:33');

-- --------------------------------------------------------

--
-- Struktur dari tabel `suratjalandetails`
--

CREATE TABLE `suratjalandetails` (
  `id` int(11) NOT NULL,
  `KodeSuratJalan` varchar(191) NOT NULL,
  `KodeItem` varchar(191) NOT NULL,
  `KodeSatuan` varchar(191) DEFAULT NULL,
  `Qty` double NOT NULL,
  `Harga` double NOT NULL,
  `HargaRata` double NOT NULL,
  `Keterangan` varchar(191) DEFAULT NULL,
  `NoUrut` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `suratjalandetails`
--

INSERT INTO `suratjalandetails` (`id`, `KodeSuratJalan`, `KodeItem`, `KodeSatuan`, `Qty`, `Harga`, `HargaRata`, `Keterangan`, `NoUrut`, `created_at`, `updated_at`) VALUES
(0, 'SJ-022040001', 'FF-002', 'PAK', 10, 8450, 8450, '-', 1, '2022-04-26 18:12:31', '2022-04-26 18:12:31'),
(0, 'SJ-022040001', 'FF-006', 'PAK', 30, 8900, 8900, '-', 2, '2022-04-26 18:12:31', '2022-04-26 18:12:31'),
(0, 'SJ-022040001', 'FF-007', 'PAK', 40, 8900, 8900, '-', 3, '2022-04-26 18:12:31', '2022-04-26 18:12:31'),
(0, 'SJ-022040001', 'FF-009', 'PAK', 30, 8900, 8900, '-', 4, '2022-04-26 18:12:31', '2022-04-26 18:12:31'),
(0, 'SJ-022040002', 'FF-002', 'PAK', 300, 8450, 8450, '-', 1, '2022-04-26 18:18:19', '2022-04-26 18:18:19'),
(0, 'SJ-022040003', 'FF-002', 'PAK', 80, 8300, 8300, '-', 1, '2022-04-26 18:23:36', '2022-04-26 18:23:36'),
(0, 'SJ-022040003', 'FF-006', 'PAK', 40, 8900, 8900, '-', 2, '2022-04-26 18:23:36', '2022-04-26 18:23:36'),
(0, 'SJ-022040003', 'FF-007', 'PAK', 120, 8900, 8900, '-', 3, '2022-04-26 18:23:36', '2022-04-26 18:23:36'),
(0, 'SJ-022040003', 'FF-009', 'PAK', 60, 8900, 8900, '-', 4, '2022-04-26 18:23:36', '2022-04-26 18:23:36'),
(0, 'SJ-022040004', 'FF-002', 'PAK', 40, 8450, 8450, '-', 1, '2022-04-27 18:46:25', '2022-04-27 18:46:25'),
(0, 'SJ-022040004', 'FF-006', 'PAK', 180, 8900, 8900, '-', 2, '2022-04-27 18:46:25', '2022-04-27 18:46:25'),
(0, 'SJ-022040004', 'FF-007', 'PAK', 240, 8900, 8900, '-', 3, '2022-04-27 18:46:25', '2022-04-27 18:46:25'),
(0, 'SJ-022040004', 'FF-009', 'PAK', 80, 8900, 8900, '-', 4, '2022-04-27 18:46:25', '2022-04-27 18:46:25'),
(0, 'SJ-022040005', 'FF-002', 'PAK', 20, 8500, 8500, '-', 1, '2022-04-28 18:00:24', '2022-04-28 18:00:24'),
(0, 'SJ-022040005', 'FF-006', 'PAK', 60, 8900, 8900, '-', 2, '2022-04-28 18:00:24', '2022-04-28 18:00:24'),
(0, 'SJ-022040005', 'FF-007', 'PAK', 180, 8900, 8900, '-', 3, '2022-04-28 18:00:24', '2022-04-28 18:00:24'),
(0, 'SJ-022040005', 'FF-009', 'PAK', 40, 8900, 8900, '-', 4, '2022-04-28 18:00:24', '2022-04-28 18:00:24'),
(0, 'SJ-022040006', 'FF-006', 'PAK', 60, 8900, 8900, '-', 1, '2022-04-28 18:23:20', '2022-04-28 18:23:20'),
(0, 'SJ-022040006', 'FF-007', 'PAK', 240, 8900, 8900, '-', 2, '2022-04-28 18:23:20', '2022-04-28 18:23:20'),
(0, 'SJ-022040007', 'FF-002', 'PAK', 100, 8450, 8450, '-', 1, '2022-04-28 18:31:16', '2022-04-28 18:31:16'),
(0, 'SJ-022040007', 'FF-006', 'PAK', 60, 8900, 8900, '-', 2, '2022-04-28 18:31:16', '2022-04-28 18:31:16'),
(0, 'SJ-022040007', 'FF-007', 'PAK', 300, 8900, 8900, '-', 3, '2022-04-28 18:31:16', '2022-04-28 18:31:16'),
(0, 'SJ-022040007', 'FF-009', 'PAK', 60, 8900, 8900, '-', 4, '2022-04-28 18:31:16', '2022-04-28 18:31:16'),
(0, 'SJ-022040008', 'FF-005', 'PAK', 20, 9050, 9050, '-', 1, '2022-04-28 19:25:16', '2022-04-28 19:25:16'),
(0, 'SJ-022040008', 'FF-006', 'PAK', 70, 8900, 8900, '-', 2, '2022-04-28 19:25:16', '2022-04-28 19:25:16'),
(0, 'SJ-022040008', 'FF-007', 'PAK', 130, 8900, 8900, '-', 3, '2022-04-28 19:25:16', '2022-04-28 19:25:16'),
(0, 'SJ-022040008', 'FF-009', 'PAK', 20, 8900, 8900, '-', 4, '2022-04-28 19:25:16', '2022-04-28 19:25:16'),
(0, 'SJ-022050001', 'FF-002', 'PAK', 100, 8450, 8450, '-', 1, '2022-05-06 18:34:26', '2022-05-06 18:34:26'),
(0, 'SJ-022050001', 'FF-006', 'PAK', 100, 8900, 8900, '-', 2, '2022-05-06 18:34:26', '2022-05-06 18:34:26'),
(0, 'SJ-022050001', 'FF-007', 'PAK', 300, 8900, 8900, '-', 3, '2022-05-06 18:34:26', '2022-05-06 18:34:26'),
(0, 'SJ-022050001', 'FF-009', 'PAK', 100, 8900, 8900, '-', 4, '2022-05-06 18:34:26', '2022-05-06 18:34:26'),
(0, 'SJ-022050002', 'FF-002', 'PAK', 20, 8450, 8450, '-', 1, '2022-05-06 19:01:23', '2022-05-06 19:01:23'),
(0, 'SJ-022050002', 'FF-006', 'PAK', 40, 8900, 8900, '-', 2, '2022-05-06 19:01:23', '2022-05-06 19:01:23'),
(0, 'SJ-022050002', 'FF-007', 'PAK', 40, 8900, 8900, '-', 3, '2022-05-06 19:01:23', '2022-05-06 19:01:23'),
(0, 'SJ-022050002', 'FF-009', 'PAK', 20, 0, 0, '-', 4, '2022-05-06 19:01:23', '2022-05-06 19:01:23'),
(0, 'SJ-022050003', 'FF-006', 'PAK', 20, 8900, 8900, '-', 1, '2022-05-06 19:02:14', '2022-05-06 19:02:14'),
(0, 'SJ-022050003', 'FF-007', 'PAK', 20, 8900, 8900, '-', 2, '2022-05-06 19:02:14', '2022-05-06 19:02:14'),
(0, 'SJ-022050003', 'FF-009', 'PAK', 20, 8900, 8900, '-', 3, '2022-05-06 19:02:14', '2022-05-06 19:02:14'),
(0, 'SJ-122050001', 'FF-002', 'PAK', 20, 8450, 8450, '-', 1, '2022-05-06 19:11:12', '2022-05-06 19:11:12'),
(0, 'SJ-122050001', 'FF-006', 'PAK', 40, 8900, 8900, '-', 2, '2022-05-06 19:11:12', '2022-05-06 19:11:12'),
(0, 'SJ-122050001', 'FF-007', 'PAK', 40, 8900, 8900, '-', 3, '2022-05-06 19:11:12', '2022-05-06 19:11:12'),
(0, 'SJ-122050001', 'FF-009', 'PAK', 20, 8900, 8900, '-', 4, '2022-05-06 19:11:12', '2022-05-06 19:11:12'),
(0, 'SJ-022050004', 'FF-002', 'PAK', 20, 8450, 8450, '-', 1, '2022-05-06 19:18:49', '2022-05-06 19:18:49'),
(0, 'SJ-022050004', 'FF-006', 'PAK', 40, 8900, 8900, '-', 2, '2022-05-06 19:18:49', '2022-05-06 19:18:49'),
(0, 'SJ-022050004', 'FF-007', 'PAK', 40, 8900, 8900, '-', 3, '2022-05-06 19:18:49', '2022-05-06 19:18:49'),
(0, 'SJ-022050004', 'FF-009', 'PAK', 20, 8900, 8900, '-', 4, '2022-05-06 19:18:49', '2022-05-06 19:18:49'),
(0, 'SJ-022050005', 'FF-002', 'PAK', 120, 8450, 8450, '-', 1, '2022-05-09 16:59:41', '2022-05-09 16:59:41'),
(0, 'SJ-022050005', 'FF-006', 'PAK', 80, 8900, 8900, '-', 2, '2022-05-09 16:59:41', '2022-05-09 16:59:41'),
(0, 'SJ-022050005', 'FF-007', 'PAK', 240, 8900, 8900, '-', 3, '2022-05-09 16:59:41', '2022-05-09 16:59:41'),
(0, 'SJ-022050005', 'FF-009', 'PAK', 60, 8900, 8900, '-', 4, '2022-05-09 16:59:41', '2022-05-09 16:59:41'),
(0, 'SJ-022050006', 'FF-006', 'PAK', 300, 8900, 8900, '-', 1, '2022-05-09 17:00:56', '2022-05-09 17:00:56'),
(0, 'SJ-022050006', 'FF-007', 'PAK', 300, 8900, 8900, '-', 2, '2022-05-09 17:00:56', '2022-05-09 17:00:56'),
(0, 'SJ-022050006', 'FF-009', 'PAK', 200, 8900, 8900, '-', 3, '2022-05-09 17:00:56', '2022-05-09 17:00:56'),
(0, 'SJ-022050007', 'FF-006', 'PAK', 40, 8900, 8900, '-', 1, '2022-05-09 17:01:36', '2022-05-09 17:01:36'),
(0, 'SJ-022050007', 'FF-007', 'PAK', 100, 8900, 8900, '-', 2, '2022-05-09 17:01:36', '2022-05-09 17:01:36'),
(0, 'SJ-022050007', 'FF-009', 'PAK', 60, 8900, 8900, '-', 3, '2022-05-09 17:01:36', '2022-05-09 17:01:36'),
(0, 'SJ-022050008', 'FF-002', 'PAK', 20, 8500, 8500, '-', 1, '2022-05-09 18:31:46', '2022-05-09 18:31:46'),
(0, 'SJ-022050008', 'FF-006', 'PAK', 20, 9000, 9000, '-', 2, '2022-05-09 18:31:46', '2022-05-09 18:31:46'),
(0, 'SJ-022050008', 'FF-007', 'PAK', 60, 9000, 9000, '-', 3, '2022-05-09 18:31:46', '2022-05-09 18:31:46'),
(0, 'SJ-022050009', 'FF-002', 'PAK', 100, 8500, 8500, '-', 1, '2022-05-09 18:34:47', '2022-05-09 18:34:47'),
(0, 'SJ-022050009', 'FF-006', 'PAK', 80, 8900, 8900, '-', 2, '2022-05-09 18:34:47', '2022-05-09 18:34:47'),
(0, 'SJ-022050009', 'FF-007', 'PAK', 240, 8900, 8900, '-', 3, '2022-05-09 18:34:47', '2022-05-09 18:34:47'),
(0, 'SJ-022050009', 'FF-009', 'PAK', 80, 8900, 8900, '-', 4, '2022-05-09 18:34:47', '2022-05-09 18:34:47'),
(0, 'SJ-022050010', 'FF-002', 'PAK', 100, 8300, 8300, '-', 1, '2022-05-09 18:39:51', '2022-05-09 18:39:51'),
(0, 'SJ-022050010', 'FF-006', 'PAK', 100, 8900, 8900, '-', 2, '2022-05-09 18:39:51', '2022-05-09 18:39:51'),
(0, 'SJ-022050010', 'FF-007', 'PAK', 300, 8900, 8900, '-', 3, '2022-05-09 18:39:51', '2022-05-09 18:39:51'),
(0, 'SJ-022050010', 'FF-009', 'PAK', 100, 8900, 8900, '-', 4, '2022-05-09 18:39:51', '2022-05-09 18:39:51'),
(0, 'SJ-022050011', 'FF-006', 'PAK', 40, 8900, 8900, '-', 1, '2022-05-09 18:41:33', '2022-05-09 18:41:33'),
(0, 'SJ-022050011', 'FF-007', 'PAK', 40, 8900, 8900, '-', 2, '2022-05-09 18:41:33', '2022-05-09 18:41:33'),
(0, 'SJ-022050011', 'FF-009', 'PAK', 20, 8900, 8900, '-', 3, '2022-05-09 18:41:33', '2022-05-09 18:41:33'),
(0, 'SJ-022050012', 'FF-002', 'PAK', 300, 8450, 8450, '-', 1, '2022-05-09 18:42:47', '2022-05-09 18:42:47'),
(0, 'SJ-022050013', 'FF-002', 'PAK', 300, 8550, 8550, '-', 1, '2022-05-10 15:53:57', '2022-05-10 15:53:57'),
(0, 'SJ-022050013', 'FF-005', 'PAK', 400, 9250, 9250, '-', 2, '2022-05-10 15:53:57', '2022-05-10 15:53:57'),
(0, 'SJ-022050013', 'FF-006', 'PAK', 60, 9150, 9150, '-', 3, '2022-05-10 15:53:57', '2022-05-10 15:53:57'),
(0, 'SJ-022050013', 'FF-007', 'PAK', 100, 9150, 9150, '-', 4, '2022-05-10 15:53:57', '2022-05-10 15:53:57'),
(0, 'SJ-022050013', 'FF-009', 'PAK', 40, 9150, 9150, '-', 5, '2022-05-10 15:53:57', '2022-05-10 15:53:57'),
(0, 'SJ-022050014', 'FF-002', 'PAK', 40, 8450, 8450, '-', 1, '2022-05-10 18:50:05', '2022-05-10 18:50:05'),
(0, 'SJ-022050014', 'FF-006', 'PAK', 40, 8900, 8900, '-', 2, '2022-05-10 18:50:05', '2022-05-10 18:50:05'),
(0, 'SJ-022050014', 'FF-007', 'PAK', 160, 8900, 8900, '-', 3, '2022-05-10 18:50:05', '2022-05-10 18:50:05'),
(0, 'SJ-022050014', 'FF-009', 'PAK', 20, 8900, 8900, '-', 4, '2022-05-10 18:50:05', '2022-05-10 18:50:05'),
(0, 'SJ-022050015', 'FF-002', 'PAK', 200, 8450, 8450, '-', 1, '2022-05-10 18:52:57', '2022-05-10 18:52:57'),
(0, 'SJ-022050016', 'FF-002', 'PAK', 20, 8450, 8450, '-', 1, '2022-05-10 19:01:53', '2022-05-10 19:01:53'),
(0, 'SJ-022050016', 'FF-006', 'PAK', 20, 8900, 8900, '-', 2, '2022-05-10 19:01:53', '2022-05-10 19:01:53'),
(0, 'SJ-022050016', 'FF-007', 'PAK', 20, 8900, 8900, '-', 3, '2022-05-10 19:01:53', '2022-05-10 19:01:53'),
(0, 'SJ-022050016', 'FF-009', 'PAK', 20, 8900, 8900, '-', 4, '2022-05-10 19:01:53', '2022-05-10 19:01:53'),
(0, 'SJ-022050017', 'FF-002', 'PAK', 120, 8300, 8300, '-', 1, '2022-05-11 17:45:02', '2022-05-11 17:45:02'),
(0, 'SJ-022050017', 'FF-006', 'PAK', 60, 8900, 8900, '-', 2, '2022-05-11 17:45:02', '2022-05-11 17:45:02'),
(0, 'SJ-022050017', 'FF-007', 'PAK', 120, 8900, 8900, '-', 3, '2022-05-11 17:45:02', '2022-05-11 17:45:02'),
(0, 'SJ-022050018', 'FF-002', 'PAK', 20, 8450, 8450, '-', 1, '2022-05-11 17:51:16', '2022-05-11 17:51:16'),
(0, 'SJ-022050018', 'FF-006', 'PAK', 40, 8900, 8900, '-', 2, '2022-05-11 17:51:16', '2022-05-11 17:51:16'),
(0, 'SJ-022050018', 'FF-007', 'PAK', 100, 8900, 8900, '-', 3, '2022-05-11 17:51:16', '2022-05-11 17:51:16'),
(0, 'SJ-022050018', 'FF-009', 'PAK', 40, 8900, 8900, '-', 4, '2022-05-11 17:51:16', '2022-05-11 17:51:16'),
(0, 'SJ-022050019', 'FF-002', 'PAK', 80, 8500, 8500, '-', 1, '2022-05-11 17:56:24', '2022-05-11 17:56:24'),
(0, 'SJ-022050019', 'FF-006', 'PAK', 60, 8900, 8900, '-', 2, '2022-05-11 17:56:24', '2022-05-11 17:56:24'),
(0, 'SJ-022050019', 'FF-007', 'PAK', 100, 8900, 8900, '-', 3, '2022-05-11 17:56:24', '2022-05-11 17:56:24'),
(0, 'SJ-022050019', 'FF-009', 'PAK', 60, 8900, 8900, '-', 4, '2022-05-11 17:56:24', '2022-05-11 17:56:24'),
(0, 'SJ-022050020', 'FF-002', 'PAK', 40, 8450, 8450, '-', 1, '2022-05-11 05:05:43', '2022-05-11 05:05:43'),
(0, 'SJ-022050020', 'FF-007', 'PAK', 160, 8900, 8900, '-', 2, '2022-05-11 05:05:43', '2022-05-11 05:05:43'),
(0, 'SJ-022050020', 'FF-009', 'PAK', 40, 8900, 8900, '-', 3, '2022-05-11 05:05:43', '2022-05-11 05:05:43'),
(0, 'SJ-022050021', 'FF-006', 'PAK', 20, 8900, 8900, '-', 1, '2022-05-11 05:08:00', '2022-05-11 05:08:00'),
(0, 'SJ-022050021', 'FF-007', 'PAK', 20, 8900, 8900, '-', 2, '2022-05-11 05:08:00', '2022-05-11 05:08:00'),
(0, 'SJ-022050022', 'FF-005', 'PAK', 440, 9250, 9250, '-', 1, '2022-05-12 01:32:52', '2022-05-12 01:32:52'),
(0, 'SJ-022050022', 'FF-007', 'PAK', 100, 9150, 9150, '-', 2, '2022-05-12 01:32:52', '2022-05-12 01:32:52'),
(0, 'SJ-022050023', 'FF-002', 'PAK', 40, 8450, 8450, '-', 1, '2022-05-12 04:49:18', '2022-05-12 04:49:18'),
(0, 'SJ-022050023', 'FF-007', 'PAK', 100, 8900, 8900, '-', 2, '2022-05-12 04:49:18', '2022-05-12 04:49:18'),
(0, 'SJ-022050023', 'FF-009', 'PAK', 20, 8900, 8900, '-', 3, '2022-05-12 04:49:18', '2022-05-12 04:49:18'),
(0, 'SJ-022050024', 'FF-006', 'PAK', 20, 8900, 8900, '-', 1, '2022-05-12 04:53:15', '2022-05-12 04:53:15'),
(0, 'SJ-022050024', 'FF-007', 'PAK', 20, 8900, 8900, '-', 2, '2022-05-12 04:53:15', '2022-05-12 04:53:15'),
(0, 'SJ-022050025', 'FF-006', 'PAK', 20, 9000, 9000, '-', 1, '2022-05-13 02:29:39', '2022-05-13 02:29:39'),
(0, 'SJ-022050025', 'FF-007', 'PAK', 20, 9000, 9000, '-', 2, '2022-05-13 02:29:39', '2022-05-13 02:29:39'),
(0, 'SJ-022050025', 'FF-009', 'PAK', 20, 9000, 9000, '-', 3, '2022-05-13 02:29:39', '2022-05-13 02:29:39'),
(0, 'SJ-022050026', 'FF-002', 'PAK', 200, 8450, 8450, '-', 1, '2022-05-13 04:25:13', '2022-05-13 04:25:13'),
(0, 'SJ-022050026', 'FF-007', 'PAK', 300, 8900, 8900, '-', 2, '2022-05-13 04:25:13', '2022-05-13 04:25:13'),
(0, 'SJ-022050027', 'FF-002', 'PAK', 60, 8500, 8500, '-', 1, '2022-05-13 04:26:06', '2022-05-13 04:26:06'),
(0, 'SJ-022050027', 'FF-006', 'PAK', 80, 8900, 8900, '-', 2, '2022-05-13 04:26:06', '2022-05-13 04:26:06'),
(0, 'SJ-022050027', 'FF-007', 'PAK', 80, 8900, 8900, '-', 3, '2022-05-13 04:26:06', '2022-05-13 04:26:06'),
(0, 'SJ-022050027', 'FF-009', 'PAK', 80, 8900, 8900, '-', 4, '2022-05-13 04:26:06', '2022-05-13 04:26:06'),
(0, 'SJ-022050028', 'FF-002', 'PAK', 20, 8450, 8450, '-', 1, '2022-05-13 04:26:50', '2022-05-13 04:26:50'),
(0, 'SJ-022050028', 'FF-006', 'PAK', 20, 8900, 8900, '-', 2, '2022-05-13 04:26:50', '2022-05-13 04:26:50'),
(0, 'SJ-022050028', 'FF-007', 'PAK', 80, 8900, 8900, '-', 3, '2022-05-13 04:26:50', '2022-05-13 04:26:50'),
(0, 'SJ-022050029', 'FF-002', 'PAK', 20, 8450, 8450, '-', 1, '2022-05-13 04:27:28', '2022-05-13 04:27:28'),
(0, 'SJ-022050029', 'FF-006', 'PAK', 20, 8900, 8900, '-', 2, '2022-05-13 04:27:28', '2022-05-13 04:27:28'),
(0, 'SJ-022050029', 'FF-007', 'PAK', 20, 8900, 8900, '-', 3, '2022-05-13 04:27:28', '2022-05-13 04:27:28'),
(0, 'SJ-022050030', 'FF-002', 'PAK', 100, 8450, 8450, '-', 1, '2022-05-13 04:28:35', '2022-05-13 04:28:35'),
(0, 'SJ-022050030', 'FF-006', 'PAK', 60, 8900, 8900, '-', 2, '2022-05-13 04:28:35', '2022-05-13 04:28:35'),
(0, 'SJ-022050030', 'FF-007', 'PAK', 240, 8900, 8900, '-', 3, '2022-05-13 04:28:35', '2022-05-13 04:28:35'),
(0, 'SJ-022050030', 'FF-009', 'PAK', 60, 8900, 8900, '-', 4, '2022-05-13 04:28:35', '2022-05-13 04:28:35'),
(0, 'SJ-022050031', 'FF-005', 'PAK', 100, 9050, 9050, '-', 1, '2022-05-14 04:12:45', '2022-05-14 04:12:45'),
(0, 'SJ-022050031', 'FF-007', 'PAK', 300, 8900, 8900, '-', 2, '2022-05-14 04:12:45', '2022-05-14 04:12:45'),
(0, 'SJ-022050032', 'FF-002', 'PAK', 100, 8450, 8450, '-', 1, '2022-05-14 04:13:59', '2022-05-14 04:13:59'),
(0, 'SJ-022050032', 'FF-007', 'PAK', 100, 8900, 8900, '-', 2, '2022-05-14 04:13:59', '2022-05-14 04:13:59'),
(0, 'SJ-022050033', 'FF-006', 'PAK', 40, 8900, 8900, '-', 1, '2022-05-14 04:40:26', '2022-05-14 04:40:26'),
(0, 'SJ-022050033', 'FF-007', 'PAK', 120, 8900, 8900, '-', 2, '2022-05-14 04:40:26', '2022-05-14 04:40:26'),
(0, 'SJ-022050033', 'FF-009', 'PAK', 40, 8900, 8900, '-', 3, '2022-05-14 04:40:26', '2022-05-14 04:40:26'),
(0, 'SJ-022050034', 'FF-006', 'PAK', 20, 8900, 8900, '-', 1, '2022-05-14 04:43:25', '2022-05-14 04:43:25'),
(0, 'SJ-022050034', 'FF-007', 'PAK', 20, 8900, 8900, '-', 2, '2022-05-14 04:43:25', '2022-05-14 04:43:25'),
(0, 'SJ-022050034', 'FF-009', 'PAK', 20, 8900, 8900, '-', 3, '2022-05-14 04:43:25', '2022-05-14 04:43:25'),
(0, 'SJ-122050002', 'FF-005', 'PAK', 400, 8333, 8333, '-', 1, '2022-05-17 03:57:20', '2022-05-17 03:57:20'),
(0, 'SJ-122050002', 'FF-006', 'PAK', 60, 8243, 8243, '-', 2, '2022-05-17 03:57:20', '2022-05-17 03:57:20'),
(0, 'SJ-122050002', 'FF-009', 'PAK', 40, 8243, 8243, '-', 3, '2022-05-17 03:57:20', '2022-05-17 03:57:20'),
(0, 'SJ-122050003', 'FF-002', 'PAK', 400, 7703, 7703, '-', 1, '2022-05-17 04:15:00', '2022-05-17 04:15:00'),
(0, 'SJ-122050003', 'FF-006', 'PAK', 60, 8243, 8243, '-', 2, '2022-05-17 04:15:00', '2022-05-17 04:15:00'),
(0, 'SJ-122050003', 'FF-009', 'PAK', 40, 8243, 8243, '-', 3, '2022-05-17 04:15:00', '2022-05-17 04:15:00'),
(0, 'SJ-122050004', 'FF-002', 'PAK', 300, 7613, 7613, '-', 1, '2022-05-19 08:40:31', '2022-05-19 08:40:31'),
(0, 'SJ-122050004', 'FF-006', 'PAK', 140, 8018, 8018, '-', 2, '2022-05-19 08:40:31', '2022-05-19 08:40:31'),
(0, 'SJ-122050004', 'FF-007', 'PAK', 460, 8018, 8018, '-', 3, '2022-05-19 08:40:31', '2022-05-19 08:40:31'),
(0, 'SJ-122050004', 'FF-009', 'PAK', 140, 8018, 8018, '-', 4, '2022-05-19 08:40:31', '2022-05-19 08:40:31'),
(0, 'SJ-122050005', 'FF-007', 'PAK', 20, 8018, 8018, '-', 1, '2022-05-19 08:50:22', '2022-05-19 08:50:22'),
(0, 'SJ-122050005', 'FF-009', 'PAK', 20, 8018, 8018, '-', 2, '2022-05-19 08:50:22', '2022-05-19 08:50:22'),
(0, 'SJ-122050006', 'FF-002', 'PAK', 20, 7613, 7613, '-', 1, '2022-05-19 08:55:11', '2022-05-19 08:55:11'),
(0, 'SJ-122050006', 'FF-006', 'PAK', 30, 8018, 8018, '-', 2, '2022-05-19 08:55:11', '2022-05-19 08:55:11'),
(0, 'SJ-122050006', 'FF-007', 'PAK', 40, 8018, 8018, '-', 3, '2022-05-19 08:55:11', '2022-05-19 08:55:11'),
(0, 'SJ-122050006', 'FF-009', 'PAK', 10, 8018, 8018, '-', 4, '2022-05-19 08:55:11', '2022-05-19 08:55:11'),
(0, 'SJ-122050007', 'FF-002', 'PAK', 20, 7613, 7613, '-', 1, '2022-05-19 09:05:36', '2022-05-19 09:05:36'),
(0, 'SJ-122050007', 'FF-006', 'PAK', 20, 8018, 8018, '-', 2, '2022-05-19 09:05:36', '2022-05-19 09:05:36'),
(0, 'SJ-122050007', 'FF-007', 'PAK', 100, 8018, 8018, '-', 3, '2022-05-19 09:05:36', '2022-05-19 09:05:36'),
(0, 'SJ-122050007', 'FF-009', 'PAK', 20, 8018, 8018, '-', 4, '2022-05-19 09:05:36', '2022-05-19 09:05:36'),
(0, 'SJ-122050008', 'FF-002', 'PAK', 20, 7658, 7658, '-', 1, '2022-05-19 09:10:59', '2022-05-19 09:10:59'),
(0, 'SJ-122050008', 'FF-006', 'PAK', 100, 8108, 8108, '-', 2, '2022-05-19 09:10:59', '2022-05-19 09:10:59'),
(0, 'SJ-122050008', 'FF-007', 'PAK', 140, 8108, 8108, '-', 3, '2022-05-19 09:10:59', '2022-05-19 09:10:59'),
(0, 'SJ-122050008', 'FF-009', 'PAK', 100, 8108, 8108, '-', 4, '2022-05-19 09:10:59', '2022-05-19 09:10:59'),
(0, 'SJ-122050009', 'FF-002', 'PAK', 100, 7658, 7658, '-', 1, '2022-05-19 09:17:37', '2022-05-19 09:17:37'),
(0, 'SJ-122050009', 'FF-006', 'PAK', 20, 8018, 8018, '-', 2, '2022-05-19 09:17:37', '2022-05-19 09:17:37'),
(0, 'SJ-122050009', 'FF-007', 'PAK', 120, 8018, 8018, '-', 3, '2022-05-19 09:17:37', '2022-05-19 09:17:37'),
(0, 'SJ-122050009', 'FF-009', 'PAK', 60, 8018, 8018, '-', 4, '2022-05-19 09:17:37', '2022-05-19 09:17:37'),
(0, 'SJ-122050010', 'FF-002', 'PAK', 400, 7703, 7703, '-', 1, '2022-05-19 09:25:29', '2022-05-19 09:25:29'),
(0, 'SJ-122050010', 'FF-006', 'PAK', 60, 8243, 8243, '-', 2, '2022-05-19 09:25:29', '2022-05-19 09:25:29'),
(0, 'SJ-122050010', 'FF-009', 'PAK', 40, 8243, 8243, '-', 3, '2022-05-19 09:25:29', '2022-05-19 09:25:29'),
(0, 'SJ-122050011', 'FF-002', 'PAK', 280, 7613, 7613, '-', 1, '2022-05-20 01:56:04', '2022-05-20 01:56:04'),
(0, 'SJ-122050012', 'FF-006', 'PAK', 20, 8018, 8018, '-', 1, '2022-05-20 02:00:30', '2022-05-20 02:00:30'),
(0, 'SJ-122050012', 'FF-007', 'PAK', 40, 8018, 8018, '-', 2, '2022-05-20 02:00:30', '2022-05-20 02:00:30'),
(0, 'SJ-122050013', 'FF-002', 'PAK', 80, 7658, 7658, '-', 1, '2022-05-20 02:10:46', '2022-05-20 02:10:46'),
(0, 'SJ-122050013', 'FF-006', 'PAK', 60, 8018, 8018, '-', 2, '2022-05-20 02:10:46', '2022-05-20 02:10:46'),
(0, 'SJ-122050013', 'FF-007', 'PAK', 140, 8018, 8018, '-', 3, '2022-05-20 02:10:46', '2022-05-20 02:10:46'),
(0, 'SJ-122050013', 'FF-009', 'PAK', 20, 8018, 8018, '-', 4, '2022-05-20 02:10:46', '2022-05-20 02:10:46'),
(0, 'SJ-122050014', 'FF-002', 'PAK', 40, 7613, 7613, '-', 1, '2022-05-20 02:23:45', '2022-05-20 02:23:45'),
(0, 'SJ-122050014', 'FF-007', 'PAK', 120, 8018, 8018, '-', 2, '2022-05-20 02:23:45', '2022-05-20 02:23:45'),
(0, 'SJ-122050015', 'FF-007', 'PAK', 20, 8018, 8018, '-', 1, '2022-05-20 02:30:00', '2022-05-20 02:30:00'),
(0, 'SJ-122050016', 'FF-006', 'PAK', 40, 8018, 8018, '-', 1, '2022-05-20 02:45:10', '2022-05-20 02:45:10'),
(0, 'SJ-122050016', 'FF-007', 'PAK', 100, 8018, 8018, '-', 2, '2022-05-20 02:45:10', '2022-05-20 02:45:10'),
(0, 'SJ-122050016', 'FF-009', 'PAK', 20, 8018, 8018, '-', 3, '2022-05-20 02:45:10', '2022-05-20 02:45:10'),
(0, 'SJ-122050017', 'FF-002', 'PAK', 120, 8300, 8300, '-', 1, '2022-05-20 03:57:16', '2022-05-20 03:57:16'),
(0, 'SJ-122050017', 'FF-006', 'PAK', 100, 8018, 8018, '-', 2, '2022-05-20 03:57:16', '2022-05-20 03:57:16'),
(0, 'SJ-122050017', 'FF-007', 'PAK', 120, 8108, 8108, '-', 3, '2022-05-20 03:57:16', '2022-05-20 03:57:16'),
(0, 'SJ-122050017', 'FF-009', 'PAK', 60, 8108, 8108, '-', 4, '2022-05-20 03:57:16', '2022-05-20 03:57:16'),
(0, 'SJ-122050018', 'FF-002', 'PAK', 40, 8500, 8500, '-', 1, '2022-05-20 04:11:03', '2022-05-20 04:11:03'),
(0, 'SJ-122050018', 'FF-006', 'PAK', 20, 9000, 9000, '-', 2, '2022-05-20 04:11:03', '2022-05-20 04:11:03'),
(0, 'SJ-122050018', 'FF-007', 'PAK', 60, 9000, 9000, '-', 3, '2022-05-20 04:11:03', '2022-05-20 04:11:03'),
(0, 'SJ-122050018', 'FF-009', 'PAK', 20, 9000, 9000, '-', 4, '2022-05-20 04:11:03', '2022-05-20 04:11:03'),
(0, 'SJ-122050019', 'FF-002', 'PAK', 20, 8450, 8450, '-', 1, '2022-05-20 04:27:58', '2022-05-20 04:27:58'),
(0, 'SJ-122050019', 'FF-007', 'PAK', 60, 8018, 8018, '-', 2, '2022-05-20 04:27:58', '2022-05-20 04:27:58'),
(0, 'SJ-122050020', 'FF-007', 'PAK', 20, 8018, 8018, '-', 1, '2022-05-20 04:35:09', '2022-05-20 04:35:09'),
(0, 'SJ-122050020', 'FF-009', 'PAK', 20, 8018, 8018, '-', 2, '2022-05-20 04:35:09', '2022-05-20 04:35:09'),
(0, 'SJ-122050021', 'FF-006', 'PAK', 40, 8018, 8018, '-', 1, '2022-05-21 04:55:12', '2022-05-21 04:55:12'),
(0, 'SJ-122050021', 'FF-007', 'PAK', 160, 8018, 8018, '-', 2, '2022-05-21 04:55:12', '2022-05-21 04:55:12'),
(0, 'SJ-122050021', 'FF-009', 'PAK', 40, 8018, 8018, '-', 3, '2022-05-21 04:55:12', '2022-05-21 04:55:12'),
(0, 'SJ-122050022', 'FF-006', 'PAK', 20, 8018, 8018, '-', 1, '2022-05-21 04:58:20', '2022-05-21 04:58:20'),
(0, 'SJ-122050022', 'FF-007', 'PAK', 20, 8018, 8018, '-', 2, '2022-05-21 04:58:20', '2022-05-21 04:58:20'),
(0, 'SJ-122050023', 'FF-002', 'PAK', 120, 7477, 7477, '-', 1, '2022-05-21 07:38:08', '2022-05-21 07:38:08'),
(0, 'SJ-122050023', 'FF-006', 'PAK', 100, 8018, 8018, '-', 2, '2022-05-21 07:38:08', '2022-05-21 07:38:08'),
(0, 'SJ-122050023', 'FF-007', 'PAK', 120, 8018, 8018, '-', 3, '2022-05-21 07:38:08', '2022-05-21 07:38:08'),
(0, 'SJ-122050023', 'FF-009', 'PAK', 60, 8018, 8018, '-', 4, '2022-05-21 07:38:08', '2022-05-21 07:38:08'),
(0, 'SJ-122050024', 'FF-005', 'PAK', 300, 8153, 8153, '-', 1, '2022-05-23 01:57:34', '2022-05-23 01:57:34'),
(0, 'SJ-122050024', 'FF-006', 'PAK', 100, 8018, 8018, '-', 2, '2022-05-23 01:57:34', '2022-05-23 01:57:34'),
(0, 'SJ-122050024', 'FF-007', 'PAK', 160, 8018, 8018, '-', 3, '2022-05-23 01:57:34', '2022-05-23 01:57:34'),
(0, 'SJ-122050024', 'FF-009', 'PAK', 60, 8018, 8018, '-', 4, '2022-05-23 01:57:34', '2022-05-23 01:57:34'),
(0, 'SJ-122050025', 'FF-006', 'PAK', 20, 8018, 8018, '-', 1, '2022-05-23 03:56:12', '2022-05-23 03:56:12'),
(0, 'SJ-122050025', 'FF-007', 'PAK', 20, 8018, 8018, '-', 2, '2022-05-23 03:56:12', '2022-05-23 03:56:12'),
(0, 'SJ-122050026', 'FF-007', 'PAK', 100, 8018, 8018, '-', 1, '2022-05-23 04:01:46', '2022-05-23 04:01:46'),
(0, 'SJ-122050027', 'FF-002', 'PAK', 100, 7658, 7658, '-', 1, '2022-05-23 04:09:43', '2022-05-23 04:09:43'),
(0, 'SJ-122050027', 'FF-006', 'PAK', 60, 8018, 8018, '-', 2, '2022-05-23 04:09:43', '2022-05-23 04:09:43'),
(0, 'SJ-122050027', 'FF-007', 'PAK', 80, 8018, 8018, '-', 3, '2022-05-23 04:09:43', '2022-05-23 04:09:43'),
(0, 'SJ-122050027', 'FF-009', 'PAK', 60, 8018, 8018, '-', 4, '2022-05-23 04:09:43', '2022-05-23 04:09:43'),
(0, 'SJ-122050028', 'FF-002', 'PAK', 20, 7658, 7658, '-', 1, '2022-05-23 04:14:35', '2022-05-23 04:14:35'),
(0, 'SJ-122050028', 'FF-006', 'PAK', 100, 8108, 8108, '-', 2, '2022-05-23 04:14:35', '2022-05-23 04:14:35'),
(0, 'SJ-122050028', 'FF-007', 'PAK', 140, 8108, 8108, '-', 3, '2022-05-23 04:14:35', '2022-05-23 04:14:35'),
(0, 'SJ-122050028', 'FF-009', 'PAK', 80, 8108, 8108, '-', 4, '2022-05-23 04:14:35', '2022-05-23 04:14:35'),
(0, 'SJ-122050029', 'FF-006', 'PAK', 100, 8018, 8018, '-', 1, '2022-05-23 04:17:40', '2022-05-23 04:17:40'),
(0, 'SJ-122050029', 'FF-007', 'PAK', 120, 8018, 8018, '-', 2, '2022-05-23 04:17:40', '2022-05-23 04:17:40'),
(0, 'SJ-122050029', 'FF-009', 'PAK', 120, 8018, 8018, '-', 3, '2022-05-23 04:17:40', '2022-05-23 04:17:40'),
(0, 'SJ-022110001', 'FF-012', 'PCS', 2, 32000, 32000, '-', 1, '2022-11-11 06:16:12', '2022-11-11 06:16:12'),
(0, 'SJ-022110002', 'FF-012', 'PCS', 1, 32000, 32000, '-', 1, '2022-11-11 06:25:34', '2022-11-11 06:25:34'),
(0, 'SJ-022120001', 'FF-002', 'PAK', 10, 15000, 15000, '-', 1, '2022-12-06 16:34:21', '2022-12-06 16:34:21'),
(0, 'SJ-022120001', 'FF-003', 'PAK', 5, 20000, 20000, '-', 2, '2022-12-06 16:34:21', '2022-12-06 16:34:21'),
(0, 'SJ-023040001', 'FF-013', 'Dus', 1, 10000, 10000, '-', 1, '2023-04-28 17:38:34', '2023-04-28 17:38:34');

-- --------------------------------------------------------

--
-- Struktur dari tabel `suratjalanreturndetails`
--

CREATE TABLE `suratjalanreturndetails` (
  `KodeSuratJalanReturnID` int(11) UNSIGNED NOT NULL,
  `KodeSuratJalanReturn` varchar(191) NOT NULL,
  `KodeSuratJalan` varchar(191) DEFAULT NULL,
  `KodeItem` varchar(191) NOT NULL,
  `KodeSatuan` varchar(191) DEFAULT NULL,
  `Harga` double DEFAULT NULL,
  `Qty` double NOT NULL,
  `Keterangan` varchar(191) DEFAULT NULL,
  `NoUrut` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `suratjalanreturns`
--

CREATE TABLE `suratjalanreturns` (
  `KodeSuratJalanReturnID` int(11) UNSIGNED NOT NULL,
  `KodeSuratJalanReturn` varchar(191) NOT NULL,
  `Tanggal` date NOT NULL,
  `Status` varchar(191) NOT NULL,
  `KodeUser` varchar(191) NOT NULL,
  `Total` double NOT NULL,
  `Keterangan` varchar(191) DEFAULT NULL,
  `PPN` varchar(191) NOT NULL,
  `NilaiPPN` double NOT NULL,
  `Printed` double NOT NULL,
  `Diskon` double NOT NULL,
  `NilaiDiskon` double NOT NULL,
  `Subtotal` double NOT NULL,
  `KodeSuratJalanID` varchar(191) DEFAULT NULL,
  `KodeSuratJalan` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `suratjalans`
--

CREATE TABLE `suratjalans` (
  `KodeSuratJalanID` bigint(20) UNSIGNED NOT NULL,
  `KodeSuratJalan` varchar(191) NOT NULL,
  `Tanggal` date NOT NULL,
  `KodeLokasi` varchar(191) NOT NULL,
  `KodeMataUang` varchar(191) NOT NULL,
  `Status` varchar(191) NOT NULL,
  `KodeUser` varchar(191) NOT NULL,
  `Total` double NOT NULL,
  `PPN` varchar(191) NOT NULL,
  `NilaiPPN` double NOT NULL,
  `Printed` double NOT NULL,
  `Diskon` double NOT NULL,
  `NilaiDiskon` double NOT NULL,
  `Subtotal` double NOT NULL,
  `KodePelanggan` varchar(191) NOT NULL,
  `NoIndeks` int(11) NOT NULL,
  `Alamat` varchar(191) DEFAULT NULL,
  `Kota` varchar(191) DEFAULT NULL,
  `AlamatInvoice` varchar(191) DEFAULT NULL,
  `KotaInvoice` varchar(191) DEFAULT NULL,
  `KodeSopir` varchar(100) NOT NULL,
  `Nopol` varchar(191) NOT NULL,
  `NoFaktur` varchar(191) DEFAULT NULL,
  `TotalItem` varchar(191) DEFAULT NULL,
  `Keterangan` varchar(191) DEFAULT NULL,
  `KodeSO` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `suratjalans`
--

INSERT INTO `suratjalans` (`KodeSuratJalanID`, `KodeSuratJalan`, `Tanggal`, `KodeLokasi`, `KodeMataUang`, `Status`, `KodeUser`, `Total`, `PPN`, `NilaiPPN`, `Printed`, `Diskon`, `NilaiDiskon`, `Subtotal`, `KodePelanggan`, `NoIndeks`, `Alamat`, `Kota`, `AlamatInvoice`, `KotaInvoice`, `KodeSopir`, `Nopol`, `NoFaktur`, `TotalItem`, `Keterangan`, `KodeSO`, `created_at`, `updated_at`) VALUES
(1, 'SJ-022040001', '2022-04-26', 'GUD-001', 'Rp', 'CFM', 'may', 0, 'tidak', 0, 0, 0, 0, 974500, 'PLG-008', 0, NULL, NULL, NULL, NULL, 'DRV-001', '-', NULL, '110', '-', 'SO-022040005', '2022-04-26 18:12:31', '2022-04-26 18:12:36'),
(2, 'SJ-022040002', '2022-04-26', 'GUD-001', 'Rp', 'CFM', 'may', 0, 'tidak', 0, 0, 0, 0, 2535000, 'PLG-007', 0, NULL, NULL, NULL, NULL, 'DRV-001', '-', NULL, '300', '-', 'SO-022040006', '2022-04-26 18:18:19', '2022-04-26 18:18:23'),
(3, 'SJ-022040003', '2022-04-26', 'GUD-001', 'Rp', 'CFM', 'may', 0, 'tidak', 0, 0, 0, 0, 2622000, 'PLG-005', 0, NULL, NULL, NULL, NULL, 'DRV-001', '-', NULL, '300', '-', 'SO-022040007', '2022-04-26 18:23:36', '2022-04-26 18:23:40'),
(4, 'SJ-022040004', '2022-04-27', 'GUD-001', 'Rp', 'CFM', 'may', 0, 'tidak', 0, 0, 0, 0, 4788000, 'PLG-007', 0, NULL, NULL, NULL, NULL, 'DRV-001', '-', NULL, '540', '-', 'SO-022040009', '2022-04-27 18:46:25', '2022-04-27 18:46:29'),
(5, 'SJ-022040005', '2022-04-28', 'GUD-001', 'Rp', 'CFM', 'may', 0, 'tidak', 0, 0, 0, 0, 2662000, 'PLG-014', 0, NULL, NULL, NULL, NULL, 'DRV-001', '-', NULL, '300', '-', 'SO-022040010', '2022-04-28 18:00:24', '2022-04-28 18:00:29'),
(6, 'SJ-022040006', '2022-04-28', 'GUD-001', 'Rp', 'CFM', 'rika', 0, 'tidak', 0, 0, 0, 0, 2670000, 'PLG-005', 0, NULL, NULL, NULL, NULL, 'DRV-001', '-', NULL, '300', '-', 'SO-022040011', '2022-04-28 18:23:20', '2022-04-28 18:23:27'),
(7, 'SJ-022040007', '2022-04-28', 'GUD-001', 'Rp', 'CFM', 'rika', 0, 'tidak', 0, 0, 0, 0, 4583000, 'PLG-015', 0, NULL, NULL, NULL, NULL, 'DRV-001', '-', NULL, '520', '-', 'SO-022040012', '2022-04-28 18:31:16', '2022-04-28 18:31:41'),
(8, 'SJ-022040008', '2022-04-28', 'GUD-001', 'Rp', 'CFM', 'rika', 0, 'tidak', 0, 0, 0, 0, 2139000, 'PLG-008', 0, NULL, NULL, NULL, NULL, 'DRV-001', '-', NULL, '240', '-', 'SO-022040013', '2022-04-28 19:25:16', '2022-04-28 19:25:21'),
(9, 'SJ-022050001', '2022-05-06', 'GUD-001', 'Rp', 'CFM', 'rika', 0, 'tidak', 0, 0, 0, 0, 5295000, 'PLG-015', 0, NULL, NULL, NULL, NULL, 'DRV-001', '-', NULL, '600', '-', 'SO-022050003', '2022-05-06 18:34:26', '2022-05-06 18:34:34'),
(10, 'SJ-022050002', '2022-05-06', 'GUD-001', 'Rp', 'DEL', 'rika', 0, 'tidak', 0, 0, 0, 0, 881000, 'PLG-007', 0, NULL, NULL, NULL, NULL, 'DRV-001', '-', NULL, '120', '-', 'SO-022050004', '2022-05-06 19:01:23', '2022-05-06 19:02:47'),
(11, 'SJ-022050003', '2022-05-06', 'GUD-001', 'Rp', 'CFM', 'rika', 0, 'tidak', 0, 0, 0, 0, 534000, 'PLG-008', 0, NULL, NULL, NULL, NULL, 'DRV-001', '-', NULL, '60', '-', 'SO-022050002', '2022-05-06 19:02:14', '2022-05-06 19:02:43'),
(12, 'SJ-122050001', '2022-05-06', 'GUD-001', 'Rp', 'CFM', 'rika', 0, 'ya', 105900, 0, 0, 0, 1164900, 'PLG-007', 0, NULL, NULL, NULL, NULL, 'DRV-001', '-', NULL, '120', '-', 'SO-122050001', '2022-05-06 19:11:12', '2022-05-06 19:12:07'),
(13, 'SJ-022050004', '2022-05-06', 'GUD-001', 'Rp', 'CFM', 'rika', 0, 'tidak', 0, 0, 0, 0, 1059000, 'PLG-007', 0, NULL, NULL, NULL, NULL, 'DRV-001', '-', NULL, '120', '-', 'SO-022050005', '2022-05-06 19:18:49', '2022-05-06 19:18:56'),
(14, 'SJ-022050005', '2022-05-09', 'GUD-001', 'Rp', 'CFM', 'rika', 0, 'tidak', 0, 0, 0, 0, 4396000, 'PLG-010', 0, NULL, NULL, NULL, NULL, 'DRV-001', '-', NULL, '500', '-', 'SO-022050006', '2022-05-09 16:59:41', '2022-05-09 17:01:54'),
(15, 'SJ-022050006', '2022-05-09', 'GUD-001', 'Rp', 'CFM', 'rika', 0, 'tidak', 0, 0, 0, 0, 7120000, 'PLG-015', 0, NULL, NULL, NULL, NULL, 'DRV-001', '-', NULL, '800', '-', 'SO-022050007', '2022-05-09 17:00:56', '2022-05-09 17:01:49'),
(16, 'SJ-022050007', '2022-05-09', 'GUD-001', 'Rp', 'CFM', 'rika', 0, 'tidak', 0, 0, 0, 0, 1780000, 'PLG-011', 0, NULL, NULL, NULL, NULL, 'DRV-001', '-', NULL, '200', '-', 'SO-022050008', '2022-05-09 17:01:36', '2022-05-09 17:01:45'),
(17, 'SJ-022050008', '2022-05-09', 'GUD-001', 'Rp', 'CFM', 'rika', 0, 'tidak', 0, 0, 0, 0, 890000, 'PLG-012', 0, NULL, NULL, NULL, NULL, 'DRV-001', '-', NULL, '100', '-', 'SO-022050010', '2022-05-09 18:31:45', '2022-05-09 18:44:46'),
(18, 'SJ-022050009', '2022-05-09', 'GUD-001', 'Rp', 'CFM', 'rika', 0, 'tidak', 0, 0, 0, 0, 4410000, 'PLG-014', 0, NULL, NULL, NULL, NULL, 'DRV-001', '-', NULL, '500', '-', 'SO-022050009', '2022-05-09 18:34:47', '2022-05-09 18:44:38'),
(19, 'SJ-022050010', '2022-05-09', 'GUD-001', 'Rp', 'CFM', 'rika', 0, 'tidak', 0, 0, 0, 0, 5280000, 'PLG-005', 0, NULL, NULL, NULL, NULL, 'DRV-001', '-', NULL, '600', '-', 'SO-022050012', '2022-05-09 18:39:51', '2022-05-09 18:44:09'),
(20, 'SJ-022050011', '2022-05-09', 'GUD-001', 'Rp', 'CFM', 'rika', 0, 'tidak', 0, 0, 0, 0, 890000, 'PLG-008', 0, NULL, NULL, NULL, NULL, 'DRV-001', '-', NULL, '100', '-', 'SO-022050011', '2022-05-09 18:41:33', '2022-05-09 18:45:15'),
(21, 'SJ-022050012', '2022-05-09', 'GUD-001', 'Rp', 'CFM', 'rika', 0, 'tidak', 0, 0, 0, 0, 2535000, 'PLG-007', 0, NULL, NULL, NULL, NULL, 'DRV-001', '-', NULL, '300', '-', 'SO-022050013', '2022-05-09 18:42:47', '2022-05-09 18:45:02'),
(22, 'SJ-022050013', '2022-05-10', 'GUD-001', 'Rp', 'CFM', 'may', 0, 'tidak', 0, 0, 0, 0, 8095000, 'PLG-009', 0, NULL, NULL, NULL, NULL, 'DRV-001', '-', NULL, '900', '-', 'SO-022050014', '2022-05-10 15:53:57', '2022-05-10 15:54:05'),
(23, 'SJ-022050014', '2022-05-10', 'GUD-001', 'Rp', 'CFM', 'may', 0, 'tidak', 0, 0, 0, 0, 2296000, 'PLG-007', 0, NULL, NULL, NULL, NULL, 'DRV-001', '-', NULL, '260', '-', 'SO-022050016', '2022-05-10 18:50:05', '2022-05-10 18:50:09'),
(24, 'SJ-022050015', '2022-05-10', 'GUD-001', 'Rp', 'CFM', 'may', 0, 'tidak', 0, 0, 0, 0, 1690000, 'PLG-007', 0, NULL, NULL, NULL, NULL, 'DRV-001', '-', NULL, '200', '-', 'SO-022050017', '2022-05-10 18:52:57', '2022-05-10 18:53:10'),
(25, 'SJ-022050016', '2022-05-10', 'GUD-001', 'Rp', 'CFM', 'may', 0, 'tidak', 0, 0, 0, 0, 703000, 'PLG-008', 0, NULL, NULL, NULL, NULL, 'DRV-001', '-', NULL, '80', '-', 'SO-022050018', '2022-05-10 19:01:53', '2022-05-10 19:01:57'),
(26, 'SJ-022050017', '2022-05-11', 'GUD-001', 'Rp', 'CFM', 'may', 0, 'tidak', 0, 0, 0, 0, 2598000, 'PLG-005', 0, NULL, NULL, NULL, NULL, 'DRV-001', '-', NULL, '300', '-', 'SO-022050019', '2022-05-11 17:45:02', '2022-05-11 17:45:07'),
(27, 'SJ-022050018', '2022-05-11', 'GUD-001', 'Rp', 'CFM', 'may', 0, 'tidak', 0, 0, 0, 0, 1771000, 'PLG-011', 0, NULL, NULL, NULL, NULL, 'DRV-001', '-', NULL, '200', '-', 'SO-022050020', '2022-05-11 17:51:16', '2022-05-11 17:51:22'),
(28, 'SJ-022050019', '2022-05-11', 'GUD-001', 'Rp', 'CFM', 'may', 0, 'tidak', 0, 0, 0, 0, 2638000, 'PLG-014', 0, NULL, NULL, NULL, NULL, 'DRV-001', '-', NULL, '300', '-', 'SO-022050021', '2022-05-11 17:56:24', '2022-05-11 17:56:29'),
(29, 'SJ-022050020', '2022-05-11', 'GUD-001', 'Rp', 'CFM', 'may', 0, 'tidak', 0, 0, 0, 0, 2118000, 'PLG-007', 0, NULL, NULL, NULL, NULL, 'DRV-001', '-', NULL, '240', '-', 'SO-022050022', '2022-05-11 05:05:43', '2022-05-11 05:05:50'),
(30, 'SJ-022050021', '2022-05-11', 'GUD-001', 'Rp', 'CFM', 'may', 0, 'tidak', 0, 0, 0, 0, 356000, 'PLG-008', 0, NULL, NULL, NULL, NULL, 'DRV-001', '-', NULL, '40', '-', 'SO-022050023', '2022-05-11 05:08:00', '2022-05-11 05:08:04'),
(31, 'SJ-022050022', '2022-05-12', 'GUD-001', 'Rp', 'CFM', 'rika', 0, 'tidak', 0, 0, 0, 0, 4985000, 'PLG-009', 0, NULL, NULL, NULL, NULL, 'DRV-001', '-', NULL, '540', '-', 'SO-022050024', '2022-05-12 01:32:52', '2022-05-12 01:33:01'),
(32, 'SJ-022050023', '2022-05-12', 'GUD-001', 'Rp', 'CFM', 'may', 0, 'tidak', 0, 0, 0, 0, 1406000, 'PLG-007', 0, NULL, NULL, NULL, NULL, 'DRV-001', '-', NULL, '160', '-', 'SO-022050025', '2022-05-12 04:49:18', '2022-05-12 04:49:24'),
(33, 'SJ-022050024', '2022-05-12', 'GUD-001', 'Rp', 'CFM', 'may', 0, 'tidak', 0, 0, 0, 0, 356000, 'PLG-008', 0, NULL, NULL, NULL, NULL, 'DRV-001', '-', NULL, '40', '-', 'SO-022050026', '2022-05-12 04:53:15', '2022-05-12 04:53:22'),
(34, 'SJ-022050025', '2022-05-13', 'GUD-001', 'Rp', 'CFM', 'may', 0, 'tidak', 0, 0, 0, 0, 540000, 'PLG-012', 0, NULL, NULL, NULL, NULL, 'DRV-001', '-', NULL, '60', '-', 'SO-022050027', '2022-05-13 02:29:39', '2022-05-13 02:29:44'),
(35, 'SJ-022050026', '2022-05-13', 'GUD-001', 'Rp', 'CFM', 'may', 0, 'tidak', 0, 0, 0, 0, 4360000, 'PLG-015', 0, NULL, NULL, NULL, NULL, 'DRV-001', '-', NULL, '500', '-', 'SO-022050028', '2022-05-13 04:25:13', '2022-05-13 04:28:43'),
(36, 'SJ-022050027', '2022-05-13', 'GUD-001', 'Rp', 'CFM', 'may', 0, 'tidak', 0, 0, 0, 0, 2646000, 'PLG-014', 0, NULL, NULL, NULL, NULL, 'DRV-001', '-', NULL, '300', '-', 'SO-022050029', '2022-05-13 04:26:06', '2022-05-13 04:28:47'),
(37, 'SJ-022050028', '2022-05-13', 'GUD-001', 'Rp', 'CFM', 'may', 0, 'tidak', 0, 0, 0, 0, 1059000, 'PLG-007', 0, NULL, NULL, NULL, NULL, 'DRV-001', '-', NULL, '120', '-', 'SO-022050030', '2022-05-13 04:26:50', '2022-05-13 04:28:52'),
(38, 'SJ-022050029', '2022-05-13', 'GUD-001', 'Rp', 'CFM', 'may', 0, 'tidak', 0, 0, 0, 0, 525000, 'PLG-008', 0, NULL, NULL, NULL, NULL, 'DRV-001', '-', NULL, '60', '-', 'SO-022050031', '2022-05-13 04:27:28', '2022-05-13 04:28:55'),
(39, 'SJ-022050030', '2022-05-13', 'GUD-001', 'Rp', 'CFM', 'may', 0, 'tidak', 0, 0, 0, 0, 4049000, 'PLG-010', 0, NULL, NULL, NULL, NULL, 'DRV-001', '-', NULL, '460', '-', 'SO-022050032', '2022-05-13 04:28:35', '2022-05-13 04:28:59'),
(40, 'SJ-022050031', '2022-05-14', 'GUD-001', 'Rp', 'CFM', 'may', 0, 'tidak', 0, 0, 0, 0, 3575000, 'PLG-015', 0, NULL, NULL, NULL, NULL, 'DRV-001', '-', NULL, '400', '-', 'SO-022050034', '2022-05-14 04:12:45', '2022-05-14 04:14:15'),
(41, 'SJ-022050032', '2022-05-14', 'GUD-001', 'Rp', 'CFM', 'may', 0, 'tidak', 0, 0, 0, 0, 1735000, 'PLG-011', 0, NULL, NULL, NULL, NULL, 'DRV-001', '-', NULL, '200', '-', 'SO-022050033', '2022-05-14 04:13:59', '2022-05-14 04:14:20'),
(42, 'SJ-022050033', '2022-05-14', 'GUD-001', 'Rp', 'CFM', 'may', 0, 'tidak', 0, 0, 0, 0, 1780000, 'PLG-007', 0, NULL, NULL, NULL, NULL, 'DRV-001', '-', NULL, '200', '-', 'SO-022050035', '2022-05-14 04:40:26', '2022-05-14 04:40:30'),
(43, 'SJ-022050034', '2022-05-14', 'GUD-001', 'Rp', 'CFM', 'may', 0, 'tidak', 0, 0, 0, 0, 534000, 'PLG-008', 0, NULL, NULL, NULL, NULL, 'DRV-001', '-', NULL, '60', '-', 'SO-022050036', '2022-05-14 04:43:25', '2022-05-14 04:43:29'),
(44, 'SJ-122050002', '2022-05-17', 'GUD-001', 'Rp', 'CFM', 'may', 0, 'ya', 415750, 0, 0, 0, 4573250, 'PLG-009', 0, NULL, NULL, NULL, NULL, 'DRV-001', '-', NULL, '500', '-', 'SO-122050002', '2022-05-17 03:57:20', '2022-05-17 03:57:25'),
(45, 'SJ-122050003', '2022-05-17', 'GUD-001', 'Rp', 'CFM', 'may', 0, 'ya', 390550, 0, 0, 0, 4296050, 'PLG-009', 0, 'PULOPANCIKAN II NO. 51, PULOPANCIKAN-GRESIK', 'GRESIK', NULL, NULL, 'DRV-001', '-', NULL, '500', '-', 'SO-122050003', '2022-05-17 04:15:00', '2022-05-17 04:15:05'),
(46, 'SJ-122050004', '2022-05-17', 'GUD-001', 'Rp', 'CFM', 'may', 0, 'ya', 903894.2, 0, 0, 0, 9121114.2, 'PLG-005', 0, 'SATELIT INDAH VII EN NO. 07 RT. 008 RW 003, TANJUNGSARI - SUKOMENANGGAL', 'SURABAYA', NULL, NULL, 'DRV-001', '-', '0100062259577700', '1040', '-', 'SO-122050004', '2022-05-19 08:40:31', '2022-05-19 08:45:30'),
(47, 'SJ-122050005', '2022-05-17', 'GUD-001', 'Rp', 'CFM', 'may', 0, 'ya', 35279.2, 0, 0, 0, 355999.2, 'PLG-017', 0, 'JL, MULYOSARI TENGAH NO. 64 RT. 007 RW. 006, KALISARI - MULYOREJO', 'SURABAYA', NULL, NULL, 'DRV-001', '-', '0100062259577701', '40', '-', 'SO-122050005', '2022-05-19 08:50:22', '2022-05-19 08:50:44'),
(48, 'SJ-122050006', '2022-05-17', 'GUD-001', 'Rp', 'CFM', 'may', 0, 'ya', 87307, 0, 0, 0, 881007, 'PLG-017', 0, 'JL, MULYOSARI TENGAH NO. 64 RT. 007 RW. 006, KALISARI - MULYOREJO', 'SURABAYA', NULL, NULL, 'DRV-001', '-', '0100062259577702', '100', '-', 'SO-122050006', '2022-05-19 08:55:11', '2022-05-19 08:55:34'),
(49, 'SJ-122050007', '2022-05-17', 'GUD-001', 'Rp', 'CFM', 'may', 0, 'ya', 140225.8, 0, 0, 0, 1415005.8, 'PLG-017', 0, 'JL, MULYOSARI TENGAH NO. 64 RT. 007 RW. 006, KALISARI - MULYOREJO', 'SURABAYA', NULL, NULL, 'DRV-001', '-', '0100062259577703', '160', '-', 'SO-122050007', '2022-05-19 09:05:36', '2022-05-19 09:06:15'),
(50, 'SJ-122050008', '2022-05-17', 'GUD-001', 'Rp', 'CFM', 'may', 0, 'ya', 320086.8, 0, 0, 0, 3229966.8, 'PLG-016', 0, 'PUCANG ANOM TIMUR 2 NO. 54 RT. 007 RW. 001, KERTAJAYA - GUBENG', 'SURABAYA', NULL, NULL, 'DRV-001', '-', '0100062259577704', '360', '-', 'SO-122050008', '2022-05-19 09:10:59', '2022-05-19 09:11:26'),
(51, 'SJ-122050009', '2022-05-17', 'GUD-001', 'Rp', 'CFM', 'may', 0, 'ya', 260634, 0, 0, 0, 2630034, 'PLG-014', 0, 'JASEM I/131C RT 013 RW 002 BULUSIDOKARE, SIDOARJO', 'SIDOARJO', NULL, NULL, 'DRV-001', '-', '0100062259577705', '300', '-', 'SO-122050009', '2022-05-19 09:17:37', '2022-05-19 09:18:08'),
(52, 'SJ-122050010', '2022-05-17', 'GUD-001', 'Rp', 'CFM', 'may', 0, 'ya', 429605, 0, 0, 0, 4335105, 'PLG-009', 0, 'PULOPANCIKAN II NO. 51, PULOPANCIKAN-GRESIK', 'GRESIK', NULL, NULL, 'DRV-001', '-', '0100062259577706', '500', '-', 'SO-122050010', '2022-05-19 09:25:29', '2022-05-19 09:26:20'),
(53, 'SJ-122050011', '2022-05-18', 'GUD-001', 'Rp', 'CFM', 'may', 0, 'ya', 234480.4, 0, 0, 0, 2366120.4, 'PLG-017', 0, 'JL, MULYOSARI TENGAH NO. 64 RT. 007 RW. 006, KALISARI - MULYOREJO', 'SURABAYA', NULL, NULL, 'DRV-001', '-', '0100062259577707', '280', '-', 'SO-122050012', '2022-05-20 01:56:04', '2022-05-20 02:03:39'),
(54, 'SJ-122050012', '2022-05-18', 'GUD-001', 'Rp', 'CFM', 'may', 0, 'ya', 52918.8, 0, 0, 0, 533998.8, 'PLG-017', 0, 'JL, MULYOSARI TENGAH NO. 64 RT. 007 RW. 006, KALISARI - MULYOREJO', 'SURABAYA', NULL, NULL, 'DRV-001', '-', '0100062259577708', '60', '-', 'SO-122050013', '2022-05-20 02:00:30', '2022-05-20 02:03:52'),
(55, 'SJ-122050013', '2022-05-19', 'GUD-001', 'Rp', 'CFM', 'may', 0, 'ya', 261426, 0, 0, 0, 2638026, 'PLG-014', 0, 'JASEM I/131C RT 013 RW 002 BULUSIDOKARE, SIDOARJO', 'SIDOARJO', NULL, NULL, 'DRV-001', '-', '0100062259577709', '300', '-', 'SO-122050014', '2022-05-20 02:10:46', '2022-05-20 02:11:20'),
(56, 'SJ-122050014', '2022-05-19', 'GUD-001', 'Rp', 'CFM', 'may', 0, 'ya', 139334.8, 0, 0, 0, 1406014.8, 'PLG-017', 0, 'JL, MULYOSARI TENGAH NO. 64 RT. 007 RW. 006, KALISARI - MULYOREJO', 'SURABAYA', NULL, NULL, 'DRV-001', '-', '0100062259577710', '160', '-', 'SO-122050015', '2022-05-20 02:23:45', '2022-05-20 02:26:21'),
(57, 'SJ-122050015', '2022-05-19', 'GUD-001', 'Rp', 'CFM', 'may', 0, 'ya', 17639.6, 0, 0, 0, 177999.6, 'PLG-017', 0, 'JL, MULYOSARI TENGAH NO. 64 RT. 007 RW. 006, KALISARI - MULYOREJO', 'SURABAYA', NULL, NULL, 'DRV-001', '-', '0100062259577711', '20', '-', 'SO-122050016', '2022-05-20 02:30:00', '2022-05-20 02:31:16'),
(58, 'SJ-122050016', '2022-05-20', 'GUD-001', 'Rp', 'CFM', 'may', 0, 'ya', 141116.8, 0, 0, 0, 1423996.8, 'PLG-005', 0, 'SATELIT INDAH VII EN NO. 07 RT. 008 RW 003, TANJUNGSARI - SUKOMENANGGAL', 'SURABAYA', NULL, NULL, 'DRV-001', '-', '0100062259577712', '160', '-', 'SO-122050017', '2022-05-20 02:45:10', '2022-05-20 02:45:40'),
(59, 'SJ-122050017', '2022-05-20', 'GUD-001', 'Rp', 'CFM', 'may', 0, 'ya', 358296.4, 0, 0, 0, 3615536.4, 'PLG-005', 0, 'SATELIT INDAH VII EN NO. 07 RT. 008 RW 003, TANJUNGSARI - SUKOMENANGGAL', 'SURABAYA', NULL, NULL, 'DRV-001', '-', '0100062259577713', '400', '-', 'SO-122050018', '2022-05-20 03:57:16', '2022-05-20 03:57:50'),
(60, 'SJ-122050018', '2022-05-20', 'GUD-001', 'Rp', 'CFM', 'may', 0, 'ya', 136400, 0, 0, 0, 1376400, 'PLG-018', 0, 'BABATAN INDAH A-1/24 RT 001 / RW 004, BABATAN - WIYUNG', 'SURABAYA', NULL, NULL, 'DRV-001', '-', '0100062259577714', '140', '-', 'SO-122050019', '2022-05-20 04:11:03', '2022-05-20 04:11:35'),
(61, 'SJ-122050019', '2022-05-20', 'GUD-001', 'Rp', 'CFM', 'may', 0, 'ya', 71508.8, 0, 0, 0, 721588.8, 'PLG-017', 0, 'JL, MULYOSARI TENGAH NO. 64 RT. 007 RW. 006, KALISARI - MULYOREJO', 'SURABAYA', NULL, NULL, 'DRV-001', '-', '0100062259577715', '80', '-', 'SO-122050020', '2022-05-20 04:27:58', '2022-05-20 04:28:49'),
(62, 'SJ-122050020', '2022-05-20', 'GUD-001', 'Rp', 'CFM', 'may', 0, 'ya', 35279.2, 0, 0, 0, 355999.2, 'PLG-017', 0, 'JL, MULYOSARI TENGAH NO. 64 RT. 007 RW. 006, KALISARI - MULYOREJO', 'SURABAYA', NULL, NULL, 'DRV-001', '-', '0100062259577716', '40', '-', 'SO-122050021', '2022-05-20 04:35:09', '2022-05-20 04:35:29'),
(63, 'SJ-122050021', '2022-05-21', 'GUD-001', 'Rp', 'CFM', 'may', 0, 'ya', 211675.2, 0, 0, 0, 2135995.2, 'PLG-017', 0, 'JL, MULYOSARI TENGAH NO. 64 RT. 007 RW. 006, KALISARI - MULYOREJO', 'SURABAYA', NULL, NULL, 'DRV-001', '-', '0100062259577717', '240', '-', 'SO-122050022', '2022-05-21 04:55:12', '2022-05-21 04:55:33'),
(64, 'SJ-122050022', '2022-05-21', 'GUD-001', 'Rp', 'CFM', 'may', 0, 'ya', 35279.2, 0, 0, 0, 355999.2, 'PLG-017', 0, 'JL, MULYOSARI TENGAH NO. 64 RT. 007 RW. 006, KALISARI - MULYOREJO', 'SURABAYA', NULL, NULL, 'DRV-001', '-', '0100062259577718', '40', '-', 'SO-122050023', '2022-05-21 04:58:20', '2022-05-21 04:58:45'),
(65, 'SJ-122050023', '2022-05-20', 'GUD-001', 'Rp', 'CFM', 'may', 0, 'ya', 345650.8, 0, 0, 0, 3487930.8, 'PLG-005', 0, 'SATELIT INDAH VII EN NO. 07 RT. 008 RW 003, TANJUNGSARI - SUKOMENANGGAL', 'SURABAYA', NULL, NULL, 'DRV-001', '-', '0100062259577713', '400', '-', 'SO-122050024', '2022-05-21 07:38:08', '2022-05-21 07:39:30'),
(66, 'SJ-122050024', '2022-05-23', 'GUD-001', 'Rp', 'CFM', 'may', 0, 'ya', 551282.6, 0, 0, 0, 5562942.6, 'PLG-017', 0, 'JL, MULYOSARI TENGAH NO. 64 RT. 007 RW. 006, KALISARI - MULYOREJO', 'SURABAYA', NULL, NULL, 'DRV-001', '-', '0100062259577719', '620', '-', 'SO-122050025', '2022-05-23 01:57:34', '2022-05-23 01:58:17'),
(67, 'SJ-122050025', '2022-05-23', 'GUD-001', 'Rp', 'CFM', 'may', 0, 'ya', 35279.2, 0, 0, 0, 355999.2, 'PLG-017', 0, 'JL, MULYOSARI TENGAH NO. 64 RT. 007 RW. 006, KALISARI - MULYOREJO', 'SURABAYA', NULL, NULL, 'DRV-001', '-', '0100062259577720', '40', '-', 'SO-122050026', '2022-05-23 03:56:12', '2022-05-23 03:56:32'),
(68, 'SJ-122050026', '2022-05-23', 'GUD-001', 'Rp', 'CFM', 'may', 0, 'ya', 88198, 0, 0, 0, 889998, 'PLG-017', 0, 'JL, MULYOSARI TENGAH NO. 64 RT. 007 RW. 006, KALISARI - MULYOREJO', 'SURABAYA', NULL, NULL, 'DRV-001', '-', '0100062259577721', '100', '-', 'SO-122050027', '2022-05-23 04:01:46', '2022-05-23 04:02:07'),
(69, 'SJ-122050027', '2022-05-23', 'GUD-001', 'Rp', 'CFM', 'may', 0, 'ya', 260634, 0, 0, 0, 2630034, 'PLG-014', 0, 'JASEM I/131C RT 013 RW 002 BULUSIDOKARE, SIDOARJO', 'SIDOARJO', NULL, NULL, 'DRV-001', '-', '0100062259577722', '300', '-', 'SO-122050028', '2022-05-23 04:09:43', '2022-05-23 04:10:05'),
(70, 'SJ-122050028', '2022-05-23', 'GUD-001', 'Rp', 'CFM', 'may', 0, 'ya', 302249.2, 0, 0, 0, 3049969.2, 'PLG-016', 0, 'PUCANG ANOM TIMUR 2 NO. 54 RT. 007 RW. 001, KERTAJAYA - GUBENG', 'SURABAYA', NULL, NULL, 'DRV-001', '-', '0100062259577723', '360', '-', 'SO-122050029', '2022-05-23 04:14:35', '2022-05-23 04:14:58'),
(71, 'SJ-122050029', '2022-05-23', 'GUD-001', 'Rp', 'CFM', 'may', 0, 'ya', 299873.2, 0, 0, 0, 3025993.2, 'PLG-005', 0, 'SATELIT INDAH VII EN NO. 07 RT. 008 RW 003, TANJUNGSARI - SUKOMENANGGAL', 'SURABAYA', NULL, NULL, 'DRV-001', '-', '0100062259577724', '340', '-', 'SO-122050030', '2022-05-23 04:17:40', '2022-05-23 04:17:57'),
(72, 'SJ-022110001', '2022-11-11', 'GUD-001', 'Rp', 'CFM', 'admin', 0, 'tidak', 0, 0, 0, 0, 64000, 'PLG-005', 0, 'SATELIT INDAH VII EN NO. 07 RT. 008 RW 003, TANJUNGSARI - SUKOMENANGGAL', 'SURABAYA', NULL, NULL, 'DRV-001', 'L 2185 AI', NULL, '2', '-', 'SO-022110001', '2022-11-11 06:16:12', '2022-11-11 06:16:22'),
(73, 'SJ-022110002', '2022-11-11', 'GUD-001', 'Rp', 'CFM', 'admin', 0, 'tidak', 0, 0, 0, 0, 32000, 'PLG-009', 0, 'PULOPANCIKAN II NO. 51, PULOPANCIKAN-GRESIK', 'GRESIK', NULL, NULL, 'DRV-001', 'L 2185 AI', NULL, '1', '-', 'SO-022110002', '2022-11-11 06:25:34', '2022-11-11 06:26:14'),
(74, 'SJ-022120001', '2022-12-06', 'GUD-001', 'Rp', 'CFM', 'admin', 0, 'tidak', 0, 0, 0, 0, 250000, 'PLG-005', 0, 'SATELIT INDAH VII EN NO. 07 RT. 008 RW 003, TANJUNGSARI - SUKOMENANGGAL', 'SURABAYA', NULL, NULL, 'DRV-001', 'L 2185 AI', NULL, '15', '-', 'SO-022120001', '2022-12-06 16:34:21', '2022-12-06 16:34:29'),
(75, 'SJ-023040001', '2023-04-28', 'GUD-001', 'Rp', 'CFM', 'admin', 0, 'tidak', 0, 0, 10, 1000, 9000, 'PLG-005', 0, 'SATELIT INDAH VII EN NO. 07 RT. 008 RW 003, TANJUNGSARI - SUKOMENANGGAL', 'SURABAYA', NULL, NULL, 'DRV-001', 'L 2185 AI', NULL, '1', '-', 'SO-023040001', '2023-04-28 17:38:34', '2023-04-28 17:38:57');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tambahangajians`
--

CREATE TABLE `tambahangajians` (
  `KodeGaji` varchar(191) NOT NULL,
  `Gaji` varchar(10) NOT NULL,
  `JumlahHariKerja` varchar(10) NOT NULL,
  `LemburHarian` varchar(10) NOT NULL,
  `JumlahLemburHarian` varchar(10) NOT NULL,
  `LemburJam` varchar(10) NOT NULL,
  `JumlahLemburJam` varchar(10) NOT NULL,
  `Bonus` varchar(10) NOT NULL,
  `JumlahBonus` varchar(10) NOT NULL,
  `EnkripsiKodeGaji` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `fullname` varchar(191) DEFAULT NULL,
  `username` varchar(55) NOT NULL,
  `email` varchar(191) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `lokasi` varchar(191) DEFAULT NULL,
  `last_login` timestamp NULL DEFAULT NULL,
  `status` varchar(191) NOT NULL,
  `password` varchar(191) NOT NULL,
  `role` varchar(255) NOT NULL,
  `login_mac_address` varchar(191) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `fullname`, `username`, `email`, `email_verified_at`, `lokasi`, `last_login`, `status`, `password`, `role`, `login_mac_address`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'admin', 'Admin', 'admin', 'admin@gmail.com', NULL, 'lestari jaya', '2023-07-13 17:11:00', 'OPN', '$2y$10$qrutbYyVBJLxBXasGfxVROSq4wxPATNXD.zVVkQNC9n6EFw.cWac2', '', '', NULL, '2020-07-13 18:19:32', '2023-07-13 17:11:00'),
(7, 'adminlestari', 'lestari jaya', 'adminlestari', '-', '0000-00-00 00:00:00', 'lestari jaya', '2022-03-01 23:33:46', 'DEL', '$2y$10$ajqZauw9GD9fQYL.tpeASe7hJWVVfudyfgUNqbhMajOTKyC1x6slK', '', 'D0-37-45-CC-9F-0C', 'PppMHIvkyxrUTE6ONV5XRusnXd3HPlBAcVa2N2uimIzBSRditrxuChxLi7Qg', NULL, '2022-03-01 23:33:47'),
(8, 'christ', 'christ', 'christ', NULL, NULL, NULL, NULL, 'DEL', '$2y$10$D2wPjIwXVuc.7SNVxMsPdeOPME0aW6wSG.0LOLtkDfXTsocNGeRXC', '', NULL, NULL, '2021-10-10 08:47:47', '2021-10-10 08:47:47'),
(9, 'KASIR', 'KASIR', 'KASIR', NULL, NULL, NULL, '2023-04-28 17:41:01', 'DEL', '$2y$10$ajx3b1zBSOux97agLDzMRugRVRXstaJKY1H1Meeg8zCZ4/3uNWjMW', '', '', NULL, '2022-01-20 22:22:20', '2023-04-28 17:41:01'),
(10, 'pimpinan', 'Ardi', 'pimpinan', NULL, NULL, NULL, '2022-03-29 15:13:51', 'DEL', '$2y$10$ZvGyrsMxsRemdgByT4nHF..faKP8XUkEL0m13TQUTKVJqHeB.wane', '', 'D0-37-45-CC-9F-0C', NULL, '2022-03-27 02:40:52', '2022-03-29 15:13:52'),
(11, 'may', 'may', 'may', NULL, NULL, NULL, '2022-12-20 19:52:36', 'OPN', '$2y$10$uxadh1bVEERa/i73w/dhsuIg/IIwc/sEM8nVwP460Gz79TcYebg4i', '', '', NULL, '2022-04-14 06:32:10', '2022-12-20 19:52:36'),
(12, 'rika', 'rika', 'rika', NULL, NULL, NULL, '2022-05-14 04:03:12', 'OPN', '$2y$10$5TJC.n0UDHKLNA42PfESIOo9e9vmE1Rr8f5/dVEk3/2.RH.n8eQb6', '', 'AC-67-5D-CE-22-55', NULL, '2022-04-14 06:32:43', '2022-05-14 04:03:13'),
(13, 'Kasir1', 'Kasir1', 'Kasir1', NULL, NULL, NULL, '2023-01-04 16:37:40', 'OPN', '$2y$10$4.uLiq3HibLCM6wIB2zmjuGmml5Aqy9CD1XxZK7029jvCvdYRxRo.', '', '', NULL, '2023-01-04 00:32:44', '2023-01-04 16:37:40'),
(14, 'Ardian', 'Ardian Kurniawan', 'Ardian', 'ardian@gmail.com', NULL, NULL, NULL, 'OPN', '$2y$10$BRfHvNH3wPplccFs29IsSeFGePXJFLWYV.zuixq4LHrXydSQ2nI4a', 'manager', NULL, NULL, NULL, NULL),
(15, 'manager', 'manager', '', NULL, NULL, NULL, NULL, 'OPN', '$2y$10$cVTwze8SVCtFMZJKzsNOnOmcz5xgwYgTBu/ZIuwdFTjt4hrPKWc.S', 'manager', NULL, NULL, '2023-07-13 17:11:34', '2023-07-13 17:11:34');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `absensis`
--
ALTER TABLE `absensis`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `alamatpelanggans`
--
ALTER TABLE `alamatpelanggans`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `detailgolongans`
--
ALTER TABLE `detailgolongans`
  ADD PRIMARY KEY (`KodeGolItem`);

--
-- Indeks untuk tabel `ekspedisis`
--
ALTER TABLE `ekspedisis`
  ADD PRIMARY KEY (`ID`) USING BTREE;

--
-- Indeks untuk tabel `eventlogs`
--
ALTER TABLE `eventlogs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `gajians`
--
ALTER TABLE `gajians`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `golongans`
--
ALTER TABLE `golongans`
  ADD PRIMARY KEY (`KodeGolongan`);

--
-- Indeks untuk tabel `historihargarata`
--
ALTER TABLE `historihargarata`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `invoicehutangs`
--
ALTER TABLE `invoicehutangs`
  ADD PRIMARY KEY (`KodeInvoiceHutang`);

--
-- Indeks untuk tabel `invoicepiutangdetails`
--
ALTER TABLE `invoicepiutangdetails`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `invoicepiutangs`
--
ALTER TABLE `invoicepiutangs`
  ADD PRIMARY KEY (`KodeInvoicePiutang`);

--
-- Indeks untuk tabel `itemkonversis`
--
ALTER TABLE `itemkonversis`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `jabatans`
--
ALTER TABLE `jabatans`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `karyawans`
--
ALTER TABLE `karyawans`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kasbanks`
--
ALTER TABLE `kasbanks`
  ADD PRIMARY KEY (`KodeKasBankID`);

--
-- Indeks untuk tabel `kasir`
--
ALTER TABLE `kasir`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kasirdetail`
--
ALTER TABLE `kasirdetail`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kasirdetails`
--
ALTER TABLE `kasirdetails`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kasirreturndetails`
--
ALTER TABLE `kasirreturndetails`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kasirreturns`
--
ALTER TABLE `kasirreturns`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kasirs`
--
ALTER TABLE `kasirs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kaslacis`
--
ALTER TABLE `kaslacis`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kategoris`
--
ALTER TABLE `kategoris`
  ADD PRIMARY KEY (`KodeKategori`);

--
-- Indeks untuk tabel `keluarmasukbarangs`
--
ALTER TABLE `keluarmasukbarangs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `lokasis`
--
ALTER TABLE `lokasis`
  ADD PRIMARY KEY (`KodeLokasi`);

--
-- Indeks untuk tabel `matauangs`
--
ALTER TABLE `matauangs`
  ADD PRIMARY KEY (`KodeMataUang`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `ongkirs`
--
ALTER TABLE `ongkirs`
  ADD PRIMARY KEY (`ID`) USING BTREE;

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `pelanggans`
--
ALTER TABLE `pelanggans`
  ADD PRIMARY KEY (`KodePelanggan`);

--
-- Indeks untuk tabel `pelunasanhutangs`
--
ALTER TABLE `pelunasanhutangs`
  ADD PRIMARY KEY (`KodePelunasanHutangID`);

--
-- Indeks untuk tabel `pelunasanpiutangs`
--
ALTER TABLE `pelunasanpiutangs`
  ADD PRIMARY KEY (`KodePelunasanPiutangID`);

--
-- Indeks untuk tabel `pemesananpembeliandetails`
--
ALTER TABLE `pemesananpembeliandetails`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pemesananpembelians`
--
ALTER TABLE `pemesananpembelians`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pemesananpenjualans`
--
ALTER TABLE `pemesananpenjualans`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `KodeSO` (`KodeSO`) USING BTREE;

--
-- Indeks untuk tabel `pemesanan_penjualan_detail`
--
ALTER TABLE `pemesanan_penjualan_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `penerimaanbarangdetails`
--
ALTER TABLE `penerimaanbarangdetails`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `penerimaanbarangreturndetails`
--
ALTER TABLE `penerimaanbarangreturndetails`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `penerimaanbarangreturns`
--
ALTER TABLE `penerimaanbarangreturns`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `penerimaanbarangs`
--
ALTER TABLE `penerimaanbarangs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pengeluarantambahans`
--
ALTER TABLE `pengeluarantambahans`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `penggunas`
--
ALTER TABLE `penggunas`
  ADD PRIMARY KEY (`KodeUser`);

--
-- Indeks untuk tabel `penjualanlangsungdetails`
--
ALTER TABLE `penjualanlangsungdetails`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `penjualanlangsungs`
--
ALTER TABLE `penjualanlangsungs`
  ADD PRIMARY KEY (`KodePenjualanLangsung`);

--
-- Indeks untuk tabel `perizinan`
--
ALTER TABLE `perizinan`
  ADD PRIMARY KEY (`ID`);

--
-- Indeks untuk tabel `pindahgudangdetails`
--
ALTER TABLE `pindahgudangdetails`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pindahgudangs`
--
ALTER TABLE `pindahgudangs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `ppn`
--
ALTER TABLE `ppn`
  ADD PRIMARY KEY (`ID`);

--
-- Indeks untuk tabel `rak_item`
--
ALTER TABLE `rak_item`
  ADD PRIMARY KEY (`KodeRak`);

--
-- Indeks untuk tabel `saldos`
--
ALTER TABLE `saldos`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `satuans`
--
ALTER TABLE `satuans`
  ADD PRIMARY KEY (`KodeSatuan`);

--
-- Indeks untuk tabel `stokkeluars`
--
ALTER TABLE `stokkeluars`
  ADD PRIMARY KEY (`KodeStokKeluar`);

--
-- Indeks untuk tabel `suratjalanreturndetails`
--
ALTER TABLE `suratjalanreturndetails`
  ADD PRIMARY KEY (`KodeSuratJalanReturnID`);

--
-- Indeks untuk tabel `suratjalanreturns`
--
ALTER TABLE `suratjalanreturns`
  ADD PRIMARY KEY (`KodeSuratJalanReturnID`);

--
-- Indeks untuk tabel `suratjalans`
--
ALTER TABLE `suratjalans`
  ADD PRIMARY KEY (`KodeSuratJalanID`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `alamatpelanggans`
--
ALTER TABLE `alamatpelanggans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `ekspedisis`
--
ALTER TABLE `ekspedisis`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `eventlogs`
--
ALTER TABLE `eventlogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=973;

--
-- AUTO_INCREMENT untuk tabel `historihargarata`
--
ALTER TABLE `historihargarata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `invoicehutangs`
--
ALTER TABLE `invoicehutangs`
  MODIFY `KodeInvoiceHutang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `invoicepiutangdetails`
--
ALTER TABLE `invoicepiutangdetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT untuk tabel `invoicepiutangs`
--
ALTER TABLE `invoicepiutangs`
  MODIFY `KodeInvoicePiutang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT untuk tabel `itemkonversis`
--
ALTER TABLE `itemkonversis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT untuk tabel `items`
--
ALTER TABLE `items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT untuk tabel `jabatans`
--
ALTER TABLE `jabatans`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `karyawans`
--
ALTER TABLE `karyawans`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `kasbanks`
--
ALTER TABLE `kasbanks`
  MODIFY `KodeKasBankID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT untuk tabel `kasir`
--
ALTER TABLE `kasir`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `kasirdetail`
--
ALTER TABLE `kasirdetail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `kasirdetails`
--
ALTER TABLE `kasirdetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `kasirreturndetails`
--
ALTER TABLE `kasirreturndetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `kasirreturns`
--
ALTER TABLE `kasirreturns`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `kasirs`
--
ALTER TABLE `kasirs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `kaslacis`
--
ALTER TABLE `kaslacis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `keluarmasukbarangs`
--
ALTER TABLE `keluarmasukbarangs`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=608;

--
-- AUTO_INCREMENT untuk tabel `ongkirs`
--
ALTER TABLE `ongkirs`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `pelunasanhutangs`
--
ALTER TABLE `pelunasanhutangs`
  MODIFY `KodePelunasanHutangID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `pelunasanpiutangs`
--
ALTER TABLE `pelunasanpiutangs`
  MODIFY `KodePelunasanPiutangID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT untuk tabel `pemesananpembeliandetails`
--
ALTER TABLE `pemesananpembeliandetails`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `pemesananpembelians`
--
ALTER TABLE `pemesananpembelians`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `pemesananpenjualans`
--
ALTER TABLE `pemesananpenjualans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT untuk tabel `pemesanan_penjualan_detail`
--
ALTER TABLE `pemesanan_penjualan_detail`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=253;

--
-- AUTO_INCREMENT untuk tabel `penerimaanbarangdetails`
--
ALTER TABLE `penerimaanbarangdetails`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `penerimaanbarangreturndetails`
--
ALTER TABLE `penerimaanbarangreturndetails`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `penerimaanbarangreturns`
--
ALTER TABLE `penerimaanbarangreturns`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `penerimaanbarangs`
--
ALTER TABLE `penerimaanbarangs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `pengeluarantambahans`
--
ALTER TABLE `pengeluarantambahans`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `penjualanlangsungdetails`
--
ALTER TABLE `penjualanlangsungdetails`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `perizinan`
--
ALTER TABLE `perizinan`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pindahgudangdetails`
--
ALTER TABLE `pindahgudangdetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT untuk tabel `pindahgudangs`
--
ALTER TABLE `pindahgudangs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT untuk tabel `ppn`
--
ALTER TABLE `ppn`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `saldos`
--
ALTER TABLE `saldos`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `suratjalanreturndetails`
--
ALTER TABLE `suratjalanreturndetails`
  MODIFY `KodeSuratJalanReturnID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `suratjalanreturns`
--
ALTER TABLE `suratjalanreturns`
  MODIFY `KodeSuratJalanReturnID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `suratjalans`
--
ALTER TABLE `suratjalans`
  MODIFY `KodeSuratJalanID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
