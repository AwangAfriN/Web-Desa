-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 07, 2018 at 03:32 PM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `web_desa`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(5) NOT NULL,
  `nama_admin` varchar(25) NOT NULL,
  `user_admin` varchar(15) NOT NULL,
  `pass_admin` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `nama_admin`, `user_admin`, `pass_admin`) VALUES
(3, 'Awang', 'admin', '21232f297a57a5a743894a0e4a801fc3'),
(4, 'Awang Afri N', 'admin', '63a9f0ea7bb98050796b649e85481845');

-- --------------------------------------------------------

--
-- Table structure for table `artikel`
--

CREATE TABLE `artikel` (
  `id_artikel` int(5) NOT NULL,
  `judul_artikel` varchar(100) NOT NULL,
  `isi_artikel` text NOT NULL,
  `id_kategori` int(5) NOT NULL,
  `gambar_artikel` varchar(150) NOT NULL,
  `tanggal_artikel` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `artikel`
--

INSERT INTO `artikel` (`id_artikel`, `judul_artikel`, `isi_artikel`, `id_kategori`, `gambar_artikel`, `tanggal_artikel`) VALUES
(36, 'Beginilah Produksi Biogas dengan Biaya Murah di Kesenet', '<p>Desa Kesenet yang terletak di Kecamatan Banjarmangu, Banjarnegara, Jawa Tengah (Jateng) cukup terpencil. Sama seperti desa-desa lainnya di Banjarnegara, masyarakatnya menggantungkan hidupnya dengan menggarap perkebunan yang ditanami salak. Sebagai usaha sampingannya, mereka memelihara ternak, karena lingkungan sekitar tersedia banyak pakan. Ternak yang dipelihara di antaranya adalah kambing dan sapi.</p>\r\n\r\n<p>Yang membedakan antara Kesenet dengan desa lainnya adalah penanganan limbah kotoran ternaknya. Kalau desa lainnya, kotoran ternak hanya dibuang atau maksimal hanya dijadikan pupuk saja, namun di desa setempat kotoran diolah menjadi biogas dan limbah padat biogas baru dipakai untuk pakan ternak.</p>\r\n\r\n<p>Adalah Teguh Haryanto, 36, pemuda desa yang memulai percobaannya tahun 2013 silam. Ide itu muncul, sesaat setelah ia pulang mengikuti pelatihan di Malang, Jawa Timur (Jatim). Sebab, dalam pelatihan tersebut Teguh diberi materi mengenai bagaimana mengolah kotoran menjadi biogas.</p>\r\n\r\n<p>&ldquo;Saya sangat bersemangat. Namun, di sisi lain juga ragu-ragu. Sebab, dalam pelatihan itu dikatakan jika untuk menghasilkan biogas membutuhkan minimal 40 ekor kambing atau 10 ekor sapi. Apalagi untuk membuat instalasi biogas dananya besar, bisa mencapai Rp30 juta hingga Rp40 juta,&rdquo;ujar Teguh.</p>\r\n\r\n<p>Ia berpikir, rasanya kalau dengan teori yang ada pada pelatihan tersebut, tidak memungkinan mengolah biogas di Desa Kesenet. Sebab, rata-rata warga hanya memiliki setidaknya lima ekor kambing atau dua ekor sapi saja. &ldquo;Tidak mungkin juga menyatukan seluruh ternak dalam satu kawasan untuk kemudian diambil kotorannya dan diolah menjadi biogas. Sebab, ternak tersebut dimiliki oleh masing-masing warga. Apalagi kalau mengingat dana, sangatlah besar, tidak mungkin warga membiayai hingga Rp30 juta,&rdquo;ungkapnya.</p>\r\n\r\n<p>Daripada mengutuk kondisi dan tidak berbuat apa-apa, Teguh lebih memilih melakukan percobaan di luar teori yang ada. &ldquo;Saya tetap nekad membuat instalasi biogas. Namun, saya mencoba dengan membuat secara sederhana,&rdquo;ujarnya.</p>\r\n\r\n<p>Misalnya saja, kalau seharusnya digester harus dengan cor beton atau fiber, maka dia gunakan plastik saja. Ia membuat lubang ukuran lebar 0,5 meter (m) dan panjang 3-4 m. Lubang tersebut kemudian dilapisi plastik sebagai penampung kotoran yang telah dicampur dengan air dan dekomposer. Bahan kotoran tidak banyak, hanya satu ember kotoran kambing yang dicampur dua ember air untuk kambing. Kalau kotoran sapi, karena lebih lembek, maka satu ember kotoran dicampur satu ember air.</p>\r\n\r\n<p>Setelah 10 hari dibiarkan, ternyata gas mulai mucul. Gas yang muncul dialirkan melalui lubang kecil yang dibuat di atas plastik kemudian masuk ke dalam pipa paralon untuk mengalirkan gas. Pipa untuk mengalirkan gas dialirkan ke dalam tiga drum yang diisi air. Pada bagian atasnya, diberi ember dalam kondisi terbalik, sebagai indikator untuk mengetahui gas keluar. Kalau embernya naik berarti ada gas.</p>\r\n\r\n<p>Pada awalnya, memang dapat keluar gas, tetapi warnanya masih kemerahan dan mengeluarkan aroma tak sedap. &ldquo;Setelah dicek, ternyata kandungan uap air masih tinggi. Makanya, untuk menetralkan gas dan menyerap airnya, dipakai kapur tulis yang dimasukkan dalam botol sebagai penyerapnya. Dari situlah, gas baru dialirkan ke kompor dan apinya berwarna biru dan tak berbau,&rdquo;katanya.</p>\r\n\r\n<p>Teguh mengungkapkan coba-coba yang dia lakukan memakan waktu sekitar lima bulan. Ia juga cukup kaget, karena hanya dengan bahan baku kotoran yang sedikit, mampu menghasilkan biogas yang cukup besar. &ldquo;Barangkali karena memakai plastik, sehingga seluruh mikroorganisme mampu bekerja secara maksimal. Kalau dengan beton, mikroorganismennya masuk ke dalam pori-pori beton,&rdquo;ujarnya.</p>\r\n\r\n<p>Inovasi yang ia lakukan membuat dia meraih penghargaan sebagai penyuluh tingkat provinsi dan nasional dari Kementrian Pertanian. &ldquo;Memang, setelah saya berhasil mengolah kotoran kambing dan sapi menjadi biogas, saya meminta warga khususnya pemuda Desa Kesenet agar ikut serta. Mereka sangat antusias, karena untuk membangun instalasi pengolahan biogas hanya membutuhkan dana sekitar Rp3 juta hingga Rp4 juta. Apalagi, kalau warga hanya memiliki tiga ekor kambing atau satu ekor sapi sudah cukup memproduksi biogas,&rdquo;ujar Teguh.</p>\r\n\r\n<p>Salah seorang warga Desa Kesenet, Jiman, 36, mengatakan kalau dia mengikuti jejak Teguh, karena menguntungkan. Misalnya, kata Jiman, dirinya tidak lagi membeli elpiji 3 kilogram (kg) karena telah tergantikan biogas. Padahal, setiap bulan, sebelum ada biogas, dia membutuhkan setidaknya tiga tabung atau sekitar Rp60 ribu kalau diuangkan. &ldquo;Sekarang sudah tidak lagi membutuhkan elpiji, karena telah ada biogas,&rdquo;jelas Jiman.</p>\r\n\r\n<p>Selain itu, lanjut Jiman, limbah padat hasil olahan menjadi biogas, dapat dimanfaatkan untuk pupuk organik. Kebetulan warga di sini kebanyakan mempunyai lahan budidaya tanaman salak, sehingga limbah padat tersebut dapat dimanfaatkan. Sebelum ada limbah padat yang dapat dimanfaatkan untuk pupuk organik, dia harus mengeluarkan harga Rp4 juta per tahun untuk 600 pohon salak. &ldquo;Jadi, kami memiliki keuntungan ganda, karena selain menghemat karena tidak mengeluarkan uang membeli gas, warga juga tidak lagi membeli pupuk untuk tanaman salak,&rdquo;tambahnya.</p>\r\n\r\n<p>Kepala Desa Kesenet Sarno menambahkan dengan beralihnya warga menggunakan pupuk organik dari limbah padat hasil olahan biogas, maka tanah milik warga akan lebih subur. &ldquo;Kami berharap, inovasi yang dilakukan oleh Teguh akan semakin banyak diikuti oleh warga. Sampai sekarang saja, tercatat sudah ada 42 rumah yang memproduksi biogas berbahan baku kotoran sapi atau kambing,&rdquo;ujar Sarno yang desanya mendapat penghargaan Desa Mandiri Energi 2015 untuk tingkat Jateng.</p>\r\n\r\n<p>Sarno mengungkapkan bahwa desa terus mendorong agar warga yang memiliki ternak kambing dan sapi segera saja mengolah kotoran namun menjadi biogas. &ldquo;Kami ingin, desa ini benar-benar menjadi mandiri energi dengan mengolah kotoran kambing dan sapi menjadi biogas,&rdquo;tandasnya.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Source : http://www.mongabay.co.id/2016/01/09/beginilah-produksi-biogas-dengan-biaya-murah-di-kesenet/</p>\r\n', 13, 'biogas1.jpg', '2018-05-07 10:35:39'),
(37, 'Jalan Provinsi Bolong, Ganjar Marahi Petugas Dinas Bina Marga', '<p><strong>BANJARNEGARA (KRjogja.com)</strong> - Gubernur Jateng Ganjar Pranowo menunjukan kemarahannya kepada dinas bina marga saat melihat ada lubang jalan di Dusun Buratan, Desa Kesenet, Kecamatan Banjarmangu, Banjarnegara. Gubernur langsung menghentikan perjalanannya untuk melihat lubang jalan yang dinilainya cukup membahayakan pengguna jalan.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Hal itu terjadi saat Gubernur Jateng Ganjar Pranowo melakukan roadshow ke Banjarnegara Rabu (12/10). Saat melewati jalan provinsi di Dusun Buratan, Desa Kesenet, Kecamatan Banjarmangu, Ganjar langsung menghentikan mobilnya dan memanggil Kepala Balai Pelaksana Teknis (BPT) Wonosobo, Dinas Bina Marga Provinsi Jateng, Soehardjito yang kebetulan ikut dalam rombongan.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Gubernur langsung menegur Soehardjito yang dianggapnya melakukan pembiaran jalan berlubang. &ldquo;Mengapa jalan ini dibiarkan berlubang,&rdquo; tegur Ganjar kepada Soehardjito. Soehardjito mencoba memberi penjelasan dengan melempar kesalahan ke pihak pengamat jalan yang tidak melaporkan adanya jalan yang berlubang.</p>\r\n\r\n<p>Koordinator Pengamat Jalan BPT Wonosobo, Dinas Bina Marga Provinsi Jateng, Sudarman yang juga ikut dalam rombongan juga dipanggil. Ganjar meminta Sudarman menelepon Suripto, petugas pengamat jalan wilayah tersebut. Dari Suripto Ganjar menerima laporan jalan berlubang sudah dilaporkan secara lisan sejak dua minggu lalu, dan sampai saat ini belum ada tindaklanjut.</p>\r\n\r\n<p>Menerima laporan dari Suripto, Ganjar pun sontak marah pada Sudarman dan Soehardjito. &quot;Mas, lubang jalan ini sudah dilaporkan sejak dua minggu lalu lho. Piye kerja kok kayak gini. Iki guyon kabeh, kalian menyepelekan saya. Dulu janjinya empat hari selesai. Sampean dibayar Negara lho, ora dolanan,&quot; tegas Gubernur.</p>\r\n\r\n<p>Ganjar saat itu juga memberi peringatan keras kepada dua petugas bina marga tersebut. Ganjar minta petugas dinas bina marga jangan membuat malu Pemprov di hadapan masyarakat.</p>\r\n\r\n<p>Dalam penjelasannya kepada Gubernur Sudarman berkilah penambalan jalan sebenarnya sudah direncanakan, namun masih menunggu alat dari Kebumen yang masih dalam perjalanan. Tapi ketika Ganjar meminta Sudarman menelepon koordinator alat, ternyata tidak terkonfirmasi, sehingga Gubernur merasa &ldquo;diapusi&rdquo; oleh&nbsp; Sudarman.</p>\r\n\r\n<p>Untuk itu Ganjar memerintahkan hari ini juga (Rabu-red) lobang-lobang di jalan tersebut harus ditambal. Entah dengan aspal maupun disemen. Selain itu ia juga memerintahkan untuk memperbaiki sistem yang ada, memperpendek birokrasi. &quot;Mulai besok cara melaporkan harus tertulis. Yang berlobang ini, eksekusi hari ini dan malam ini laporkan ke saya,&quot; tegasnya. <strong>(Bdi)</strong></p>\r\n\r\n<p>Source : http://krjogja.com/web/news/read/12426/home3.html</p>\r\n\r\n<div style=\"left:-99999px; position:absolute\">BANJARNEGARA &ndash; Polres Banjarnegara langsung memburu pelaku penganiayaan mantan Kepala Desa Kesenet Kecamatan Banjarmangu. Polres menyiapkan dua tim untuk melakukan pengejaran terhadap pelaku penganiayaan yang disebutkan pelapor.<br />\r\n<br />\r\nSumber: <a href=\"http://radarbanyumas.co.id/polres-banjarnegara-buru-empat-pelaku-penganiaya-mantan-kades-kesenet-banjarnegara/\">http://radarbanyumas.co.id/polres-banjarnegara-buru-empat-pelaku-penganiaya-mantan-kades-kesenet-banjarnegara/</a><br />\r\nCopyright &copy; Radarbanyumas.co.id</div>\r\n\r\n<div style=\"left:-99999px; position:absolute\">BANJARNEGARA &ndash; Polres Banjarnegara langsung memburu pelaku penganiayaan mantan Kepala Desa Kesenet Kecamatan Banjarmangu. Polres menyiapkan dua tim untuk melakukan pengejaran terhadap pelaku penganiayaan yang disebutkan pelapor.<br />\r\n<br />\r\nSumber: <a href=\"http://radarbanyumas.co.id/polres-banjarnegara-buru-empat-pelaku-penganiaya-mantan-kades-kesenet-banjarnegara/\">http://radarbanyumas.co.id/polres-banjarnegara-buru-empat-pelaku-penganiaya-mantan-kades-kesenet-banjarnegara/</a><br />\r\nCopyright &copy; Radarbanyumas.co.id</div>\r\n\r\n<div style=\"left:-99999px; position:absolute\">BANJARNEGARA &ndash; Polres Banjarnegara langsung memburu pelaku penganiayaan mantan Kepala Desa Kesenet Kecamatan Banjarmangu. Polres menyiapkan dua tim untuk melakukan pengejaran terhadap pelaku penganiayaan yang disebutkan pelapor.<br />\r\n<br />\r\nSumber: <a href=\"http://radarbanyumas.co.id/polres-banjarnegara-buru-empat-pelaku-penganiaya-mantan-kades-kesenet-banjarnegara/\">http://radarbanyumas.co.id/polres-banjarnegara-buru-empat-pelaku-penganiaya-mantan-kades-kesenet-banjarnegara/</a><br />\r\nCopyright &copy; Radarbanyumas.co.id</div>\r\n\r\n<div style=\"left:-99999px; position:absolute\">BANJARNEGARA &ndash; Polres Banjarnegara langsung memburu pelaku penganiayaan mantan Kepala Desa Kesenet Kecamatan Banjarmangu. Polres menyiapkan dua tim untuk melakukan pengejaran terhadap pelaku penganiayaan yang disebutkan pelapor.<br />\r\n<br />\r\nSumber: <a href=\"http://radarbanyumas.co.id/polres-banjarnegara-buru-empat-pelaku-penganiaya-mantan-kades-kesenet-banjarnegara/\">http://radarbanyumas.co.id/polres-banjarnegara-buru-empat-pelaku-penganiaya-mantan-kades-kesenet-banjarnegara/</a><br />\r\nCopyright &copy; Radarbanyumas.co.id</div>\r\n\r\n<div style=\"left:-99999px; position:absolute\">BANJARNEGARA &ndash; Polres Banjarnegara langsung memburu pelaku penganiayaan mantan Kepala Desa Kesenet Kecamatan Banjarmangu. Polres menyiapkan dua tim untuk melakukan pengejaran terhadap pelaku penganiayaan yang disebutkan pelapor.<br />\r\n<br />\r\nSumber: <a href=\"http://radarbanyumas.co.id/polres-banjarnegara-buru-empat-pelaku-penganiaya-mantan-kades-kesenet-banjarnegara/\">http://radarbanyumas.co.id/polres-banjarnegara-buru-empat-pelaku-penganiaya-mantan-kades-kesenet-banjarnegara/</a><br />\r\nCopyright &copy; Radarbanyumas.co.id</div>\r\n', 13, 'S12JALAN.jpg', '2018-05-07 10:40:13');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(5) NOT NULL,
  `nama_kategori` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`) VALUES
(10, 'Kuliner'),
(11, 'Hobi'),
(12, 'Tutorial'),
(13, 'Berita');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `artikel`
--
ALTER TABLE `artikel`
  ADD PRIMARY KEY (`id_artikel`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `artikel`
--
ALTER TABLE `artikel`
  MODIFY `id_artikel` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
