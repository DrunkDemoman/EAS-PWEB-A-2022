-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 12, 2019 at 01:14 AM
-- Server version: 10.1.8-MariaDB
-- PHP Version: 5.6.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `karpel`
--

-- --------------------------------------------------------

--
-- Table structure for table `blangko`
--

CREATE TABLE `blangko` (
  `id` int(11) NOT NULL,
  `gambar` varchar(225) NOT NULL,
  `ttd` varchar(225) NOT NULL,
  `kepsek` varchar(225) NOT NULL,
  `nip` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blangko`
--

INSERT INTO `blangko` (`id`, `gambar`, `ttd`, `kepsek`, `nip`) VALUES
(1, 'balangko.png', 'ttd.png', 'Bambang Hadi Saputra, ST., MT', '11011011');

-- --------------------------------------------------------

--
-- Table structure for table `identitas`
--

CREATE TABLE `identitas` (
  `id` int(11) NOT NULL,
  `gambar` varchar(225) NOT NULL,
  `nama` varchar(225) NOT NULL,
  `sekolah` varchar(225) NOT NULL,
  `email1` varchar(225) NOT NULL,
  `email2` varchar(225) NOT NULL,
  `pass` varchar(225) NOT NULL,
  `web` varchar(225) NOT NULL,
  `alamat` varchar(225) NOT NULL,
  `id_prov` varchar(225) NOT NULL,
  `id_kab` varchar(225) NOT NULL,
  `id_kec` varchar(225) NOT NULL,
  `id_kel` varchar(225) NOT NULL,
  `hp` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `identitas`
--

INSERT INTO `identitas` (`id`, `gambar`, `nama`, `sekolah`, `email1`, `email2`, `pass`, `web`, `alamat`, `id_prov`, `id_kab`, `id_kec`, `id_kel`, `hp`) VALUES
(1, 'logo-SMK.png', 'KARTU PELAJAR', 'SMK PLUS AL-MAFTUH', 'info@sekolah.sch.id', 'hadisaputra.bambang@gmail.com', 'ojolali.123', 'www.sekolah.sch.id', 'Jl. Kenangan Terindah', '32', '3202', '320231', '3202212008', '08562050812');

-- --------------------------------------------------------

--
-- Table structure for table `kabupaten`
--

CREATE TABLE `kabupaten` (
  `id_kab` char(4) NOT NULL DEFAULT '',
  `id_prov` char(2) NOT NULL,
  `nama_kabupaten` tinytext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kabupaten`
--

INSERT INTO `kabupaten` (`id_kab`, `id_prov`, `nama_kabupaten`) VALUES
('3202', '32', 'KAB. SUKABUMI'),
('3501', '35', 'KAB. PACITAN'),
('3502', '35', 'KAB. PONOROGO'),
('3503', '35', 'KAB. TRENGGALEK'),
('3504', '35', 'KAB. TULUNGAGUNG'),
('3505', '35', 'KAB. BLITAR'),
('3506', '35', 'KAB. KEDIRI'),
('3507', '35', 'KAB. MALANG'),
('3508', '35', 'KAB. LUMAJANG'),
('3509', '35', 'KAB. JEMBER'),
('3510', '35', 'KAB. BANYUWANGI'),
('3511', '35', 'KAB. BONDOWOSO'),
('3512', '35', 'KAB. SITUBONDO'),
('3513', '35', 'KAB. PROBOLINGGO'),
('3514', '35', 'KAB. PASURUAN'),
('3515', '35', 'KAB. SIDOARJO'),
('3516', '35', 'KAB. MOJOKERTO'),
('3517', '35', 'KAB. JOMBANG'),
('3518', '35', 'KAB. NGANJUK'),
('3519', '35', 'KAB. MADIUN'),
('3520', '35', 'KAB. MAGETAN'),
('3521', '35', 'KAB. NGAWI'),
('3522', '35', 'KAB. BOJONEGORO'),
('3523', '35', 'KAB. TUBAN'),
('3524', '35', 'KAB. LAMONGAN'),
('3525', '35', 'KAB. GRESIK'),
('3526', '35', 'KAB. BANGKALAN'),
('3527', '35', 'KAB. SAMPANG'),
('3528', '35', 'KAB. PAMEKASAN'),
('3529', '35', 'KAB. SUMENEP'),
('3571', '35', 'KOTA KEDIRI'),
('3572', '35', 'KOTA BLITAR'),
('3573', '35', 'KOTA MALANG'),
('3574', '35', 'KOTA PROBOLINGGO'),
('3575', '35', 'KOTA PASURUAN'),
('3576', '35', 'KOTA MOJOKERTO'),
('3577', '35', 'KOTA MADIUN'),
('3578', '35', 'KOTA SURABAYA'),
('3579', '35', 'KOTA BATU'),
('70', '71', 'Minahasa'),
('71', '71', 'Minahasa Tenggara'),
('72', '71', 'Minahasa Selatan'),
('74', '71', 'Manado (kota)'),
('75', '71', 'Bitung (Kota)'),
('76', '71', 'Tomohon (Kota)');

-- --------------------------------------------------------

--
-- Table structure for table `kecamatan`
--

CREATE TABLE `kecamatan` (
  `id_kec` char(6) NOT NULL,
  `id_kab` char(4) NOT NULL,
  `nama_kecamatan` tinytext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kecamatan`
--

INSERT INTO `kecamatan` (`id_kec`, `id_kab`, `nama_kecamatan`) VALUES
('320231', '3202', 'Caringin'),
('350101', '3501', 'Donorojo'),
('350102', '3501', 'Pringkuku'),
('350103', '3501', 'Punung'),
('350104', '3501', 'Pacitan'),
('350105', '3501', 'Kebonagung'),
('350106', '3501', 'Arjosari'),
('350107', '3501', 'Nawangan'),
('350108', '3501', 'Bandar'),
('350109', '3501', 'Tegalombo'),
('350110', '3501', 'Tulakan'),
('350111', '3501', 'Ngadirojo'),
('350112', '3501', 'Sudimoro'),
('350201', '3502', 'Slahung'),
('350202', '3502', 'Ngrayun'),
('350203', '3502', 'Bungkal'),
('350204', '3502', 'Sambit'),
('350205', '3502', 'Sawoo'),
('350206', '3502', 'Sooko'),
('350207', '3502', 'Pulung'),
('350208', '3502', 'Mlarak'),
('350209', '3502', 'Jetis'),
('350210', '3502', 'Siman'),
('350211', '3502', 'Balong'),
('350212', '3502', 'Kauman'),
('350213', '3502', 'Badegan'),
('350214', '3502', 'Sampung'),
('350215', '3502', 'Sukorejo'),
('350216', '3502', 'Babadan'),
('350217', '3502', 'Ponorogo'),
('350218', '3502', 'Jenangan'),
('350219', '3502', 'Ngebel'),
('350220', '3502', 'Jambon'),
('350221', '3502', 'Pudak'),
('350301', '3503', 'Panggul'),
('350302', '3503', 'Munjungan'),
('350303', '3503', 'Pule'),
('350304', '3503', 'Dongko'),
('350305', '3503', 'Tugu'),
('350306', '3503', 'Karangan'),
('350307', '3503', 'Kampak'),
('350308', '3503', 'Watulimo'),
('350309', '3503', 'Bendungan'),
('350310', '3503', 'Gandusari'),
('350311', '3503', 'Trenggalek'),
('350312', '3503', 'Pogalan'),
('350313', '3503', 'Durenan'),
('350314', '3503', 'Suruh'),
('350401', '3504', 'Tulungagung'),
('350402', '3504', 'Boyolangu'),
('350403', '3504', 'Kedungwaru'),
('350404', '3504', 'Ngantru'),
('350405', '3504', 'Kauman'),
('350406', '3504', 'Pagerwojo'),
('350407', '3504', 'Sendang'),
('350408', '3504', 'Karangrejo'),
('350409', '3504', 'Gondang'),
('350410', '3504', 'Sumbergempol'),
('350411', '3504', 'Ngunut'),
('350412', '3504', 'Pucanglaban'),
('350413', '3504', 'Rejotangan'),
('350414', '3504', 'Kalidawir'),
('350415', '3504', 'Besuki'),
('350416', '3504', 'Campurdarat'),
('350417', '3504', 'Bandung'),
('350418', '3504', 'Pakel'),
('350419', '3504', 'Tanggunggunung'),
('350501', '3505', 'Wonodadi'),
('350502', '3505', 'Udanawu'),
('350503', '3505', 'Srengat'),
('350504', '3505', 'Kademangan'),
('350505', '3505', 'Bakung'),
('350506', '3505', 'Ponggok'),
('350507', '3505', 'Sanankulon'),
('350508', '3505', 'Wonotirto'),
('350509', '3505', 'Nglegok'),
('350510', '3505', 'Kanigoro'),
('350511', '3505', 'Garum'),
('350512', '3505', 'Sutojayan'),
('350513', '3505', 'Panggungrejo'),
('350514', '3505', 'Talun'),
('350515', '3505', 'Gandusari'),
('350516', '3505', 'Binangun'),
('350517', '3505', 'Wlingi'),
('350518', '3505', 'Doko'),
('350519', '3505', 'Kesamben'),
('350520', '3505', 'Wates'),
('350521', '3505', 'Selorejo'),
('350522', '3505', 'Selopuro'),
('350601', '3506', 'Semen'),
('350602', '3506', 'Mojo'),
('350603', '3506', 'Kras'),
('350604', '3506', 'Ngadiluwih'),
('350605', '3506', 'Kandat'),
('350606', '3506', 'Wates'),
('350607', '3506', 'Ngancar'),
('350608', '3506', 'Puncu'),
('350609', '3506', 'Plosoklaten'),
('350610', '3506', 'Gurah'),
('350611', '3506', 'Pagu'),
('350612', '3506', 'Gampengrejo'),
('350613', '3506', 'Grogol'),
('350614', '3506', 'Papar'),
('350615', '3506', 'Purwoasri'),
('350616', '3506', 'Plemahan'),
('350617', '3506', 'Pare'),
('350618', '3506', 'Kepung'),
('350619', '3506', 'Kandangan'),
('350620', '3506', 'Tarokan'),
('350621', '3506', 'Kunjang'),
('350622', '3506', 'Banyakan'),
('350623', '3506', 'Ringinrejo'),
('350624', '3506', 'Kayen Kidul'),
('350625', '3506', 'Ngasem'),
('350626', '3506', 'Badas'),
('350701', '3507', 'Donomulyo'),
('350702', '3507', 'Pagak'),
('350703', '3507', 'Bantur'),
('350704', '3507', 'Sumbermanjing Wetan'),
('350705', '3507', 'Dampit'),
('350706', '3507', 'Ampelgading'),
('350707', '3507', 'Poncokusumo'),
('350708', '3507', 'Wajak'),
('350709', '3507', 'Turen'),
('350710', '3507', 'Gondanglegi'),
('350711', '3507', 'Kalipare'),
('350712', '3507', 'Sumberpucung'),
('350713', '3507', 'Kepanjen'),
('350714', '3507', 'Bululawang'),
('350715', '3507', 'Tajinan'),
('350716', '3507', 'Tumpang'),
('350717', '3507', 'Jabung'),
('350718', '3507', 'Pakis'),
('350719', '3507', 'Pakisaji'),
('350720', '3507', 'Ngajung'),
('350721', '3507', 'Wagir'),
('350722', '3507', 'Dau'),
('350723', '3507', 'Karang Ploso'),
('350724', '3507', 'Singosari'),
('350725', '3507', 'Lawang'),
('350726', '3507', 'Pujon'),
('350727', '3507', 'Ngantang'),
('350728', '3507', 'Kasembon'),
('350729', '3507', 'Gedangan'),
('350730', '3507', 'Tirtoyudo'),
('350731', '3507', 'Kromengan'),
('350732', '3507', 'Wonosari'),
('350733', '3507', 'Pagelaran'),
('350801', '3508', 'Tempursari'),
('350802', '3508', 'Pronojiwo'),
('350803', '3508', 'Candipuro'),
('350804', '3508', 'Pasirian'),
('350805', '3508', 'Tempeh'),
('350806', '3508', 'Kunir'),
('350807', '3508', 'Yosowilangun'),
('350808', '3508', 'Rowokangkung'),
('350809', '3508', 'Tekung'),
('350810', '3508', 'Lumajang'),
('350811', '3508', 'Pasrujambe'),
('350812', '3508', 'Senduro'),
('350813', '3508', 'Gucialit'),
('350814', '3508', 'Padang'),
('350815', '3508', 'Sukodono'),
('350816', '3508', 'Kedungjajang'),
('350817', '3508', 'Jatiroto'),
('350818', '3508', 'Randuagung'),
('350819', '3508', 'Klakah'),
('350820', '3508', 'Ranuyoso'),
('350821', '3508', 'Sumbersuko'),
('350901', '3509', 'Jombang'),
('350902', '3509', 'Kencong'),
('350903', '3509', 'Sumberbaru'),
('350904', '3509', 'Gumukmas'),
('350905', '3509', 'Umbulsari'),
('350906', '3509', 'Tanggul'),
('350907', '3509', 'Semboro'),
('350908', '3509', 'Puger'),
('350909', '3509', 'Bangsalsari'),
('350910', '3509', 'Balung'),
('350911', '3509', 'Wuluhan'),
('350912', '3509', 'Ambulu'),
('350913', '3509', 'Rambipuji'),
('350914', '3509', 'Panti'),
('350915', '3509', 'Sukorambi'),
('350916', '3509', 'Jenggawah'),
('350917', '3509', 'Ajung'),
('350918', '3509', 'Tempurejo'),
('350919', '3509', 'Kaliwates'),
('350920', '3509', 'Patrang'),
('350921', '3509', 'Sumbersari'),
('350922', '3509', 'Arjasa'),
('350923', '3509', 'Mumbulsari'),
('350924', '3509', 'Pakusari'),
('350925', '3509', 'Jelbuk'),
('350926', '3509', 'Mayang'),
('350927', '3509', 'Kalisat'),
('350928', '3509', 'Ledokombo'),
('350929', '3509', 'Sukowono'),
('350930', '3509', 'Silo'),
('350931', '3509', 'Sumberjambe'),
('351001', '3510', 'Pesanggaran'),
('351002', '3510', 'Bangorejo'),
('351003', '3510', 'Purwoharjo'),
('351004', '3510', 'Tegaldlimo'),
('351005', '3510', 'Muncar'),
('351006', '3510', 'Cluring'),
('351007', '3510', 'Gambiran'),
('351008', '3510', 'Srono'),
('351009', '3510', 'Genteng'),
('351010', '3510', 'Glenmore'),
('351011', '3510', 'Kalibaru'),
('351012', '3510', 'Singojuruh'),
('351013', '3510', 'Rogojampi'),
('351014', '3510', 'Kabat'),
('351015', '3510', 'Glagah'),
('351016', '3510', 'Banyuwangi'),
('351017', '3510', 'Giri'),
('351018', '3510', 'Wongsorejo'),
('351019', '3510', 'Songgon'),
('351020', '3510', 'Sempu'),
('351021', '3510', 'Kalipuro'),
('351022', '3510', 'Siliragung'),
('351023', '3510', 'Tegalsari'),
('351024', '3510', 'Licin'),
('351101', '3511', 'Maesan'),
('351102', '3511', 'Tamanan'),
('351103', '3511', 'Tlogosari'),
('351104', '3511', 'Sukosari'),
('351105', '3511', 'Pujer'),
('351106', '3511', 'Grujugan'),
('351107', '3511', 'Curahdami'),
('351108', '3511', 'Tenggarang'),
('351109', '3511', 'Wonosari'),
('351110', '3511', 'Tapen'),
('351111', '3511', 'Bondowoso'),
('351112', '3511', 'Wringin'),
('351113', '3511', 'Tegalampel'),
('351114', '3511', 'Klabang'),
('351115', '3511', 'Cermee'),
('351116', '3511', 'Prajekan'),
('351117', '3511', 'Pakem'),
('351118', '3511', 'Sumberwringin'),
('351119', '3511', 'Sempol'),
('351120', '3511', 'Binakal'),
('351121', '3511', 'Taman Krocok'),
('351122', '3511', 'Botolinggo'),
('351123', '3511', 'Jambesari Darus Sholah'),
('351201', '3512', 'Jatibanteng'),
('351202', '3512', 'Besuki'),
('351203', '3512', 'Suboh'),
('351204', '3512', 'Mlandingan'),
('351205', '3512', 'Kendit'),
('351206', '3512', 'Panarukan'),
('351207', '3512', 'Situbondo'),
('351208', '3512', 'Panji'),
('351209', '3512', 'Mangaran'),
('351210', '3512', 'Kapongan'),
('351211', '3512', 'Arjasa'),
('351212', '3512', 'Jangkar'),
('351213', '3512', 'Asembagus'),
('351214', '3512', 'Banyuputih'),
('351215', '3512', 'Sumbermalang'),
('351216', '3512', 'Banyuglugur'),
('351217', '3512', 'Bungatan'),
('351301', '3513', 'Sukapura'),
('351302', '3513', 'Sumber'),
('351303', '3513', 'Kuripan'),
('351304', '3513', 'Bantaran'),
('351305', '3513', 'Leces'),
('351306', '3513', 'Banyuanyar'),
('351307', '3513', 'Tiris'),
('351308', '3513', 'Krucil'),
('351309', '3513', 'Gading'),
('351310', '3513', 'Pakuniran'),
('351311', '3513', 'Kotaanyar'),
('351312', '3513', 'Paiton'),
('351313', '3513', 'Besuk'),
('351314', '3513', 'Kraksaan'),
('351315', '3513', 'Krejengan'),
('351316', '3513', 'Pejarakan'),
('351317', '3513', 'Maron'),
('351318', '3513', 'Gending'),
('351319', '3513', 'Dringu'),
('351320', '3513', 'Tegalsiwalan'),
('351321', '3513', 'Sumberasih'),
('351322', '3513', 'Wonomerto'),
('351323', '3513', 'Tongas'),
('351324', '3513', 'Lumbang'),
('351401', '3514', 'Purwodadi'),
('351402', '3514', 'Tutur'),
('351403', '3514', 'Puspo'),
('351404', '3514', 'Lumbang'),
('351405', '3514', 'Pasrepan'),
('351406', '3514', 'Kejayan'),
('351407', '3514', 'Wonorejo'),
('351408', '3514', 'Purwosari'),
('351409', '3514', 'Sukorejo'),
('351410', '3514', 'Prigen'),
('351411', '3514', 'Pandaan'),
('351412', '3514', 'Gempol'),
('351413', '3514', 'Beji'),
('351414', '3514', 'Bangil'),
('351415', '3514', 'Rembang'),
('351416', '3514', 'Kraton'),
('351417', '3514', 'Pohjentrek'),
('351418', '3514', 'Gondangwetan'),
('351419', '3514', 'Winongan'),
('351420', '3514', 'Grati'),
('351421', '3514', 'Nguling'),
('351422', '3514', 'Lekok'),
('351423', '3514', 'Rejoso'),
('351424', '3514', 'Tosari'),
('351501', '3515', 'Tarik'),
('351502', '3515', 'Prambon'),
('351503', '3515', 'Krembung'),
('351504', '3515', 'Porong'),
('351505', '3515', 'Jabon'),
('351506', '3515', 'Tanggulangin'),
('351507', '3515', 'Candi'),
('351508', '3515', 'Sidoarjo'),
('351509', '3515', 'Tulangan'),
('351510', '3515', 'Wonoayu'),
('351511', '3515', 'Krian'),
('351512', '3515', 'Balongbendo'),
('351513', '3515', 'Taman'),
('351514', '3515', 'Sukodono'),
('351515', '3515', 'Buduran'),
('351516', '3515', 'Gedangan'),
('351517', '3515', 'Sedati'),
('351518', '3515', 'Waru'),
('351601', '3516', 'Jatirejo'),
('351602', '3516', 'Gondang'),
('351603', '3516', 'Pacet'),
('351604', '3516', 'Trawas'),
('351605', '3516', 'Ngoro'),
('351606', '3516', 'Pungging'),
('351607', '3516', 'Kutorejo'),
('351608', '3516', 'Mojosari'),
('351609', '3516', 'Dlanggu'),
('351610', '3516', 'Bangsal'),
('351611', '3516', 'Puri'),
('351612', '3516', 'Trowulan'),
('351613', '3516', 'Sooko'),
('351614', '3516', 'Gedeg'),
('351615', '3516', 'Kemlagi'),
('351616', '3516', 'Jetis'),
('351617', '3516', 'Dawarblandong'),
('351618', '3516', 'Mojoanyar'),
('351701', '3517', 'Perak'),
('351702', '3517', 'Gudo'),
('351703', '3517', 'Ngoro'),
('351704', '3517', 'Bareng'),
('351705', '3517', 'Wonosalam'),
('351706', '3517', 'Mojoagung'),
('351707', '3517', 'Mojowarno'),
('351708', '3517', 'Diwek'),
('351709', '3517', 'Jombang'),
('351710', '3517', 'Peterongan'),
('351711', '3517', 'Sumobito'),
('351712', '3517', 'Kesamben'),
('351713', '3517', 'Tembelang'),
('351714', '3517', 'Ploso'),
('351715', '3517', 'Plandaan'),
('351716', '3517', 'Kabuh'),
('351717', '3517', 'Kudu'),
('351718', '3517', 'Bandarkedungmulyo'),
('351719', '3517', 'Jogoroto'),
('351720', '3517', 'Megaluh'),
('351721', '3517', 'Ngusikan'),
('351801', '3518', 'Sawahan'),
('351802', '3518', 'Ngetos'),
('351803', '3518', 'Berbek'),
('351804', '3518', 'Loceret'),
('351805', '3518', 'Pace'),
('351806', '3518', 'Prambon'),
('351807', '3518', 'Ngronggot'),
('351808', '3518', 'Kertosono'),
('351809', '3518', 'Patianrowo'),
('351810', '3518', 'Baron'),
('351811', '3518', 'Tanjunganom'),
('351812', '3518', 'Sukomoro'),
('351813', '3518', 'Nganjuk'),
('351814', '3518', 'Bagor'),
('351815', '3518', 'Wilangan'),
('351816', '3518', 'Rejoso'),
('351817', '3518', 'Gondang'),
('351818', '3518', 'Ngluyu'),
('351819', '3518', 'Lengkong'),
('351820', '3518', 'Jatikalen'),
('351901', '3519', 'Kebon Sari'),
('351902', '3519', 'Dolopo'),
('351903', '3519', 'Geger'),
('351904', '3519', 'Dagangan'),
('351905', '3519', 'Kare'),
('351906', '3519', 'Gemarang'),
('351907', '3519', 'Wungu'),
('351908', '3519', 'Madiun'),
('351909', '3519', 'Jiwan'),
('351910', '3519', 'Balerejo'),
('351911', '3519', 'Mejayan'),
('351912', '3519', 'Saradan'),
('351913', '3519', 'Pilangkenceng'),
('351914', '3519', 'Sawahan'),
('351915', '3519', 'Wonoasri'),
('352001', '3520', 'Poncol'),
('352002', '3520', 'Parang'),
('352003', '3520', 'Lembeyan'),
('352004', '3520', 'Takeran'),
('352005', '3520', 'Kawedanan'),
('352006', '3520', 'Magetan'),
('352007', '3520', 'Plaosan'),
('352008', '3520', 'Panekan'),
('352009', '3520', 'Sukomoro'),
('352010', '3520', 'Bendo'),
('352011', '3520', 'Maospati'),
('352012', '3520', 'Barat'),
('352013', '3520', 'Karangrejo'),
('352014', '3520', 'Karas'),
('352015', '3520', 'Kartoharjo'),
('352016', '3520', 'Ngariboyo'),
('352017', '3520', 'Nguntoronadi'),
('352018', '3520', 'Sidorejo'),
('352101', '3521', 'Sine'),
('352102', '3521', 'Ngrambe'),
('352103', '3521', 'Jogorogo'),
('352104', '3521', 'Kendal'),
('352105', '3521', 'Geneng'),
('352106', '3521', 'Kwadungan'),
('352107', '3521', 'Karangjati'),
('352108', '3521', 'Padas'),
('352109', '3521', 'Ngawi'),
('352110', '3521', 'Paron'),
('352111', '3521', 'Kedunggalar'),
('352112', '3521', 'Widodaren'),
('352113', '3521', 'Mantingan'),
('352114', '3521', 'Pangkur'),
('352115', '3521', 'Bringin'),
('352116', '3521', 'Pitu'),
('352117', '3521', 'Karanganyar'),
('352118', '3521', 'Gerih'),
('352119', '3521', 'Kasreman'),
('352201', '3522', 'Ngraho'),
('352202', '3522', 'Tambakrejo'),
('352203', '3522', 'Ngambon'),
('352204', '3522', 'Ngasem'),
('352205', '3522', 'Bubulan'),
('352206', '3522', 'Dander'),
('352207', '3522', 'Sugihwaras'),
('352208', '3522', 'Kedungadem'),
('352209', '3522', 'Kepoh Baru'),
('352210', '3522', 'Baureno'),
('352211', '3522', 'Kanor'),
('352212', '3522', 'Sumberejo'),
('352213', '3522', 'Balen'),
('352214', '3522', 'Kapas'),
('352215', '3522', 'Bojonegoro'),
('352216', '3522', 'Kalitidu'),
('352217', '3522', 'Malo'),
('352218', '3522', 'Purwosari'),
('352219', '3522', 'Padangan'),
('352220', '3522', 'Kasiman'),
('352221', '3522', 'Temayang'),
('352222', '3522', 'Margomulyo'),
('352223', '3522', 'Trucuk'),
('352224', '3522', 'Sukosewu'),
('352225', '3522', 'Kedewan'),
('352226', '3522', 'Gondang'),
('352227', '3522', 'Sekar'),
('352228', '3522', 'Gayam'),
('352301', '3523', 'Kenduruan'),
('352302', '3523', 'Jatirogo'),
('352303', '3523', 'Bangilan'),
('352304', '3523', 'Bancar'),
('352305', '3523', 'Senori'),
('352306', '3523', 'Tambakboyo'),
('352307', '3523', 'Singgahan'),
('352308', '3523', 'Kerek'),
('352309', '3523', 'Parengan'),
('352310', '3523', 'Montong'),
('352311', '3523', 'Soko'),
('352312', '3523', 'Jenu'),
('352313', '3523', 'Merakurak'),
('352314', '3523', 'Rengel'),
('352315', '3523', 'Semanding'),
('352316', '3523', 'Tuban'),
('352317', '3523', 'Plumpang'),
('352318', '3523', 'Palang'),
('352319', '3523', 'Widang'),
('352320', '3523', 'Grabagan'),
('352401', '3524', 'Sukorame'),
('352402', '3524', 'Bluluk'),
('352403', '3524', 'Modo'),
('352404', '3524', 'Ngimbang'),
('352405', '3524', 'Babat'),
('352406', '3524', 'Kedungpring'),
('352407', '3524', 'Brondong'),
('352408', '3524', 'Laren'),
('352409', '3524', 'Sekaran'),
('352410', '3524', 'Maduran'),
('352411', '3524', 'Sambeng'),
('352412', '3524', 'Sugio'),
('352413', '3524', 'Pucuk'),
('352414', '3524', 'Paciran'),
('352415', '3524', 'Solokuro'),
('352416', '3524', 'Mantup'),
('352417', '3524', 'Sukodadi'),
('352418', '3524', 'Karanggeneng'),
('352419', '3524', 'Kembangbahu'),
('352420', '3524', 'Kalitengah'),
('352421', '3524', 'Turi'),
('352422', '3524', 'Lamongan'),
('352423', '3524', 'Tikung'),
('352424', '3524', 'Karangbinangun'),
('352425', '3524', 'Deket'),
('352426', '3524', 'Glagah'),
('352427', '3524', 'Sarirejo'),
('352501', '3525', 'Dukun'),
('352502', '3525', 'Balongpanggang'),
('352503', '3525', 'Panceng'),
('352504', '3525', 'Benjeng'),
('352505', '3525', 'Duduksampeyan'),
('352506', '3525', 'Wringinanom'),
('352507', '3525', 'Ujungpangkah'),
('352508', '3525', 'Kedamean'),
('352509', '3525', 'Sidayu'),
('352510', '3525', 'Manyar'),
('352511', '3525', 'Cerme'),
('352512', '3525', 'Bungah'),
('352513', '3525', 'Menganti'),
('352514', '3525', 'Kebomas'),
('352515', '3525', 'Driyorejo'),
('352516', '3525', 'Gresik'),
('352517', '3525', 'Sangkapura'),
('352518', '3525', 'Tambak'),
('352601', '3526', 'Bangkalan'),
('352602', '3526', 'Socah'),
('352603', '3526', 'Burneh'),
('352604', '3526', 'Kamal'),
('352605', '3526', 'Arosbaya'),
('352606', '3526', 'Geger'),
('352607', '3526', 'Klampis'),
('352608', '3526', 'Sepulu'),
('352609', '3526', 'Tanjung Bumi'),
('352610', '3526', 'Kokop'),
('352611', '3526', 'Kwanyar'),
('352612', '3526', 'Labang'),
('352613', '3526', 'Tanah Merah'),
('352614', '3526', 'Tragah'),
('352615', '3526', 'Blega'),
('352616', '3526', 'Modung'),
('352617', '3526', 'Konang'),
('352618', '3526', 'Galis'),
('352701', '3527', 'Sreseh'),
('352702', '3527', 'Torjun'),
('352703', '3527', 'Sampang'),
('352704', '3527', 'Camplong'),
('352705', '3527', 'Omben'),
('352706', '3527', 'Kedungdung'),
('352707', '3527', 'Jrengik'),
('352708', '3527', 'Tambelangan'),
('352709', '3527', 'Banyuates'),
('352710', '3527', 'Robatal'),
('352711', '3527', 'Sokobanah'),
('352712', '3527', 'Ketapang'),
('352713', '3527', 'Pangarengan'),
('352714', '3527', 'Karangpenang'),
('352801', '3528', 'Tlanakan'),
('352802', '3528', 'Pademawu'),
('352803', '3528', 'Galis'),
('352804', '3528', 'Pamekasan'),
('352805', '3528', 'Proppo'),
('352806', '3528', 'Palenga"an'),
('352807', '3528', 'Pegantenan'),
('352808', '3528', 'Larangan'),
('352809', '3528', 'Pakong'),
('352810', '3528', 'Waru'),
('352811', '3528', 'Batumarmar'),
('352812', '3528', 'Kadur'),
('352813', '3528', 'Pasean'),
('352901', '3529', 'Kota Sumenep'),
('352902', '3529', 'Kalianget'),
('352903', '3529', 'Manding'),
('352904', '3529', 'Talango'),
('352905', '3529', 'Bluto'),
('352906', '3529', 'Saronggi'),
('352907', '3529', 'Lenteng'),
('352908', '3529', 'Gili Ginting'),
('352909', '3529', 'Guluk-Guluk'),
('352910', '3529', 'Ganding'),
('352911', '3529', 'Pragaan'),
('352912', '3529', 'Ambunten'),
('352913', '3529', 'Pasongsongan'),
('352914', '3529', 'Dasuk'),
('352915', '3529', 'Rubaru'),
('352916', '3529', 'Batang Batang'),
('352917', '3529', 'Batu Putih'),
('352918', '3529', 'Dungkek'),
('352919', '3529', 'Gapura'),
('352920', '3529', 'Gayam'),
('352921', '3529', 'Nonggunong'),
('352922', '3529', 'Ra"as'),
('352923', '3529', 'Masalembu'),
('352924', '3529', 'Arjasa'),
('352925', '3529', 'Sapeken'),
('352926', '3529', 'Batuan'),
('352927', '3529', 'Kangayan'),
('357101', '3571', 'Mojoroto'),
('357102', '3571', 'Kota'),
('357103', '3571', 'Pesantren'),
('357201', '3572', 'Kepanjenkidul'),
('357202', '3572', 'Sukorejo'),
('357203', '3572', 'Sananwetan'),
('357301', '3573', 'Blimbing'),
('357302', '3573', 'Klojen'),
('357303', '3573', 'Kedungkandang'),
('357304', '3573', 'Sukun'),
('357305', '3573', 'Lowokwaru'),
('357401', '3574', 'Kademangan'),
('357402', '3574', 'Wonoasih'),
('357403', '3574', 'Mayangan'),
('357404', '3574', 'Kanigaran'),
('357405', '3574', 'Kedopak'),
('357501', '3575', 'Gadingrejo'),
('357502', '3575', 'Purworejo'),
('357503', '3575', 'Bugul Kidul'),
('357504', '3575', 'Panggungrejo'),
('357601', '3576', 'Prajurit Kulon'),
('357602', '3576', 'Magersari'),
('357701', '3577', 'Kartoharjo'),
('357702', '3577', 'Manguharjo'),
('357703', '3577', 'Taman'),
('357801', '3578', 'Karangpilang'),
('357802', '3578', 'Wonocolo'),
('357803', '3578', 'Rungkut'),
('357804', '3578', 'Wonokromo'),
('357805', '3578', 'Tegalsari'),
('357806', '3578', 'Sawahan'),
('357807', '3578', 'Genteng'),
('357808', '3578', 'Gubeng'),
('357809', '3578', 'Sukolilo'),
('357810', '3578', 'Tambaksari'),
('357811', '3578', 'Simokerto'),
('357812', '3578', 'Pabean Cantikan'),
('357813', '3578', 'Bubutan'),
('357814', '3578', 'Tandes'),
('357815', '3578', 'Krembangan'),
('357816', '3578', 'Semampir'),
('357817', '3578', 'Kenjeran'),
('357818', '3578', 'Lakarsantri'),
('357819', '3578', 'Benowo'),
('357820', '3578', 'Wiyung'),
('357821', '3578', 'Dukuhpakis'),
('357822', '3578', 'Gayungan'),
('357823', '3578', 'Jambangan'),
('357824', '3578', 'Tenggilis Mejoyo'),
('357825', '3578', 'Gunung Anyar'),
('357826', '3578', 'Mulyorejo'),
('357827', '3578', 'Sukomanunggal'),
('357828', '3578', 'Asem Rowo'),
('357829', '3578', 'Bulak'),
('357830', '3578', 'Pakal'),
('357831', '3578', 'Sambikerep'),
('357901', '3579', 'Batu'),
('357902', '3579', 'Bumiaji'),
('357903', '3579', 'Junrejo'),
('7101', '71', 'Tombatu'),
('7102', '71', 'Tombatu Timur'),
('7601', '76', 'Tomohon Tengah'),
('7602', '76', 'Tomohon Utara');

-- --------------------------------------------------------

--
-- Table structure for table `kelurahan`
--

CREATE TABLE `kelurahan` (
  `id_kel` char(10) NOT NULL,
  `id_kec` char(6) DEFAULT NULL,
  `nama_kelurahan` tinytext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kelurahan`
--

INSERT INTO `kelurahan` (`id_kel`, `id_kec`, `nama_kelurahan`) VALUES
('3202212008', '320231', 'Cikembang'),
('710101', '7101', 'Betelen'),
('710102', '7101', 'Betelen 1'),
('760101', '7601', 'Paslaten'),
('760201', '7602', 'Kakaskasen 2');

-- --------------------------------------------------------

--
-- Table structure for table `level`
--

CREATE TABLE `level` (
  `id_level` varchar(2) NOT NULL,
  `level` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `level`
--

INSERT INTO `level` (`id_level`, `level`) VALUES
('1', 'Administrator'),
('2', 'IT Staf'),
('3', 'User');

-- --------------------------------------------------------

--
-- Table structure for table `provinsi`
--

CREATE TABLE `provinsi` (
  `id_prov` char(2) NOT NULL,
  `nama_provinsi` tinytext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `provinsi`
--

INSERT INTO `provinsi` (`id_prov`, `nama_provinsi`) VALUES
('11', 'Aceh'),
('12', 'Sumatera Utara'),
('13', 'Sumatera Barat'),
('14', 'Riau'),
('15', 'Jambi'),
('16', 'Sumatera Selatan'),
('17', 'Bengkulu'),
('18', 'Lampung'),
('19', 'Kepulauan Bangka Belitung'),
('21', 'Kepulauan Riau'),
('31', 'DKI Jakarta'),
('32', 'Jawa Barat'),
('33', 'Jawa Tengah'),
('34', 'DI Yogyakarta'),
('35', 'Jawa Timur'),
('36', 'Banten'),
('51', 'Bali'),
('52', 'Nusa Tenggara Barat'),
('53', 'Nusa Tenggara Timur'),
('6', 'dfbsdmhfgbsh'),
('61', 'Kalimantan Barat'),
('62', 'Kalimantan Tengah'),
('63', 'Kalimantan Selatan'),
('64', 'Kalimantan Timur'),
('65', 'Kalimantan Utara'),
('71', 'Sulawesi Utara'),
('72', 'Sulawesi Tengah'),
('73', 'Sulawesi Selatan'),
('74', 'Sulawesi Tenggara'),
('75', 'Gorontalo'),
('76', 'Sulawesi Barat'),
('81', 'Maluku'),
('82', 'Maluku Utara'),
('91', 'Papua Barat'),
('92', 'Papua');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `gambar` varchar(225) NOT NULL,
  `nis` varchar(225) NOT NULL,
  `nama` varchar(225) NOT NULL,
  `tmp_lhr` varchar(225) NOT NULL,
  `tgl_lhr` date NOT NULL,
  `jk` varchar(225) NOT NULL,
  `alamat` varchar(225) NOT NULL,
  `id_prov` varchar(225) NOT NULL,
  `id_kab` varchar(225) NOT NULL,
  `id_kec` varchar(225) NOT NULL,
  `id_kel` varchar(225) NOT NULL,
  `username` varchar(225) NOT NULL,
  `password` varchar(225) NOT NULL,
  `id_level` varchar(225) NOT NULL,
  `hp` varchar(225) NOT NULL,
  `email` varchar(225) NOT NULL,
  `qrcode` varchar(225) NOT NULL,
  `waktu` time NOT NULL,
  `tgl_input` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `gambar`, `nis`, `nama`, `tmp_lhr`, `tgl_lhr`, `jk`, `alamat`, `id_prov`, `id_kab`, `id_kec`, `id_kel`, `username`, `password`, `id_level`, `hp`, `email`, `qrcode`, `waktu`, `tgl_input`) VALUES
(1, 'avatar5.png', '', 'Mahmud Al Fauzi', 'Jayapura', '1992-03-06', 'Laki-laki', 'Jl. Soputan', '71', '71', '7101', '710102', 'admin', '21232f297a57a5a743894a0e4a801fc3', '1', '0734856739867298', 'bhs@mail.com', 'Mahmud Al Fauzi.png', '21:23:30', '2019-07-11'),
(2, 'avatar.jpg', '', 'Juanlien', 'Manado', '1998-03-05', 'Perempuan', 'Jl. Lokon', '71', '71', '7101', '710102', 'itstaf', '7791d15c24eb0987a4d0daa21bdc726c', '2', '', 'juan@mail.com', 'Juanlien.png', '05:59:20', '2019-07-12'),
(35, 'avatar.png', '123/321', 'Valentino C. Wongkar', 'Senduk', '1996-04-09', 'Laki-laki', 'Jl. Siswa', '71', '71', '7101', '710101', 'user1', '24c9e15e52afc47c225b757e7bee1f9d', '3', '085256651656', 'naomi@lagoan.com', 'Valentino C. Wongkar.png', '21:01:10', '2019-02-22'),
(36, 'avatar04.png', '123/321', 'Leonardo D. Capirossi', 'Tonsea Lama', '1990-06-06', 'Laki-laki', 'Jl. Mandagi', '71', '71', '7101', '710101', 'user2', '7e58d63b60197ceb55a1c487989a3720', '3', '085256651656', 'leo@capirossi.com', 'Leonardo D. Capirossi.png', '21:01:03', '2019-02-22'),
(37, 'avatar3.png', '123/321', 'Djiah Sonya', 'Langowan', '1992-02-21', 'Laki-laki', 'Jl. Merauke', '71', '71', '7101', '710101', 'user3', '92877af70a45fd6a2ed7fe81e1236b78', '3', '085256651656', 'naomi@lagoan.com', 'Djiah Sonya.png', '21:00:46', '2019-02-22'),
(38, 'avatar2.png', '123/321', 'Naomi Lagoan', 'Langowan', '1993-12-04', 'Laki-laki', 'Jl. Sondakh', '71', '71', '7101', '710101', 'user4', '3f02ebe3d7929b091e3d8ccfde2f3bc6', '3', '085256651656', 'naomi@lagoan.com', 'Naomi Lagoan.png', '21:00:32', '2019-02-22'),
(39, 'avatar.jpg', '123/3212', 'Sulastri Jein Panjaitan', 'Jawa Timur', '1998-01-01', 'Perempuan', 'Jl. Manado Amurang', '71', '76', '7602', '760201', 'user5', '0a791842f52a0acfbb3a783378c066b8', '3', '0852-5665-1656', 'naomi.lagoan@gmail.com', 'Sulastri Jein Panjaitan.png', '21:00:21', '2019-02-22'),
(41, 'avatar5.png', '11011011', 'Riyan Andrianto', 'Gorontalo', '1992-02-22', 'Laki-laki', 'Jl. Kenangan', '71', '76', '7602', '760201', 'user6', 'affec3b64cf90492377a8114c86fc093', '3', '', 'riyan@an.com', 'Riyan Andrianto.png', '21:00:10', '2019-02-22'),
(67, 'avatar.png', '1234/482475', 'Djonny Koon Moon', 'Manado', '1990-02-14', 'Laki-laki', 'jl. Takdir', '71', '71', '7101', '710101', 'user90', '13731d57d40149e7b6a3a549e4042293', '3', '085256511732', 'yahooo@email.com', 'Djonny Koon Moon.png', '10:19:26', '2019-03-04'),
(68, '5c7fc115711e3.png', '741946731/13143', 'Candra Perdana Sayogyo', 'Manado', '1992-03-06', 'Laki-laki', 'Jalan Lasut', '71', '76', '7601', '760101', 'user33', 'c6f273ac241a04216e0a703c18c36532', '3', '', '', 'Candra Perdana Sayogyo.png', '19:46:49', '2019-03-06'),
(69, '5cea81aeb78c7.png', '123/456', 'Gandy Bomba', 'Manado', '1998-05-26', 'Laki-laki', 'Manado', '71', '71', '7101', '710101', 'user34', '9ece8c4020f8aed10676cd1c56a41889', '3', '', 'pelajar@gmail.com', 'Gandy Bomba.png', '19:08:14', '2019-05-26');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blangko`
--
ALTER TABLE `blangko`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `identitas`
--
ALTER TABLE `identitas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kabupaten`
--
ALTER TABLE `kabupaten`
  ADD PRIMARY KEY (`id_kab`);

--
-- Indexes for table `kecamatan`
--
ALTER TABLE `kecamatan`
  ADD PRIMARY KEY (`id_kec`);

--
-- Indexes for table `kelurahan`
--
ALTER TABLE `kelurahan`
  ADD PRIMARY KEY (`id_kel`);

--
-- Indexes for table `level`
--
ALTER TABLE `level`
  ADD PRIMARY KEY (`id_level`);

--
-- Indexes for table `provinsi`
--
ALTER TABLE `provinsi`
  ADD PRIMARY KEY (`id_prov`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blangko`
--
ALTER TABLE `blangko`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `identitas`
--
ALTER TABLE `identitas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
