-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 11, 2020 at 06:43 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `branchlocations`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `li_gi`
--

CREATE TABLE `li_gi` (
  `COL_1` varchar(3) DEFAULT NULL,
  `COL_2` varchar(36) DEFAULT NULL,
  `COL_3` varchar(10) DEFAULT NULL,
  `COL_4` varchar(10) DEFAULT NULL,
  `COL_5` varchar(10) DEFAULT NULL,
  `COL_6` varchar(18) DEFAULT NULL,
  `COL_7` varchar(71) DEFAULT NULL,
  `COL_8` varchar(21) DEFAULT NULL,
  `COL_9` varchar(46) DEFAULT NULL,
  `COL_10` varchar(16) DEFAULT NULL,
  `COL_11` varchar(7) DEFAULT NULL,
  `COL_12` varchar(14) DEFAULT NULL,
  `COL_13` varchar(13) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `li_gi`
--

INSERT INTO `li_gi` (`COL_1`, `COL_2`, `COL_3`, `COL_4`, `COL_5`, `COL_6`, `COL_7`, `COL_8`, `COL_9`, `COL_10`, `COL_11`, `COL_12`, `COL_13`) VALUES
('id', 'Branch_Name', 'T_number_1', 'T_number_2', 'M_number', 'F_number', 'Address', 'Location_Code', 'Note', 'request_by', 'Company', 'img', 'delete_status'),
('1', 'Ampara', '634890103', '0', '0773472749', '0632224435', 'No. 01, Regal Junction, 04th Lane, D.S.Senanayake Street, Ampara.', '7.290643, 81.674969', '', 'Nuwan Athukorala', 'HNBA', '114388651.png', '0'),
('2', 'Ambalangoda', '0914382559', '0', '0773823842', '0912255268', 'No.14, 01st Floor,Wickramasooriya Road,Ambalangoda.', '6.238631, 80.053566', '', 'Nuwan Athukorala', 'HNBA', '114388651.png', '0'),
('3', 'Ambalantota', '0474379967', '0', '0773470498', '0472225677', 'No.55/1, Sri Ananda Motors Building, Main street ,Ambalantota', '6.122499, 81.022609', '', 'Nuwan Athukorala', 'HNBA', '114388651.png', '0'),
('4', 'Anuradhapura', '0254928740', '0254934707', '0772043233', '0252223494', 'No.249/A, 2nd Floor,Maithripala Senanayake Mawatha,Anuradhapura', '8.340856, 80.411457', '', 'Nuwan Athukorala', 'HNBA', '114388651.png', '0'),
('5', 'Avissawella', '0364270775', '0', '077270798', '0362233855', 'No.151 A, Colombo Road, Avissawella.', '6.953716, 80.204417', '', 'Nuwan Athukorala', 'HNBA', '114388651.png', '0'),
('6', 'Badulla', '0554743793', '0', '0773351987', '0552228966', 'No.33/3/2/1, 2nd Floor,Modern Complex, Badulla', '6.985342, 81.058731', '', 'Nuwan Athukorala', 'HNBA', '114388651.png', '0'),
('7', 'Bandarawela ', '0574496203', '0', '0773823831', '0572221266', 'No. 348/3, Badulla Road, Bandarawela', '6.829683, 80.995049', '', 'Nuwan Athukorala', 'HNBA', '114388651.png', '0'),
('8', 'Balangoda', '0454928100', '0', '0763226500', '0452287809', 'No.71 A, 1st Floor,Barnes Rathwaththe Mawatha,Balangoda', '6.6499, 80.69812', '', 'Nuwan Athukorala', 'HNBA', '114388651.png', '0'),
('9', 'Batticaloa', '0654920220', '0', '0774415046', '0652227767', 'No.166, 2nd Floor, Bazaar Street, Batticaloa.', '7.713337,81.699085', '', 'Nuwan Athukorala', 'HNBA', '114388651.png', '0'),
('10', 'Bambalapitiya', '0114326913', '0114335931', '0', '0', 'No.285, 03rd Floor, Galle Road, Colombo 04', '6.886532, 79.857868', '', 'Nuwan Athukorala', 'HNBA', '114388651.png', '0'),
('11', 'Chavakachcheri', '0217682009', '0', '0773618145', '0', '01st Floor, No.184, Kandy Road, Chavakachcheri', '9.659552,80.164901', '', 'Nuwan Athukorala', 'HNBA', '114388651.png', '0'),
('12', 'Chilaw', '0324860358', '0', '0777260987', '0322220950', 'No.98A 1/1,Colombo Road, Chilaw.', '7.569753, 79.798714', '', 'Nuwan Athukorala', 'HNBA', '114388651.png', '0'),
('13', 'Col. North', '0114715980', '0114621595', '0777726827', '0112439725', 'No.88, 2nd Floor, Main Street, Colombo 11.', '6.93708, 79.85022', '', 'Nuwan Athukorala', 'HNBA', '114388651.png', '0'),
('14', 'Col. South', '0114693200', '0114693201', '0773950917', '0112506730', 'No.166, 2nd Floor, Havelock Road, Colombo 05.', '6.89142, 79.86278', '', 'Nuwan Athukorala', 'HNBA', '114388651.png', '0'),
('15', 'Customer Relations Management Center', '0114384384', '0', '0', '0', 'No.131, St. Michael\'s Road, Koilupitiya, Colombo 03', '6.9135, 79.85287', '', 'Nuwan Athukorala', 'HNBA', '114388651.png', '0'),
('16', 'Dambulla', '0664743793', '0', '0768892870', '0662283408', 'No. 693, 01st Floor, Anuradapura Road, Dambulla', '7.879228, 80.650160', '', 'Nuwan Athukorala', 'HNBA', '114388651.png', '0'),
('17', 'Deniyaya', '0414938445', '0', '0774415150', '0412273999', '01st Floor, Yasaro Building, Main street, Deniyaya.', '6.345478, 80.559478', '', 'Nuwan Athukorala', 'HNBA', '114388651.png', '0'),
('18', 'Embilipitiya', '0474379159', '0', '0772192007', '0472261914', 'Sarathchandra Building, Pallegama, Embilipititya.', '6.332234, 80.855612', '', 'Nuwan Athukorala', 'HNBA', '114388651.png', '0'),
('19', 'Galle', '0914384777', '0', '077398547', '0912233877', 'No. 46/1/2, Colombo Road, kaluwella, Galle', '6.035155, 80.210893', '', 'Nuwan Athukorala', 'HNBA', '114388651.png', '0'),
('20', 'Gampaha', '0334670598', '0', '0777283630', '0332231588', 'No. 64 1/1, Queen Mary\'s Road, Gampaha', '7.092050, 79.999771', '', 'Nuwan Athukorala', 'HNBA', '114388651.png', '0'),
('21', 'Gampola', '0814486461', '0', '0777726820', '0812350332', 'No.10, Nidahas Mawatha, Gampola.', '7.162489, 80.564743', '', 'Nuwan Athukorala', 'HNBA', '114388651.png', '0'),
('22', 'Hatton', '0514451000', '0', '0768892680', '0512222763', 'No. 171-1/9, 01st Floor, D.K.W Commercial Complex, Dimbula Road, hatton', '6.892895, 80.597186', '', 'Nuwan Athukorala', 'HNBA', '114388651.png', '0'),
('23', 'Horana', '0344947000', '0', '0772980122', '0342260031', 'No.165 1/1, 1st Floor, Rathnapura Road, Horana', '6.717605,80.066493', '', 'Nuwan Athukorala', 'HNBA', '114388651.png', '0'),
('24', 'Ja - Ela', '0114621851', '0', '0772776188', '0112228705', 'No.158 1/1, Old Negambo road, Ja-ela.', '7.082864, 79.892231', '', 'Nuwan Athukorala', 'HNBA', '114388651.png', '0'),
('25', 'Jaffna', '0212226016', '0', '0772242549', '0212228562', 'No.62/3, stanly Road, Jaffna.', '9.668836, 80.012541', '', 'Nuwan Athukorala', 'HNBA', '114388651.png', '0'),
('26', 'Kadawatha', '0114325072', '0', '0774493175', '0112925772', 'No.433/1, Ihalakaragahamuna, Kadawatha.', '7.004562, 79.955985', '', 'Nuwan Athukorala', 'HNBA', '114388651.png', '0'),
('27', 'Kalmunai', '0674921657', '0', '0773472964', '0672222375', 'No.220, Main Street, Baticaloa Road, Kalmunai.', '7.418973, 81.822990', '', 'Nuwan Athukorala', 'HNBA', '114388651.png', '0'),
('28', 'Kalutara', '0344280925', '0', '0773472549', '0342228188', 'No.574/1, Galle Road, Kaluthara South, Kaluthara', '6.571368, 79.965062', '', 'Nuwan Athukorala', 'HNBA', '114388651.png', '0'),
('29', 'Kandy', '0814481785', '0814951100', '0773796841', '0812205457', 'No.12, 3rd Floor, Heerasagala Road, Kandy.', '7.278106, 80.618002', '', 'Nuwan Athukorala', 'HNBA', '114388651.png', '0'),
('30', 'Kegalle', '0354743793', '0', '0777273687', '0352230649', 'No.306, 1st Floor, Main Street, Kegalle.', '7.253520, 80.350422', '', 'Nuwan Athukorala', 'HNBA', '114388651.png', '0'),
('31', 'Kiribatgoda', '0114602240', '0', '0772932346', '0112910811', 'No.277 2/1, 2nd Floor, Kandy Road, Dalugama, Kelaniya.', '6.973520, 79.921198', '', 'Nuwan Athukorala', 'HNBA', '114388651.png', '0'),
('32', 'Killinochchi', '0214923560', '0', '0777273691', '0212283828', '1st Floor, A 9 Road, Karadipoku, Kilinochchi.', '9.40686, 80.40779', '', 'Nuwan Athukorala', 'HNBA', '114388651.png', '0'),
('33', 'Kuliyapitiya', '0374936588', '0', '0779852458', '0372281818', 'No.209, Hettipola Road, Kuliyapitiya.', '7.473303, 80.044208', '', 'Nuwan Athukorala', 'HNBA', '114388651.png', '0'),
('34', 'Kurunegala', '0374939776', '0374743793', '0773472855', '0372231670', '3rd Floor, 55 3/1, Kings Groove Building, Rajapihilla Road, Kurunegala.', '7.483755, 80.366521', '', 'Nuwan Athukorala', 'HNBA', '114388651.png', '0'),
('35', 'Maharagama', '0114543793', '0', '0777726821', '0112844115', 'No.135, 2/1, High level Road, Maharagama.', '6.849440, 79.923689', '', 'Nuwan Athukorala', 'HNBA', '114388651.png', '0'),
('36', 'Mahiyanganaya', '0554927711', '0', '0763932603', '0552257295', 'No. 74, Ampara Road, Mahiyangana.', '7.340056, 80.995294', '', 'Nuwan Athukorala', 'HNBA', '114388651.png', '0'),
('37', 'Matale', '0664460907', '0', '0763496396', '0662231288', 'No.96/2/1, Kings Road, Matale.', '7.470968, 80.623140', '', 'Nuwan Athukorala', 'HNBA', '114388651.png', '0'),
('38', 'Malambe', '0114449990', '0', '077863786', '0112788700', '1st Floor, No. 395/2, New Kandy Road, Malambe.', '6.903413, 79.957082', '', 'Nuwan Athukorala', 'HNBA', '114388651.png', '0'),
('39', 'Matara', '0414743793', '0', '0777767721', '0412237833', 'No. 234, 02nd Floor, Anagarika Dharmapala Mw, Matara.', '5.949200, 80.539516', '', 'Nuwan Athukorala', 'HNBA', '114388651.png', '0'),
('40', 'Monaragala', '0554743794', '0', '0773823846', '0552277272', 'No. 145 & 147, Wellawaya Rd, Monaragala.', '6.87071, 81.3496', '', 'Nuwan Athukorala', 'HNBA', '114388651.png', '0'),
('41', 'Mannar', '0232251179', '0', '0765335906', '0232251301', 'No. 57/6, 2nd Cross Street, Pettah, Mannar.', '8.980110, 79.911186', '', 'Nuwan Athukorala', 'HNBA', '114388651.png', '0'),
('42', 'Manipay', '0214920344', '0', '0779280368', '0212255049', 'Sayanga Plaza, Yarl Road, Manipay.', '9.719311, 79.996665', '', 'Nuwan Athukorala', 'HNBA', '114388651.png', '0'),
('43', 'Mount Lavinia', '0114542535', '0', '0772719629', '0112716905', 'No. 83 2/1, Galle Road, Mount Lavinia.', '6.829858, 79.868253', '', 'Nuwan Athukorala', 'HNBA', '114388651.png', '0'),
('44', 'Mathugama', '0344941397', '0', '0767847217', '0342241241', '116/2, 2nd Floor, Agalawatte Road, Mathugama.', '6.522088, 80.118054', '', 'Nuwan Athukorala', 'HNBA', '114388651.png', '0'),
('45', 'Negambo', '0314743793', '0314874681', '077876288', '0312223144', 'No.96/2/1, Colombo road, Negombo.', '7.212968, 79.847686', '', 'Nuwan Athukorala', 'HNBA', '114388651.png', '0'),
('46', 'Nelliady', '0214920323', '0', '077569447', '0212262400', 'No. 58, 2nd Floor, Point Pedro Road, Nelliady.', '9.800477, 80.202947', '', 'Nuwan Athukorala', 'HNBA', '114388651.png', '0'),
('47', 'Nittmbuwa', '0334944475', '0', '0776976388', '0332245399', 'No. 39/1/1, Kandy Road, Nittambuwa', '7.144896, 80.095781', '', 'Nuwan Athukorala', 'HNBA', '114388651.png', '0'),
('48', 'Nuwara Eliya', '0524743793', '0', '0764203364', '0522235991', '1st Floor, Siva Complex, Lowson street, Nuwara eliya', '6.973544, 80.766629', '', 'Nuwan Athukorala', 'HNBA', '114388651.png', '0'),
('49', 'Nugegoda', '0114061399', '0', '0765440848', '0112856691', 'No.277-1/1, Stanly Thilakarathna Mawatha, Nugegoda.', '6.874794, 79.898451', '', 'Nuwan Athukorala', 'HNBA', '114388651.png', '0'),
('50', 'Panadura', '0384743793', '0384931035', '0774870997', '0382243362', 'No. 402,404, Galle road, Panadura.', '6.714338, 79.907329', '', 'Nuwan Athukorala', 'HNBA', '114388651.png', '0'),
('51', 'Piliyandala', '0114216885', '0', '0773792015', '0112606726', '2nd Floor,92/2 Moratuwa Road, Piliyandala', '6.800964, 79.920131', '', 'Nuwan Athukorala', 'HNBA', '114388651.png', '0'),
('52', 'Polonnaruwa', '0274599241', '0', '0764199867', '0272226800', 'No. 125/A, 1st Floor, Batticaloa Road, Polonnaruwa.', '7.941299, 81.004666', '', 'Nuwan Athukorala', 'HNBA', '114388651.png', '0'),
('53', 'Puttalam', '0324865220', '0', '0776976474', '0322266005', 'No. 97 B, Kurunegala Rd, Puttlam.', '8.027348, 79.837775', '', 'Nuwan Athukorala', 'HNBA', '114388651.png', '0'),
('54', 'Rathnapura', '0454928839', '0', '0777767988', '0452222345', 'No 209, 211, Main Street, Rathnapura', '6.680043,80.406471', '', 'Nuwan Athukorala', 'HNBA', '114388651.png', '0'),
('55', 'Tangalle', '0477684850', '0', '0', '0', '2nd floor, No.23, Sea Avenue, Tangalle', '6.026981, 80.795071', '', 'Nuwan Athukorala', 'HNBA', '114388651.png', '0'),
('56', 'Tissamaharama', '0474927187', '0', '0774414987', '0472239544', 'No. 81/5A, Bus Stand Avenue, Tissamaharama.', '6.276945, 81.287428', '', 'Nuwan Athukorala', 'HNBA', '114388651.png', '0'),
('57', 'Thambuttegama', '0254939332', '0', '0768892665', '0252275601', '284/C, Anuradhapura Road, Thambuttegama', '8.157967, 80.298060', '', 'Nuwan Athukorala', 'HNBA', '114388651.png', '0'),
('58', 'Trincomalee', '0264595330', '0', '0779954264', '0262223950', 'No. 62/1, MPCS Shopping Complex, Main Street, Trincomalee.', '8.577274, 81.232785', '', 'Nuwan Athukorala', 'HNBA', '114388651.png', '0'),
('59', 'Vavuniya', '0244588606', '0', '0777260967', '0242225161', 'No.65 A, 1st Floor, 1st Cross Street,Vavuniya', '8.752748, 80.499513', '', 'Nuwan Athukorala', 'HNBA', '114388651.png', '0'),
('60', 'Wattala', '0114325059', '0', '07636100', '0112982922', 'No. 218/1/1, Negambo Road, Wattala', '6.980936, 79.888364', '', 'Nuwan Athukorala', 'HNBA', '114388651.png', '0'),
('61', 'Wellawatta', '0114335931', '0', '0775600776', '0112554431', '285, 3rd floor, Galle road, colombo 04', '6.886532, 79.857868', '', 'Nuwan Athukorala', 'HNBA', '114388651.png', '0'),
('62', 'Valachchene', '0654929577', '0', '0776975704', '0652258958', 'Vipulananda Road, Valachchene', '7.923546, 81.530914', '', 'Nuwan Athukorala', 'HNBA', '114388651.png', '0'),
('63', 'Madawachchiya', '0254549902', '0', '0763496390', '0', '102/C, 1st Floor,Jaffna Road, Madawachchiya', '8.541167, 80.491844', '', 'Nuwan Athukorala', 'HNBA', '114388651.png', '0'),
('64', 'Ampara', '0634976211', '0', '0776705795', '0632224435', '1st Floor, No.8/B,03rd Lane, D.S.Senanayake Street, Ampara.', '7.290643, 81.674969', '', 'Nuwan Athukorala', 'HNBGI', '1460201875.png', '0'),
('65', 'Ambalangoda', '0914946421', '0', '0777767991', '0912255268', 'No. 14 B 1/1, Wickramasooriya Road, Ambalangoda.', '6.238631, 80.053566', '', 'Nuwan Athukorala', 'HNBGI', '1460201875.png', '0'),
('66', 'Ambalantota', '0474935211', '0', '0773823854', '0472225494', 'No. 55/1,Main Street, Ambalantota.', '6.122499, 81.022609', '', 'Nuwan Athukorala', 'HNBGI', '1460201875.png', '0'),
('67', 'Anuradhapura', '0254928741', '0254934593', '0777726813', '0252223494', 'No. 249 A, Maithripala Senanayaka Mw, Anuradhapura.', '8.340856, 80.411457', 'Other Numbers - 025 - 2225772 /  025 - 4929162', 'Nuwan Athukorala', 'HNBGI', '1460201875.png', '0'),
('68', 'Avissawella', '0364976211', '0', '0776521159', '0362233855', 'No. 151 A, Colombo Rd, Avissawella.', '6.953716, 80.204417', '', 'Nuwan Athukorala', 'HNBGI', '1460201875.png', '0'),
('69', 'Badulla', '0554499750', '0', '0779318750', '0552224260', 'No. 13, Udaya Raja Mawatha, Badulla.', ' 6.986479, 81.058595 ', '', 'Nuwan Athukorala', 'HNBGI', '1460201875.png', '0'),
('70', 'Bandarawela ', '0574976211', '0', '0771766961', '0572224944', 'No: 348, 1st & 2nd Floor, Badulla road, Bandarawela.', '6.829683, 80.995049', '', 'Nuwan Athukorala', 'HNBGI', '1460201875.png', '0'),
('71', 'Balangoda', '0454935211', '0', '0', '0452287809', 'No. 71 A, 1st Floor, Barnes Rathwatte Mw, Balangoda.', '6.6499, 80.69812', '', 'Nuwan Athukorala', 'HNBGI', '1460201875.png', '0'),
('72', 'Batticaloa', '0654976211', '0', '0773792881', '0652227767', 'No. 116A, 2nd floor, Bazaar Street, Batticaloa.', '7.713337,81.699085', '', 'Nuwan Athukorala', 'HNBGI', '1460201875.png', '0'),
('73', 'Chilaw', '0324934211', '0', '0776703394', '0322220950', 'No. 98 A , Colombo Road, Chilaw.', '7.569753, 79.798714', '', 'Nuwan Athukorala', 'HNBGI', '1460201875.png', '0'),
('74', 'Col. North', '0114347239', '0', '0776706276', '0112338154', 'No. 88, 3 rd Floor, Main street, Colombo 11.', '6.93708, 79.85022', '', 'Nuwan Athukorala', 'HNBGI', '1460201875.png', '0'),
('75', 'Col. South', '0114693205', '0', '0', '0112500059', 'No. 166 2/1, 2nd Floor, Havelock Road, Colombo 05.', '6.89142, 79.86278', '', 'Nuwan Athukorala', 'HNBGI', '1460201875.png', '0'),
('76', 'Dambulla', '0664468130', '0', '0773472764', '0662283408', 'No.693, Anuradhapura Road, Dambulla.', '7.879228, 80.650160', '', 'Nuwan Athukorala', 'HNBGI', '1460201875.png', '0'),
('77', 'Deniyaya', '0414929375', '0', '0773470030', '0412273999', 'First & second Floors, Main Street, Deniyaya.', '6.345478, 80.559478', '', 'Nuwan Athukorala', 'HNBGI', '1460201875.png', '0'),
('78', 'Embilipitiya', '0474935212', '0474987240', '0765400376', '0472261914', '1st Floor, Sarathchandra Building, Embilipititya.', '6.332234, 80.855612', '', 'Nuwan Athukorala', 'HNBGI', '1460201875.png', '0'),
('79', 'Galle', '0914946521', '0914946429', '0776968590', '0912233877', 'No. 46/1/1, Colombo Road, Kaluwella, Galle.', '6.035155, 80.210893', '', 'Nuwan Athukorala', 'HNBGI', '1460201875.png', '0'),
('80', 'Gampaha', '0334743793', '0', '0777260979', '0332231588', 'No. 64 1/1 & 64 2/1, Mary Biso Mawatha, Gampaha.', '7.092050, 79.999771', '', 'Nuwan Athukorala', 'HNBGI', '1460201875.png', '0'),
('81', 'Gampola', '0814976211', '0', '0777767989', '0812350332', 'No. 10D, Nidahas Mawatha, Gampola.', '7.162489, 80.564743', '', 'Nuwan Athukorala', 'HNBGI', '1460201875.png', '0'),
('82', 'Hatton', '0514976211', '0', '0773823858', '0512222763', 'No. 171-1/9, 1st Floor, DKW Commercial Complex, Dimbula Rd , Hatton.', '6.892895, 80.597186', '', 'Nuwan Athukorala', 'HNBGI', '1460201875.png', '0'),
('83', 'Horana', '0344976211', '0', '0776788357', '0342260031', 'No. 165 1/1, 1st Floor, Rathnapura road, Horana.', '6.717605,80.066493', '', 'Nuwan Athukorala', 'HNBGI', '1460201875.png', '0'),
('84', 'Ja - Ela', '0114389211', '0', '0777808971', '0112228705', 'No. 158 1/1, Old Negombo Road, Ja - Ela.', '7.082864, 79.892231', '', 'Nuwan Athukorala', 'HNBGI', '1460201875.png', '0'),
('85', 'Jaffna', '0214590426', '0', '0772858734', '0212217466', 'No. 62/3  1/1, 1 st & 2nd floors, Stanley Road, Jaffna.', '9.668836, 80.012541', '', 'Nuwan Athukorala', 'HNBGI', '1460201875.png', '0'),
('86', 'Kalmunai', '0674976211', '0', '0772858956', '0672222375', 'No. 220 1/1,  1st floor, Batticaloa Road, Kalmunei.', '7.418973, 81.822990', '', 'Nuwan Athukorala', 'HNBGI', '1460201875.png', '0'),
('87', 'Kalutara', '0344941111', '0', '0773502558', '0342228188', 'No. 574, Galle Road, Kalutara South, Kalutara.', '6.571368, 79.965062', '', 'Nuwan Athukorala', 'HNBGI', '1460201875.png', '0'),
('88', 'Kandy', '0814743793', '0814940273', '0777260984', '0812202456', 'No. 12, Heerassagala Road, Kandy.', '7.278106, 80.618002', '', 'Nuwan Athukorala', 'HNBGI', '1460201875.png', '0'),
('89', 'Kegalle', '0354976211', '0354935935', '077270781', '0352230649', 'No. 304 1/1, Main Street, Kegalle.', '7.253520, 80.350422', '', 'Nuwan Athukorala', 'HNBGI', '1460201875.png', '0'),
('90', 'Kiribatgoda', '0114389212', '0', '0773823834', '0112910811', 'No. 277/2/1, 2nd floor, Kandy Road, Dalugama, Kelaniya', '6.973520, 79.921198', '', 'Nuwan Athukorala', 'HNBGI', '1460201875.png', '0'),
('91', 'Killinochchi', '0214923559', '0', '077767997', '0212283828', '1st Floor, A9 Road, Karadipoku, Killinochchi.', '9.40686, 80.40779', '', 'Nuwan Athukorala', 'HNBGI', '1460201875.png', '0'),
('92', 'Kuliyapitiya', '0374976211', '0', '0776705164', '0372281818', 'No. 209, Hettipola  Road, Kuliyapitiya.', '7.473303, 80.044208', '', 'Nuwan Athukorala', 'HNBGI', '1460201875.png', '0'),
('93', 'Kurunegala', '0374939929', '0', '0772858691', '0372231670', '3rd floor, 55/3/1, Kings groove building , Rajapilla Road, Kurunegala', '7.483755, 80.366521', '', 'Nuwan Athukorala', 'HNBGI', '1460201875.png', '0'),
('94', 'Maharagama', '0114367400', '0', '0', '0112844115', 'No. 135, 2 nd floor, High Level Rd, Maharagama.', '6.849440, 79.923689', '', 'Nuwan Athukorala', 'HNBGI', '1460201875.png', '0'),
('95', 'Mahiyanganaya', '0554936211', '0', '0777851621', '0552257295', '2nd floor, Kasun Building, Buddhagayawa road, Mahiyanganaya.', '7.340056, 80.995294', '', 'Nuwan Athukorala', 'HNBGI', '1460201875.png', '0'),
('96', 'Matale', '0664976211', '0', '0', '0662231288', 'No. 96/2/1, 2nd floor, Rajaweediya, Matale.', '7.470968, 80.623140', '', 'Nuwan Athukorala', 'HNBGI', '1460201875.png', '0'),
('97', 'Malambe', '0114449991', '0', '0763495327', '0112788700', 'No. 757/28, 1st Floor, Kaduwela Rd, Talahena, Malambe.', '6.903413, 79.957082', '', 'Nuwan Athukorala', 'HNBGI', '1460201875.png', '0'),
('98', 'Matara', '0414976211', '0414390578', '0777260964', '0414390850', 'No. 234,  Anagarika Dharmapala Mw, Matara.', '5.949200, 80.539516', ' Other Numbers - 041 - 2231511', 'Nuwan Athukorala', 'HNBGI', '1460201875.png', '0'),
('99', 'Monaragala', '0554936212', '0', '0779318750', '0552277272', 'No. 145 & 147, Wellawaya Rd, Monaragala.', '6.87071, 81.3496', '', 'Nuwan Athukorala', 'HNBGI', '1460201875.png', '0'),
('100', 'Mannar', '0234976211', '0', '0774425318', '0232251301', 'No.57/6, 2nd Cross Street, Pettah, Mannar. ', '8.980110, 79.911186', '', 'Nuwan Athukorala', 'HNBGI', '1460201875.png', '0'),
('101', 'Manipay', '0214927211', '0', '0773473050', '0212255049', 'Second floor, Prem plaza, Yarl road, manipay', '9.719311, 79.996665', '', 'Nuwan Athukorala', 'HNBGI', '1460201875.png', '0'),
('102', 'Moratuwa', '0114389213', '0', '0', '0112645720', 'No.566/1/1, Rawathawatte, Moratuwa.', '-', '', 'Nuwan Athukorala', 'HNBGI', '1460201875.png', '0'),
('103', 'Negambo', '0314976211', '0', '0775253902', '0312231365', 'No.96 , 1st floor, Colombo road, Negombo.', '7.212968, 79.847686', '', 'Nuwan Athukorala', 'HNBGI', '1460201875.png', '0'),
('104', 'Nelliady', '0214927212', '0', '0776723479', '0212262400', 'No. 58/01, 2nd Floor,', '9.800477, 80.202947', '', 'Nuwan Athukorala', 'HNBGI', '1460201875.png', '0'),
('105', 'Nittmbuwa', '0334944626', '0', '0776521186', '0332245399', 'No. 39/1/1, 1 st floor, Kandy  Road, Nittambuwa', '7.144896, 80.095781', '', 'Nuwan Athukorala', 'HNBGI', '1460201875.png', '0'),
('106', 'Nuwara Eliya', '0524976211', '0', '0773470318', '0522235991', '48 1/1, 1st Floor, Siva Complex, Lowsons street, Nuwara eliya', '6.973544, 80.766629', '', 'Nuwan Athukorala', 'HNBGI', '1460201875.png', '0'),
('107', 'Panadura', '0384976211', '0384933066', '0772858875', '0382243362', 'No. 402-404, Galle road, Panadura.', '6.714338, 79.907329', '', 'Nuwan Athukorala', 'HNBGI', '1460201875.png', '0'),
('108', 'Piliyandala', '0114389214', '0', '0776983290', '0112606726', 'No. 63, HNB Building, 2nd floor, Moratuwa Rd, Piliyandala.', '6.800964, 79.920131', '', 'Nuwan Athukorala', 'HNBGI', '1460201875.png', '0'),
('109', 'Polonnaruwa', '0274976211', '0', '0772480175', '0272226800', 'No. 125, 1st Floor, Batticaloa Road, Polonnaruwa.', '7.941299, 81.004666', '', 'Nuwan Athukorala', 'HNBGI', '1460201875.png', '0'),
('110', 'Puttalam', '0324934212', '0', '0777263913', '0322266005', 'No. 97 B, 1, first floor, Kurunegala Rd, Puttlam.', '8.027348, 79.837775', '', 'Nuwan Athukorala', 'HNBGI', '1460201875.png', '0'),
('111', 'Rathnapura', '0454935212', '0454928838', '07775990', '0452222345', 'No. 211 2/1 & 3/1, Main Street, Rathnapura.', '6.680043,80.406471', ' Other Numbers - 045 - 4930021', 'Nuwan Athukorala', 'HNBGI', '1460201875.png', '0'),
('112', 'Tissamaharama', '0474935213', '0', '0772858923', '0472239544', 'No. 81/5A, first floor, Bus Stand Avenue, Tissamaharama.', '6.276945, 81.287428', '', 'Nuwan Athukorala', 'HNBGI', '1460201875.png', '0'),
('113', 'Thambuttegama', '0254932278', '0', '0777340012', '0252275601', 'No. 284/C, first floor, Kurunegala road, Thambuttegama.', '8.157967, 80.298060', '', 'Nuwan Athukorala', 'HNBGI', '1460201875.png', '0'),
('114', 'HNB Towers', '0112660124', '0114743793', '0776706196', '011 2662744 / 011 ', 'HNB H/O, Level 02, No. 479, T.B.Jayah Mawatha, Colombo 10.', '-', '', 'Nuwan Athukorala', 'HNBGI', '1460201875.png', '0'),
('115', 'Trincomalee', '0264743793', '0', '0774425318', '0262223950', 'No. 62, Main street, Trincomalee.', '8.577274, 81.232785', '', 'Nuwan Athukorala', 'HNBGI', '1460201875.png', '0'),
('116', 'Vavuniya', '0244976211', '0', '0773473033', '0242225161', 'No.65 A -1/1, 1st Floor, 1st Cross Street, Vavuniya', '8.752748, 80.499513', '', 'Nuwan Athukorala', 'HNBGI', '1460201875.png', '0'),
('117', 'Bambalapitiya', '0114322990', '0', '0779706276', '0112554431', '3rd floor, No. 285, Galle road, Colombo 04', '6.886532, 79.857868', '', 'Nuwan Athukorala', 'HNBGI', '1460201875.png', '0');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(10, '2020_01_22_085248_create_sendrequests_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sendrequests`
--

CREATE TABLE `sendrequests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Branch_Name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `T_number_1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `T_number_2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `M_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `F_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Location_Code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `request_by` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Company` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `delete_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sendrequests`
--

INSERT INTO `sendrequests` (`id`, `Branch_Name`, `T_number_1`, `T_number_2`, `M_number`, `F_number`, `Address`, `Location_Code`, `Note`, `request_by`, `Company`, `delete_status`, `img`, `created_at`, `updated_at`) VALUES
(2, 'Ampara', '634890103', '0', '0773472749', '0632224435', 'No. 01, Regal Junction, 04th Lane, D.S.Senanayake Street, Ampara.', '7.290643, 81.674969', '', 'Nuwan Athukorala', 'HNBA', '0', '114388651.png', NULL, '2020-02-25 13:39:03'),
(3, 'Ambalangoda', '0914382559', '0', '0773823842', '0912255268', 'No.14, 01st Floor,Wickramasooriya Road,Ambalangoda.', '6.238631, 80.053566', '-', 'Nuwan Athukorala', 'HNBA', '0', '114388651.png', NULL, '2020-03-08 11:40:25'),
(4, 'Ambalantota', '0474379967', '0', '0773470498', '0472225677', 'No.55/1, Sri Ananda Motors Building, Main street ,Ambalantota', '6.122499, 81.022609', '', 'Nuwan Athukorala', 'HNBA', '0', '114388651.png', NULL, '2020-02-25 12:38:12'),
(5, 'Anuradhapura', '0254928740', '0254934707', '0772043233', '0252223494', 'No.249/A, 2nd Floor,Maithripala Senanayake Mawatha,Anuradhapura', '8.340856, 80.411457', '', 'Nuwan Athukorala', 'HNBA', '0', '114388651.png', NULL, NULL),
(6, 'Avissawella', '0364270775', '0', '077270798', '0362233855', 'No.151 A, Colombo Road, Avissawella.', '6.953716, 80.204417', '', 'Nuwan Athukorala', 'HNBA', '0', '114388651.png', NULL, NULL),
(7, 'Badulla', '0554743793', '0', '0773351987', '0552228966', 'No.33/3/2/1, 2nd Floor,Modern Complex, Badulla', '6.985342, 81.058731', '', 'Nuwan Athukorala', 'HNBA', '0', '114388651.png', NULL, NULL),
(8, 'Bandarawela', '0574496203', '0', '0773823831', '0572221266', 'No. 348/3, Badulla Road, Bandarawela', '6.829683, 80.995049', '', 'Nuwan Athukorala', 'HNBA', '0', '114388651.png', NULL, '2020-02-25 13:15:46'),
(9, 'Balangoda', '0454928100', '0', '0763226500', '0452287809', 'No.71 A, 1st Floor,Barnes Rathwaththe Mawatha,Balangoda', '6.6499, 80.69812', '', 'Nuwan Athukorala', 'HNBA', '0', '114388651.png', NULL, NULL),
(10, 'Batticaloa', '0654920220', '0', '0774415046', '0652227767', 'No.166, 2nd Floor, Bazaar Street, Batticaloa.', '7.713337,81.699085', '', 'Nuwan Athukorala', 'HNBA', '0', '114388651.png', NULL, NULL),
(11, 'Bambalapitiya', '0114326913', '0114335931', '0', '0', 'No.285, 03rd Floor, Galle Road, Colombo 04', '6.886532, 79.857868', '', 'Nuwan Athukorala', 'HNBA', '0', '114388651.png', NULL, NULL),
(12, 'Chavakachcheri', '0217682009', '0', '0773618145', '0', '01st Floor, No.184, Kandy Road, Chavakachcheri', '9.659552,80.164901', '', 'Nuwan Athukorala', 'HNBA', '0', '114388651.png', NULL, NULL),
(13, 'Chilaw', '0324860358', '0', '0777260987', '0322220950', 'No.98A 1/1,Colombo Road, Chilaw.', '7.569753, 79.798714', '', 'Nuwan Athukorala', 'HNBA', '0', '114388651.png', NULL, NULL),
(14, 'Col. North', '0114715980', '0114621595', '0777726827', '0112439725', 'No.88, 2nd Floor, Main Street, Colombo 11.', '6.93708, 79.85022', '', 'Nuwan Athukorala', 'HNBA', '0', '114388651.png', NULL, NULL),
(15, 'Col. South', '0114693200', '0114693201', '0773950917', '0112506730', 'No.166, 2nd Floor, Havelock Road, Colombo 05.', '6.89142, 79.86278', '', 'Nuwan Athukorala', 'HNBA', '0', '114388651.png', NULL, NULL),
(16, 'Customer Relations Management Center', '0114384384', '0', '0', '0', 'No.131, St. Michael\'s Road, Koilupitiya, Colombo 03', '6.9135, 79.85287', '', 'Nuwan Athukorala', 'HNBA', '0', '114388651.png', NULL, NULL),
(17, 'Dambulla', '0664743793', '0', '0768892870', '0662283408', 'No. 693, 01st Floor, Anuradapura Road, Dambulla', '7.879228, 80.650160', '', 'Nuwan Athukorala', 'HNBA', '0', '114388651.png', NULL, NULL),
(18, 'Deniyaya', '0414938445', '0', '0774415150', '0412273999', '01st Floor, Yasaro Building, Main street, Deniyaya.', '6.345478, 80.559478', '', 'Nuwan Athukorala', 'HNBA', '0', '114388651.png', NULL, NULL),
(19, 'Embilipitiya', '0474379159', '0', '0772192007', '0472261914', 'Sarathchandra Building, Pallegama, Embilipititya.', '6.332234, 80.855612', '', 'Nuwan Athukorala', 'HNBA', '0', '114388651.png', NULL, NULL),
(20, 'Galle', '0914384777', '0', '077398547', '0912233877', 'No. 46/1/2, Colombo Road, kaluwella, Galle', '6.035155, 80.210893', '', 'Nuwan Athukorala', 'HNBA', '0', '114388651.png', NULL, NULL),
(21, 'Gampaha', '0334670598', '0', '0777283630', '0332231588', 'No. 64 1/1, Queen Mary\'s Road, Gampaha', '7.092050, 79.999771', '', 'Nuwan Athukorala', 'HNBA', '0', '114388651.png', NULL, NULL),
(22, 'Gampola', '0814486461', '0', '0777726820', '0812350332', 'No.10, Nidahas Mawatha, Gampola.', '7.162489, 80.564743', '', 'Nuwan Athukorala', 'HNBA', '0', '114388651.png', NULL, NULL),
(23, 'Hatton', '0514451000', '0', '0768892680', '0512222763', 'No. 171-1/9, 01st Floor, D.K.W Commercial Complex, Dimbula Road, hatton', '6.892895, 80.597186', '', 'Nuwan Athukorala', 'HNBA', '0', '114388651.png', NULL, NULL),
(24, 'Horana', '0344947000', '0', '0772980122', '0342260031', 'No.165 1/1, 1st Floor, Rathnapura Road, Horana', '6.717605,80.066493', '', 'Nuwan Athukorala', 'HNBA', '0', '114388651.png', NULL, NULL),
(25, 'Ja - Ela', '0114621851', '0', '0772776188', '0112228705', 'No.158 1/1, Old Negambo road, Ja-ela.', '7.082864, 79.892231', '', 'Nuwan Athukorala', 'HNBA', '0', '114388651.png', NULL, NULL),
(26, 'Jaffna', '0212226016', '0', '0772242549', '0212228562', 'No.62/3, stanly Road, Jaffna.', '9.668836, 80.012541', '', 'Nuwan Athukorala', 'HNBA', '0', '114388651.png', NULL, NULL),
(27, 'Kadawatha', '0114325072', '0', '0774493175', '0112925772', 'No.433/1, Ihalakaragahamuna, Kadawatha.', '7.004562, 79.955985', '', 'Nuwan Athukorala', 'HNBA', '0', '114388651.png', NULL, NULL),
(28, 'Kalmunai', '0674921657', '0', '0773472964', '0672222375', 'No.220, Main Street, Baticaloa Road, Kalmunai.', '7.418973, 81.822990', '', 'Nuwan Athukorala', 'HNBA', '0', '114388651.png', NULL, NULL),
(29, 'Kalutara', '0344280925', '0', '0773472549', '0342228188', 'No.574/1, Galle Road, Kaluthara South, Kaluthara', '6.571368, 79.965062', '', 'Nuwan Athukorala', 'HNBA', '0', '114388651.png', NULL, NULL),
(30, 'Kandy', '0814481785', '0814951100', '0773796841', '0812205457', 'No.12, 3rd Floor, Heerasagala Road, Kandy.', '7.278106, 80.618002', '', 'Nuwan Athukorala', 'HNBA', '0', '114388651.png', NULL, NULL),
(31, 'Kegalle', '0354743793', '0', '0777273687', '0352230649', 'No.306, 1st Floor, Main Street, Kegalle.', '7.253520, 80.350422', '', 'Nuwan Athukorala', 'HNBA', '0', '114388651.png', NULL, NULL),
(32, 'Kiribatgoda', '0114602240', '0', '0772932346', '0112910811', 'No.277 2/1, 2nd Floor, Kandy Road, Dalugama, Kelaniya.', '6.973520, 79.921198', '', 'Nuwan Athukorala', 'HNBA', '0', '114388651.png', NULL, NULL),
(33, 'Killinochchi', '0214923560', '0', '0777273691', '0212283828', '1st Floor, A 9 Road, Karadipoku, Kilinochchi.', '9.40686, 80.40779', '', 'Nuwan Athukorala', 'HNBA', '0', '114388651.png', NULL, NULL),
(34, 'Kuliyapitiya', '0374936588', '0', '0779852458', '0372281818', 'No.209, Hettipola Road, Kuliyapitiya.', '7.473303, 80.044208', '', 'Nuwan Athukorala', 'HNBA', '0', '114388651.png', NULL, NULL),
(35, 'Kurunegala', '0374939776', '0374743793', '0773472855', '0372231670', '3rd Floor, 55 3/1, Kings Groove Building, Rajapihilla Road, Kurunegala.', '7.483755, 80.366521', '', 'Nuwan Athukorala', 'HNBA', '0', '114388651.png', NULL, NULL),
(36, 'Maharagama', '0114543793', '0', '0777726821', '0112844115', 'No.135, 2/1, High level Road, Maharagama.', '6.849440, 79.923689', '', 'Nuwan Athukorala', 'HNBA', '0', '114388651.png', NULL, NULL),
(37, 'Mahiyanganaya', '0554927711', '0', '0763932603', '0552257295', 'No. 74, Ampara Road, Mahiyangana.', '7.340056, 80.995294', '', 'Nuwan Athukorala', 'HNBA', '0', '114388651.png', NULL, NULL),
(38, 'Matale', '0664460907', '0', '0763496396', '0662231288', 'No.96/2/1, Kings Road, Matale.', '7.470968, 80.623140', '', 'Nuwan Athukorala', 'HNBA', '0', '114388651.png', NULL, NULL),
(39, 'Malambe', '0114449990', '0', '077863786', '0112788700', '1st Floor, No. 395/2, New Kandy Road, Malambe.', '6.903413, 79.957082', '', 'Nuwan Athukorala', 'HNBA', '0', '114388651.png', NULL, NULL),
(40, 'Matara', '0414743793', '0', '0777767721', '0412237833', 'No. 234, 02nd Floor, Anagarika Dharmapala Mw, Matara.', '5.949200, 80.539516', '', 'Nuwan Athukorala', 'HNBA', '0', '114388651.png', NULL, NULL),
(41, 'Monaragala', '0554743794', '0', '0773823846', '0552277272', 'No. 145 & 147, Wellawaya Rd, Monaragala.', '6.87071, 81.3496', '', 'Nuwan Athukorala', 'HNBA', '0', '114388651.png', NULL, NULL),
(42, 'Mannar', '0232251179', '0', '0765335906', '0232251301', 'No. 57/6, 2nd Cross Street, Pettah, Mannar.', '8.980110, 79.911186', '', 'Nuwan Athukorala', 'HNBA', '0', '114388651.png', NULL, NULL),
(43, 'Manipay', '0214920344', '0', '0779280368', '0212255049', 'Sayanga Plaza, Yarl Road, Manipay.', '9.719311, 79.996665', '', 'Nuwan Athukorala', 'HNBA', '0', '114388651.png', NULL, NULL),
(44, 'Mount Lavinia', '0114542535', '0', '0772719629', '0112716905', 'No. 83 2/1, Galle Road, Mount Lavinia.', '6.829858, 79.868253', '', 'Nuwan Athukorala', 'HNBA', '0', '114388651.png', NULL, NULL),
(45, 'Mathugama', '0344941397', '0', '0767847217', '0342241241', '116/2, 2nd Floor, Agalawatte Road, Mathugama.', '6.522088, 80.118054', '', 'Nuwan Athukorala', 'HNBA', '0', '114388651.png', NULL, NULL),
(46, 'Negambo', '0314743793', '0314874681', '077876288', '0312223144', 'No.96/2/1, Colombo road, Negombo.', '7.212968, 79.847686', '', 'Nuwan Athukorala', 'HNBA', '0', '114388651.png', NULL, NULL),
(47, 'Nelliady', '0214920323', '0', '077569447', '0212262400', 'No. 58, 2nd Floor, Point Pedro Road, Nelliady.', '9.800477, 80.202947', '', 'Nuwan Athukorala', 'HNBA', '0', '114388651.png', NULL, NULL),
(48, 'Nittmbuwa', '0334944475', '0', '0776976388', '0332245399', 'No. 39/1/1, Kandy Road, Nittambuwa', '7.144896, 80.095781', '', 'Nuwan Athukorala', 'HNBA', '0', '114388651.png', NULL, NULL),
(49, 'Nuwara Eliya', '0524743793', '0', '0764203364', '0522235991', '1st Floor, Siva Complex, Lowson street, Nuwara eliya', '6.973544, 80.766629', '', 'Nuwan Athukorala', 'HNBA', '0', '114388651.png', NULL, NULL),
(50, 'Nugegoda', '0114061399', '0', '0765440848', '0112856691', 'No.277-1/1, Stanly Thilakarathna Mawatha, Nugegoda.', '6.874794, 79.898451', '', 'Nuwan Athukorala', 'HNBA', '0', '114388651.png', NULL, NULL),
(51, 'Panadura', '0384743793', '0384931035', '0774870997', '0382243362', 'No. 402,404, Galle road, Panadura.', '6.714338, 79.907329', '', 'Nuwan Athukorala', 'HNBA', '0', '114388651.png', NULL, NULL),
(52, 'Piliyandala', '0114216885', '0', '0773792015', '0112606726', '2nd Floor,92/2 Moratuwa Road, Piliyandala', '6.800964, 79.920131', '', 'Nuwan Athukorala', 'HNBA', '0', '114388651.png', NULL, NULL),
(53, 'Polonnaruwa', '0274599241', '0', '0764199867', '0272226800', 'No. 125/A, 1st Floor, Batticaloa Road, Polonnaruwa.', '7.941299, 81.004666', '', 'Nuwan Athukorala', 'HNBA', '0', '114388651.png', NULL, NULL),
(54, 'Puttalam', '0324865220', '0', '0776976474', '0322266005', 'No. 97 B, Kurunegala Rd, Puttlam.', '8.027348, 79.837775', '', 'Nuwan Athukorala', 'HNBA', '0', '114388651.png', NULL, NULL),
(55, 'Rathnapura', '0454928839', '0', '0777767988', '0452222345', 'No 209, 211, Main Street, Rathnapura', '6.680043,80.406471', '', 'Nuwan Athukorala', 'HNBA', '0', '114388651.png', NULL, NULL),
(56, 'Tangalle', '0477684850', '0', '0', '0', '2nd floor, No.23, Sea Avenue, Tangalle', '6.026981, 80.795071', '', 'Nuwan Athukorala', 'HNBA', '0', '114388651.png', NULL, NULL),
(57, 'Tissamaharama', '0474927187', '0', '0774414987', '0472239544', 'No. 81/5A, Bus Stand Avenue, Tissamaharama.', '6.276945, 81.287428', '', 'Nuwan Athukorala', 'HNBA', '0', '114388651.png', NULL, NULL),
(58, 'Thambuttegama', '0254939332', '0', '0768892665', '0252275601', '284/C, Anuradhapura Road, Thambuttegama', '8.157967, 80.298060', '', 'Nuwan Athukorala', 'HNBA', '0', '114388651.png', NULL, NULL),
(59, 'Trincomalee', '0264595330', '0', '0779954264', '0262223950', 'No. 62/1, MPCS Shopping Complex, Main Street, Trincomalee.', '8.577274, 81.232785', '', 'Nuwan Athukorala', 'HNBA', '0', '114388651.png', NULL, NULL),
(60, 'Vavuniya', '0244588606', '0', '0777260967', '0242225161', 'No.65 A, 1st Floor, 1st Cross Street,Vavuniya', '8.752748, 80.499513', '', 'Nuwan Athukorala', 'HNBA', '0', '114388651.png', NULL, NULL),
(61, 'Wattala', '0114325059', '0', '07636100', '0112982922', 'No. 218/1/1, Negambo Road, Wattala', '6.980936, 79.888364', '', 'Nuwan Athukorala', 'HNBA', '0', '114388651.png', NULL, NULL),
(62, 'Wellawatta', '0114335931', '0', '0775600776', '0112554431', '285, 3rd floor, Galle road, colombo 04', '6.886532, 79.857868', '', 'Nuwan Athukorala', 'HNBA', '0', '114388651.png', NULL, NULL),
(63, 'Valachchene', '0654929577', '0', '0776975704', '0652258958', 'Vipulananda Road, Valachchene', '7.923546, 81.530914', '', 'Nuwan Athukorala', 'HNBA', '0', '114388651.png', NULL, NULL),
(64, 'Madawachchiya', '0254549902', '0', '0763496390', '0', '102/C, 1st Floor,Jaffna Road, Madawachchiya', '8.541167, 80.491844', '', 'Nuwan Athukorala', 'HNBA', '0', '114388651.png', NULL, NULL),
(65, 'Ampara', '0634976211', '0', '0776705795', '0632224435', '1st Floor, No.8/B,03rd Lane, D.S.Senanayake Street, Ampara.', '7.290643, 81.674969', '', 'Nuwan Athukorala', 'HNBGI', '0', '1460201875.png', NULL, NULL),
(66, 'Ambalangoda', '0914946421', '0', '0777767991', '0912255268', 'No. 14 B 1/1, Wickramasooriya Road, Ambalangoda.', '6.238631, 80.053566', '', 'Nuwan Athukorala', 'HNBGI', '0', '1460201875.png', NULL, NULL),
(67, 'Ambalantota', '0474935211', '0', '0773823854', '0472225494', 'No. 55/1,Main Street, Ambalantota.', '6.122499, 81.022609', '', 'Nuwan Athukorala', 'HNBGI', '0', '1460201875.png', NULL, NULL),
(68, 'Anuradhapura', '0254928741', '0254934593', '0777726813', '0252223494', 'No. 249 A, Maithripala Senanayaka Mw, Anuradhapura.', '8.340856, 80.411457', 'Other Numbers - 025 - 2225772 /  025 - 4929162', 'Nuwan Athukorala', 'HNBGI', '0', '1460201875.png', NULL, NULL),
(69, 'Avissawella', '0364976211', '0', '0776521159', '0362233855', 'No. 151 A, Colombo Rd, Avissawella.', '6.953716, 80.204417', '', 'Nuwan Athukorala', 'HNBGI', '0', '1460201875.png', NULL, NULL),
(70, 'Badulla', '0554499750', '0', '0779318750', '0552224260', 'No. 13, Udaya Raja Mawatha, Badulla.', ' 6.986479, 81.058595 ', '', 'Nuwan Athukorala', 'HNBGI', '0', '1460201875.png', NULL, NULL),
(71, 'Bandarawela ', '0574976211', '0', '0771766961', '0572224944', 'No: 348, 1st & 2nd Floor, Badulla road, Bandarawela.', '6.829683, 80.995049', '', 'Nuwan Athukorala', 'HNBGI', '0', '1460201875.png', NULL, NULL),
(72, 'Balangoda', '0454935211', '0', '0', '0452287809', 'No. 71 A, 1st Floor, Barnes Rathwatte Mw, Balangoda.', '6.6499, 80.69812', '', 'Nuwan Athukorala', 'HNBGI', '0', '1460201875.png', NULL, NULL),
(73, 'Batticaloa', '0654976211', '0', '0773792881', '0652227767', 'No. 116A, 2nd floor, Bazaar Street, Batticaloa.', '7.713337,81.699085', '', 'Nuwan Athukorala', 'HNBGI', '0', '1460201875.png', NULL, NULL),
(74, 'Chilaw', '0324934211', '0', '0776703394', '0322220950', 'No. 98 A , Colombo Road, Chilaw.', '7.569753, 79.798714', '', 'Nuwan Athukorala', 'HNBGI', '0', '1460201875.png', NULL, NULL),
(75, 'Col. North', '0114347239', '0', '0776706276', '0112338154', 'No. 88, 3 rd Floor, Main street, Colombo 11.', '6.93708, 79.85022', '', 'Nuwan Athukorala', 'HNBGI', '0', '1460201875.png', NULL, NULL),
(76, 'Col. South', '0114693205', '0', '0', '0112500059', 'No. 166 2/1, 2nd Floor, Havelock Road, Colombo 05.', '6.89142, 79.86278', '', 'Nuwan Athukorala', 'HNBGI', '0', '1460201875.png', NULL, NULL),
(77, 'Dambulla', '0664468130', '0', '0773472764', '0662283408', 'No.693, Anuradhapura Road, Dambulla.', '7.879228, 80.650160', '', 'Nuwan Athukorala', 'HNBGI', '0', '1460201875.png', NULL, NULL),
(78, 'Deniyaya', '0414929375', '0', '0773470030', '0412273999', 'First & second Floors, Main Street, Deniyaya.', '6.345478, 80.559478', '', 'Nuwan Athukorala', 'HNBGI', '0', '1460201875.png', NULL, NULL),
(79, 'Embilipitiya', '0474935212', '0474987240', '0765400376', '0472261914', '1st Floor, Sarathchandra Building, Embilipititya.', '6.332234, 80.855612', '', 'Nuwan Athukorala', 'HNBGI', '0', '1460201875.png', NULL, NULL),
(80, 'Galle', '0914946521', '0914946429', '0776968590', '0912233877', 'No. 46/1/1, Colombo Road, Kaluwella, Galle.', '6.035155, 80.210893', '', 'Nuwan Athukorala', 'HNBGI', '0', '1460201875.png', NULL, NULL),
(81, 'Gampaha', '0334743793', '0', '0777260979', '0332231588', 'No. 64 1/1 & 64 2/1, Mary Biso Mawatha, Gampaha.', '7.092050, 79.999771', '', 'Nuwan Athukorala', 'HNBGI', '0', '1460201875.png', NULL, NULL),
(82, 'Gampola', '0814976211', '0', '0777767989', '0812350332', 'No. 10D, Nidahas Mawatha, Gampola.', '7.162489, 80.564743', '', 'Nuwan Athukorala', 'HNBGI', '0', '1460201875.png', NULL, NULL),
(83, 'Hatton', '0514976211', '0', '0773823858', '0512222763', 'No. 171-1/9, 1st Floor, DKW Commercial Complex, Dimbula Rd , Hatton.', '6.892895, 80.597186', '', 'Nuwan Athukorala', 'HNBGI', '0', '1460201875.png', NULL, NULL),
(84, 'Horana', '0344976211', '0', '0776788357', '0342260031', 'No. 165 1/1, 1st Floor, Rathnapura road, Horana.', '6.717605,80.066493', '', 'Nuwan Athukorala', 'HNBGI', '0', '1460201875.png', NULL, NULL),
(85, 'Ja - Ela', '0114389211', '0', '0777808971', '0112228705', 'No. 158 1/1, Old Negombo Road, Ja - Ela.', '7.082864, 79.892231', '', 'Nuwan Athukorala', 'HNBGI', '0', '1460201875.png', NULL, NULL),
(86, 'Jaffna', '0214590426', '0', '0772858734', '0212217466', 'No. 62/3  1/1, 1 st & 2nd floors, Stanley Road, Jaffna.', '9.668836, 80.012541', '', 'Nuwan Athukorala', 'HNBGI', '0', '1460201875.png', NULL, NULL),
(87, 'Kalmunai', '0674976211', '0', '0772858956', '0672222375', 'No. 220 1/1,  1st floor, Batticaloa Road, Kalmunei.', '7.418973, 81.822990', '', 'Nuwan Athukorala', 'HNBGI', '0', '1460201875.png', NULL, NULL),
(88, 'Kalutara', '0344941111', '0', '0773502558', '0342228188', 'No. 574, Galle Road, Kalutara South, Kalutara.', '6.571368, 79.965062', '', 'Nuwan Athukorala', 'HNBGI', '0', '1460201875.png', NULL, NULL),
(89, 'Kandy', '0814743793', '0814940273', '0777260984', '0812202456', 'No. 12, Heerassagala Road, Kandy.', '7.278106, 80.618002', '', 'Nuwan Athukorala', 'HNBGI', '0', '1460201875.png', NULL, NULL),
(90, 'Kegalle', '0354976211', '0354935935', '077270781', '0352230649', 'No. 304 1/1, Main Street, Kegalle.', '7.253520, 80.350422', '', 'Nuwan Athukorala', 'HNBGI', '0', '1460201875.png', NULL, NULL),
(91, 'Kiribatgoda', '0114389212', '0', '0773823834', '0112910811', 'No. 277/2/1, 2nd floor, Kandy Road, Dalugama, Kelaniya', '6.973520, 79.921198', '', 'Nuwan Athukorala', 'HNBGI', '0', '1460201875.png', NULL, NULL),
(92, 'Killinochchi', '0214923559', '0', '077767997', '0212283828', '1st Floor, A9 Road, Karadipoku, Killinochchi.', '9.40686, 80.40779', '', 'Nuwan Athukorala', 'HNBGI', '0', '1460201875.png', NULL, NULL),
(93, 'Kuliyapitiya', '0374976211', '0', '0776705164', '0372281818', 'No. 209, Hettipola  Road, Kuliyapitiya.', '7.473303, 80.044208', '', 'Nuwan Athukorala', 'HNBGI', '0', '1460201875.png', NULL, NULL),
(94, 'Kurunegala', '0374939929', '0', '0772858691', '0372231670', '3rd floor, 55/3/1, Kings groove building , Rajapilla Road, Kurunegala', '7.483755, 80.366521', '', 'Nuwan Athukorala', 'HNBGI', '0', '1460201875.png', NULL, NULL),
(95, 'Maharagama', '0114367400', '0', '0', '0112844115', 'No. 135, 2 nd floor, High Level Rd, Maharagama.', '6.849440, 79.923689', '', 'Nuwan Athukorala', 'HNBGI', '0', '1460201875.png', NULL, NULL),
(96, 'Mahiyanganaya', '0554936211', '0', '0777851621', '0552257295', '2nd floor, Kasun Building, Buddhagayawa road, Mahiyanganaya.', '7.340056, 80.995294', '', 'Nuwan Athukorala', 'HNBGI', '0', '1460201875.png', NULL, NULL),
(97, 'Matale', '0664976211', '0', '0', '0662231288', 'No. 96/2/1, 2nd floor, Rajaweediya, Matale.', '7.470968, 80.623140', '', 'Nuwan Athukorala', 'HNBGI', '0', '1460201875.png', NULL, NULL),
(98, 'Malambe', '0114449991', '0', '0763495327', '0112788700', 'No. 757/28, 1st Floor, Kaduwela Rd, Talahena, Malambe.', '6.903413, 79.957082', '', 'Nuwan Athukorala', 'HNBGI', '0', '1460201875.png', NULL, NULL),
(99, 'Matara', '0414976211', '0414390578', '0777260964', '0414390850', 'No. 234,  Anagarika Dharmapala Mw, Matara.', '5.949200, 80.539516', ' Other Numbers - 041 - 2231511', 'Nuwan Athukorala', 'HNBGI', '0', '1460201875.png', NULL, NULL),
(100, 'Monaragala', '0554936212', '0', '0779318750', '0552277272', 'No. 145 & 147, Wellawaya Rd, Monaragala.', '6.87071, 81.3496', '', 'Nuwan Athukorala', 'HNBGI', '0', '1460201875.png', NULL, NULL),
(101, 'Mannar', '0234976211', '0', '0774425318', '0232251301', 'No.57/6, 2nd Cross Street, Pettah, Mannar. ', '8.980110, 79.911186', '', 'Nuwan Athukorala', 'HNBGI', '0', '1460201875.png', NULL, NULL),
(102, 'Manipay', '0214927211', '0', '0773473050', '0212255049', 'Second floor, Prem plaza, Yarl road, manipay', '9.719311, 79.996665', '', 'Nuwan Athukorala', 'HNBGI', '0', '1460201875.png', NULL, NULL),
(103, 'Moratuwa', '0114389213', '0', '0', '0112645720', 'No.566/1/1, Rawathawatte, Moratuwa.', '-', '', 'Nuwan Athukorala', 'HNBGI', '0', '1460201875.png', NULL, NULL),
(104, 'Negambo', '0314976211', '0', '0775253902', '0312231365', 'No.96 , 1st floor, Colombo road, Negombo.', '7.212968, 79.847686', '', 'Nuwan Athukorala', 'HNBGI', '0', '1460201875.png', NULL, NULL),
(105, 'Nelliady', '0214927212', '0', '0776723479', '0212262400', 'No. 58/01, 2nd Floor,', '9.800477, 80.202947', '', 'Nuwan Athukorala', 'HNBGI', '0', '1460201875.png', NULL, NULL),
(106, 'Nittmbuwa', '0334944626', '0', '0776521186', '0332245399', 'No. 39/1/1, 1 st floor, Kandy  Road, Nittambuwa', '7.144896, 80.095781', '', 'Nuwan Athukorala', 'HNBGI', '0', '1460201875.png', NULL, NULL),
(107, 'Nuwara Eliya', '0524976211', '0', '0773470318', '0522235991', '48 1/1, 1st Floor, Siva Complex, Lowsons street, Nuwara eliya', '6.973544, 80.766629', '', 'Nuwan Athukorala', 'HNBGI', '0', '1460201875.png', NULL, NULL),
(108, 'Panadura', '0384976211', '0384933066', '0772858875', '0382243362', 'No. 402-404, Galle road, Panadura.', '6.714338, 79.907329', '', 'Nuwan Athukorala', 'HNBGI', '0', '1460201875.png', NULL, NULL),
(109, 'Piliyandala', '0114389214', '0', '0776983290', '0112606726', 'No. 63, HNB Building, 2nd floor, Moratuwa Rd, Piliyandala.', '6.800964, 79.920131', '', 'Nuwan Athukorala', 'HNBGI', '0', '1460201875.png', NULL, NULL),
(110, 'Polonnaruwa', '0274976211', '0', '0772480175', '0272226800', 'No. 125, 1st Floor, Batticaloa Road, Polonnaruwa.', '7.941299, 81.004666', '', 'Nuwan Athukorala', 'HNBGI', '0', '1460201875.png', NULL, NULL),
(111, 'Puttalam', '0324934212', '0', '0777263913', '0322266005', 'No. 97 B, 1, first floor, Kurunegala Rd, Puttlam.', '8.027348, 79.837775', '', 'Nuwan Athukorala', 'HNBGI', '0', '1460201875.png', NULL, NULL),
(112, 'Rathnapura', '0454935212', '0454928838', '07775990', '0452222345', 'No. 211 2/1 & 3/1, Main Street, Rathnapura.', '6.680043,80.406471', ' Other Numbers - 045 - 4930021', 'Nuwan Athukorala', 'HNBGI', '0', '1460201875.png', NULL, NULL),
(113, 'Tissamaharama', '0474935213', '0', '0772858923', '0472239544', 'No. 81/5A, first floor, Bus Stand Avenue, Tissamaharama.', '6.276945, 81.287428', '', 'Nuwan Athukorala', 'HNBGI', '0', '1460201875.png', NULL, NULL),
(114, 'Thambuttegama', '0254932278', '0', '0777340012', '0252275601', 'No. 284/C, first floor, Kurunegala road, Thambuttegama.', '8.157967, 80.298060', '', 'Nuwan Athukorala', 'HNBGI', '0', '1460201875.png', NULL, NULL),
(115, 'HNB Towers', '0112660124', '0114743793', '0776706196', '011 2662744 / 011 ', 'HNB H/O, Level 02, No. 479, T.B.Jayah Mawatha, Colombo 10.', '-', '', 'Nuwan Athukorala', 'HNBGI', '0', '1460201875.png', NULL, NULL),
(116, 'Trincomalee', '0264743793', '0', '0774425318', '0262223950', 'No. 62, Main street, Trincomalee.', '8.577274, 81.232785', '', 'Nuwan Athukorala', 'HNBGI', '0', '1460201875.png', NULL, NULL),
(117, 'Vavuniya', '0244976211', '0', '0773473033', '0242225161', 'No.65 A -1/1, 1st Floor, 1st Cross Street, Vavuniya', '8.752748, 80.499513', '', 'Nuwan Athukorala', 'HNBGI', '0', '1460201875.png', NULL, NULL),
(118, 'Bambalapitiya', '0114322990', '0', '0779706276', '0112554431', '3rd floor, No. 285, Galle road, Colombo 04', '6.886532, 79.857868', '', 'Nuwan Athukorala', 'HNBGI', '0', '1460201875.png', NULL, NULL),
(130, 'mabima', '0773256692', '0', '0', '0', 'no : 295\r\nbiyagama road', '6.238631, 80.053566443', '-', 'Nuwan Athukorala', 'HNBA', '1', '1584987907.JPG', '2020-02-26 05:52:29', '2020-03-11 00:01:26');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `epf_No` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `department` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `permission` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `delete_status` int(255) NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `epf_No`, `name`, `username`, `company`, `department`, `email`, `email_verified_at`, `permission`, `password`, `delete_status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, '2829', 'Nuwan Athukorala', 'ITD.2829', 'HNBA', 'ITD', 'nuwan.athukorala@hnbassurance.com', NULL, '1', '$2y$10$sYBr/sFPwYbukjh2daH6buKbj/5HtweEgYGFxZt1HoBVy9qVFJyna', 0, NULL, NULL, NULL),
(2, '622', 'Sahan Rajapaksha', 'MKTD.622', 'HNBA', 'MKTD', 'Nuwanthikshana@gmail.com', NULL, '2', '$2y$10$ECcvCff6gbj6hTMkpZWHkORJKFLxMG.9MyB5VVy5S.V7acjbGBDOS', 0, NULL, '2020-02-09 07:58:28', '2020-02-25 12:35:05');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `sendrequests`
--
ALTER TABLE `sendrequests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `sendrequests`
--
ALTER TABLE `sendrequests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
