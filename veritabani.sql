-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 31 Oca 2025, 23:03:56
-- Sunucu sürümü: 10.4.32-MariaDB
-- PHP Sürümü: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `vinex`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `aksesuarlar`
--

CREATE TABLE `aksesuarlar` (
  `ID` int(9) NOT NULL,
  `Sahip` int(9) NOT NULL DEFAULT 0,
  `Model` int(8) NOT NULL DEFAULT 0,
  `Takili` int(2) NOT NULL DEFAULT 0,
  `Kemik` int(2) NOT NULL DEFAULT 1,
  `Pos1` float NOT NULL,
  `Pos2` float NOT NULL,
  `Pos3` float NOT NULL,
  `Pos4` float NOT NULL,
  `Pos5` float NOT NULL,
  `Pos6` float NOT NULL,
  `Pos7` float NOT NULL,
  `Pos8` float NOT NULL,
  `Pos9` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin5 COLLATE=latin5_turkish_ci;

--
-- Tablo döküm verisi `aksesuarlar`
--

INSERT INTO `aksesuarlar` (`ID`, `Sahip`, `Model`, `Takili`, `Kemik`, `Pos1`, `Pos2`, `Pos3`, `Pos4`, `Pos5`, `Pos6`, `Pos7`, `Pos8`, `Pos9`) VALUES
(1, 2, 19048, 0, 2, 0.25, 0, 0, 0, 0, 0, 1, 1, 1),
(3, 72, 19942, 0, 15, 0.331, 0, 0.148, -173.6, 91.6999, 7.2, 1, 1, 1),
(4, 72, 18961, 1, 2, 0.1179, 0.014, 0, 91.9999, 87.5999, 0, 1.024, 0.989, 0.8689),
(5, 73, 2228, 1, 6, 0, 0, 0, 0, 0, 0, 1, 1, 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `antihile`
--

CREATE TABLE `antihile` (
  `ID` int(6) NOT NULL,
  `Isim` varchar(24) NOT NULL,
  `Aciklama` varchar(256) NOT NULL,
  `Tarih` date NOT NULL DEFAULT current_timestamp(),
  `Islem` int(3) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `antihile`
--

INSERT INTO `antihile` (`ID`, `Isim`, `Aciklama`, `Tarih`, `Islem`) VALUES
(2, 'Mia_Millerd', 'Teleport hilesi kullaniyor olabilir.', '0000-00-00', 1),
(3, 'Mia_Millerd', 'Teleport hilesi kullaniyor olabilir.', '0000-00-00', 1),
(4, 'Mia_Millerd', 'Teleport hilesi kullaniyor olabilir.', '0000-00-00', 1),
(5, 'Mia_Millerd', 'Airbreak hilesi kullaniyor olabilir.', '0000-00-00', 1),
(6, 'Mia_Millerd', 'Teleport/Airbreak hilesi kullaniyor olabilir.', '0000-00-00', 1),
(7, 'Mia_Millerd', 'Airbreak hilesi kullaniyor olabilir.', '0000-00-00', 1),
(8, 'Mia_Millerd', 'Airbreak hilesi kullaniyor olabilir.', '0000-00-00', 1),
(9, 'Mia_Millerd', 'Teleport/Airbreak hilesi kullaniyor olabilir.', '0000-00-00', 1),
(10, 'Mia_Millerd', 'Airbreak hilesi kullaniyor olabilir.', '0000-00-00', 1),
(11, 'Mia_Millerd', 'Teleport/Airbreak hilesi kullaniyor olabilir.', '0000-00-00', 1),
(12, 'Mia_Millerd', 'Airbreak hilesi kullaniyor.', '0000-00-00', 2),
(13, 'Mia_Millerd', 'Airbreak hilesi kullaniyor.', '0000-00-00', 2),
(14, 'Mia_Millerd', 'CBug hilesi kullaniyor olabilir.', '0000-00-00', 1),
(15, 'Mia_Millerd', 'Teleport/Airbreak hilesi kullaniyor olabilir.', '0000-00-00', 1),
(16, 'Mia_Millerd', 'Teleport/Airbreak hilesi kullaniyor olabilir.', '0000-00-00', 1),
(17, 'Mia_Millerd', 'Teleport/Airbreak hilesi kullaniyor olabilir.', '0000-00-00', 1),
(18, 'Mia_Millerd', 'Teleport/Airbreak hilesi kullaniyor olabilir.', '0000-00-00', 1),
(19, 'Mia_Millerd', 'Airbreak hilesi kullaniyor.', '0000-00-00', 2),
(20, 'Mia_Millerd', 'Airbreak hilesi kullaniyor.', '0000-00-00', 2),
(21, 'Mia_Millerd', 'Airbreak hilesi kullaniyor.', '0000-00-00', 2),
(22, 'Mia_Millerd', 'CBug hilesi kullaniyor olabilir.', '0000-00-00', 1),
(23, 'Mia_Millerd', 'Fake Spawn hilesi kullaniyor.', '0000-00-00', 2),
(24, 'Mia_Millerd', 'CBug hilesi kullaniyor olabilir.', '0000-00-00', 1),
(25, 'Mia_Millerd', 'CBug hilesi kullaniyor olabilir.', '0000-00-00', 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `antisobeit`
--

CREATE TABLE `antisobeit` (
  `ID` int(11) NOT NULL,
  `memaddr` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `araccezalari`
--

CREATE TABLE `araccezalari` (
  `ID` int(11) NOT NULL,
  `Tarih` varchar(16) DEFAULT NULL,
  `Ekleyen` varchar(32) DEFAULT NULL,
  `Ucret` int(6) NOT NULL DEFAULT 0,
  `Sebep` varchar(32) DEFAULT NULL,
  `AracID` int(8) NOT NULL DEFAULT 0,
  `Durum` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin5 COLLATE=latin5_turkish_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `araclar`
--

CREATE TABLE `araclar` (
  `aracID` int(11) NOT NULL,
  `aracModel` int(3) NOT NULL DEFAULT 0,
  `aracPlaka` varchar(32) DEFAULT NULL,
  `aracSahip` int(11) NOT NULL DEFAULT 0,
  `aracPosX` float NOT NULL,
  `aracPosY` float NOT NULL,
  `aracPosZ` float NOT NULL,
  `aracPosR` float NOT NULL,
  `aracRenk1` int(3) NOT NULL DEFAULT 0,
  `aracRenk2` int(3) NOT NULL DEFAULT 0,
  `aracPaintjob` int(11) NOT NULL,
  `aracKilit` int(1) NOT NULL DEFAULT 0,
  `aracBirlik` int(11) NOT NULL DEFAULT 0,
  `aracTur` int(11) NOT NULL DEFAULT 0,
  `Anahtar` int(11) NOT NULL DEFAULT 0,
  `Kiralik` int(3) NOT NULL DEFAULT 0,
  `KiraZaman` int(11) NOT NULL DEFAULT 0,
  `KiraUcret` int(11) NOT NULL DEFAULT 0,
  `aracWorld` int(11) NOT NULL DEFAULT 0,
  `aracInt` int(11) NOT NULL DEFAULT 0,
  `aracMeslek` int(2) NOT NULL DEFAULT 0,
  `aracBenzin` float NOT NULL DEFAULT 100,
  `aracZirh` int(1) NOT NULL DEFAULT 0,
  `Durum` int(3) NOT NULL DEFAULT 1,
  `Vergi` int(6) NOT NULL DEFAULT 0,
  `Fiyat` mediumint(5) NOT NULL DEFAULT 0,
  `Iletisim` varchar(144) DEFAULT NULL,
  `Baglama` int(3) NOT NULL DEFAULT 0,
  `Modifiyeler` varchar(128) NOT NULL DEFAULT '0|0|0|0|0|0|0|0|0|0|0|0|0|0',
  `Garaj` int(8) NOT NULL DEFAULT 0,
  `aracKM` int(9) NOT NULL DEFAULT 0,
  `UberLisans` tinyint(1) NOT NULL DEFAULT 0,
  `aracCamFilm` int(3) NOT NULL DEFAULT 0,
  `aracFirma` int(4) NOT NULL DEFAULT -1
) ENGINE=MyISAM DEFAULT CHARSET=latin5 COLLATE=latin5_turkish_ci;

--
-- Tablo döküm verisi `araclar`
--

INSERT INTO `araclar` (`aracID`, `aracModel`, `aracPlaka`, `aracSahip`, `aracPosX`, `aracPosY`, `aracPosZ`, `aracPosR`, `aracRenk1`, `aracRenk2`, `aracPaintjob`, `aracKilit`, `aracBirlik`, `aracTur`, `Anahtar`, `Kiralik`, `KiraZaman`, `KiraUcret`, `aracWorld`, `aracInt`, `aracMeslek`, `aracBenzin`, `aracZirh`, `Durum`, `Vergi`, `Fiyat`, `Iletisim`, `Baglama`, `Modifiyeler`, `Garaj`, `aracKM`, `UberLisans`, `aracCamFilm`, `aracFirma`) VALUES
(72, 413, 'DS8 S0072', 0, 2475.2, -2118.14, 13.6294, 0.8984, 1, 1, -1, 0, 0, 2, 0, 0, 0, 0, 0, 0, 10, 100, 0, 1, 0, 0, '', 0, '0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0, 0, 0, 0, -1),
(71, 413, 'NX3 T0071', 0, 2471.58, -2118.23, 13.6302, 1.164, 1, 1, -1, 0, 0, 2, 0, 0, 0, 0, 0, 0, 10, 100, 0, 1, 0, 0, '', 0, '0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0, 0, 0, 0, -1),
(69, 596, 'FM7 Y0069', 0, 2314.5, 2490.17, -7.7321, 89.0826, 0, 1, -1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 1, 0, 0, '', 0, '0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0, 0, 0, 0, -1),
(68, 596, 'CK1 J0068', 0, 2314.55, 2495.19, -7.7322, 92.7294, 0, 1, -1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 1, 0, 0, '', 0, '0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0, 0, 0, 0, -1),
(67, 596, 'GL5 Z0067', 0, 2314.49, 2500.33, -7.7335, 90.3003, 0, 1, -1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 1, 0, 0, '', 0, '0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0, 0, 0, 0, -1),
(26, 560, 'SU0 Q0026', 2, 1506.24, -1718.45, 13.0682, 179.254, 1, 1, -1, 0, 0, 0, -1, 1, -1, 500, 0, 0, 0, 100, 0, 1, 750, 0, '', 0, '0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0, 6, 0, 0, -1),
(25, 560, 'DK7 C0025', 2, 1508.9, -1718.48, 13.0683, 181.264, 1, 1, -1, 0, 0, 0, -1, 1, -1, 500, 0, 0, 0, 100, 0, 1, 750, 0, '', 0, '0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0, 3, 0, 0, -1),
(24, 560, 'LX5 D0024', 2, 1511.49, -1718.58, 13.0684, 180.841, 1, 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 4, 750, 0, '', 0, '0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0, 0, 0, 0, -1),
(23, 560, 'AW3 F0023', 2, 1514.1, -1718.45, 13.0682, 181.04, 1, 1, -1, 0, 0, 0, -1, 1, -1, 500, 0, 0, 0, 100, 0, 1, 750, 0, '', 0, '0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0, 1, 0, 0, -1),
(22, 560, 'BGG X0022', 2, 1516.81, -1718.32, 13.0677, 180.261, 1, 1, -1, 0, 0, 0, -1, 1, -1, 500, 0, 0, 0, 100, 0, 1, 750, 0, '', 0, '0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0, 1, 0, 0, -1),
(21, 560, 'SU9 Q0021', 2, 1506.24, -1708.45, 13.0682, 179.254, 1, 1, -1, 0, 0, 0, -1, 1, -1, 500, 0, 0, 0, 100, 0, 1, 750, 0, '', 0, '0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0, 8, 0, 0, -1),
(20, 560, 'DK7 C0020', 2, 1508.9, -1708.48, 13.0683, 181.264, 1, 1, -1, 0, 0, 0, -1, 1, -1, 500, 0, 0, 0, 100, 0, 1, 750, 0, '', 0, '0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0, 2, 0, 0, -1),
(19, 560, 'LX5 D0019', 2, 1511.49, -1708.58, 13.0684, 180.841, 1, 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 4, 750, 0, '', 0, '0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0, 0, 0, 0, -1),
(18, 560, 'AW4 F0018', 2, 1514.1, -1708.45, 13.0682, 181.04, 1, 1, -1, 0, 0, 0, -1, 1, -1, 500, 0, 0, 0, 100, 0, 1, 750, 0, '', 0, '0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0, 5, 0, 0, -1),
(13, 560, 'AW9 F0013', 2, 1514.1, -1698.45, 13.0682, 181.04, 1, 1, -1, 0, 0, 0, -1, 1, -1, 500, 0, 0, 0, 100, 0, 1, 750, 0, '', 0, '0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0, 2, 0, 0, -1),
(14, 560, 'LX6 D0014', 2, 1511.49, -1698.58, 13.0684, 180.841, 1, 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 4, 750, 0, '', 0, '0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0, 1, 0, 0, -1),
(15, 560, 'DK1 C0015', 2, 1508.9, -1698.48, 13.0683, 181.264, 1, 1, -1, 0, 0, 0, -1, 1, -1, 500, 0, 0, 0, 100, 0, 1, 750, 0, '', 0, '0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0, 2, 0, 0, -1),
(16, 560, 'SU2 Q0016', 2, 1506.24, -1698.45, 13.0682, 179.254, 1, 1, -1, 0, 0, 0, 0, 1, 0, 500, 0, 0, 0, 100, 0, 1, 750, 0, '', 0, '0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0, 2, 0, 0, -1),
(17, 560, 'BGJ X0017', 2, 1516.81, -1708.32, 13.0677, 180.261, 1, 1, -1, 0, 0, 0, -1, 1, -1, 500, 0, 0, 0, 100, 0, 1, 750, 0, '', 0, '0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0, 2, 0, 0, -1),
(77, 574, 'CY2 H0077', 0, 1672.19, -1883.85, 13.272, 88.5457, 1, 1, -1, 0, 0, 2, 0, 0, 0, 0, 0, 0, 2, 100, 0, 1, 0, 0, '', 0, '0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0, 0, 0, 0, -1),
(76, 413, 'UE9 W0076', 0, 2489.76, -2118.04, 13.6272, 0.8266, 1, 1, -1, 0, 0, 2, 0, 0, 0, 0, 0, 0, 10, 100, 0, 1, 0, 0, '', 0, '0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0, 0, 0, 0, -1),
(75, 413, 'XV5 J0075', 0, 2486.18, -2118.04, 13.6225, 0.4248, 1, 1, -1, 0, 0, 2, 0, 0, 0, 0, 0, 0, 10, 100, 0, 1, 0, 0, '', 0, '0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0, 0, 0, 0, -1),
(74, 413, 'QR2 Z0074', 0, 2482.52, -2118.1, 13.6267, 0.5374, 1, 1, -1, 0, 0, 2, 0, 0, 0, 0, 0, 0, 10, 100, 0, 1, 0, 0, '', 0, '0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0, 0, 0, 0, -1),
(73, 413, 'BQ6 W0073', 0, 2478.85, -2118.08, 13.6253, 1.3787, 1, 1, -1, 0, 0, 2, 0, 0, 0, 0, 0, 0, 10, 100, 0, 1, 0, 0, '', 0, '0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0, 0, 0, 0, -1),
(70, 413, 'CL4 W0070', 0, 2468.26, -2118.24, 13.6386, 359.789, 1, 1, -1, 0, 0, 2, 0, 0, 0, 0, 0, 0, 10, 100, 0, 1, 0, 0, '', 0, '0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0, 0, 0, 0, -1),
(12, 560, 'BG7 C0012', 2, 1516.81, -1698.32, 13.0677, 180.261, 1, 1, -1, 0, 0, 0, -1, 1, -1, 500, 0, 0, 0, 100, 0, 1, 750, 0, '', 0, '0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0, 6, 0, 0, -1),
(78, 574, 'XC6 O0078', 0, 1672.16, -1886.28, 13.272, 89.6119, 1, 1, -1, 0, 0, 2, 0, 0, 0, 0, 0, 0, 2, 100, 0, 1, 0, 0, '', 0, '0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0, 0, 0, 0, -1),
(79, 574, 'ST8 D0079', 0, 1672.04, -1888.79, 13.272, 87.8404, 1, 1, -1, 0, 0, 2, 0, 0, 0, 0, 0, 0, 2, 100, 0, 1, 0, 0, '', 0, '0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0, 0, 0, 0, -1),
(80, 574, 'MO2 Q0080', 0, 1671.95, -1891.01, 13.272, 89.3908, 1, 1, -1, 0, 0, 2, 0, 0, 0, 0, 0, 0, 2, 100, 0, 1, 0, 0, '', 0, '0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0, 0, 0, 0, -1),
(81, 574, 'FL2 J0081', 0, 1671.95, -1893.39, 13.272, 89.4802, 1, 1, -1, 0, 0, 2, 0, 0, 0, 0, 0, 0, 2, 100, 0, 1, 0, 0, '', 0, '0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0, 0, 0, 0, -1),
(82, 574, 'BH5 M0082', 0, 1671.87, -1895.81, 13.272, 88.649, 1, 1, -1, 0, 0, 2, 0, 0, 0, 0, 0, 0, 2, 100, 0, 1, 0, 0, '', 0, '0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0, 0, 0, 0, -1),
(83, 586, 'MA9 I0083', 0, 1513.49, -1711.36, 13.3627, 171.455, 1, 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 1, 0, 0, '', 0, '0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0, 0, 0, 0, -1),
(84, 586, 'QQ6 P0084', 0, 1513.49, -1711.36, 13.3627, 171.455, 1, 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 1, 0, 0, '', 0, '0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0, 0, 0, 0, -1),
(85, 586, 'BP8 P0085', 0, 1513.49, -1711.36, 13.3627, 171.455, 1, 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 1, 0, 0, '', 0, '0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0, 0, 0, 0, -1),
(86, 586, 'YS7 X0086', 0, 1513.49, -1711.36, 13.3627, 171.455, 1, 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 1, 0, 0, '', 0, '0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0, 0, 0, 0, -1),
(87, 586, 'YN2 A0087', 0, 1513.49, -1711.36, 13.3627, 171.455, 1, 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 1, 0, 0, '', 0, '0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0, 0, 0, 0, -1),
(88, 564, 'AI2 G0088', 0, 25.2203, -667.879, 3.9644, 306.931, 1, 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 1, 0, 0, '', 0, '0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0, 0, 0, 0, -1),
(89, 560, 'JY2 P0089', 0, 18.1396, -667.422, 3.986, 36.9305, 1, 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 1, 0, 0, '', 0, '0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0, 0, 0, 0, -1),
(90, 560, 'ZR5 U0090', 3, 2448.05, -2105.32, 13.5466, 37.0433, 1, 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 4, 250, 0, '', 0, '0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0, 0, 0, 0, -1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `aramakayitlari`
--

CREATE TABLE `aramakayitlari` (
  `ID` int(8) NOT NULL,
  `gelenNumara` int(8) NOT NULL DEFAULT 0,
  `karsiNumara` int(8) NOT NULL DEFAULT 0,
  `kayitTarih` varchar(36) NOT NULL,
  `kayitTur` int(2) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin5 COLLATE=latin5_turkish_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `aranmakayitlari`
--

CREATE TABLE `aranmakayitlari` (
  `id` int(11) NOT NULL,
  `Oyuncu` varchar(32) DEFAULT NULL,
  `Suc` varchar(144) DEFAULT NULL,
  `Tarih` varchar(24) DEFAULT NULL,
  `Memur` varchar(32) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin5 COLLATE=latin5_turkish_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `atm`
--

CREATE TABLE `atm` (
  `atmID` int(11) NOT NULL,
  `atmX` float NOT NULL,
  `atmY` float NOT NULL,
  `atmZ` float NOT NULL,
  `atmA` float NOT NULL,
  `atmInterior` int(11) NOT NULL DEFAULT 0,
  `atmWorld` int(11) NOT NULL DEFAULT 0,
  `atmPara` int(11) NOT NULL DEFAULT 1000
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `bagaj`
--

CREATE TABLE `bagaj` (
  `esyaID` int(6) NOT NULL,
  `esyaIsim` varchar(64) CHARACTER SET latin5 COLLATE latin5_turkish_ci DEFAULT NULL,
  `esyaAdet` int(6) NOT NULL DEFAULT 0,
  `esyaArac` int(6) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `bankaislemler`
--

CREATE TABLE `bankaislemler` (
  `ID` int(7) NOT NULL,
  `HesapNumarasi` int(7) NOT NULL DEFAULT 0,
  `Islem` varchar(96) NOT NULL,
  `Tarih` varchar(36) NOT NULL DEFAULT '01/01/1970, 00:00',
  `Tur` int(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin5 COLLATE=latin5_turkish_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `baslangicposlari`
--

CREATE TABLE `baslangicposlari` (
  `ID` int(8) NOT NULL,
  `Pos_X` float NOT NULL,
  `Pos_Y` int(6) NOT NULL,
  `Pos_Z` int(6) NOT NULL,
  `Pos_A` int(6) NOT NULL,
  `PosAdi` varchar(64) DEFAULT NULL,
  `Interior` int(6) NOT NULL DEFAULT 0,
  `VirtualWorld` int(6) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin5 COLLATE=latin5_turkish_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `benzinpompalari`
--

CREATE TABLE `benzinpompalari` (
  `pompaID` int(3) NOT NULL,
  `pompaIsyeri` int(6) NOT NULL DEFAULT 0,
  `pompaPosX` float NOT NULL,
  `pompaPosY` float NOT NULL,
  `pompaPosZ` float NOT NULL,
  `pompaPosA` float NOT NULL,
  `pompaBenzin` int(5) NOT NULL DEFAULT 0,
  `pompaUcret` int(2) NOT NULL DEFAULT 0,
  `pompaTur` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `bildirimler`
--

CREATE TABLE `bildirimler` (
  `ID` int(9) NOT NULL,
  `Eklenen` varchar(32) NOT NULL,
  `Sebep` varchar(144) NOT NULL,
  `Ekleyen` varchar(32) NOT NULL,
  `Tarih` varchar(36) NOT NULL,
  `Okundu` int(2) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin5 COLLATE=latin5_turkish_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `binalar`
--

CREATE TABLE `binalar` (
  `bID` int(11) NOT NULL,
  `binaAdi` varchar(32) DEFAULT NULL,
  `Sahip` int(11) NOT NULL DEFAULT 0,
  `bPosX` float NOT NULL,
  `bPosY` float NOT NULL,
  `bPosZ` float NOT NULL,
  `bPosA` float NOT NULL,
  `bIPosX` float NOT NULL,
  `bIPosY` float NOT NULL,
  `bIPosZ` float NOT NULL,
  `bIPosA` float NOT NULL,
  `bInterior` int(11) NOT NULL,
  `bVW` int(11) NOT NULL,
  `bDisVW` int(11) NOT NULL,
  `bDisInt` int(11) NOT NULL,
  `binaModel` int(11) NOT NULL,
  `binaDurum` int(11) NOT NULL DEFAULT 1,
  `binaTur` int(11) NOT NULL DEFAULT 0,
  `Level` int(4) NOT NULL DEFAULT 1,
  `BakimSure` int(9) NOT NULL DEFAULT 0,
  `BinaAnahtar` int(11) NOT NULL DEFAULT 0,
  `BinaAnahtar1` int(11) NOT NULL DEFAULT 0,
  `BinaAnahtar2` int(11) NOT NULL DEFAULT 0,
  `BinaAnahtar3` int(11) NOT NULL DEFAULT 0,
  `BinaAnahtar4` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin5 COLLATE=latin5_turkish_ci;

--
-- Tablo döküm verisi `binalar`
--

INSERT INTO `binalar` (`bID`, `binaAdi`, `Sahip`, `bPosX`, `bPosY`, `bPosZ`, `bPosA`, `bIPosX`, `bIPosY`, `bIPosZ`, `bIPosA`, `bInterior`, `bVW`, `bDisVW`, `bDisInt`, `binaModel`, `binaDurum`, `binaTur`, `Level`, `BakimSure`, `BinaAnahtar`, `BinaAnahtar1`, `BinaAnahtar2`, `BinaAnahtar3`, `BinaAnahtar4`) VALUES
(5, 'City Hall', 0, 1421.87, -1648.82, 14.4273, 86.6292, 1381.31, 0.1239, 1007.91, 185.162, 1, 15, 0, 0, 1, 3, 4, 1, 0, 0, 0, 0, 0, 0),
(4, 'Santos Lisans Merkezi', 0, 1480.91, -1772.25, 18.7957, 170.748, -2026.84, -103.613, 1035.18, 168.242, 3, 7004, 0, 0, 1, 1, 2, 1, 0, 0, 0, 0, 0, 0),
(3, 'Santos Polis Departmani', 0, 1555.5, -1675.72, 16.1952, 275.547, 694.55, 1623.54, 785.549, 256.78, 0, 7003, 0, 0, 1, 1, 3, 1, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `birimler`
--

CREATE TABLE `birimler` (
  `birimID` int(11) NOT NULL,
  `birimAd` varchar(32) DEFAULT NULL,
  `birimTur` int(3) NOT NULL DEFAULT 0,
  `birimBirlik` int(4) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=latin5 COLLATE=latin5_turkish_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `birlikler`
--

CREATE TABLE `birlikler` (
  `birlikID` int(12) NOT NULL,
  `birlikAd` varchar(32) DEFAULT NULL,
  `birlikMaksRutbe` int(11) NOT NULL DEFAULT 10,
  `bDolapX` float NOT NULL,
  `bDolapY` float NOT NULL,
  `bDolapZ` float NOT NULL,
  `bDolapInt` int(11) NOT NULL,
  `bDolapVW` int(11) NOT NULL,
  `birlikTur` int(3) NOT NULL,
  `birlikRutbe1` varchar(32) NOT NULL DEFAULT 'Yok',
  `birlikRutbe2` varchar(32) NOT NULL DEFAULT 'Yok',
  `birlikRutbe3` varchar(32) NOT NULL DEFAULT 'Yok',
  `birlikRutbe4` varchar(32) NOT NULL DEFAULT 'Yok',
  `birlikRutbe5` varchar(32) NOT NULL DEFAULT 'Yok',
  `birlikRutbe6` varchar(32) NOT NULL DEFAULT 'Yok',
  `birlikRutbe7` varchar(32) NOT NULL DEFAULT 'Yok',
  `birlikRutbe8` varchar(32) NOT NULL DEFAULT 'Yok',
  `birlikRutbe9` varchar(32) NOT NULL DEFAULT 'Yok',
  `birlikRutbe10` varchar(32) NOT NULL DEFAULT 'Yok',
  `birlikRutbe11` varchar(32) NOT NULL DEFAULT 'Yok',
  `birlikRutbe12` varchar(32) NOT NULL DEFAULT 'Yok',
  `birlikRutbe13` varchar(32) NOT NULL DEFAULT 'Yok',
  `birlikRutbe14` varchar(32) NOT NULL DEFAULT 'Yok',
  `birlikRutbe15` varchar(32) NOT NULL DEFAULT 'Yok',
  `birlikRutbe16` varchar(32) NOT NULL DEFAULT 'Yok',
  `birlikRutbe17` varchar(32) NOT NULL DEFAULT 'Yok',
  `birlikRutbe18` varchar(32) NOT NULL DEFAULT 'Yok',
  `birlikRutbe19` varchar(32) NOT NULL DEFAULT 'Yok',
  `birlikRutbe20` varchar(32) NOT NULL DEFAULT 'Yok',
  `oDurum` int(1) NOT NULL DEFAULT 1,
  `Level` int(1) NOT NULL DEFAULT 1,
  `Duyuru` varchar(48) DEFAULT NULL,
  `Maas1` int(9) NOT NULL DEFAULT 0,
  `Maas2` int(9) NOT NULL DEFAULT 0,
  `Maas3` int(9) NOT NULL DEFAULT 0,
  `Maas4` int(9) NOT NULL DEFAULT 0,
  `Maas5` int(9) NOT NULL DEFAULT 0,
  `Maas6` int(9) NOT NULL DEFAULT 0,
  `Maas7` int(9) NOT NULL DEFAULT 0,
  `Maas8` int(9) NOT NULL DEFAULT 0,
  `Maas9` int(9) NOT NULL DEFAULT 0,
  `Maas10` int(9) NOT NULL DEFAULT 0,
  `Maas11` int(9) NOT NULL DEFAULT 0,
  `Maas12` int(9) NOT NULL DEFAULT 0,
  `Maas13` int(9) NOT NULL DEFAULT 0,
  `Maas14` int(9) NOT NULL DEFAULT 0,
  `Maas15` int(9) NOT NULL DEFAULT 0,
  `Maas16` int(9) NOT NULL DEFAULT 0,
  `Maas17` int(9) NOT NULL DEFAULT 0,
  `Maas18` int(9) NOT NULL DEFAULT 0,
  `Maas19` int(9) NOT NULL DEFAULT 0,
  `Maas20` int(9) NOT NULL DEFAULT 0,
  `Onay` varchar(128) DEFAULT '0|0|0|0|0|0|0|0'
) ENGINE=MyISAM DEFAULT CHARSET=latin5 COLLATE=latin5_turkish_ci;

--
-- Tablo döküm verisi `birlikler`
--

INSERT INTO `birlikler` (`birlikID`, `birlikAd`, `birlikMaksRutbe`, `bDolapX`, `bDolapY`, `bDolapZ`, `bDolapInt`, `bDolapVW`, `birlikTur`, `birlikRutbe1`, `birlikRutbe2`, `birlikRutbe3`, `birlikRutbe4`, `birlikRutbe5`, `birlikRutbe6`, `birlikRutbe7`, `birlikRutbe8`, `birlikRutbe9`, `birlikRutbe10`, `birlikRutbe11`, `birlikRutbe12`, `birlikRutbe13`, `birlikRutbe14`, `birlikRutbe15`, `birlikRutbe16`, `birlikRutbe17`, `birlikRutbe18`, `birlikRutbe19`, `birlikRutbe20`, `oDurum`, `Level`, `Duyuru`, `Maas1`, `Maas2`, `Maas3`, `Maas4`, `Maas5`, `Maas6`, `Maas7`, `Maas8`, `Maas9`, `Maas10`, `Maas11`, `Maas12`, `Maas13`, `Maas14`, `Maas15`, `Maas16`, `Maas17`, `Maas18`, `Maas19`, `Maas20`, `Onay`) VALUES
(1, 'LSPD', 6, 0, 0, 0, 0, 0, 5, 'Yok', 'Yok', 'Yok', 'Yok', 'Yok', 'Yok', 'Yok', 'Yok', 'Yok', 'Yok', 'Yok', 'Yok', 'Yok', 'Yok', 'Yok', 'Yok', 'Yok', 'Yok', 'Yok', 'Yok', 0, 1, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0|0|0|0|0|0|0|0');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `bolgeler`
--

CREATE TABLE `bolgeler` (
  `id` int(11) NOT NULL,
  `minx` float NOT NULL,
  `miny` float NOT NULL,
  `maxx` float NOT NULL,
  `maxy` float NOT NULL,
  `birlik` int(11) NOT NULL,
  `renk` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `bolokayitlari`
--

CREATE TABLE `bolokayitlari` (
  `ID` int(9) NOT NULL,
  `Tarih` varchar(36) NOT NULL,
  `Ekleyen` varchar(32) NOT NULL,
  `Detay` varchar(144) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin5 COLLATE=latin5_turkish_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `cctv`
--

CREATE TABLE `cctv` (
  `ID` int(9) NOT NULL,
  `Bolge` varchar(64) DEFAULT NULL,
  `posX` float NOT NULL,
  `posY` float NOT NULL,
  `posZ` float NOT NULL,
  `Menzil` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin5 COLLATE=latin5_turkish_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `cezalar`
--

CREATE TABLE `cezalar` (
  `cezaID` int(11) NOT NULL,
  `cezaSQL` varchar(32) NOT NULL,
  `cezaMemur` varchar(32) NOT NULL,
  `cezaTarih` varchar(36) NOT NULL,
  `cezaUcret` int(11) NOT NULL,
  `cezaSebep` varchar(64) NOT NULL,
  `cezaOdendi` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin5 COLLATE=latin5_turkish_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `coins`
--

CREATE TABLE `coins` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `symbol` varchar(10) NOT NULL,
  `buy_price` decimal(10,2) NOT NULL,
  `sell_price` decimal(10,2) NOT NULL,
  `buy_price_change` decimal(10,2) NOT NULL DEFAULT 0.00,
  `sell_price_change` decimal(10,2) NOT NULL DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `coins`
--

INSERT INTO `coins` (`id`, `name`, `symbol`, `buy_price`, `sell_price`, `buy_price_change`, `sell_price_change`) VALUES
(1, 'Bitcoin', 'BTC', 0.94, 0.92, -1.98, -1.85),
(2, 'Ethereum', 'ETH', 0.89, 0.88, -0.63, -1.49);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `coplokasyonlari`
--

CREATE TABLE `coplokasyonlari` (
  `ID` int(3) NOT NULL,
  `posX` float NOT NULL,
  `posY` float NOT NULL,
  `posZ` float NOT NULL,
  `Angle` float NOT NULL,
  `ObjeID` int(9) NOT NULL,
  `Kalite` int(3) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `coplokasyonlari`
--

INSERT INTO `coplokasyonlari` (`ID`, `posX`, `posY`, `posZ`, `Angle`, `ObjeID`, `Kalite`) VALUES
(0, 517.407, -1847.22, 3.7897, 171.192, 1357, 1),
(1, 522.498, -1852.07, 3.8124, 183.87, 1230, 2),
(2, 517.871, -1852.54, 3.5074, 201.031, 1265, 3),
(3, 514.141, -1852.49, 3.7188, 160.057, 1265, 0),
(4, 514.14, -1849.34, 3.5481, 32.4566, 917, 0),
(5, 522.687, -1847.51, 4.025, 277.535, 849, 3),
(6, 520.072, -1855.25, 4.1082, 188.837, 923, 2),
(7, 512.546, -1855.8, 3.5348, 59.1668, 1265, 1),
(8, 518.097, -1861.6, 3.2004, 155.097, 2670, 1),
(9, 513.003, -1862.57, 3.0604, 33.4555, 854, 2),
(10, 518.917, -1867.83, 3.1643, 208.123, 1264, 2);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `dedektorler`
--

CREATE TABLE `dedektorler` (
  `dedektorID` int(8) NOT NULL,
  `dedektorX` float NOT NULL DEFAULT 0,
  `dedektorY` float NOT NULL DEFAULT 0,
  `dedektorZ` float NOT NULL DEFAULT 0,
  `dedektorAngle` float NOT NULL DEFAULT 0,
  `dedektorInterior` int(5) NOT NULL DEFAULT 0,
  `dedektorDunya` int(5) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin5 COLLATE=latin5_turkish_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `dekorlar`
--

CREATE TABLE `dekorlar` (
  `ID` int(9) NOT NULL,
  `Isim` varchar(64) DEFAULT NULL,
  `Tur` int(3) NOT NULL DEFAULT 0,
  `Ucret` int(9) NOT NULL DEFAULT 10000,
  `Interior` int(6) NOT NULL DEFAULT 0,
  `posX` float NOT NULL,
  `posY` float NOT NULL,
  `posZ` float NOT NULL,
  `posA` float NOT NULL,
  `OOCSatis` int(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin5 COLLATE=latin5_turkish_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `duraklar`
--

CREATE TABLE `duraklar` (
  `ID` int(11) NOT NULL,
  `Ad` varchar(30) NOT NULL,
  `posX` float NOT NULL,
  `posY` float NOT NULL,
  `posZ` float NOT NULL,
  `Angle` float NOT NULL,
  `durakFiyat` int(11) NOT NULL,
  `durakSure` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin5 COLLATE=latin5_turkish_ci ROW_FORMAT=DYNAMIC;

--
-- Tablo döküm verisi `duraklar`
--

INSERT INTO `duraklar` (`ID`, `Ad`, `posX`, `posY`, `posZ`, `Angle`, `durakFiyat`, `durakSure`) VALUES
(0, 'Pershing Square ', 1492.28, -1738.66, 13.7668, -90.3504, 60, 20),
(3, 'Little Mexico', 1814.25, -1789.52, 13.8166, 179.576, 90, 50),
(4, 'Ganton', 2335.74, -1710.11, 13.7232, -177.75, 90, 50);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `event_christmas`
--

CREATE TABLE `event_christmas` (
  `account_id` int(11) NOT NULL DEFAULT 0,
  `santahat` int(11) NOT NULL DEFAULT 0,
  `santa_pos_x` float DEFAULT 0,
  `santa_pos_y` float NOT NULL DEFAULT 0,
  `santa_pos_z` float NOT NULL DEFAULT 0,
  `santa_pos_rx` float NOT NULL DEFAULT 0,
  `santa_pos_ry` float NOT NULL DEFAULT 0,
  `santa_pos_rz` float NOT NULL DEFAULT 0,
  `santa_pos_sx` float NOT NULL DEFAULT 0,
  `santa_pos_sy` float NOT NULL DEFAULT 0,
  `santa_pos_sz` float NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `event_christmas`
--

INSERT INTO `event_christmas` (`account_id`, `santahat`, `santa_pos_x`, `santa_pos_y`, `santa_pos_z`, `santa_pos_rx`, `santa_pos_ry`, `santa_pos_rz`, `santa_pos_sx`, `santa_pos_sy`, `santa_pos_sz`) VALUES
(2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `evler`
--

CREATE TABLE `evler` (
  `evID` int(11) NOT NULL,
  `Adres` varchar(64) NOT NULL,
  `Durum` int(11) NOT NULL DEFAULT 1,
  `evPosX` float NOT NULL,
  `evPosY` float NOT NULL,
  `evPosZ` float NOT NULL,
  `evPosA` float NOT NULL,
  `evIcPosX` float NOT NULL,
  `evIcPosY` float NOT NULL,
  `evIcPosZ` float NOT NULL,
  `evIcPosA` float NOT NULL,
  `evVW` int(11) NOT NULL,
  `evInt` int(11) NOT NULL,
  `evDisVW` int(11) NOT NULL,
  `evDisInt` int(11) NOT NULL,
  `evSahip` int(11) NOT NULL DEFAULT 0,
  `evFiyat` int(11) NOT NULL DEFAULT 50000,
  `Dekor` int(11) NOT NULL DEFAULT 0,
  `bSure` int(11) NOT NULL DEFAULT 0,
  `Kiralik` int(11) NOT NULL DEFAULT 0,
  `Kiraci` int(11) NOT NULL DEFAULT 0,
  `KiraUcret` int(11) NOT NULL DEFAULT 1,
  `Kasa` int(11) NOT NULL DEFAULT 0,
  `Level` int(2) NOT NULL DEFAULT 1,
  `Vergi` int(6) NOT NULL DEFAULT 0,
  `EvAnahtar` int(11) NOT NULL DEFAULT 0,
  `EvAnahtar1` int(11) NOT NULL DEFAULT 0,
  `EvAnahtar2` int(11) NOT NULL DEFAULT 0,
  `EvAnahtar3` int(11) NOT NULL DEFAULT 0,
  `EvAnahtar4` int(11) NOT NULL DEFAULT 0,
  `Tur` int(3) NOT NULL DEFAULT 0,
  `Satilik` int(9) NOT NULL DEFAULT 0,
  `VergiMuafiyet` int(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin5 COLLATE=latin5_turkish_ci;

--
-- Tablo döküm verisi `evler`
--

INSERT INTO `evler` (`evID`, `Adres`, `Durum`, `evPosX`, `evPosY`, `evPosZ`, `evPosA`, `evIcPosX`, `evIcPosY`, `evIcPosZ`, `evIcPosA`, `evVW`, `evInt`, `evDisVW`, `evDisInt`, `evSahip`, `evFiyat`, `Dekor`, `bSure`, `Kiralik`, `Kiraci`, `KiraUcret`, `Kasa`, `Level`, `Vergi`, `EvAnahtar`, `EvAnahtar1`, `EvAnahtar2`, `EvAnahtar3`, `EvAnahtar4`, `Tur`, `Satilik`, `VergiMuafiyet`) VALUES
(1, 'Idlewood 1', 1, 2067.71, -1628.82, 14.2066, 89.1425, 244.412, 305.033, 999.148, 0, 2, 1, 30001, 0, 0, 95000, 0, 0, 0, 0, 20, 0, 1, 0, 0, 0, 0, 0, 0, 5, 0, 0),
(2, 'Idlewood 2', 1, 2067.57, -1643.86, 14.1363, 85.9491, 244.412, 305.033, 999.148, 0, 3, 1, 30001, 0, 0, 100000, 0, 0, 0, 0, 20, 0, 1, 0, 0, 0, 0, 0, 0, 5, 0, 0),
(3, 'Idlewood 3', 1, 2066.74, -1656.51, 14.1328, 92.9348, 244.412, 305.033, 999.148, 0, 4, 1, 30001, 0, 0, 100000, 0, 0, 0, 0, 20, 0, 1, 0, 0, 0, 0, 0, 0, 5, 0, 0),
(4, 'Idlewood 4', 1, 2065.1, -1703.42, 14.1484, 96.9919, 244.412, 305.033, 999.148, 0, 5, 1, 30001, 0, 0, 100000, 0, 0, 0, 0, 20, 0, 1, 0, 0, 0, 0, 0, 0, 5, 0, 0),
(5, 'Idlewood 5', 1, 2066.24, -1717.11, 14.1363, 87.2486, 244.412, 305.033, 999.148, 0, 6, 1, 30001, 0, 0, 100000, 0, 0, 0, 0, 20, 0, 1, 0, 0, 0, 0, 0, 0, 5, 0, 0),
(6, 'Idlewood 6', 1, 2067.05, -1731.56, 14.2066, 86.2933, 244.412, 305.033, 999.148, 0, 7, 1, 30001, 0, 0, 100000, 0, 0, 0, 0, 20, 0, 1, 0, 0, 0, 0, 0, 0, 5, 0, 0),
(7, 'Idlewood 7', 1, 2015.35, -1732.58, 14.2343, 272.166, 244.412, 305.033, 999.148, 0, 8, 1, 0, 0, 0, 150000, 0, 0, 0, 0, 20, 0, 1, 0, 0, 0, 0, 0, 0, 5, 0, 0),
(8, 'Idlewood 8', 1, 2016.2, -1717.06, 14.125, 272.166, 244.412, 305.033, 999.148, 0, 9, 1, 0, 0, 0, 150000, 0, 0, 0, 0, 20, 0, 1, 0, 0, 0, 0, 0, 0, 5, 0, 0),
(9, 'Idlewood 9', 1, 2018.24, -1703.15, 14.2343, 272.793, 244.412, 305.033, 999.148, 0, 10, 1, 0, 0, 0, 150000, 0, 0, 0, 0, 20, 0, 1, 0, 0, 0, 0, 0, 0, 5, 0, 0),
(10, 'Idlewood 10', 1, 1980.37, -1719.06, 17.0304, 87.298, 244.412, 305.033, 999.148, 0, 11, 1, 0, 0, 0, 500000, 0, 0, 0, 0, 20, 0, 1, 0, 0, 0, 0, 0, 0, 5, 0, 0),
(11, 'Idlewood 11', 1, 1973.34, -1705.14, 15.9687, 354.551, 244.412, 305.033, 999.148, 0, 12, 1, 0, 0, 0, 90000, 0, 0, 0, 0, 20, 0, 1, 0, 0, 0, 0, 0, 0, 5, 0, 0),
(12, 'Idlewood 12', 1, 1969.14, -1705.14, 15.9687, 350.79, 244.412, 305.033, 999.148, 0, 13, 1, 0, 0, 0, 90000, 0, 0, 0, 0, 20, 0, 1, 0, 0, 0, 0, 0, 0, 5, 0, 0),
(13, 'Idlewood 13', 1, 1980.99, -1682.96, 17.0538, 89.1781, 244.412, 305.033, 999.148, 0, 14, 1, 0, 0, 0, 500000, 0, 0, 0, 0, 20, 0, 1, 0, 0, 0, 0, 0, 0, 5, 0, 0),
(14, 'Idlewood 14', 1, 1974.96, -1671.19, 15.9687, 2.0705, 244.412, 305.033, 999.148, 0, 15, 1, 0, 0, 0, 90000, 0, 0, 0, 0, 20, 0, 1, 0, 0, 0, 0, 0, 0, 5, 0, 0),
(15, 'Idlewood 15', 1, 1970.04, -1671.19, 15.9687, 355.804, 244.412, 305.033, 999.148, 0, 16, 1, 0, 0, 0, 90000, 0, 0, 0, 0, 20, 0, 1, 0, 0, 0, 0, 0, 0, 5, 0, 0),
(16, 'Idlewood 16', 1, 1969.96, -1671.19, 18.5455, 357.057, 244.412, 305.033, 999.148, 0, 17, 1, 0, 0, 0, 90000, 0, 0, 0, 0, 20, 0, 1, 0, 0, 0, 0, 0, 0, 5, 0, 0),
(17, 'Idlewood 17', 1, 1974.73, -1671.19, 18.5455, 358.937, 244.412, 305.033, 999.148, 0, 18, 1, 0, 0, 0, 90000, 0, 0, 0, 0, 20, 0, 1, 0, 0, 0, 0, 0, 0, 5, 0, 0),
(18, 'Idlewood 18', 1, 1978.77, -1671.52, 18.5455, 261.176, 244.412, 305.033, 999.148, 0, 19, 1, 0, 0, 0, 90000, 0, 0, 0, 0, 20, 0, 1, 0, 0, 0, 0, 0, 0, 5, 0, 0),
(19, 'Idlewood 19', 1, 1973.4, -1654.67, 15.9687, 10.844, 244.412, 305.033, 999.148, 0, 20, 1, 0, 0, 0, 90000, 0, 0, 0, 0, 20, 0, 1, 0, 0, 0, 0, 0, 0, 5, 0, 0),
(20, 'Idlewood 20', 1, 1969.49, -1654.67, 15.9687, 358.311, 244.412, 305.033, 999.148, 0, 21, 1, 0, 0, 0, 90000, 0, 0, 0, 0, 20, 0, 1, 0, 0, 0, 0, 0, 0, 5, 0, 0),
(21, 'Idlewood 21', 1, 1972.23, -1633.71, 15.9687, 7.7107, 244.412, 305.033, 999.148, 0, 22, 1, 0, 0, 0, 90000, 0, 0, 0, 0, 20, 0, 1, 0, 0, 0, 0, 0, 0, 5, 0, 0),
(22, 'Idlewood 22', 1, 1976.19, -1634.05, 16.211, 266.19, 244.412, 305.033, 999.148, 0, 23, 1, 0, 0, 0, 90000, 0, 0, 0, 0, 20, 0, 1, 0, 0, 0, 0, 0, 0, 5, 0, 0),
(23, 'Idlewood 23', 1, 1967.41, -1633.71, 18.5689, 354.214, 244.412, 305.033, 999.148, 0, 24, 1, 0, 0, 0, 90000, 0, 0, 0, 0, 20, 0, 1, 0, 0, 0, 0, 0, 0, 5, 0, 0),
(24, 'Idlewood 24', 1, 1972.29, -1633.71, 18.5689, 351.707, 244.412, 305.033, 999.148, 0, 25, 1, 0, 0, 0, 90000, 0, 0, 0, 0, 20, 0, 1, 0, 0, 0, 0, 0, 0, 5, 0, 0),
(25, 'Idlewood 25', 1, 1976.11, -1634.07, 18.5689, 266.48, 244.412, 305.033, 999.148, 0, 26, 1, 0, 0, 0, 90000, 0, 0, 0, 0, 20, 0, 1, 0, 0, 0, 0, 0, 0, 5, 0, 0),
(26, 'Idlewood 26', 1, 2013.58, -1656.5, 14.1363, 269.323, 244.412, 305.033, 999.148, 0, 27, 1, 0, 0, 0, 150000, 0, 0, 0, 0, 20, 0, 1, 0, 0, 0, 0, 0, 0, 5, 0, 0),
(27, 'Idlewood 27', 1, 2016.54, -1641.81, 14.1128, 271.203, 244.412, 305.033, 999.148, 0, 28, 1, 0, 0, 0, 150000, 0, 0, 0, 0, 20, 0, 1, 0, 0, 0, 0, 0, 0, 5, 0, 0),
(28, 'Idlewood 28', 1, 2018.06, -1629.96, 14.0425, 272.457, 244.412, 305.033, 999.148, 0, 29, 1, 0, 0, 0, 150000, 0, 0, 0, 0, 20, 0, 1, 0, 0, 0, 0, 0, 0, 5, 0, 0),
(29, 'Idlewood 29', 1, 2067.7, -1628.81, 14.2066, 95.1082, 244.412, 305.033, 999.148, 0, 30, 1, 0, 0, 0, 200000, 0, 0, 0, 0, 20, 0, 1, 0, 0, 0, 0, 0, 0, 5, 0, 0),
(30, 'Idlewood 30', 1, 2067.56, -1643.63, 14.1363, 93.2282, 244.412, 305.033, 999.148, 0, 31, 1, 0, 0, 0, 200000, 0, 0, 0, 0, 20, 0, 1, 0, 0, 0, 0, 0, 0, 5, 0, 0),
(31, 'Idlewood 31', 1, 2066.74, -1656.42, 14.1328, 89.4682, 244.412, 305.033, 999.148, 0, 32, 1, 0, 0, 0, 200000, 0, 0, 0, 0, 20, 0, 1, 0, 0, 0, 0, 0, 0, 5, 0, 0),
(32, 'Ganton 32', 1, 2362.81, -1643.14, 14.3515, 1.4118, 244.412, 305.033, 999.148, 0, 33, 1, 0, 0, 0, 250000, 0, 0, 0, 0, 20, 0, 1, 0, 0, 0, 0, 0, 0, 5, 0, 0),
(33, 'Ganton 33', 1, 2368.34, -1675.35, 14.1681, 179.05, 244.412, 305.033, 999.148, 0, 34, 1, 0, 0, 0, 250000, 0, 0, 0, 0, 20, 0, 1, 0, 0, 0, 0, 0, 0, 5, 0, 0),
(34, 'Ganton 34', 1, 2384.5, -1675.84, 15.2456, 174.663, 244.412, 305.033, 999.148, 0, 35, 1, 0, 0, 0, 250000, 0, 0, 0, 0, 20, 0, 1, 0, 0, 0, 0, 0, 0, 5, 0, 0),
(35, 'Ganton 35', 1, 2408.78, -1674.78, 14.375, 180.93, 244.412, 305.033, 999.148, 0, 36, 1, 0, 0, 0, 250000, 0, 0, 0, 0, 20, 0, 1, 0, 0, 0, 0, 0, 0, 5, 0, 0),
(36, 'Ganton 36', 1, 2393.24, -1646.03, 13.905, 4.5453, 244.412, 305.033, 999.148, 0, 37, 1, 0, 0, 0, 250000, 0, 0, 0, 0, 20, 0, 1, 0, 0, 0, 0, 0, 0, 5, 0, 0),
(37, 'Ganton 37', 1, 2413.89, -1646.79, 14.0119, 1.4119, 244.412, 305.033, 999.148, 0, 38, 1, 0, 0, 0, 250000, 0, 0, 0, 0, 20, 0, 1, 0, 0, 0, 0, 0, 0, 5, 0, 0),
(38, 'Idlewood 38', 1, 2065.1, -1703.67, 14.1484, 81.2984, 244.412, 305.033, 999.148, 0, 39, 1, 0, 0, 0, 250000, 0, 0, 0, 0, 20, 0, 1, 0, 0, 0, 0, 0, 0, 5, 0, 0),
(39, 'Idlewood 39', 1, 2066.24, -1717.19, 14.1363, 86.3117, 244.412, 305.033, 999.148, 0, 40, 1, 0, 0, 0, 250000, 0, 0, 0, 0, 20, 0, 1, 0, 0, 0, 0, 0, 0, 5, 0, 0),
(40, 'Idlewood 40', 1, 2067.05, -1731.6, 14.2066, 80.6717, 244.412, 305.033, 999.148, 0, 41, 1, 0, 0, 0, 250000, 0, 0, 0, 0, 20, 0, 1, 0, 0, 0, 0, 0, 0, 5, 0, 0);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `fabrikalar`
--

CREATE TABLE `fabrikalar` (
  `fID` int(9) NOT NULL,
  `Sahip` varchar(32) DEFAULT NULL,
  `PosX` float NOT NULL,
  `PosY` float NOT NULL,
  `PosZ` float NOT NULL,
  `PosA` float NOT NULL,
  `FabrikaAd` varchar(48) DEFAULT NULL,
  `Urun` varchar(64) DEFAULT NULL,
  `Ucret` int(8) NOT NULL DEFAULT 1,
  `Kapasite` int(4) NOT NULL DEFAULT 250
) ENGINE=MyISAM DEFAULT CHARSET=latin5 COLLATE=latin5_turkish_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `firmalar`
--

CREATE TABLE `firmalar` (
  `ID` int(3) NOT NULL,
  `firmaAd` varchar(64) NOT NULL DEFAULT 'Yok',
  `firmaTeslimatX` float NOT NULL,
  `firmaTeslimatY` float NOT NULL,
  `firmaTeslimatZ` float NOT NULL,
  `firmaKazanc1` int(11) NOT NULL,
  `firmaKazanc2` int(11) NOT NULL,
  `firmaBonus` int(11) NOT NULL,
  `firmaGLevel` int(11) NOT NULL,
  `firmaTur` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `firmalar`
--

INSERT INTO `firmalar` (`ID`, `firmaAd`, `firmaTeslimatX`, `firmaTeslimatY`, `firmaTeslimatZ`, `firmaKazanc1`, `firmaKazanc2`, `firmaBonus`, `firmaGLevel`, `firmaTur`) VALUES
(0, 'Panoty İnsaat', -529.772, -99.3988, 63.2969, 950, 1250, 1, 1, 4),
(1, 'Pine Gida ', -2196.91, -2329.09, 30.625, 900, 1500, 1, 1, 2),
(2, 'Stacked Co.', 1376.73, 273.034, 19.5669, 900, 1000, 1, 1, 2),
(3, 'Venturas Logistics', 1739.25, 971.456, 10.8024, 700, 1000, 2, 2, 3);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `garajlar`
--

CREATE TABLE `garajlar` (
  `ID` int(9) NOT NULL,
  `Durum` int(8) NOT NULL DEFAULT 1,
  `Sahip` int(8) NOT NULL DEFAULT 0,
  `Interior` int(6) NOT NULL DEFAULT 0,
  `Dunya` int(6) NOT NULL DEFAULT 0,
  `AracLimit` int(6) NOT NULL DEFAULT 0,
  `PosX` float NOT NULL,
  `PosY` float NOT NULL,
  `PosZ` float NOT NULL,
  `CikisPosX` float NOT NULL,
  `CikisPosY` float NOT NULL,
  `CikisPosZ` float NOT NULL,
  `Ucret` int(7) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin5 COLLATE=latin5_turkish_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `gateler`
--

CREATE TABLE `gateler` (
  `gateID` int(11) NOT NULL,
  `gateSahip` int(11) NOT NULL DEFAULT 0,
  `gateModel` int(11) NOT NULL DEFAULT 980,
  `gateHiz` float NOT NULL DEFAULT 3,
  `gateMenzil` float NOT NULL DEFAULT 5,
  `gateInterior` int(8) NOT NULL DEFAULT 0,
  `gateWorld` int(8) NOT NULL DEFAULT 0,
  `gateX` float NOT NULL,
  `gateY` float NOT NULL,
  `gateZ` float NOT NULL,
  `gateRX` float NOT NULL,
  `gateRY` float NOT NULL,
  `gateRZ` float NOT NULL,
  `gateAcilisX` float NOT NULL,
  `gateAcilisY` float NOT NULL,
  `gateAcilisZ` float NOT NULL,
  `gateAcilisRX` float NOT NULL,
  `gateAcilisRY` float NOT NULL,
  `gateAcilisRZ` float NOT NULL,
  `gateBirlik` int(5) NOT NULL DEFAULT -1,
  `Parola` int(7) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Tablo döküm verisi `gateler`
--

INSERT INTO `gateler` (`gateID`, `gateSahip`, `gateModel`, `gateHiz`, `gateMenzil`, `gateInterior`, `gateWorld`, `gateX`, `gateY`, `gateZ`, `gateRX`, `gateRY`, `gateRZ`, `gateAcilisX`, `gateAcilisY`, `gateAcilisZ`, `gateAcilisRX`, `gateAcilisRY`, `gateAcilisRZ`, `gateBirlik`, `Parola`) VALUES
(1, 0, 980, 3, 5, 0, 0, 2293.66, 2497.56, -5.833, 0, 0, 89.9497, 2293.86, 2497.65, -5.8431, 0, 0, 88.5251, 1, 0),
(2, 0, 980, 3, 5, 0, 0, 1588.02, -1637.96, 14.9628, 0, 0, -179.818, 1588.01, -1636.66, 3.3828, -1000, -1000, -1000, 1, 0);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `gps`
--

CREATE TABLE `gps` (
  `gpsID` int(11) NOT NULL,
  `gpsIsim` varchar(64) DEFAULT NULL,
  `gpsX` float NOT NULL,
  `gpsY` float NOT NULL,
  `gpsZ` float NOT NULL,
  `gpsOyuncu` int(9) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin5 COLLATE=latin5_turkish_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `graffiti`
--

CREATE TABLE `graffiti` (
  `graffitiID` int(8) NOT NULL,
  `graffitiX` int(8) NOT NULL,
  `graffitiY` int(8) NOT NULL,
  `graffitiZ` int(8) NOT NULL,
  `graffitiAngle` int(8) NOT NULL,
  `graffitiRenk` int(8) NOT NULL,
  `graffitiYazi` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin5 COLLATE=latin5_turkish_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `hesaplar`
--

CREATE TABLE `hesaplar` (
  `ID` int(11) NOT NULL,
  `forumID` int(11) NOT NULL,
  `sifre` varchar(128) DEFAULT NULL,
  `Admin` int(2) NOT NULL DEFAULT 0,
  `RaporSayisi` int(11) NOT NULL DEFAULT 0,
  `SoruSayisi` int(6) NOT NULL DEFAULT 0,
  `Helper` int(1) NOT NULL DEFAULT 0,
  `AdminIsim` varchar(32) DEFAULT 'Yok',
  `Bakiye` int(11) NOT NULL DEFAULT 0,
  `Bagis` int(6) NOT NULL DEFAULT 0,
  `SonGiris` varchar(36) DEFAULT NULL,
  `IP` varchar(16) DEFAULT NULL,
  `EkSlot` int(3) NOT NULL DEFAULT 0,
  `Gorev` varchar(144) NOT NULL,
  `Referans` varchar(32) NOT NULL,
  `OneriJetonu` int(3) NOT NULL DEFAULT 0,
  `TSIdenty` varchar(128) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin5 COLLATE=latin5_turkish_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `hizradarlari`
--

CREATE TABLE `hizradarlari` (
  `radarID` int(8) NOT NULL,
  `radarMenzil` float NOT NULL DEFAULT 0,
  `radarLimit` float NOT NULL DEFAULT 0,
  `radarX` float NOT NULL,
  `radarY` float NOT NULL,
  `radarZ` float NOT NULL,
  `radarAngle` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin5 COLLATE=latin5_turkish_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `hliste`
--

CREATE TABLE `hliste` (
  `ID` int(9) NOT NULL,
  `Model` int(4) NOT NULL,
  `Teslim` int(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin5 COLLATE=latin5_turkish_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `insaatayarlar`
--

CREATE TABLE `insaatayarlar` (
  `ID` int(1) NOT NULL,
  `Kota` int(6) NOT NULL DEFAULT 0,
  `Ucret` int(6) NOT NULL DEFAULT 1,
  `PosX` float NOT NULL,
  `PosY` float NOT NULL,
  `PosZ` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin5 COLLATE=latin5_turkish_ci;

--
-- Tablo döküm verisi `insaatayarlar`
--

INSERT INTO `insaatayarlar` (`ID`, `Kota`, `Ucret`, `PosX`, `PosY`, `PosZ`) VALUES
(1, 0, 1, 0, 0, 0);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `isyerleri`
--

CREATE TABLE `isyerleri` (
  `isyeriID` int(11) NOT NULL,
  `Ad` varchar(128) NOT NULL DEFAULT 'Yok',
  `Durum` int(1) NOT NULL DEFAULT 1,
  `isyeriFiyat` int(11) NOT NULL DEFAULT 75000,
  `isyeriDisInt` int(11) NOT NULL DEFAULT 0,
  `isyeriDisVW` int(11) NOT NULL DEFAULT 0,
  `isyeriSahip` int(11) NOT NULL DEFAULT 0,
  `isyeriPosX` float NOT NULL,
  `isyeriPosY` float NOT NULL,
  `isyeriPosZ` float NOT NULL,
  `isyeriPosA` float NOT NULL,
  `isyeriIcPosX` float NOT NULL,
  `isyeriIcPosY` float NOT NULL,
  `isyeriIcPosZ` float NOT NULL,
  `isyeriIcPosA` float NOT NULL,
  `isyeriVW` int(8) DEFAULT 0,
  `isyeriInt` int(8) NOT NULL DEFAULT 0,
  `isyeriTur` int(3) NOT NULL DEFAULT 1,
  `isyeriKasa` int(11) NOT NULL DEFAULT 0,
  `GirisUcreti` int(5) NOT NULL DEFAULT 0,
  `isyeriOrtak` int(4) NOT NULL DEFAULT 0,
  `isyeriMuzik` varchar(128) DEFAULT NULL,
  `isyeriUrun` int(8) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin5 COLLATE=latin5_turkish_ci;

--
-- Tablo döküm verisi `isyerleri`
--

INSERT INTO `isyerleri` (`isyeriID`, `Ad`, `Durum`, `isyeriFiyat`, `isyeriDisInt`, `isyeriDisVW`, `isyeriSahip`, `isyeriPosX`, `isyeriPosY`, `isyeriPosZ`, `isyeriPosA`, `isyeriIcPosX`, `isyeriIcPosY`, `isyeriIcPosZ`, `isyeriIcPosA`, `isyeriVW`, `isyeriInt`, `isyeriTur`, `isyeriKasa`, `GirisUcreti`, `isyeriOrtak`, `isyeriMuzik`, `isyeriUrun`) VALUES
(4, 'Santos Elektronik', 1, 75000, 0, 0, -1, 1848.33, -1871.67, 13.5781, 267.952, -124.66, -23.2859, 1005.84, 1.355, 30004, 0, 3, 7200, 0, 0, '', 22),
(3, 'The Well Stacked Pizza Co.', 1, 75000, 0, 30001, 3, 2105.49, -1806.52, 13.5546, 269.469, 363.34, -74.6679, 1001.51, 315, 30003, 10, 2, 0, 0, 0, '', 50),
(5, 'Santos 7 - 24', 1, 75000, 0, 0, -1, 1833.78, -1842.5, 13.5781, 265.94, -25.8665, -188.253, 1003.55, 360, 30005, 17, 1, 450, 0, 0, '', 47),
(6, 'İdle Super Market', 1, 75000, 0, 0, -1, 2070.07, -1785.29, 13.5544, 117.559, -30.9172, -91.815, 1003.55, 55.8017, 30006, 18, 1, 578, 0, 0, '', 45),
(7, 'İdle Elektronik', 1, 75000, 0, 0, -1, 2068.66, -1773.75, 13.5604, 84.9718, -124.66, -23.2859, 1005.84, 1.355, 30007, 0, 3, 900, 0, 0, '', 46),
(9, '69 DAİLY STORES', 1, 75000, 0, 0, -1, 2002.31, -1761.96, 13.5389, 175.404, -25.8665, -188.253, 1003.55, 360, 30009, 17, 1, 0, 0, 0, '', 50),
(10, 'İdlegas Super Market', 1, 75000, 0, 0, -1, 1928.58, -1776.3, 13.5466, 96.443, -30.9172, -91.815, 1003.55, 55.8017, 30010, 18, 9, 556, 0, 0, '', 42),
(11, 'Florist Clothes', 1, 75000, 0, 0, -1, 1993.52, -1761.96, 13.5389, 173.89, 1419.4, -7.07, 1003.58, 183.418, 30011, 0, 7, 900, 0, 0, '', 44),
(12, 'Liquor Teknoloji', 1, 75000, 0, 0, -1, 1978.73, -1761.96, 13.5466, 182.809, -124.66, -23.2859, 1005.84, 1.355, 30012, 0, 3, 600, 0, 0, '', 47),
(13, 'The Well Stacked Pizza Co.', 1, 75000, 0, 0, -1, 2105.49, -1806.58, 13.5545, 268.663, 363.34, -74.6679, 1001.51, 315, 30013, 10, 2, 0, 0, 0, '', 50),
(14, 'Grotti Dealerships', 1, 75000, 0, 0, -1, 554.726, -1293.13, 17.2481, 182.472, 1494.56, 1304.21, 1093.29, 0, 30014, 3, 12, 0, 0, 0, '', 50),
(15, 'Prolaps', 1, 75000, 0, 0, -1, 499.558, -1360.64, 16.3686, 154.753, 207.133, -140.374, 1003.51, 3.5803, 30015, 3, 7, 0, 0, 0, '', 50),
(17, 'Richland', 1, 75000, 0, 0, -1, 2244.41, -1665.12, 15.4764, 349.638, 1419.4, -7.07, 1003.58, 183.418, 30017, 0, 7, 1800, 0, 0, '', 38);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kasalar`
--

CREATE TABLE `kasalar` (
  `kasaID` int(11) NOT NULL,
  `kasaBirlik` int(11) NOT NULL,
  `kasaPara` int(20) NOT NULL DEFAULT 0,
  `kasaX` float NOT NULL,
  `kasaY` float NOT NULL,
  `kasaZ` float NOT NULL,
  `kasaAngle` float NOT NULL,
  `kasaInt` int(11) NOT NULL,
  `kasaVW` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin5 COLLATE=latin5_turkish_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kenny_applications`
--

CREATE TABLE `kenny_applications` (
  `ID` int(11) NOT NULL,
  `UserID` int(11) NOT NULL,
  `UserName` varchar(90) NOT NULL,
  `Type` int(11) NOT NULL,
  `Answers` text NOT NULL,
  `Questions` text NOT NULL,
  `Status` int(11) NOT NULL,
  `Date` varchar(90) NOT NULL,
  `ActionBy` varchar(90) NOT NULL,
  `Reason` text NOT NULL,
  `FactionID` int(11) NOT NULL DEFAULT 0,
  `AnswerDate` varchar(90) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `kenny_applications`
--

INSERT INTO `kenny_applications` (`ID`, `UserID`, `UserName`, `Type`, `Answers`, `Questions`, `Status`, `Date`, `ActionBy`, `Reason`, `FactionID`, `AnswerDate`) VALUES
(2, 27, 'Amelie_Morel', 1, 'OOC Adınız?#%::%#Ali#%||%#&quot;OOC Yaşınız?#%::%#16#%||%#&quot;Daha önce yetkili olduğunuz bir sunucu var mı?#%::%#Hatirlamiyom#%||%#&quot;SA-MP platformuna dair teknik bilginiz var mı? (Launcher Sorunları gibi sorunlar) (Not: Bu soru sizi ön plana çıkarmayacak, sadece helper sınıfları için soruyoruz.)#%::%#Var#%||%#&quot;Neden sizi tercih etmeliyiz?#%::%#Samp bilgim mevcut, yeni rp başlayanlara yardımcı olabilirim#%||%#&quot;Kendinizden uzun uzun bahsedin:#%::%#Ben Ali yıllardır samp oynuyom işte öyle ', '6', 0, '23.12.2024 09:36', '', '', 0, '');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kenny_questions`
--

CREATE TABLE `kenny_questions` (
  `ID` int(11) NOT NULL,
  `Question` text NOT NULL,
  `Type` int(11) NOT NULL,
  `Date` varchar(90) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `kenny_questions`
--

INSERT INTO `kenny_questions` (`ID`, `Question`, `Type`, `Date`) VALUES
(12, 'Nickname pe server:', 2, ''),
(13, 'Ore jucate:', 2, ''),
(14, 'De cat timp joci pe server:', 2, ''),
(15, 'Varsta reala:', 2, ''),
(16, 'Ce alte jocuri mai joc?:', 2, ''),
(17, 'Ce vei face dupa terminarea liceului?:', 2, ''),
(18, 'Cea mai mare realizare pe t2p:', 2, ''),
(19, 'Ce ai de gand sa faci diferit fata de alti lideri:', 2, ''),
(20, 'Ai citit regulamentul liderilor?:', 2, ''),
(21, 'Cat ai stat cel mai mult intr-o factiune? (specifica factiunea, rank-ul si timpul petrecut):', 2, ''),
(22, 'Cat ai stat cel mai putin intr-o factiune? De ce ai parasit factiunea?:', 2, ''),
(23, 'Ce te deranjeaza cel mai mult la t2p?:', 2, ''),
(24, 'De ce crezi ca te vei descurca ca lider?:', 2, ''),
(25, 'Cat ai stat cel mai mult intr-o mafie? Ce parere ai despre mafii?:', 2, ''),
(26, 'Cat ai stat cel mai mult intr-un departament? Ce parere ai despre departamente?:', 2, ''),
(27, 'Cat ai stat cel mai mult intr-o factiune pasnica? Ce parere ai despre factiunile pasnice?:', 2, ''),
(28, 'Adınız:', 3, ''),
(29, 'Test', 31, '1'),
(30, 'Hangi platform da içerik üreticisisiniz:', 3, ''),
(31, 'Sosyal medya hesabınızın adı:', 3, ''),
(32, 'Ortalama izleyici sayınız:', 3, ''),
(33, 'OOC Adınız?', 1, ''),
(34, 'OOC Yaşınız?', 1, ''),
(35, 'Daha önce yetkili olduğunuz bir sunucu var mı?', 1, ''),
(36, 'SA-MP platformuna dair teknik bilginiz var mı? (Launcher Sorunları gibi sorunlar) (Not: Bu soru sizi ön plana çıkarmayacak, sadece helper sınıfları için soruyoruz.)', 1, ''),
(37, 'Neden sizi tercih etmeliyiz?', 1, ''),
(38, 'Kendinizden uzun uzun bahsedin:', 1, '');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kenny_recovery`
--

CREATE TABLE `kenny_recovery` (
  `ID` int(11) NOT NULL,
  `UserID` int(11) NOT NULL,
  `UserName` varchar(25) NOT NULL,
  `Email` varchar(60) NOT NULL,
  `SecretCode` varchar(60) NOT NULL,
  `RecoveryTime` int(11) NOT NULL,
  `Type` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kenny_suspend`
--

CREATE TABLE `kenny_suspend` (
  `ID` int(11) NOT NULL,
  `UserName` varchar(25) NOT NULL,
  `UserID` int(11) NOT NULL,
  `AdminName` varchar(25) NOT NULL,
  `AdminID` int(11) NOT NULL,
  `Days` int(4) NOT NULL,
  `Reason` varchar(90) NOT NULL,
  `SuspendDate` varchar(11) NOT NULL,
  `ExpireDate` varchar(11) NOT NULL,
  `Permanent` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kontraktlar`
--

CREATE TABLE `kontraktlar` (
  `ID` int(8) NOT NULL,
  `Ucret` int(7) NOT NULL DEFAULT 0,
  `Hedef` varchar(32) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `konumlar`
--

CREATE TABLE `konumlar` (
  `gpsID` int(11) NOT NULL,
  `gpsIsim` varchar(64) DEFAULT NULL,
  `gpsX` float NOT NULL,
  `gpsY` float NOT NULL,
  `gpsZ` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin5 COLLATE=latin5_turkish_ci;

--
-- Tablo döküm verisi `konumlar`
--

INSERT INTO `konumlar` (`gpsID`, `gpsIsim`, `gpsX`, `gpsY`, `gpsZ`) VALUES
(1, 'Los Santos Polis Departmani', 1555.5, -1675.72, 16.1953),
(2, 'Arac Kiralama Noktasi', 1501.22, -1696.39, 13.3988),
(3, 'City Hall', 1422.14, -1649.06, 14.2259),
(4, 'D.M.V', 1481.14, -1772.02, 18.7957);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `meslekler`
--

CREATE TABLE `meslekler` (
  `mID` int(5) NOT NULL,
  `meslekTur` int(2) NOT NULL DEFAULT 1,
  `mPosX` float NOT NULL,
  `mPosY` float NOT NULL,
  `mPosZ` float NOT NULL,
  `mInterior` int(5) NOT NULL DEFAULT 0,
  `mWorld` int(5) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Tablo döküm verisi `meslekler`
--

INSERT INTO `meslekler` (`mID`, `meslekTur`, `mPosX`, `mPosY`, `mPosZ`, `mInterior`, `mWorld`) VALUES
(2, 9, 663.227, 922.937, -40.8271, 0, 0),
(3, 2, 1669.64, -1881.19, 13.5451, 0, 0),
(6, 12, 520.906, -1841.25, 4.9416, 0, 0),
(7, 13, 2170.42, -2265.31, 13.3326, 0, 0),
(9, 10, 2442.46, -2117.29, 13.5467, 0, 0);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `mobilyalar`
--

CREATE TABLE `mobilyalar` (
  `ID` int(11) NOT NULL,
  `Ev` int(11) NOT NULL,
  `Model` int(11) NOT NULL,
  `Interior` int(11) NOT NULL,
  `Virtualworld` int(11) NOT NULL,
  `mobilyaX` float NOT NULL,
  `mobilyaY` float NOT NULL,
  `mobilyaZ` float NOT NULL,
  `mobilyaRX` float NOT NULL,
  `mobilyaRY` float NOT NULL,
  `mobilyaRZ` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin5 COLLATE=latin5_turkish_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `modifiyenoktalari`
--

CREATE TABLE `modifiyenoktalari` (
  `ID` int(9) NOT NULL,
  `X` int(8) NOT NULL,
  `Y` int(8) NOT NULL,
  `Z` int(8) NOT NULL,
  `Interior` int(5) NOT NULL DEFAULT 0,
  `Dunya` int(5) NOT NULL DEFAULT 0,
  `Ucret` int(9) NOT NULL DEFAULT 0,
  `Birlik` int(9) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Tablo döküm verisi `modifiyenoktalari`
--

INSERT INTO `modifiyenoktalari` (`ID`, `X`, `Y`, `Z`, `Interior`, `Dunya`, `Ucret`, `Birlik`) VALUES
(1, 2072, -1831, 14, 0, 0, 100, 0);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `objeler`
--

CREATE TABLE `objeler` (
  `objeID` int(11) NOT NULL,
  `objeModel` int(11) NOT NULL DEFAULT 0,
  `objeX` float NOT NULL DEFAULT 0,
  `objeY` float NOT NULL DEFAULT 0,
  `objeZ` float NOT NULL DEFAULT 0,
  `objeRX` float NOT NULL DEFAULT 0,
  `objeRY` float NOT NULL DEFAULT 0,
  `objeRZ` float NOT NULL DEFAULT 0,
  `objeInterior` int(11) NOT NULL DEFAULT 0,
  `objeWorld` int(11) NOT NULL DEFAULT 0,
  `objeSahip` int(11) NOT NULL DEFAULT 0,
  `objeBirlik` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Tablo döküm verisi `objeler`
--

INSERT INTO `objeler` (`objeID`, `objeModel`, `objeX`, `objeY`, `objeZ`, `objeRX`, `objeRY`, `objeRZ`, `objeInterior`, `objeWorld`, `objeSahip`, `objeBirlik`) VALUES
(1, 8168, 515.596, -1839.55, 5.6454, 0, 0, 25.8543, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `odemekayitlari`
--

CREATE TABLE `odemekayitlari` (
  `ID` int(9) NOT NULL,
  `Odeyen` int(9) NOT NULL,
  `Miktar` int(9) NOT NULL,
  `SiparisID` int(9) NOT NULL,
  `Zaman` int(10) NOT NULL,
  `Kanal` int(3) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `oocsicil`
--

CREATE TABLE `oocsicil` (
  `ID` int(9) NOT NULL,
  `OyuncuID` int(9) NOT NULL,
  `Dakika` int(9) NOT NULL,
  `Sebep` varchar(64) DEFAULT NULL,
  `Admin` varchar(32) DEFAULT NULL,
  `Tarih` varchar(36) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin5 COLLATE=latin5_turkish_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `oyuncular`
--

CREATE TABLE `oyuncular` (
  `ID` int(9) NOT NULL,
  `isim` varchar(32) DEFAULT NULL,
  `sifre` varchar(256) NOT NULL,
  `Yasaklama` varchar(64) NOT NULL DEFAULT '',
  `CK` int(1) NOT NULL DEFAULT 0,
  `hesap` int(11) NOT NULL DEFAULT 0,
  `oSonGiris` varchar(36) DEFAULT NULL,
  `Kiyafet` int(3) NOT NULL DEFAULT 1,
  `GKiyafet` int(3) NOT NULL DEFAULT 0,
  `x` float NOT NULL DEFAULT 1496.02,
  `y` float NOT NULL DEFAULT -1693.39,
  `z` float NOT NULL DEFAULT 13.3988,
  `a` float NOT NULL DEFAULT 177.546,
  `interior` int(8) NOT NULL DEFAULT 0,
  `vw` int(8) NOT NULL DEFAULT 0,
  `Para` int(11) NOT NULL DEFAULT 1000,
  `BankaPara` int(11) NOT NULL DEFAULT 0,
  `BankaSifre` int(4) NOT NULL DEFAULT 0,
  `Dakika` int(4) NOT NULL DEFAULT 0,
  `Level` int(11) NOT NULL DEFAULT 1,
  `Exp` int(11) NOT NULL DEFAULT 0,
  `OynamaSaati` int(11) NOT NULL DEFAULT 0,
  `Can` float NOT NULL DEFAULT 100,
  `Zirh` float NOT NULL DEFAULT 0,
  `Cinsiyet` int(1) NOT NULL DEFAULT 0,
  `DogumYeri` varchar(30) DEFAULT NULL,
  `dogumtarihi` int(32) DEFAULT NULL,
  `yaratildi` int(1) NOT NULL DEFAULT 0,
  `aclik` int(3) NOT NULL DEFAULT 100,
  `susuzluk` int(3) NOT NULL DEFAULT 100,
  `BirlikLider` int(9) NOT NULL DEFAULT 0,
  `birlik` int(11) NOT NULL DEFAULT -1,
  `birlikrutbe` int(11) NOT NULL DEFAULT 0,
  `Yarali` int(1) NOT NULL DEFAULT 0,
  `YaraliSure` int(6) NOT NULL DEFAULT 0,
  `TenRengi` int(1) NOT NULL DEFAULT 0,
  `Silah1` int(3) NOT NULL DEFAULT 0,
  `Silah2` int(3) NOT NULL DEFAULT 0,
  `Silah3` int(3) NOT NULL DEFAULT 0,
  `Silah4` int(3) NOT NULL DEFAULT 0,
  `Silah5` int(3) NOT NULL DEFAULT 0,
  `Silah6` int(3) NOT NULL DEFAULT 0,
  `Silah7` int(3) NOT NULL DEFAULT 0,
  `Silah8` int(3) NOT NULL DEFAULT 0,
  `Silah9` int(3) NOT NULL DEFAULT 0,
  `Silah10` int(3) NOT NULL DEFAULT 0,
  `Silah11` int(3) NOT NULL DEFAULT 0,
  `Silah12` int(3) NOT NULL DEFAULT 0,
  `Silah13` int(3) NOT NULL DEFAULT 0,
  `Mermi1` int(11) NOT NULL DEFAULT 0,
  `Mermi2` int(11) NOT NULL DEFAULT 0,
  `Mermi3` int(11) NOT NULL DEFAULT 0,
  `Mermi4` int(11) NOT NULL DEFAULT 0,
  `Mermi5` int(11) NOT NULL DEFAULT 0,
  `Mermi6` int(11) NOT NULL DEFAULT 0,
  `Mermi7` int(11) NOT NULL DEFAULT 0,
  `Mermi8` int(11) NOT NULL DEFAULT 0,
  `Mermi9` int(11) NOT NULL DEFAULT 0,
  `Mermi10` int(11) NOT NULL DEFAULT 0,
  `Mermi11` int(11) NOT NULL DEFAULT 0,
  `Mermi12` int(11) NOT NULL DEFAULT 0,
  `Mermi13` int(11) NOT NULL DEFAULT 0,
  `isbasi` tinyint(1) NOT NULL DEFAULT 0,
  `Ehliyet` tinyint(1) NOT NULL DEFAULT 0,
  `Kibrit` int(5) NOT NULL DEFAULT 0,
  `Cakmak` tinyint(1) NOT NULL DEFAULT 0,
  `Odun` int(6) NOT NULL DEFAULT 0,
  `HesapNumarasi` int(9) NOT NULL DEFAULT 0,
  `Sigara` int(11) NOT NULL DEFAULT 0,
  `Telefon` int(1) NOT NULL DEFAULT 0,
  `TelefonNumarasi` int(8) NOT NULL DEFAULT 0,
  `Gubre` int(2) NOT NULL DEFAULT 0,
  `Saksi` int(4) NOT NULL DEFAULT 0,
  `Tohum` int(4) NOT NULL DEFAULT 0,
  `IslenmemisMadde` int(9) NOT NULL DEFAULT 0,
  `Uyusturucu` int(11) NOT NULL DEFAULT 0,
  `UyusturucuOnay` int(1) NOT NULL DEFAULT 0,
  `Hapis` int(22) NOT NULL DEFAULT 0,
  `VatandaslikNo` int(9) NOT NULL DEFAULT 0,
  `Ruhsat` int(1) NOT NULL DEFAULT 0,
  `ICHapis` int(11) NOT NULL DEFAULT 0,
  `IDHapis` int(3) NOT NULL DEFAULT -1,
  `Meslek` int(3) NOT NULL DEFAULT 0,
  `Birim` int(3) NOT NULL DEFAULT 0,
  `boombox` int(4) NOT NULL DEFAULT 0,
  `BoomboxHakki` int(9) NOT NULL DEFAULT 0,
  `Asansor` int(4) NOT NULL DEFAULT -1,
  `Uyari` int(1) NOT NULL DEFAULT 0,
  `Aktif` int(1) NOT NULL DEFAULT 0,
  `Maske` int(1) NOT NULL DEFAULT 0,
  `MaskeID` int(8) NOT NULL DEFAULT 0,
  `IlkYardim` int(9) NOT NULL DEFAULT 0,
  `TamirKiti` tinyint(3) NOT NULL DEFAULT 0,
  `GPS` int(1) NOT NULL DEFAULT 0,
  `VIP` int(3) NOT NULL DEFAULT 0,
  `VIPSure` int(11) NOT NULL DEFAULT 0,
  `Maymuncuk` int(1) NOT NULL DEFAULT 0,
  `Bidon` int(2) NOT NULL DEFAULT 0,
  `BidonBenzin` int(4) NOT NULL DEFAULT 0,
  `Hediye` int(5) NOT NULL DEFAULT 0,
  `UyusturucuBoost` int(9) NOT NULL DEFAULT 0,
  `Kelepce` tinyint(1) NOT NULL DEFAULT 0,
  `KamyoncuTeslimat` int(6) NOT NULL DEFAULT 0,
  `Hitman` tinyint(1) NOT NULL DEFAULT 0,
  `Materyal` int(9) NOT NULL DEFAULT 0,
  `DinlenenYayin` int(6) NOT NULL DEFAULT 0,
  `BaslangicPaketi` tinyint(1) NOT NULL DEFAULT 0,
  `DovusStil` int(3) NOT NULL DEFAULT 4,
  `PRadyo` tinyint(1) NOT NULL DEFAULT 0,
  `Frekans` int(8) NOT NULL DEFAULT 0,
  `EkstraPayday` int(8) NOT NULL DEFAULT 0,
  `EkstraDil` int(2) NOT NULL DEFAULT -1,
  `GaspSure` int(9) NOT NULL DEFAULT 0,
  `Zar` tinyint(1) NOT NULL DEFAULT 0,
  `EkEvSlot` int(6) NOT NULL DEFAULT 0,
  `EkAracSlot` int(6) NOT NULL DEFAULT 0,
  `HirsizVIP` int(9) NOT NULL DEFAULT 0,
  `SilahDelay` int(9) NOT NULL DEFAULT 0,
  `SilahHakki` int(3) NOT NULL DEFAULT 0,
  `VNPoint` int(6) NOT NULL DEFAULT 0,
  `NewbieMute` tinyint(1) NOT NULL DEFAULT 0,
  `AvukatLisans` int(1) NOT NULL DEFAULT 0,
  `AvukatBekleme` int(4) NOT NULL DEFAULT 0,
  `AvukatYetenek` int(6) NOT NULL DEFAULT 0,
  `SucIndirimi` int(1) NOT NULL DEFAULT 0,
  `BalikYetenek` int(6) NOT NULL DEFAULT 0,
  `Baliklar` varchar(96) NOT NULL DEFAULT '0|0|0|0|0',
  `Yemler` varchar(96) NOT NULL DEFAULT '0|0|0|0|0',
  `MadenYetenek` int(6) NOT NULL DEFAULT 0,
  `Madenler` varchar(96) NOT NULL DEFAULT '0|0|0|0|0',
  `SahteLevel` int(3) NOT NULL DEFAULT 0,
  `SahteIsim` varchar(32) NOT NULL DEFAULT '',
  `YuruyusStil` int(3) NOT NULL DEFAULT 0,
  `AdminIsim` varchar(32) NOT NULL,
  `Admin` int(11) NOT NULL,
  `Helper` int(11) NOT NULL,
  `RaporSayisi` int(11) NOT NULL,
  `SoruSayisi` int(11) NOT NULL,
  `UCPSifre` varchar(256) NOT NULL,
  `Email` varchar(256) NOT NULL,
  `discord_id` varchar(64) NOT NULL,
  `DCDurum` int(3) NOT NULL DEFAULT 0,
  `discord_kod` varchar(64) NOT NULL,
  `discord_ad` varchar(64) NOT NULL,
  `discord_exp` int(11) NOT NULL,
  `Hud` int(11) NOT NULL,
  `DurumKontrol` int(1) NOT NULL DEFAULT 0,
  `Kilo` int(3) NOT NULL DEFAULT 0,
  `Boy` int(3) NOT NULL DEFAULT 0,
  `SacRengi` int(2) NOT NULL DEFAULT 0,
  `GozRengi` int(2) NOT NULL DEFAULT 0,
  `SecilenDurak` int(3) NOT NULL DEFAULT 0,
  `OtobusKart` int(3) NOT NULL DEFAULT 0,
  `OtobusKartBakiye` int(3) NOT NULL DEFAULT 0,
  `BlockedAcc` int(3) NOT NULL DEFAULT 0,
  `Status` int(3) NOT NULL DEFAULT 0,
  `Mute` int(3) NOT NULL DEFAULT 0,
  `Durum` int(3) NOT NULL DEFAULT 0,
  `soru1` text NOT NULL,
  `soru2` text NOT NULL,
  `soru3` text NOT NULL,
  `soru4` text NOT NULL,
  `soru5` text NOT NULL,
  `ip_adresi` varchar(50) NOT NULL,
  `cihaz_bilgisi` varchar(400) NOT NULL,
  `tarayici_bilgisi` varchar(250) NOT NULL,
  `TasinanKutu` int(3) NOT NULL DEFAULT 0,
  `TirLevel` int(5) NOT NULL,
  `TirSefer` int(5) NOT NULL,
  `YukTasiyor` int(3) NOT NULL DEFAULT 0,
  `SecilenFirma` int(3) NOT NULL DEFAULT -1,
  `SampMedia` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin5 COLLATE=latin5_turkish_ci COMMENT='ev';

--
-- Tablo döküm verisi `oyuncular`
--

INSERT INTO `oyuncular` (`ID`, `isim`, `sifre`, `Yasaklama`, `CK`, `hesap`, `oSonGiris`, `Kiyafet`, `GKiyafet`, `x`, `y`, `z`, `a`, `interior`, `vw`, `Para`, `BankaPara`, `BankaSifre`, `Dakika`, `Level`, `Exp`, `OynamaSaati`, `Can`, `Zirh`, `Cinsiyet`, `DogumYeri`, `dogumtarihi`, `yaratildi`, `aclik`, `susuzluk`, `BirlikLider`, `birlik`, `birlikrutbe`, `Yarali`, `YaraliSure`, `TenRengi`, `Silah1`, `Silah2`, `Silah3`, `Silah4`, `Silah5`, `Silah6`, `Silah7`, `Silah8`, `Silah9`, `Silah10`, `Silah11`, `Silah12`, `Silah13`, `Mermi1`, `Mermi2`, `Mermi3`, `Mermi4`, `Mermi5`, `Mermi6`, `Mermi7`, `Mermi8`, `Mermi9`, `Mermi10`, `Mermi11`, `Mermi12`, `Mermi13`, `isbasi`, `Ehliyet`, `Kibrit`, `Cakmak`, `Odun`, `HesapNumarasi`, `Sigara`, `Telefon`, `TelefonNumarasi`, `Gubre`, `Saksi`, `Tohum`, `IslenmemisMadde`, `Uyusturucu`, `UyusturucuOnay`, `Hapis`, `VatandaslikNo`, `Ruhsat`, `ICHapis`, `IDHapis`, `Meslek`, `Birim`, `boombox`, `BoomboxHakki`, `Asansor`, `Uyari`, `Aktif`, `Maske`, `MaskeID`, `IlkYardim`, `TamirKiti`, `GPS`, `VIP`, `VIPSure`, `Maymuncuk`, `Bidon`, `BidonBenzin`, `Hediye`, `UyusturucuBoost`, `Kelepce`, `KamyoncuTeslimat`, `Hitman`, `Materyal`, `DinlenenYayin`, `BaslangicPaketi`, `DovusStil`, `PRadyo`, `Frekans`, `EkstraPayday`, `EkstraDil`, `GaspSure`, `Zar`, `EkEvSlot`, `EkAracSlot`, `HirsizVIP`, `SilahDelay`, `SilahHakki`, `VNPoint`, `NewbieMute`, `AvukatLisans`, `AvukatBekleme`, `AvukatYetenek`, `SucIndirimi`, `BalikYetenek`, `Baliklar`, `Yemler`, `MadenYetenek`, `Madenler`, `SahteLevel`, `SahteIsim`, `YuruyusStil`, `AdminIsim`, `Admin`, `Helper`, `RaporSayisi`, `SoruSayisi`, `UCPSifre`, `Email`, `discord_id`, `DCDurum`, `discord_kod`, `discord_ad`, `discord_exp`, `Hud`, `DurumKontrol`, `Kilo`, `Boy`, `SacRengi`, `GozRengi`, `SecilenDurak`, `OtobusKart`, `OtobusKartBakiye`, `BlockedAcc`, `Status`, `Mute`, `Durum`, `soru1`, `soru2`, `soru3`, `soru4`, `soru5`, `ip_adresi`, `cihaz_bilgisi`, `tarayici_bilgisi`, `TasinanKutu`, `TirLevel`, `TirSefer`, `YukTasiyor`, `SecilenFirma`, `SampMedia`) VALUES
(1, 'Alex_Cross', '262c1443279014e918587dbe0f59c933', '', 0, 0, '22/12/2024, 20:27', 28, 0, 0, 0, 0, 0, 0, 0, 150, 0, 0, 10, 1, 0, 0, 100, 0, 1, 'merika', 34, 1, 100, 100, 0, -1, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 617311, 0, 1, 279164, 0, 0, 0, 0, 0, 0, 0, 36960863, 0, 0, -1, 0, 0, 0, 0, -1, 0, 0, 0, 29318, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0|0|0|0|0', '0|0|0|0|0', 0, '0|0|0|0|0', 0, '', 0, '', 0, 1, 0, 0, '7753fbbc00d29c41692ab99248d4af95', 'nottunailetisim@gmail.com', '828885684285866054', 1, 'RICHLAND-1FAFD6A0C9', 'nottunaofficial', 0, 1, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 1, 'Bu durum VDM\'e girer ve bu durumda önce rolümü bitiririm ardından kanıtlar ile birlikte ticket açarım.', 'Öncelikli olarak role girerim ve onu telefon ila ararım, açmayacağı için diğer ekip üyelerini toplayarak onu aramaya başlarım, kısa süre arayıp pm deki bölgeye giderim ve rolümü yaparım.', 'Öncelikle kurallara bakarım, ardından kurallar da göremez isem yetkiliye yasal olup olmadığını sorarım. Yasal ise satarım eğer yasal değil ise satmam.', 'Öncelik olarak hızlıca ekip telsizinden destek isterim, ardından silahı torpidoya koyarım, polisi benim ve ekip arkadaşlarımın bildiği herkese açık bir bölgeye çekerim ve ardından orda polisi atlatmaya çalışırım, atlatamaz isem ekip arkadaşlarım gelene kadar orada kaçmaya devam ederim, ekip arkadaşlarım gelince polisi bayıltıp oradan uzaklaşırım.', '(Öncelikli olarak aşağıdaki tepkiyi göremiyorum bu yüzden kendim cevaplicam) Öncelikle onların silahları ellerinde benim ise yanımda bu tehlikeli olur bu yüzden önce beni soymalarina izin veririm ardından ise var ise ekibim önce ekibime haber veririm ardından emote ile silahıma uzanarak şahıslara ateş açarım.', '78.160.250.145', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 0, 0, 0, -1, -1, 0),
(2, 'Mia_Millerd', '3327172f5d5924852e940a51449d6dac', '', 0, 0, '02/01/2025, 13:05', 8, 0, 1533.48, -1728.42, 13.3828, 170.535, 0, 0, 2930, 31376, 0, 56, 34, 78, 270, 81.5838, 0, 1, '0', 23, 1, 100, 100, 1, 1, 6, 0, 0, 1, 0, 0, 24, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 17, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 829779, 0, 1, 985507, 0, 0, 2, 0, 0, 0, 0, 17931780, 0, 0, -1, 2, 0, 0, 0, -1, 0, 0, 3, 334741, 0, 0, 1, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, '0|0|0|0|0', '19|0|15|0|0', 2, '0|0|0|0|0', 0, '', 0, 'deks', 8, 0, 175, 0, '3327172f5d5924852e940a51449d6dac', 'keleshasan0204@gmail.com', '688863176850145424', 1, 'RICHLAND-286B2895FE', 'klshasan47', 0, 1, 1, 140, 150, 7, 5, -1, 1, 190, 0, 0, 0, 1, '', '', '', '', '', '', '', '', 0, 0, 1, -1, -1, 0),
(3, 'Fensonn_Danny', '3327172f5d5924852e940a51449d6dac', '', 0, 0, '23/12/2024, 18:50', 27, 0, 2163.79, -2131.06, 13.3577, 289.418, 0, 0, 500, 21908, 0, 45, 33, 6031424, 183, 74, 0, 1, '0', 25, 1, 100, 100, 39, 39, 10, 0, 0, 1, 0, 0, 24, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 71, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 517709, 0, 1, 803705, 0, 0, 1, 0, 0, 0, 0, 50423673, 0, 0, -1, 13, 0, 0, 0, -1, 0, 0, 1, 40299, 0, 0, 1, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 1, 581, 0, 0, 0, 0, 0, 3, '16|0|0|0|0', '5|15|0|0|17', 1, '0|0|0|0|0', 0, '', 0, 'Pablo', 10, 0, 283, 0, '6927721b3667e230d71e4299d9596227', '', '803730639646883851', 1, 'RICHLAND-6B365DCFF7', 'pabloautomatikkk', 0, 1, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 1, '', '', '', '', '', '', '', '', 1, 0, 1, -1, -1, 0),
(9, 'Pablo_Sins', 'b7e76b9755ea6b7b90b29bcce8af7044', '', 0, 0, '21/12/2024, 15:40', 184, 0, 1529.63, -1682.38, 13.3828, 138.684, 0, 0, 1000, 0, 0, 1, 1, 0, 0, 100, 0, 1, 'Çin', 50, 1, 100, 100, 0, -1, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 849621, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 32059771, 0, 0, -1, 0, 0, 0, 0, -1, 0, 0, 0, 59055, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0|0|0|0|0', '0|0|0|0|0', 0, '0|0|0|0|0', 0, '', 0, '', 0, 0, 0, 0, '680aca0199e2c7bef47405c05b5fb6ab', 'sang@gmail.com', '', 0, '', '', 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 1, 'Amyerim', 'Memeyalarim', 'Ayak parmak tırnak bosaltirim', 'Ojeleri asoten gibi dilimlen cikaririm', 'Kıza yarrami yediririm', '158.69.73.239', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', 0, 0, 0, -1, -1, 0),
(7, 'Dante_Bray', 'c868b1d780f3d5c2f1dbab85f638f636', '', 0, 0, NULL, 101, 0, 1496.02, -1693.39, 13.3988, 177.546, 0, 0, 1000, 0, 0, 0, 1, 0, 0, 100, 0, 1, 'Amerika', 34, 1, 100, 100, 0, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0|0|0|0|0', '0|0|0|0|0', 0, '0|0|0|0|0', 0, '', 0, '', 8, 0, 0, 0, 'c868b1d780f3d5c2f1dbab85f638f636', 'turandurmaz662@gmail.com', '799986114911928370', 1, 'RICHLAND-D3F17E351F', 'juniorterim', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '-', '-', '-', '-', '-', '88.230.74.4', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 0, 0, 0, 0, -1, 0),
(8, 'Austin_Williams', 'e26b24736b81eda7ece24aecf558ea4b', '', 0, 0, '21/12/2024, 17:00', 101, 0, 1995.24, -1758, 13.5468, 122.6, 0, 0, 1000, 0, 0, 19, 1, 0, 0, 66.67, 0, 1, 'Almanya', 25, 1, 100, 100, 0, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 662509, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 63354532, 0, 0, -1, 0, 0, 0, 0, -1, 0, 0, 0, 68994, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0|0|0|0|0', '0|0|0|0|0', 0, '0|0|0|0|0', 0, '', 0, '', 0, 0, 0, 0, 'e26b24736b81eda7ece24aecf558ea4b', 'exroxy77@gmail.com', '1051224140830494801', 1, 'RICHLAND-C1126C6030', 'santcusv2', 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 1, 'adsf', 'asdf', 'asdf', 'asdf', 'asdsdf', '188.253.216.91', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 0, 0, 0, -1, -1, 0),
(10, 'Alex_Black', 'a0dac64ace929a7fbfd933d7c33497eb', '', 0, 0, '22/12/2024, 16:48', 26, 0, 1419.4, -7.07, 1003.58, 183.418, 0, 30011, 850, 0, 0, 6, 1, 0, 0, 100, 0, 1, 'Portekiz', 24, 1, 100, 100, 0, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 135085, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 54349291, 0, 0, -1, 0, 0, 0, 0, -1, 0, 0, 0, 32915, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0|0|0|0|0', '0|0|0|0|0', 0, '0|0|0|0|0', 0, '', 0, '', 0, 0, 0, 0, 'a0dac64ace929a7fbfd933d7c33497eb', 'kokibesler7@gmail.com', '981562717863301130', 1, 'RICHLAND-A07BE92204', '_chivas_1', 0, 1, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 1, 'Kanıt varsa ticket açarım kanıt yok ise adminleri bilgilendirip oyuncuyu izlemelerini tavsiye ederim', 'Pm i umursamam kıyafet almaya devam ederim', 'Yasak olduğu için kabul etmem ve adminleri olay hakkında bilgilendiririm', 'Hemen sağ veya solumda yol varsa o yola girer polisten kaçmaya çalışırım kaçamaz isem teslim olur ve cezamı kabullenirim', 'Sakince arabadan iner ve beni öldürmemeleri için dediklerini mecbur yapmak zorunda kalırım ', '46.2.139.3', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', 0, 0, 0, -1, -1, 0),
(11, 'John_Doe', '0af87f727e1ac399ef3ebce910d62287', '', 0, 0, '22/12/2024, 19:58', 101, 0, 0, 0, 0, 0, 0, 0, 200, 0, 0, 14, 1, 0, 0, 100, 0, 1, 'Rusya', 25, 1, 100, 100, 0, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 254455, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 26596918, 0, 0, -1, 12, 0, 0, 0, -1, 0, 0, 0, 48234, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0|0|0|0|0', '0|0|0|0|0', 0, '0|0|0|0|0', 0, '', 0, '', 0, 0, 0, 0, '0af87f727e1ac399ef3ebce910d62287', 'flundarthunder@gmail.com', '1019193137794646026', 1, 'RICHLAND-9F23E9F433', 'flundarr', 0, 1, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 1, 'Yaralanma rolüne girerim,hastaneye gidip tedavi mi etdikten sonra hiç bir rol kalmadıysa arkadaşa vdm atmaktan yetkililere ss\'li bir şekilde şikayet açarım.', 'Bunu asla ve asla yapmam nedeni şu bunu yapsam Meta gaming\'e girer,ve cezai işlem görerim cezai işlem görmem umrumda bile deyil amma diğer insanların rolünü bozarım.', 'Bunu ic diyor ise role devam ederim bozmadan yani dostdum burası Amerika TL ne tarzı kelimelerle onu rolden çıkmama suretiyle uyarırım,bu yaptığı işlem Mixing\'dir rol bitdikten sonra yetkililere şikayeti mi bildiririm.', 'Tabii ki de her İllegal oluşumun uyeleri gibi kaçarım,eğer polis bana pit,ram gibi hamleler yapıyor ise ona uygun polislerinde rol zevkini bozmadan role zevk katarak devam ederim.', 'Fear rp rolüne uyarak,insanların zevkini bu ihlali yapmadan devam ederim.', '31.171.50.191', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', 0, 0, 0, -1, -1, 0),
(12, 'Pascal_Diallo', '5c71dca53bcce7f875d8e7497a4b1cd0', '', 0, 0, '21/12/2024, 23:20', 101, 0, 2434.98, -2096.27, 13.5468, 45.3327, 0, 0, 1000, 0, 0, 0, 1, 0, 0, 100, 0, 1, 'Meksika', 21, 1, 100, 100, 0, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 234092, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 38573510, 0, 0, -1, 0, 0, 0, 0, -1, 0, 0, 0, 11730, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0|0|0|0|0', '0|0|0|0|0', 0, '0|0|0|0|0', 0, '', 0, '', 0, 0, 0, 0, '5c71dca53bcce7f875d8e7497a4b1cd0', 'realssflowww@gmail.com', '1143953804975415417', 1, 'RICHLAND-F316EF583D', 'mitatcanbaba', 0, 1, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 1, 'Video kaydını açıp ne yaptığını sorarım devam ediyorsa birşey yapmam adam gidene kadar adam gidince desteğe çıkar şikayet ederim', '/destek abi adamlar mixing yapıyor ', 'Arkadaşıma bunun yanlış olduğunu söyleyip red ederim deks bey. ', 'Polis memurlarina ateş edilmesi çok riskli olduğundan kaçarım yakalanırsam yapacak birşey yok. ', 'Role uyarim silah çekebilecek bir pozisyon gelirse çekerim gelmesse çekemem ve role devam ederim.. ', '78.171.92.196', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', 0, 0, 0, -1, -1, 0),
(13, 'Josiah_McAllister', '4dac011bda488a30848e9643888f038a', '', 0, 0, NULL, 101, 0, 1496.02, -1693.39, 13.3988, 177.546, 0, 0, 1000, 0, 0, 0, 1, 0, 0, 100, 0, 1, 'Amerika', 55, 1, 100, 100, 0, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0|0|0|0|0', '0|0|0|0|0', 0, '0|0|0|0|0', 0, '', 0, '', 0, 0, 0, 0, 'c45cf3b9f0e872276961b67f76b97cbc', 'wexsy1405@gmail.com', '', 0, 'RICHLAND-B68CA370BA', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'Ekran görüntüsü alır, adam gittikten sonra ticket acarım', 'Mixing olduğu için konuma gitmem', 'İstemem, emeğimle kazandığım parayı satmam', 'İlk öncelikle kaçacak yer ararım eğer yoksa aracımı ceker ateşlerim', 'Hızlı bir şekilde silahımı alır, kendimi savunurum', '178.162.227.83', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/26.0 Chrome/122.0.0.0 Mobile Safari/537.36', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/26.0 Chrome/122.0.0.0 Mobile Safari/537.36', 0, 0, 0, 0, -1, 0),
(14, 'Antoine_Dubois', 'fcea920f7412b5da7be0cf42b8c93759', '', 0, 0, '22/12/2024, 21:21', 184, 0, 1538.15, -1667.45, 13.5291, 5.2513, 0, 0, 450, 0, 0, 8, 1, 0, 0, 100, 0, 1, 'Fransa', 20, 1, 100, 100, 0, -1, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 778367, 0, 1, 446678, 0, 0, 0, 0, 0, 0, 0, 99047288, 0, 0, -1, 0, 0, 0, 0, -1, 0, 0, 0, 33995, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0|0|0|0|0', '0|0|0|0|0', 0, '0|0|0|0|0', 0, '', 0, '', 0, 0, 0, 0, 'fcea920f7412b5da7be0cf42b8c93759', 'hzr0434@gmail.com', '872103707192471572', 1, 'RICHLAND-2C782C5DBC', 'meto_77', 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 1, '1. Polisi arar Şikayette bulunurum', 'Durumu değerlendirir, güvenliğimi riske atmaz, yardım çağırırım.', 'Teklifi reddeder, adil davranırım.', 'Polisi atlatarak en güvenli rotayı bulup saklanırım.', '1. Durumu analiz ederim ve soğukkanlı kalırım.   2. Tüfeği alır, tehdit seviyesine göre karşılık veririm.   3. Güvenli bir çıkış noktası belirlerim.   4. Olay sonrası polise haber veririm.', '92.119.177.54', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', 0, 0, 0, -1, -1, 0),
(15, 'Levi_Edwards', '371a64912b06dfff3e54849a712b721f', '', 0, 0, '22/12/2024, 20:14', 2, 0, 361.857, -2030.75, 8.3428, 67.7681, 0, 0, 0, 0, 0, 24, 1, 0, 0, 72.28, 0, 1, 'Amerika', 19, 1, 100, 100, 0, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 114396, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 52862802, 0, 0, -1, 0, 0, 0, 0, -1, 0, 0, 1, 63643, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9, '0|0|0|0|0', '0|0|0|0|0', 0, '0|0|0|0|0', 0, '', 0, '', 0, 0, 0, 0, 'c1df98b946416da963e4703aa0fb8dde', 'apcbabat@gmail.com', '1300038457342693376', 1, 'RICHLAND-AD9C29DB89', 'ispanyolpaca_', 0, 1, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 1, 'Kanıtımı alır destege çıkarım ', 'Gitmem meta gaming olur ', 'Kabul edemem', 'Arabamı saga çeker teslim olmayı tercih ederim', 'Birşey yapamam rolume devam ederim fear rp olur.', '23.134.91.83', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Mobile Safari/537.36 OPR/86.0.0.0', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Mobile Safari/537.36 OPR/86.0.0.0', 0, 0, 0, -1, -1, 0),
(16, 'Gabriel_Gboa', '4841a7d5cc2730c71a9ee291de06688f', '', 0, 0, NULL, 101, 0, 1496.02, -1693.39, 13.3988, 177.546, 0, 0, 1000, 0, 0, 0, 1, 0, 0, 100, 0, 1, 'Amerika', 23, 1, 100, 100, 0, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0|0|0|0|0', '0|0|0|0|0', 0, '0|0|0|0|0', 0, '', 0, '', 0, 0, 0, 0, '4841a7d5cc2730c71a9ee291de06688f', 'ayz1907xkjj@gmail.com', '', 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'Sakın şekilde davranıp uzlaşma ile bitiririm olmaz ise polis çağırırm. ', 'İlk önce konum atamıyorsa polise haber verip bölgeyi ilik ilik gezerim ve bulurum', 'Ben, OOC\'yi İC\'ye kalmam ve redd ederim. ', 'Arkadaşlarımın olduğu yere sürüp haber veririm ve polisleri etkisiz hale getiririm', 'Arkanızda biri var derim odakları bende değil iken tüfek ile vururum. l', '193.108.118.89', 'Mozilla/5.0 (Linux; Android 13; en; TECNO KJ5n Build/SP1A.210812.016) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.129 HiBrowser/v2.24.1.3 UWS/ Mobile Safari/537.36', 'Mozilla/5.0 (Linux; Android 13; en; TECNO KJ5n Build/SP1A.210812.016) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.129 HiBrowser/v2.24.1.3 UWS/ Mobile Safari/537.36', 0, 0, 0, 0, -1, 0),
(17, 'Mia_Siho', 'f22ac8655feadcf5e2dd04636ce29a2f', '', 0, 0, '22/12/2024, 20:31', 211, 0, 252.046, -377.429, 8.777, 256.286, 0, 0, 100, 0, 0, 14, 1, 0, 0, 100, 0, 2, 'Rusya', 22, 1, 100, 100, 0, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 163386, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 88674947, 0, 0, -1, 0, 0, 0, 0, -1, 0, 0, 0, 76914, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, '17|128|117|0|0', '0|0|0|0|14', 0, '0|0|0|0|0', 0, '', 0, '', 0, 0, 0, 1, 'f22ac8655feadcf5e2dd04636ce29a2f', 'mozzofo@gmail.com', '587618661653807125', 1, 'RICHLAND-34F273C9C2', 'bavaras', 0, 1, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 1, 'Rolüme devam ederim sonrasında ticket açarım', 'gitmem', 'hayır derim', 'öncelikle cümle devrik hiç anlamadım ama hiç birşey yapamam teslim olurum', 'Hiç birşey yapmam silah bana doğrutulmuş şekilde alamam', '51.158.175.218', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 0, 0, 0, -1, -1, 0),
(18, 'Tomoki_Yakuza', 'a211075098475c91c1f28536b16dd47b', '', 0, 0, NULL, 101, 0, 1496.02, -1693.39, 13.3988, 177.546, 0, 0, 1000, 0, 0, 0, 1, 0, 0, 100, 0, 1, 'Japonya', 45, 1, 100, 100, 0, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0|0|0|0|0', '0|0|0|0|0', 0, '0|0|0|0|0', 0, '', 0, '', 0, 0, 0, 0, 'a211075098475c91c1f28536b16dd47b', 'mrnormann0@gmail.com', '', 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'Kanıtımı alıp yetkililere şikayet ederim', 'İlettiği konuma gitmeyip, bunun yasak bir davranış olduğunu söylerim', 'Kabul etmem, uyarırım ısrar ederlerse şikayet ederim', 'Kaçabilirsem kaçarım izimi kaybettiremezsem kendi açımdan güvenebileceğim konuma geçer çatışmaya çalışırım', 'İlk olarak agresiflik göstermem, şahısları oyalayarak silahı araçtan almaya çalışırım alabilirsem güvenli bir bölgeye çekilip çatışmaya çalışırım', '31.145.199.48', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', 0, 0, 0, 0, -1, 0),
(19, 'Lee_Atkins', '7f254dff12f3771bfaf934ea0b4e2753', '', 0, 0, '22/12/2024, 19:56', 101, 281, 0, 0, 0, 0, 0, 0, 1000, 0, 0, 10, 3, 0, 12, 100, 0, 1, 'Amerika', 35, 1, 100, 100, 1, 1, 6, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 737976, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46078918, 0, 0, -1, 0, 0, 0, 0, -1, 0, 0, 0, 51457, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0|0|0|0|0', '0|0|0|0|0', 0, '0|0|0|0|0', 0, '', 0, '', 0, 0, 0, 0, '7f254dff12f3771bfaf934ea0b4e2753', 'anorsylite@gmail.com', '980080576927268905', 1, 'RICHLAND-79BEC04134', 'anorsy911', 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 1, 'Anorsy ben', 'Anorsy ben', 'Anorsy ben', 'Anorsy ben', 'Anorsy ben', '158.181.40.136', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', 0, 0, 0, -1, -1, 0),
(22, 'Boris_Albert', 'fbd4794bbd20d126b6edc6c1a3740c83', '', 0, 0, NULL, 101, 0, 1496.02, -1693.39, 13.3988, 177.546, 0, 0, 1000, 0, 0, 0, 1, 0, 0, 100, 0, 1, 'Amerika', 24, 1, 100, 100, 0, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0|0|0|0|0', '0|0|0|0|0', 0, '0|0|0|0|0', 0, '', 0, '', 0, 0, 0, 0, 'fbd4794bbd20d126b6edc6c1a3740c83', 'emiryedek4444@gmail.com', '686252379959459862', 1, 'RICHLAND-2FB5F2DA66', '1thewir', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'Yolda yürürken bir araç kasıtlı olarak bana çarpsa, öncelikle güvenli bir yere geçmeye çalışırım. Eğer yaralandıysam, hareket etmeden Ambulans\'ı arar ve yardım isterim. Sonrasında durumu polise bildirmek için Polis?i arar, aracın plakasını ya da dikkat çeken özelliklerini aklımda tutmaya çalışırım. Çevredeki kişilerden şahitlik etmelerini rica ederim ve gerekirse hukuki süreç başlatmak için bir avukata danışırım.', 'Mağazada işimi bırakır ve hemen mesajdaki konuma doğru yola çıkardım. Giderken polise haber vererek durumdan bahseder ve konumu iletirdim. Eğer arkadaşımın durumu hakkında daha fazla bilgi alabilirsem, onu da bildirirdim. Yol boyunca dikkatli davranır, kendimi de riske atmamak için tedbirli olur ve yalnız gitmek yerine güvenebileceğim birini yanıma almayı tercih ederdim.', 'Kabul etmem ve bunun yasak olduğunu o kullanıcıya bildiririm gerekirse Ticket açar şikayette bulunurum', 'Polis tarafından kovalanıyorsam ve üzerimde bir silah varsa, kaçmayı bırakır ve dururum. Silahı tehdit oluşturmayacak bir şekilde yere bırakır, sakin bir şekilde teslim olurum. Durumu daha kötü hale getirmemek için polisle iş birliği yapar ve avukat talep ederek yasal süreci beklerim.', 'Eğer otoparkta aracımda otururken iki silahlı kişi gelip beni soymaya çalışıyorsa ve yanımda tam dolu bir saldırı tüfeği varsa, ilk olarak soğukkanlı kalmaya çalışırım. Eğer kaçma şansım yoksa ve gerçekten ciddi bir tehdit altındaysam, tüfeği kullanarak kendimi savunurum. Ancak, her durumda can güvenliğimi ön planda tutarım. Olayın ardından hemen polisi arayıp durumu bildiririm.', '185.107.56.127', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', 0, 0, 0, 0, -1, 0),
(21, 'Arthur_Washington', 'ba648d122ed2d06ba3100476978de748', '', 0, 0, NULL, 101, 0, 1496.02, -1693.39, 13.3988, 177.546, 0, 0, 1000, 0, 0, 0, 1, 0, 0, 100, 0, 1, 'Amerika', 49, 1, 100, 100, 0, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0|0|0|0|0', '0|0|0|0|0', 0, '0|0|0|0|0', 0, '', 0, '', 0, 0, 0, 0, 'ba648d122ed2d06ba3100476978de748', 'ibrahimyusubov77@icloud.com', '1007967678075506738', 1, 'RICHLAND-CB30426F8A', 'hz.reckless', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'Role bağlı olarak yaralı rolü yaparım.', 'Cevap vermem.', 'Satmam.', 'Kaça bilecek bir yerim varsa kaçarım. Kaça bilecek bir yerim yoksa torpido varsa torpidoya atarım belki kontrol edilmez.', 'Silahı alıp ateş etmem normal bir rol değil. Mecbur soyulacağım.', '85.132.102.91', 'Mozilla/5.0 (iPhone; CPU iPhone OS 15_8_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.6.6 Mobile/15E148 Safari/604.1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 15_8_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.6.6 Mobile/15E148 Safari/604.1', 0, 0, 0, 0, -1, 0),
(23, 'Andrew_Walker', '5531a5834816222280f20d1ef9e95f69', '', 0, 0, '22/12/2024, 20:47', 22, 0, 336.687, -70.5263, 1.5583, 211.227, 0, 0, 5, 0, 0, 37, 1, 0, 0, 100, 0, 1, 'Amerika', 25, 1, 100, 100, 0, -1, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 490974, 0, 1, 279646, 0, 0, 0, 0, 0, 0, 0, 71898272, 0, 0, -1, 12, 0, 0, 0, -1, 0, 0, 1, 23184, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9, '0|0|0|0|0', '0|0|0|0|0', 0, '0|0|0|0|0', 0, '', 0, '', 0, 0, 0, 0, '5531a5834816222280f20d1ef9e95f69', 'tasciahmet572@gmail.com', '982373056259424327', 1, 'RICHLAND-52F9741E82', 'raquidi', 0, 1, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 1, 'Eğer olanikliysam çarpmadan sıyrılırim ve sürücü ile iletişime geçerek konu hakkında değerlendirme yaparım.', 'Kendisini Meta yapmaması konusunda ilk öncelikle uyaririm, sonrasinda ise bana telefon veya telsizden ulaşirsa rolsel olarak yardım etmeye giderim. Eğer bana ic şekilde ulaşmaz ise hiçbir şey yapmam.', 'Ic\'deki bir olayı ooc\'ye yansıtmamak için kabul etmem.', 'Eğer sağ veya sol tarafdan kaçabilecegim kadar bir yol varsa rotami oraya çevirim. Yoksa arabamın el frenini çekip ters bir şekilde dönerim ve arabamdaki silahı bir bez veya bir malzeme ile silerim, ve bulunması zor biyere saklayarak araçtan iner ve yayan şekilde kaçmayı denerim. ', 'İlk öncelikle onların dediklerini kabul ederim ve benden yeterli Uzaklikdalar ise araçtan silahımı alır ve hızla aracimin arkasına siper alırım. Ve mermin bitene kadar kişilerle çatışma halinde kalırım.', '176.88.80.131', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.6312.118 Mobile Safari/537.36 XiaoMi/MiuiBrowser/14.25.0-gn', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.6312.118 Mobile Safari/537.36 XiaoMi/MiuiBrowser/14.25.0-gn', 0, 0, 0, -1, -1, 0),
(24, 'Edson_Rodrigues', '9e1a3a8c57684e8bceac8c51d249d9d7', '', 0, 0, NULL, 184, 0, 1496.02, -1693.39, 13.3988, 177.546, 0, 0, 1000, 0, 0, 0, 1, 0, 0, 100, 0, 1, 'Amerika', 22, 1, 100, 100, 0, -1, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0|0|0|0|0', '0|0|0|0|0', 0, '0|0|0|0|0', 0, '', 0, '', 0, 0, 0, 0, 'd76ac103c95d210f670b74df48ed1293', 'rvnsq0@gmail.com', '', 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'Video kaydına alırım vdm attığı için discorddan ticket açarım', 'Meta olacağı için dediğini yapmam ', 'Eğer ooc ticaret yasaksa kabul etmem', ' Kaçabildigim yere kadar Kaçmaya devam ederim yakalanırsamda fear rp yaparım', 'Fear rp yaparım', '46.1.110.207', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 0, 0, 0, 0, -1, 0),
(26, 'Keenan_Statham', '603e4500da1a9a6630a5aa39a9147e33', '', 0, 0, '22/12/2024, 20:21', 184, 0, 1812, -1736.31, 13.1935, 269.268, 0, 0, 900, 0, 0, 13, 1, 0, 0, 100, 0, 1, 'Fransa', 25, 1, 100, 100, 0, -1, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 396678, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 18044997, 0, 0, -1, 0, 0, 0, 0, -1, 0, 0, 0, 54059, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0|0|0|0|0', '0|0|0|0|0', 0, '0|0|0|0|0', 0, '', 0, '', 0, 0, 0, 0, '603e4500da1a9a6630a5aa39a9147e33', 'mehesen54@gmail.com', '1258487899368718488', 1, 'RICHLAND-21900DD7A4', 'atomhasan', 0, 0, 0, 0, 0, 0, 0, -1, 1, 0, 0, 0, 0, 1, 'Car ramming demek,role girerim.', 'Bu durumda bincoya gitmem,metaya girer.Eğer telsiz varsa,telsizden konum belirtmişse gidebilirim', 'Mixinge girer kabul etmem.', 'Aracımı tenhaya çekerim,telefonumu kapatırım sinyalden bulamasın diye.sonrada silahımı bagaja atarım,veyahut evimde saklarım.', 'Paramı soyarlardı.', '185.146.113.92', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Avast/131.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Avast/131.0.0.0', 0, 0, 0, -1, -1, 0),
(27, 'Amelie_Morel', '95bd5ac82f8b0f570b308b978cd81783', '', 0, 0, '22/12/2024, 16:52', 211, 0, 1530.93, -1688.33, 13.3828, 163.214, 0, 0, 1000, 0, 0, 0, 1, 0, 0, 100, 0, 2, 'Fransa', 29, 1, 100, 100, 0, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 958909, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 54113214, 0, 0, -1, 0, 0, 0, 0, -1, 0, 0, 0, 19738, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0|0|0|0|0', '0|0|0|0|0', 0, '0|0|0|0|0', 0, '', 0, '', 0, 0, 0, 0, '95bd5ac82f8b0f570b308b978cd81783', 'rydebest@gmail.com', '860274225314529301', 1, 'RICHLAND-E930A85FEC', 'bodrumdakisonafgan', 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 1, 'Yaralı rolü yaparım ', 'pm ooc kanaldır takmam, ic telefondan ararım ve konum atmasını söylerim.', 'yasak olmaz', 'duruma göre çatışabileceğim durum olursa çatışırım ve ya kaçmayı denerim. Rol kurallarına uyarak', '2 kişi bana silah doğrultuyorsa refleks rolu yapamam, korku rolümü sergiler istediklerini veririm', '62.217.129.19', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', 0, 0, 0, -1, -1, 0),
(28, 'Giulio_Vernetti', 'b1850edfd16e8888e3a7cb676735a876', '', 0, 0, NULL, 101, 0, 1496.02, -1693.39, 13.3988, 177.546, 0, 0, 1000, 0, 0, 0, 1, 0, 0, 100, 0, 1, 'İtalya', 34, 1, 100, 100, 0, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0|0|0|0|0', '0|0|0|0|0', 0, '0|0|0|0|0', 0, '', 0, '', 0, 0, 0, 0, 'b1850edfd16e8888e3a7cb676735a876', 'alibugrademirel26@gmail.com', '', 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'Morfin', 'Morfin', 'Morfin', 'Morfin', 'Morfin', '46.155.199.11', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', 0, 0, 0, 0, -1, 0),
(29, 'Said_Kareem', 'fb007284e81ce2c3ea47ffb800449321', '', 0, 0, NULL, 184, 0, 1496.02, -1693.39, 13.3988, 177.546, 0, 0, 1000, 0, 0, 0, 1, 0, 0, 100, 0, 1, 'Amerika', 22, 1, 100, 100, 0, -1, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0|0|0|0|0', '0|0|0|0|0', 0, '0|0|0|0|0', 0, '', 0, '', 0, 0, 0, 0, 'fb007284e81ce2c3ea47ffb800449321', 'kralistndd2@gmail.com', '1012725052241871008', 1, 'RICHLAND-289462D300', 'mkk1221', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'Ekran görüntüsü alır şikayet açarım', 'Arkadaşıma yardım etmem, mixing oluyor. IC yollarla ulaşmasını söylerim', 'Ekran görüntüsü alır şikayet açarım yasak', 'Arkadaşlarıma konumumu atarım, gelmelerini söylerim ve gerekeni yaparız.', 'Benden fazla kişiler parayı veririm, sonra arkadaşımla gang bang misali yaparız indiririz hepsni', '85.153.227.236', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 0, 0, 0, 0, -1, 0),
(31, 'Jack_Sully', '0e1fac8690bc8f8663230bd66c0026b6', '', 0, 0, '22/12/2024, 16:48', 101, 0, 738.557, 1780.24, 5.5082, 8.6363, 0, 7003, 1000, 0, 0, 5, 1, 0, 0, 100, 0, 1, 'Amerika', 25, 1, 100, 100, 0, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 242688, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 51437416, 0, 0, -1, 0, 0, 0, 0, -1, 0, 0, 0, 30920, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0|0|0|0|0', '0|0|0|0|0', 0, '0|0|0|0|0', 0, '', 0, '', 0, 0, 0, 0, '5c923838ae272b8cc60a3e148c578318', 'eli347210@gmail.com', '1307490737780166746', 1, 'RICHLAND-62B19BD7B3', 'eli_347210', 0, 1, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 1, 'Onu  arabayı dikkatli kullanması için uyarırım!', 'Arabama binip söylediği konuma giderim', 'Onunla özel konuşurum', 'Önce izimi kayb etib silahı saklarım sonra kiyafet değiştirirm yüzümü maskeyle kapatırım', 'Tüfeği onlara doğrultup polisi ararım', '188.253.214.70', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', 0, 0, 0, -1, -1, 0),
(32, 'Drake_Stark', '276a7f10b13a61cd2d75f2ef7e1f4c59', '', 0, 0, NULL, 184, 0, 1496.02, -1693.39, 13.3988, 177.546, 0, 0, 1000, 0, 0, 0, 1, 0, 0, 100, 0, 1, 'Almanya', 27, 1, 100, 100, 0, -1, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0|0|0|0|0', '0|0|0|0|0', 0, '0|0|0|0|0', 0, '', 0, '', 0, 0, 0, 0, '276a7f10b13a61cd2d75f2ef7e1f4c59', 'beturefe@gmail.com', '949405239142932535', 1, 'RICHLAND-426F46EAE9', 'mintak1', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'destek atarım eğer adminler tam zamanında bakmazsa kaydımı alır ve ticket açarım', 'kurallara aykırı olduğunu belirtir ve gelemeyeceğimi söylerim', 'kabul etmem ve adminlere söylerim', 'kaçmaya çalışırım eğer kaçamazsam ve aracım patlarsa yaya koşarım  polis peşimi bırakmazsa son çare olarak ateş etmek durumunda kalırım', 'fear rp ye uyar ve soyulurum kesinlikle silahıma davranıp bir rol hatası yapmam ve rolu bozmam', '78.168.4.157', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 0, 0, 0, 0, -1, 0),
(33, 'Jack_Lewis', 'aac9e945e41cd2992d1490612ae5a69d', '', 0, 0, NULL, 184, 0, 1496.02, -1693.39, 13.3988, 177.546, 0, 0, 1000, 0, 0, 0, 1, 0, 0, 100, 0, 1, 'Amerika', 33, 1, 100, 100, 0, -1, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0|0|0|0|0', '0|0|0|0|0', 0, '0|0|0|0|0', 0, '', 0, '', 0, 0, 0, 0, 'aac9e945e41cd2992d1490612ae5a69d', 'dcadresimdceen@gmail.com', '777253413980471326', 1, 'RICHLAND-A02B6A141A', 'emirxxyz', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'eğer kasıtlıysa ve bir rolde isem gerekli kayıtları alıp rolden sonra şikayet açardım.', 'icyi oociye katmam soylediği yere gitmem.', 'kabul etmem ve bunu yapmamasını soylerim', 'soruyu pek anlamadım ama  ilk once kaçamayı denerim eğerki kaçmayı başarırsam zaten rahatlıkta kaçabilmişimdir fakat eğer kaçamasam en son çatışmayı denerim', 'aşağıda bir tepki yok. fakat o rolde fear rp yapmak zorundayım yani gerçekte bile aynışey olsa hiçbirşey yapamazsınız 2 kişiye karşı', '5.237.161.198', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 0, 0, 0, 0, -1, 0),
(34, 'Nico_Bruhney', 'adfbac2f3b6daf4ae4150f3bd94e0814', '', 0, 0, '22/12/2024, 19:50', 101, 0, 0, 0, 0, 0, 0, 0, 1000, 0, 0, 4, 1, 0, 0, 100, 0, 1, 'Rusya', 28, 1, 100, 100, 0, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 660980, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 51429276, 0, 0, -1, 0, 0, 0, 0, -1, 0, 0, 0, 47183, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0|0|0|0|0', '0|0|0|0|0', 0, '0|0|0|0|0', 0, '', 0, '', 0, 0, 0, 0, 'adfbac2f3b6daf4ae4150f3bd94e0814', 'Lewia817@gmail.com', '1081599149335646249', 1, 'RICHLAND-DA598DD426', 'lewia911', 0, 1, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 1, 'Video kaydına alıp, tickete çıkarım.', '/pm [İD] Metagaming Kuralını çiğneyebiliriz, olmaz.', 'Ticket acarım ve bunu yapabilmemin sunucu kurallarına aykırı olmadığını anladıkdan sonra satarım, eğer aykırı ise yapmam.', 'Kaçmaya calışırım, arabam bozulursa yayan kaçmaya çalışırım. Bunny yapmadan.', 'Elim aracın SOS Dügmesine gider, gizlice bastıktan sonra 911 aranırken, araçtan inerim.', '37.120.135.42', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', 0, 0, 0, -1, -1, 0),
(35, 'Leon_Olezka', '3ee2f78619276ab6145a61cfc57a7950', '', 0, 0, '22/12/2024, 20:56', 101, 0, 350.063, -2057.13, 7.8366, 91.267, 0, 0, 250, 0, 0, 56, 1, 0, 0, 100, 0, 1, 'Amerika', 22, 1, 100, 100, 0, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 377963, 0, 1, 877516, 0, 0, 0, 0, 0, 0, 0, 73947513, 0, 0, -1, 0, 0, 0, 0, -1, 0, 0, 0, 65429, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, '27|0|0|77|0', '0|0|0|0|4', 0, '0|0|0|0|0', 0, '', 0, '', 0, 0, 0, 0, '3ee2f78619276ab6145a61cfc57a7950', 'urplsfmd@gmail.com', '1168589236719587410', 1, 'RICHLAND-37D97CA645', 'necati0431', 0, 1, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 1, 'Çarptığı için rolde gerçekci bakarsak sağ sola sarılır yaralanırım yaralı rolümü gerçekleştirir rol sonu forumda CR hakkında şikayet oluştururum.', 'O kısıma doğru gitmem, arkadaşıma ic olarak ulaşmaya çalışırım. Pm\'den aldığım bilgi ile direk gidersem Meta Gaming kapsamına girer.', 'Para aktarımı yapmam, yasaklı olduğu için.', 'Öncelikle polisin dediklerini uygularım, ona karşı sakinliğimi korur ve acelem olduğunu hastam olduğu için hızla gitmemi gerektiğini söylerim. ve onu direktiflerini uygularım.', 'Kişiler kalabalık olduğu için fear rp yani korku rolü yapmak zorundayım, eğer silahı alırsam beni delik değişk ederler o yüzden üstünlüğü kabul edip dediklerini uygularım.', '77.111.244.4', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36 OPR/114.0.0.0 (Edition std-2)', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36 OPR/114.0.0.0 (Edition std-2)', 0, 0, 0, -1, -1, 0),
(36, 'Maria_Censonn', '030c8773cffad449e0fd550dc24a54b4', '', 0, 0, '22/12/2024, 19:38', 101, 0, 1045.44, -918.8, -99.8599, 270, 0, 0, 1000, 0, 0, 0, 1, 0, 0, 100, 0, 0, 'Amerikan', 2000, 1, 100, 100, 0, -1, 0, 1, 180, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 679160, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 74895523, 0, 0, -1, 0, 0, 0, 0, -1, 0, 0, 0, 71221, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0|0|0|0|0', '0|0|0|0|0', 0, '0|0|0|0|0', 0, '', 0, '', 0, 0, 0, 0, '030c8773cffad449e0fd550dc24a54b4', 'qewqewqwe@gmail.com', '1', 1, '', '', 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 1, '123', '123132', '312312', '312321', '312', '78.176.184.211', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 0, 0, 0, -1, -1, 0),
(38, 'William_Jackson', 'ed10bbd8d8090c140ce1c3ca4c708dc4', '', 0, 0, '22/12/2024, 16:49', 2, 0, 1844.16, -1871.05, 13.3828, 94.7702, 0, 0, 100, 0, 0, 11, 1, 0, 0, 100, 0, 1, 'İtalya', 22, 1, 100, 100, 0, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 965355, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 13585974, 0, 0, -1, 0, 0, 0, 0, -1, 0, 0, 0, 66033, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0|0|0|0|0', '0|0|0|0|0', 0, '0|0|0|0|0', 0, '', 0, '', 0, 0, 0, 0, 'ed10bbd8d8090c140ce1c3ca4c708dc4', 'adrenalin00666@gmail.com', '1171543713198112843', 1, 'RICHLAND-75BC756234', 'riween__', 0, 1, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 1, 'Video kaydı alırım ticket açarım.', 'Yazdıgı pmi okumam gormezden gelirim cünkü meta oldugun icin hem o hemde ben jail yiyebilirim. Bu durumu yetkılılere bıldırırm.', 'Yetkililere bildiririm.', 'Silahi saklarim polisten kacmaya devam ederim.', 'Silahimi gizlice cikartip ikisinide oldurmeye calisirim.', '159.146.76.137', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 0, 0, 0, -1, -1, 0),
(39, 'Jack_Butcher', '0ab41d1a5aab73f8f2f16b144e894a40', '', 0, 0, '22/12/2024, 20:49', 106, 0, 931.735, -1284.87, 14.7653, 62.8257, 0, 0, 22, 0, 0, 44, 1, 0, 0, 77.781, 0, 1, 'Amerika', 34, 1, 100, 100, 0, -1, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 974788, 20, 1, 184067, 0, 0, 0, 0, 0, 0, 0, 36378735, 0, 0, -1, 0, 0, 0, 0, -1, 0, 0, 0, 64910, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0|0|0|0|0', '0|0|0|0|0', 0, '0|0|0|0|0', 0, '', 0, '', 0, 0, 0, 0, '0ab41d1a5aab73f8f2f16b144e894a40', 'ardagokce9559@gmail.com', '1236400656320036916', 1, 'RICHLAND-1833EF28E7', 'jackbutcher7777', 0, 1, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 1, 'Assaga inerim ve duzgunce kaza rp mi yaparim', 'Yetkililere haber veririm', 'Yetkililere haber veririm ', 'Assagiya inip teslim olurum ', 'İzin veririm yapacak birsey yok', '89.41.172.135', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', 0, 0, 0, -1, -1, 0),
(41, 'Jalal_Kenny', '1f2cd90af2150de6edf00f3d65f5921b', '', 0, 0, NULL, 101, 0, 1496.02, -1693.39, 13.3988, 177.546, 0, 0, 1000, 0, 0, 0, 1, 0, 0, 100, 0, 0, 'Amerikan', 2000, 1, 100, 100, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0|0|0|0|0', '0|0|0|0|0', 0, '0|0|0|0|0', 0, '', 0, '', 0, 0, 0, 0, '1f2cd90af2150de6edf00f3d65f5921b', 'qewqewwqwe@gmail.com', '1', 1, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'rq', 'erqe', 'rqeerqr', 'qreqr', 'qre', '78.176.184.211', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 0, 0, 0, 0, -1, 0),
(42, 'James_Bloos', '8e7078558ca583de743d456fb7935913', '', 0, 0, NULL, 101, 0, 1496.02, -1693.39, 13.3988, 177.546, 0, 0, 1000, 0, 0, 0, 1, 0, 0, 100, 0, 0, 'Amerikan', 2000, 1, 100, 100, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0|0|0|0|0', '0|0|0|0|0', 0, '0|0|0|0|0', 0, '', 0, '', 0, 0, 0, 0, '8e7078558ca583de743d456fb7935913', 'qewqerrwqwe@gmail.com', '1', 1, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '31', '31', '31', '31', '31', '78.176.184.211', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 0, 0, 0, 0, -1, 0),
(43, 'Kenny_Zenso', '91935005452d1ae2676258f2c2683fff', '', 0, 0, NULL, 101, 0, 1496.02, -1693.39, 13.3988, 177.546, 0, 0, 1000, 0, 0, 0, 1, 0, 0, 100, 0, 0, 'Amerikan', 2000, 1, 100, 100, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0|0|0|0|0', '0|0|0|0|0', 0, '0|0|0|0|0', 0, '', 0, '', 0, 0, 0, 0, '91935005452d1ae2676258f2c2683fff', 'qewq333ewqwe@gmail.com', '1', 1, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '111', '1', '11', '1', '1', '78.176.184.211', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 0, 0, 0, 0, -1, 0),
(44, 'Edward_Buncy', '5a24e011fd96d736a3d7f9ce564c6ba4', '', 0, 0, NULL, 101, 0, 1496.02, -1693.39, 13.3988, 177.546, 0, 0, 1000, 0, 0, 0, 1, 0, 0, 100, 0, 0, 'Amerikan', 2000, 1, 100, 100, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0|0|0|0|0', '0|0|0|0|0', 0, '0|0|0|0|0', 0, '', 0, '', 0, 0, 0, 0, '5a24e011fd96d736a3d7f9ce564c6ba4', 'qewqewqeqeqwe@gmail.com', '1', 1, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '31', '31', '13', '3113', '13', '78.176.184.211', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 0, 0, 0, 0, -1, 0);
INSERT INTO `oyuncular` (`ID`, `isim`, `sifre`, `Yasaklama`, `CK`, `hesap`, `oSonGiris`, `Kiyafet`, `GKiyafet`, `x`, `y`, `z`, `a`, `interior`, `vw`, `Para`, `BankaPara`, `BankaSifre`, `Dakika`, `Level`, `Exp`, `OynamaSaati`, `Can`, `Zirh`, `Cinsiyet`, `DogumYeri`, `dogumtarihi`, `yaratildi`, `aclik`, `susuzluk`, `BirlikLider`, `birlik`, `birlikrutbe`, `Yarali`, `YaraliSure`, `TenRengi`, `Silah1`, `Silah2`, `Silah3`, `Silah4`, `Silah5`, `Silah6`, `Silah7`, `Silah8`, `Silah9`, `Silah10`, `Silah11`, `Silah12`, `Silah13`, `Mermi1`, `Mermi2`, `Mermi3`, `Mermi4`, `Mermi5`, `Mermi6`, `Mermi7`, `Mermi8`, `Mermi9`, `Mermi10`, `Mermi11`, `Mermi12`, `Mermi13`, `isbasi`, `Ehliyet`, `Kibrit`, `Cakmak`, `Odun`, `HesapNumarasi`, `Sigara`, `Telefon`, `TelefonNumarasi`, `Gubre`, `Saksi`, `Tohum`, `IslenmemisMadde`, `Uyusturucu`, `UyusturucuOnay`, `Hapis`, `VatandaslikNo`, `Ruhsat`, `ICHapis`, `IDHapis`, `Meslek`, `Birim`, `boombox`, `BoomboxHakki`, `Asansor`, `Uyari`, `Aktif`, `Maske`, `MaskeID`, `IlkYardim`, `TamirKiti`, `GPS`, `VIP`, `VIPSure`, `Maymuncuk`, `Bidon`, `BidonBenzin`, `Hediye`, `UyusturucuBoost`, `Kelepce`, `KamyoncuTeslimat`, `Hitman`, `Materyal`, `DinlenenYayin`, `BaslangicPaketi`, `DovusStil`, `PRadyo`, `Frekans`, `EkstraPayday`, `EkstraDil`, `GaspSure`, `Zar`, `EkEvSlot`, `EkAracSlot`, `HirsizVIP`, `SilahDelay`, `SilahHakki`, `VNPoint`, `NewbieMute`, `AvukatLisans`, `AvukatBekleme`, `AvukatYetenek`, `SucIndirimi`, `BalikYetenek`, `Baliklar`, `Yemler`, `MadenYetenek`, `Madenler`, `SahteLevel`, `SahteIsim`, `YuruyusStil`, `AdminIsim`, `Admin`, `Helper`, `RaporSayisi`, `SoruSayisi`, `UCPSifre`, `Email`, `discord_id`, `DCDurum`, `discord_kod`, `discord_ad`, `discord_exp`, `Hud`, `DurumKontrol`, `Kilo`, `Boy`, `SacRengi`, `GozRengi`, `SecilenDurak`, `OtobusKart`, `OtobusKartBakiye`, `BlockedAcc`, `Status`, `Mute`, `Durum`, `soru1`, `soru2`, `soru3`, `soru4`, `soru5`, `ip_adresi`, `cihaz_bilgisi`, `tarayici_bilgisi`, `TasinanKutu`, `TirLevel`, `TirSefer`, `YukTasiyor`, `SecilenFirma`, `SampMedia`) VALUES
(45, 'Darrel_Fowler', '884e4fba0851b5c438f7cc5c7b21f31e', '', 0, 0, NULL, 101, 0, 1496.02, -1693.39, 13.3988, 177.546, 0, 0, 1000, 0, 0, 0, 1, 0, 0, 100, 0, 0, 'Amerikan', 2000, 1, 100, 100, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0|0|0|0|0', '0|0|0|0|0', 0, '0|0|0|0|0', 0, '', 0, '', 0, 0, 0, 0, '884e4fba0851b5c438f7cc5c7b21f31e', 'qewqewqwe@gmail.com', '1', 1, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '31', '31', '31', '13', '31', '78.176.184.211', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 0, 0, 0, 0, -1, 0),
(46, 'Cenny_Bennet', '20497f2f9305441a9bee376d4ec60ea4', '', 0, 0, NULL, 101, 0, 1496.02, -1693.39, 13.3988, 177.546, 0, 0, 1000, 0, 0, 0, 1, 0, 0, 100, 0, 0, 'Amerikan', 2000, 1, 100, 100, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0|0|0|0|0', '0|0|0|0|0', 0, '0|0|0|0|0', 0, '', 0, '', 0, 0, 0, 0, '20497f2f9305441a9bee376d4ec60ea4', 'qewqeeeeeqwe@gmail.com', '1', 1, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '11', '11', '1', '1', '1', '78.176.184.211', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 0, 0, 0, 0, -1, 0),
(47, 'Genson_Barry', '48d9f41ae25207bb18406066ce24a7c4', '', 0, 0, NULL, 101, 0, 1496.02, -1693.39, 13.3988, 177.546, 0, 0, 1000, 0, 0, 0, 1, 0, 0, 100, 0, 0, 'Amerikan', 2000, 1, 100, 100, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0|0|0|0|0', '0|0|0|0|0', 0, '0|0|0|0|0', 0, '', 0, '', 0, 0, 0, 0, '48d9f41ae25207bb18406066ce24a7c4', 'qewqe333wqwe@gmail.com', '1', 1, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '31131313', '1313', '3131', '313', '311', '78.176.184.211', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 0, 0, 0, 0, -1, 0),
(48, 'Andrev_Danny', 'f22318516bf7973ea3bdc30d87c0e60f', '', 0, 0, NULL, 101, 0, 1496.02, -1693.39, 13.3988, 177.546, 0, 0, 1000, 0, 0, 0, 1, 0, 0, 100, 0, 0, 'Amerikan', 2000, 1, 100, 100, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0|0|0|0|0', '0|0|0|0|0', 0, '0|0|0|0|0', 0, '', 0, '', 0, 0, 0, 0, 'f22318516bf7973ea3bdc30d87c0e60f', '31321132@gmail.com', '1', 1, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '31', '31', '3', '31', '31', '78.176.184.211', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 0, 0, 0, 0, -1, 0),
(49, 'Sean_Blodi', '4841a7d5cc2730c71a9ee291de06688f', '', 0, 0, '22/12/2024, 16:34', 101, 0, 890.62, -1774.93, 13.3828, 256.572, 0, 0, 1000, 0, 0, 19, 1, 0, 0, 100, 0, 1, 'Amerika', 23, 1, 100, 100, 0, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 812584, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 76476970, 0, 0, -1, 0, 0, 0, 0, -1, 0, 0, 0, 53597, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, '54|0|0|0|0', '0|13|0|0|0', 0, '0|0|0|0|0', 0, '', 0, '', 0, 0, 0, 0, '4841a7d5cc2730c71a9ee291de06688f', 'ayz1907xkjjd@gmail.com', '1320011292794421363', 1, 'RICHLAND-490D95AF51', 'rodiile97', 0, 1, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 1, 'Uzlaşma olmaz ise polise başvururum', 'Polise bölgeyi söyleyip polisler bölgenşn sokaklarını gezerken bende ararım', 'Ic yi Ooc ye katmayıp hayır derim Ooc market var. ', 'Arkadaşlarımın yanına sürüp tezgaha getiririm', 'Arkanızdan biri geçti diyip odaklanmalarını bozarım ve silah çekerim', '193.108.118.89', 'Mozilla/5.0 (Linux; Android 13; en; TECNO KJ5n Build/SP1A.210812.016) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.129 HiBrowser/v2.24.1.3 UWS/ Mobile Safari/537.36', 'Mozilla/5.0 (Linux; Android 13; en; TECNO KJ5n Build/SP1A.210812.016) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.129 HiBrowser/v2.24.1.3 UWS/ Mobile Safari/537.36', 0, 0, 0, -1, -1, 0),
(51, 'Ricardo_Javier', 'c5b09a576d26f350139ef2b34d2fa654', '', 0, 0, NULL, 101, 0, 1496.02, -1693.39, 13.3988, 177.546, 0, 0, 1000, 0, 0, 0, 1, 0, 0, 100, 0, 1, 'Meksika', 39, 1, 100, 100, 0, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0|0|0|0|0', '0|0|0|0|0', 0, '0|0|0|0|0', 0, '', 0, '', 0, 0, 0, 0, 'c5b09a576d26f350139ef2b34d2fa654', 'myth38784@gmail.com', '', 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'Gerekli kanıtları alır ve ticket açıp şikayetde bulunurum', 'Ooc bilgileri yok sayarım ve arkadaşımı uyarırım', 'Red ederim ve şikayette bulunurum.', 'Silah olduğuna göre illegal bir birlikde olduğumu sayıyorum. Kaça bildiğim kadar kaçarım tenha bir yere gelince polis ile çatısmaya girerim', 'Eğer oyuncularla aramda mesafe varsa emote verip catismaya girerim eğer yakinimdalarsa ise arabayi kitleyip polisi ararim.', '66.225.209.142', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Mobile Safari/537.36 OPR/86.0.0.0', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Mobile Safari/537.36 OPR/86.0.0.0', 0, 0, 0, 0, -1, 0),
(53, 'Leonardo_Inzaghi', 'f74dcad72104a43afbc341517e551aa6', '', 0, 0, NULL, 101, 0, 1496.02, -1693.39, 13.3988, 177.546, 0, 0, 1000, 0, 0, 0, 1, 0, 0, 100, 0, 1, 'İtalya', 19, 1, 100, 100, 0, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0|0|0|0|0', '0|0|0|0|0', 0, '0|0|0|0|0', 0, '', 0, '', 0, 0, 0, 0, 'f74dcad72104a43afbc341517e551aa6', 'sertugurpg@outlook.com', '', 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'İlk önce kaza rolümü yapar, ardından kanıtlarımla jail açarım', 'Ona eğer dm atıldıysa kanıtıyla ticket açmasını söylerim, eğer atılmadıysa ic olarak ulaşması gerektiğini söylerim', 'Vermem.', 'Polisden kaçarım, kurtulduktan sonra siahımı saklarım ve birkaç gün illegal role girmem', 'Onlara uzaklaşmaları gerektiğini söylerim uzaklaşmazlar ise emote verip silahımı alır, ateş açar ve bölgeden hızla uzaklaşırım', '198.244.143.252', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 0, 0, 0, 0, -1, 0),
(54, 'Waldo_Remove', '91cb3f259a8d35131f1b3beb82e02676', '', 0, 0, NULL, 101, 0, 1496.02, -1693.39, 13.3988, 177.546, 0, 0, 1000, 0, 0, 0, 1, 0, 0, 100, 0, 1, 'İtalya', 40, 1, 100, 100, 0, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0|0|0|0|0', '0|0|0|0|0', 0, '0|0|0|0|0', 0, '', 0, '', 0, 0, 0, 0, '91cb3f259a8d35131f1b3beb82e02676', 'mamibeys1907@gmail.com', '', 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'rolümü yapmaya devam ederim kaza rolü yaparım eğer kişi non RP yapmaya devam ederse kanıtlarımı alırım rol bitince ticket acar şikayette bulunurum', 'pmi görmezden gelirim arkadaşım rol içinde bana ulaşmadığı sürece hiç birşey yapmam ', 'satışı onaylamam kesinlikle yasak', 'kaçış yolu bulmaya çalışırım eğer yol olmaz ise araçtan iner koşarak kaçarım zorlamaya devam ederler ise silahım ile savunma ateşi açarım ve kaçarım ', 'benden kalabalık oldukları için fear RP yaparım dikkatlari bozulduğu sırada kendimi güvenceye alır silahım ile kendimi savunurum', '51.195.91.210', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', 0, 0, 0, 0, -1, 0),
(56, 'Elliot_Graves', 'd77b3c181e852adf9d95b50b85d7401d', '', 0, 0, NULL, 101, 0, 1496.02, -1693.39, 13.3988, 177.546, 0, 0, 1000, 0, 0, 0, 1, 0, 0, 100, 0, 1, 'Amerika', 32, 1, 100, 100, 0, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0|0|0|0|0', '0|0|0|0|0', 0, '0|0|0|0|0', 0, '', 0, '', 0, 0, 0, 0, 'd77b3c181e852adf9d95b50b85d7401d', 'vpng365@gmail.com', '', 0, 'RICHLAND-03A8DAE7AC', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'PD sahibiyim, onaylar mısınız', 'PD sahibiyim, onaylar mısınız', 'PD sahibiyim, onaylar mısınız', 'PD sahibiyim, onaylar mısınız', 'PD sahibiyim, onaylar mısınız', '212.47.130.30', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36 OPR/114.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36 OPR/114.0.0.0', 0, 0, 0, 0, -1, 0),
(57, 'Emmanuel_Lopez', 'e4541ed56cf3de37439937a54e5d6f38', '', 0, 0, '22/12/2024, 20:00', 101, 0, 0, 0, 0, 0, 0, 0, 500, 0, 0, 4, 1, 0, 0, 100, 0, 1, 'İtalya', 26, 1, 100, 100, 0, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 215188, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 49513722, 0, 0, -1, 0, 0, 0, 0, -1, 0, 0, 0, 27266, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0|0|0|0|0', '0|0|0|0|0', 0, '0|0|0|0|0', 0, '', 0, '', 0, 0, 0, 0, 'e4541ed56cf3de37439937a54e5d6f38', 'feovac123@gmail.com', '614474671970189337', 1, 'RICHLAND-C3A9ACAFF2', 'feovac', 0, 1, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 1, 'Kanıt alır ticket açarım yada aktif admin varsa speclemesi için rica ederim.', 'Umursamam, mixing yapmam.', 'Ooc ticaret yapmam, reddederim.', 'sağımda solumda yol varsa oradan giderim ya da aracım sağlam ise polis arabasına çarpmayı denerim. En kötü ihtimalle de arabayı durdurur teslim olurum.', 'silahlı adamların dediklerini yaparım boş bir anda tüfeği çıkarır vururum.', '217.131.124.155', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36 OPR/114.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36 OPR/114.0.0.0', 0, 0, 0, -1, -1, 0),
(59, 'Anatsia_Valery', '8356345381704f57828b0bce054dec13', '', 0, 0, '22/12/2024, 19:48', 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 1, 0, 0, 100, 0, 2, 'Amerika', 21, 1, 100, 100, 0, -1, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 828570, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 52340543, 0, 0, -1, 0, 0, 0, 0, -1, 0, 0, 0, 81315, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0|0|0|0|0', '0|0|0|0|0', 0, '0|0|0|0|0', 0, '', 0, '', 0, 0, 0, 0, '8356345381704f57828b0bce054dec13', 'clsroyale0202@gmail.com', '1250226546942410802', 1, 'RICHLAND-D555938AA4', 'vegaxswt', 0, 1, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 1, 'SS alır ticket açarım ', 'mixing olduğu icin gitmem', 'Hayir cunku emek sarf ettim ', 'Ates acarim', 'silahima davranirim ve kendimi savunurum', '141.95.67.149', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', 0, 0, 0, -1, -1, 0),
(60, 'Juliet_Diamond', 'e10adc3949ba59abbe56e057f20f883e', '', 0, 0, '22/12/2024, 16:52', 101, 0, -124.673, -22.0279, 1005.84, 43.2381, 0, 30004, 450, 0, 0, 15, 1, 0, 0, 98.68, 0, 1, 'Rusya', 25, 1, 100, 100, 0, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 381338, 0, 1, 811642, 0, 0, 0, 0, 0, 0, 0, 97667374, 0, 0, -1, 0, 0, 0, 0, -1, 0, 0, 0, 80697, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0|0|0|0|0', '0|0|0|0|0', 0, '0|0|0|0|0', 0, '', 0, '', 0, 0, 0, 0, 'e10adc3949ba59abbe56e057f20f883e', 'alperentaha321@gmail.com', '1274996906090823682', 1, 'RICHLAND-8515F797DD', '.calvinbaba400ton.', 0, 1, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 1, 'Kaza rolü.', 'Ona ic den beni bilgilendirmesini söylerim.', 'Kabul etmem.', 'Önce durdurum sonra araçtan inerim ve silahı kendimden uzaklaştirip teslim olurum.', 'Onlara gitmesini söylerim gitmezlerse elimde ki tüfeği sag elime alirim onları oyalarim polisi ararim.', '81.8.44.174', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.6312.118 Mobile Safari/537.36 XiaoMi/MiuiBrowser/14.25.0-gn', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.6312.118 Mobile Safari/537.36 XiaoMi/MiuiBrowser/14.25.0-gn', 0, 0, 0, -1, -1, 0),
(61, 'Fyodor_Brown', 'e2dc1a00133228e7c05ea987c548dd2f', '', 0, 0, '22/12/2024, 20:56', 101, 0, 1038.72, -1566.81, 13.38, 232.829, 0, 0, 400, 0, 0, 42, 1, 0, 0, 95.05, 0, 1, 'Amerika', 19, 1, 100, 100, 0, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 575124, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 39896711, 0, 0, -1, 0, 0, 0, 0, -1, 0, 0, 0, 95405, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0|0|0|0|0', '0|0|0|0|0', 0, '0|0|0|0|0', 0, '', 0, '', 0, 0, 0, 0, 'c3747099d7612dbb93f2d9b8fe80ba7c', 'revanorucov2344@gmail.com', '1041381237941604492', 1, 'RICHLAND-EA0FA0B405', 'ates.777.', 0, 1, 0, 0, 0, 0, 0, -1, 1, 0, 0, 0, 0, 1, 'Yetkiliye bildiriim ve ya durup. O gittikden sonra sürüşe devam ederim', 'Haritadan bulurum.', 'Satmam. Oyun içi para alım / satımı mantıksız satmam ', '1. Polis beni yakalarsa ve bana zorbalık yapmaya çalışırsa silahla yaralarım 2. Bana sıkmaya başlarsa bende sıkarım', 'Aşağıda bir şey yok ama. Arabamı falan almaya çalışırlarsa o silahı alıp öldürürüm', '37.61.113.80', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 0, 0, 0, -1, -1, 0),
(63, 'Clayton_Fletcher', '52dea514013672ce6eb60f695de11c4a', '', 0, 0, '22/12/2024, 16:47', 101, 0, 0, 0, 0, 0, 0, 0, 500, 0, 0, 4, 1, 0, 0, 100, 0, 1, 'Amerika', 42, 1, 100, 100, 0, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 465083, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 48718383, 0, 0, -1, 0, 0, 0, 0, -1, 0, 0, 0, 76054, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0|0|0|0|0', '0|0|0|0|0', 0, '0|0|0|0|0', 0, '', 0, '', 0, 0, 0, 0, '52dea514013672ce6eb60f695de11c4a', 'kadiryusufkose7@gmail.com', '747578180176445550', 1, 'RICHLAND-F58A2F98D2', 'fergus.lord', 0, 1, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 1, 'Yaralı rolü yaparım, bir yerim kırılabilir ya da arabanın geliş hızına göre ölebilirimde.', 'Bu, Meta Gaming olur. Bu durumda ona doğruları anlatırım. İc olarak iletişime geçmesini söylerim.', 'Sunucudaki roleplay kurallarına göre oyun içi parayı gerçek para karşılığında satmak yasak. Bu yüzden teklifini kabul edemem.', 'Bu durumda ilk önce panik yaparım ve derin nefes alarak kendime gelmeye çalışırım ve arabamın gaz pedalına basarak uçarım.', 'Fear Roleplay yaparım. Karakterim birisini vurursa diğeride karakterimi vuracağı için korku rolü yaparım.', '78.190.198.83', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', 0, 0, 0, -1, -1, 0),
(64, 'Edwin_Elliott', '495391da7ac339e1732deacc754d3722', '', 0, 0, NULL, 101, 0, 1496.02, -1693.39, 13.3988, 177.546, 0, 0, 1000, 0, 0, 0, 1, 0, 0, 100, 0, 1, 'Amerika', 28, 1, 100, 100, 0, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0|0|0|0|0', '0|0|0|0|0', 0, '0|0|0|0|0', 0, '', 0, '', 0, 0, 0, 0, '495391da7ac339e1732deacc754d3722', 'gorevina569@gmail.com', '778971587361374208', 1, 'RICHLAND-DA99B0158C', 'leadergangsta', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'Yaralı rolümü yapmaya devam ederim, rolün bitişinde kişiye şikayet açarım', 'Görmemezlikten gelirim, PM ooc bir kanal. Role dahil edilemez.', 'IC OOC Ticaret yasaktır, herkes parasını kendi emeğiyle kazanması gerekiyor. Teklifi red ederdim. Oyun içerisinde borç veya başka bir şekilde isterse o şekilde veririm. Sonuçta arkadaşım.', 'Eğer polislerin sayısı fazla değilse silahımı kullanarak onları yaralayıp kaçmayı denerim, polislerin sayısı fazlaysa başka yol bulmayı denerim ve kaçarım.', 'Silahıma uzanıp alana kadar karşıdakiler beni kevgire çevirir, onlar ne derse yapmak zorundayım.', '212.253.195.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 0, 0, 0, 0, -1, 0),
(65, 'Rewax_Johnson', 'fc15a2f6c5e281221c0b6fc68d5e6646', '', 0, 0, '22/12/2024, 20:54', 101, 0, 352.401, -2051.07, 7.8366, 316.127, 0, 0, 500, 0, 0, 5, 1, 0, 0, 100, 0, 1, 'İtalya', 24, 1, 100, 100, 0, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 488926, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16634223, 0, 0, -1, 0, 0, 0, 0, -1, 0, 0, 0, 66850, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0|0|0|0|0', '0|0|0|0|0', 0, '0|0|0|0|0', 0, '', 0, '', 0, 0, 0, 0, 'fc15a2f6c5e281221c0b6fc68d5e6646', 'salihnoob97@gmail.com', '630453530750353409', 1, 'RICHLAND-2ED6630614', 'salihh.0', 0, 1, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 1, 'Genellikle kayıtta oynarım o yüzden aldığım kayıdı vdm sebebiyle tickete sunarım.', 'Meta oldugu için gitmem gebeer or..... Derim', 'Satışı yapmam richland ooc marketten alis yap derim obezimle hasanim dolandırsin', 'Pd den ihlal yapmadan kurtulmaya çalışırım ve kurtulurum silahı guvenli biryere bırakınca istasyona gidip teslim olurum ', 'Eğer silahı hazir hale getirmissem (/az) bianda sıkmaya başladım ancak hazır halde değilse fear RP yapar gecerim', '178.162.227.145', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', 0, 0, 0, -1, -1, 0),
(66, 'Jack_Daniels', '397d662d1bddb564fd7df0744450012c', '', 0, 0, NULL, 101, 0, 1496.02, -1693.39, 13.3988, 177.546, 0, 0, 1000, 0, 0, 0, 1, 0, 0, 100, 0, 1, 'Almanya', 18, 1, 100, 100, 0, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0|0|0|0|0', '0|0|0|0|0', 0, '0|0|0|0|0', 0, '', 0, '', 0, 0, 0, 0, '397d662d1bddb564fd7df0744450012c', 'berkektutuncu@gmail.com', '', 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'Yarali rolu', 'Gitmem bayginsa yazamaz', 'Vermem', 'Dursun ustumde', 'Silaha davranmamak', '46.1.181.25', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', 0, 0, 0, 0, -1, 0),
(67, 'Coni_Oliwer', '4b3e2bcdbb9de9a191193c8ec3a1def9', '', 0, 0, '22/12/2024, 19:37', 184, 0, 378.363, -1828.73, 8.1203, 170.244, 0, 0, 300, 0, 0, 12, 1, 0, 0, 95.05, 0, 1, 'Meksika', 21, 1, 100, 100, 0, -1, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 595261, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 94011996, 0, 0, -1, 0, 0, 0, 0, -1, 0, 0, 0, 89805, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0|0|0|0|0', '0|0|0|0|0', 0, '0|0|0|0|0', 0, '', 0, '', 0, 0, 0, 0, '4b3e2bcdbb9de9a191193c8ec3a1def9', 'hisigo46@gmail.com', '1092040140878258297', 1, 'RICHLAND-82568B50F9', 'alkaponaaaa', 0, 1, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 1, 'İd sini alıp herhangi bir yetkiliye söylerim ', 'Bunun yasak olduğunu ve gelemiyecegimi soylerim', 'Paraları veremiyecegimi ama bı raz cık verebilecegimi söylerim (hediye)', 'Polis ile sohbet ederim şüphe cekmezsem poliste almaz ', 'Arabadan inmadiysem dip gaz ', '217.138.194.30', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', 0, 0, 0, -1, -1, 0),
(68, 'Tyler_Florencia', 'e6ff310b26baadb789f2a42aaf183eb7', '', 0, 0, '22/12/2024, 20:23', 101, 0, 0, 0, 0, 0, 0, 0, 1000, 0, 0, 1, 1, 0, 0, 100, 0, 1, 'Amerika', 24, 1, 100, 100, 0, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 672955, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 17162621, 0, 0, -1, 0, 0, 0, 0, -1, 0, 0, 0, 91653, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0|0|0|0|0', '0|0|0|0|0', 0, '0|0|0|0|0', 0, '', 0, '', 0, 0, 0, 0, 'e6ff310b26baadb789f2a42aaf183eb7', 'mrac5534@gmail.com', '991280026249068578', 1, 'RICHLAND-3436A1D159', 'daltonxx.', 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 1, 'Uyaririm eğer hayla devam ederse destek basvurusu açarim. ', 'Silahimi alir giderim sonucta herkez güvenilir degil. ', 'Hayir. ', 'Silahi başka aracim varsa onun bagajina koyarim eğer yoksa bir yere atip teslim olduktan sonra gider alirim. ', 'Tüfeği elime alirim eğer ateş açarlarsa bende acarim. ', '135.125.132.226', 'Mozilla/5.0 (Linux; Android 10; AGR-W09; HMSCore 6.14.0.321) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.5735.196 HuaweiBrowser/15.0.4.312 Mobile Safari/537.36', 'Mozilla/5.0 (Linux; Android 10; AGR-W09; HMSCore 6.14.0.321) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.5735.196 HuaweiBrowser/15.0.4.312 Mobile Safari/537.36', 0, 0, 0, -1, -1, 0),
(69, 'Lucas_Crimson', '878316a6ff992c9e4c94254663ddac85', 'orrrospu evladı', 0, 0, '22/12/2024, 16:48', 101, 0, 0, 0, 0, 0, 0, 0, 1000, 0, 0, 1, 1, 0, 0, 100, 0, 1, 'Amerika', 29, 1, 100, 100, 0, -1, 0, 1, 88, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 600159, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12987653, 0, 0, -1, 0, 0, 0, 0, -1, 0, 0, 0, 25531, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0|0|0|0|0', '0|0|0|0|0', 0, '0|0|0|0|0', 0, '', 0, '', 0, 0, 0, 0, '7c183807c5c93801eac6594d727e7744', 'yusuftuygun63@gmail.com', '858417721822019606', 1, 'RICHLAND-679404D562', 'kortexbeyy', 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 1, 'Anorsy inziyle geldim, SLOyum', 'Anorsy inziyle geldim, SLOyum', 'Anorsy inziyle geldim, SLOyum', 'Anorsy inziyle geldim, SLOyum', 'Anorsy inziyle geldim, SLOyum', '212.47.138.138', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36 OPR/114.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36 OPR/114.0.0.0', 0, 0, 0, -1, -1, 0),
(71, 'Connor_Drake', 'caba71661df3ea9e552e7c2bba1e0dbc', '', 0, 0, '22/12/2024, 19:35', 101, 0, 1506.24, -1718.45, 13.0717, 179.254, 0, 0, 1000, 0, 0, 1, 1, 0, 0, 100, 0, 1, 'Amerika', 30, 1, 100, 100, 0, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 871370, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 55300396, 0, 0, -1, 0, 0, 0, 0, -1, 0, 0, 0, 99705, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0|0|0|0|0', '0|0|0|0|0', 0, '0|0|0|0|0', 0, '', 0, '', 0, 0, 0, 0, 'caba71661df3ea9e552e7c2bba1e0dbc', 'baldizhoplatanalttantire89@gmail.com', '1240755849777905724', 1, 'RICHLAND-171F37D2EA', 'starkw0', 0, 1, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 1, 'Önce yaralı rolümü yaparım sonra rol bittiğinde oyundan çıkıp ticket açarım', 'Pm ooc bir iletişim yolu olduğu için arkadaşımın yanına gitmem', 'Reddederim çünkü ic para ile ooc para takas edilmesi yasak', 'Polisten kaçmaya çalışırım', 'Sayıca benden üstün oldukları için fear rp yaparım', '104.28.212.150', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', 0, 0, 0, -1, -1, 0),
(72, 'Pablo_Dean', 'a4b1e5982418ef7e4ec8005794bc2b41', '', 0, 0, '22/12/2024, 20:10', 188, 0, 0, 0, 0, 0, 0, 0, 250, 0, 0, 23, 1, 0, 0, 100, 0, 1, 'İngiltere', 27, 1, 100, 100, 0, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 653087, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 85237569, 0, 0, -1, 0, 0, 0, 0, -1, 0, 0, 0, 43529, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, '26|0|0|75|0', '0|0|0|0|8', 0, '0|0|0|0|0', 0, '', 0, '', 0, 0, 0, 0, 'c8837b23ff8aaa8a2dde915473ce0991', 'sefagg7@gmail.com', '733033570750431254', 1, 'RICHLAND-39146E2757', 'sefgek', 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 1, 'Ss alırım, yaralı rolu yaparim ve rol sonrasi ticket acarim', 'bincodaki rolume devam ederim ve soyledigi yere gitmem', 'reddederim ve oocmarketten almasini soylerim', 'Mumkun oldugunca kacarim kaza vb. Yaparsam rol devam etsin diye birkac el yere ates ederim o da silah cekince catismaya baslarim.', 'Silaha yeltenmem ve fear rp yaparim arkalarini donduklerinde falan gazlarim ve kacmaya calisirim.', '149.202.181.214', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 0, 0, 0, -1, -1, 0),
(73, 'Carter_Bennett', '78bdec953dad44cb1f3495345ee30c39', '', 0, 0, '22/12/2024, 20:29', 122, 0, 1597.8, -1735.7, 13.2133, 163.316, 0, 0, 72, 0, 0, 21, 1, 0, 0, 100, 0, 1, 'Amerika', 27, 1, 100, 100, 0, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 874495, 20, 1, 422947, 0, 0, 0, 0, 0, 0, 0, 72814300, 0, 0, -1, 0, 0, 0, 0, -1, 0, 0, 1, 41980, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0|0|0|0|0', '0|0|0|0|0', 0, '0|0|0|0|0', 0, '', 0, '', 0, 0, 0, 0, '9be893b2553fee737ed5e762cb1b3486', 'ugurs3023@gmail.com', '1304504106542567505', 1, 'RICHLAND-8F59F22519', 'rcwaara', 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 1, 'Vdm attığından bilet acarim', 'Gitmem meta olur jail yerim', 'Hayir ', 'Çok zor durumda kalırsam sıkarım ', '. ', '77.243.183.90', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/27.0 Chrome/125.0.0.0 Mobile Safari/537.36', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/27.0 Chrome/125.0.0.0 Mobile Safari/537.36', 0, 0, 0, -1, -1, 0),
(74, 'Edwin_Gonzalez', '2209c8cf1932ef3634053ffb5dee1571', '', 0, 0, '22/12/2024, 20:38', 101, 0, 1392.82, -1582.69, 13.2494, 110.171, 0, 0, 100, 0, 0, 34, 1, 0, 0, 82.8399, 0, 1, 'İngiltere', 24, 1, 100, 100, 0, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 224148, 0, 1, 270269, 0, 0, 0, 0, 0, 0, 0, 41156197, 0, 0, -1, 0, 0, 0, 0, -1, 0, 0, 1, 98718, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, '0|0|0|0|0', '0|0|0|0|0', 0, '0|0|0|0|0', 0, '', 0, '', 0, 0, 0, 0, '2209c8cf1932ef3634053ffb5dee1571', 'ugur51344@gmail.com', '1232208117849395271', 1, 'RICHLAND-34ADBA02EF', 'framemm0102', 0, 1, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 1, 'Ticket acarim car jack sebep', 'Meta gaming uyaririm arkadasi', 'ticket', 'Saga sola kirarim uzaklasip hemen silahi bagaja koyup kacmaya devam ederim', 'Tufegi alma emotesi atarim sonra ise /sz sonrada sikarim', '89.147.198.96', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', 0, 0, 0, -1, -1, 0),
(76, 'Mia_Whatson', '740a04a5bb6c22c61d39487f4a37fac4', '', 0, 0, '22/12/2024, 20:48', 211, 0, 1504.42, -1685.29, -19.2077, 327.595, 0, 0, 1000, 0, 0, 0, 1, 0, 0, 95.05, 0, 2, 'Rusya', 21, 1, 100, 100, 0, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 385572, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 47939824, 0, 0, -1, 0, 0, 0, 0, -1, 0, 0, 0, 72143, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0|0|0|0|0', '0|0|0|0|0', 0, '0|0|0|0|0', 0, '', 0, '', 0, 0, 0, 0, '740a04a5bb6c22c61d39487f4a37fac4', 'ahmetlugey@gmail.com', '1306302774270496861', 1, 'RICHLAND-55FA3428D9', 'ahmed_0102', 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 1, 'Kaza rolü yaparım karşıdaki kişi uymazsa kanıtlarla ticket açarım.', 'Onu uyarırım ve ticket açarım, düzenli bir rol herşeydir.', 'Ooc ic ticaretten ticket açarım.', 'Polis ateş etmeye çalışırsa ateş ederim veya kaçmaya devam ederim. ', 'Korku rolü yaparım. ', '85.101.131.227', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', 0, 0, 0, -1, -1, 0),
(77, 'Matieo_McBellini', '6c4c3b1195a0024ec2be58681c5bf1fc', '', 0, 0, NULL, 101, 0, 1496.02, -1693.39, 13.3988, 177.546, 0, 0, 1000, 0, 0, 0, 1, 0, 0, 100, 0, 1, 'İtalya', 45, 1, 100, 100, 0, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0|0|0|0|0', '0|0|0|0|0', 0, '0|0|0|0|0', 0, '', 0, '', 0, 0, 0, 0, '6c4c3b1195a0024ec2be58681c5bf1fc', 'firariferidun@gmail.com', '', 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'O an role uyarım, rol sonu şikayet açarım.', 'Görmezden gelirim o arkadaşımı, öyle biriyle rol de yapmam zaten.', 'Reddederim, öyle ekstra bir şey olmaz.', 'Üzerimde silah varsa kaçabildiğim kadar kaçmaya çalışırım, eğer etrafım sarıldıysa da korku rolümü yaparım.', '2 kişiler ve silahları bana dönü', '85.104.129.245', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 0, 0, 0, 0, -1, 0),
(78, 'Isaac_Sandell', 'bd3907b3d97965be20cea39847bdc289', '', 0, 0, '22/12/2024, 20:15', 184, 0, 0, 0, 0, 0, 0, 0, 500, 0, 0, 16, 1, 0, 0, 100, 0, 1, 'Meksika', 26, 1, 100, 100, 0, -1, 0, 1, 7, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 750976, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12446067, 0, 0, -1, 0, 0, 0, 0, -1, 0, 0, 0, 84997, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0|0|0|0|0', '0|0|0|0|0', 0, '0|0|0|0|0', 0, '', 0, '', 0, 0, 0, 0, 'bd3907b3d97965be20cea39847bdc289', 'ruzgrabest@gmail.com', '1251203362121060433', 1, 'RICHLAND-3079CE8074', 'zamazingo911', 0, 1, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 1, 'Yapmamasını PM\'den bildiririm, devam ederse şikayet açarım.', 'Gitmem.', 'Satmam, az söylemiş fiyatı.', 'Kaçmaya devam ederim, baktım aracım bozulacak bir kaçını atlatmaya çalışırım. Azaldıklarında ateş ederim.', 'Fear-RP yapmak en doğru tepki olacak. Kişiler ile daha sonra da hesaplaşabilirim. İki silah bana doğrultulurken AK çekip insan vuramam.', '88.228.71.241', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 0, 0, 0, -1, -1, 0),
(80, 'Toretto_Wilson', '0f9b854693ac7b2fdd0fd1e727339c8b', '', 0, 0, NULL, 101, 0, 1496.02, -1693.39, 13.3988, 177.546, 0, 0, 1000, 0, 0, 0, 1, 0, 0, 100, 0, 1, 'İtalya', 24, 1, 100, 100, 0, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0|0|0|0|0', '0|0|0|0|0', 0, '0|0|0|0|0', 0, '', 0, '', 0, 0, 0, 0, '0f9b854693ac7b2fdd0fd1e727339c8b', 'kakakakajwkjakavqriqn@gmail.com', '', 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'Kayit acar vdm den İşlem uygulatiri ', 'Metadan uyaririm', 'Vermem', 'Aractan iner Gizlicene Silahimi bagaja koymaya calisip teslim olurum', 'Fear rp yapmaliyim onlar 2 kisi ben tek hic bisi yapmam', '149.88.103.34', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', 0, 0, 0, 0, -1, 0),
(79, 'Jacob_Rodrigues', '9e1a3a8c57684e8bceac8c51d249d9d7', '', 0, 0, NULL, 184, 0, 1496.02, -1693.39, 13.3988, 177.546, 0, 0, 1000, 0, 0, 0, 1, 0, 0, 100, 0, 1, 'Amerika', 22, 1, 100, 100, 0, -1, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0|0|0|0|0', '0|0|0|0|0', 0, '0|0|0|0|0', 0, '', 0, '', 0, 0, 0, 0, 'd76ac103c95d210f670b74df48ed1293', 'rvnsq1@gmail.com', '', 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'Video kaydına alırım vdm attığı için discorddan ticket açarım', 'Meta olacağı için dediğini yapmam ', 'Eğer ooc ticaret yasaksa kabul etmem', ' Kaçabildigim yere kadar Kaçmaya devam ederim yakalanırsamda fear rp yaparım', 'Fear rp yaparım', '46.1.110.207', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 0, 0, 0, 0, -1, 0),
(81, 'Keywon_Brixton', '9bf946b72ece906fe2f35e72e93c76bc', '', 0, 0, NULL, 184, 0, 1496.02, -1693.39, 13.3988, 177.546, 0, 0, 1000, 0, 0, 0, 1, 0, 0, 100, 0, 1, 'Amerika', 19, 1, 100, 100, 0, -1, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0|0|0|0|0', '0|0|0|0|0', 0, '0|0|0|0|0', 0, '', 0, '', 0, 0, 0, 0, '9bf946b72ece906fe2f35e72e93c76bc', 'anneyalayan@gmail.com', '1126614125531889789', 1, 'RICHLAND-B393CC3574', 'guccinutty', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'Rolün kanıtını alırım, forumdan şikayet açarım', 'gitmem, bu durumun yanlış olduğunu ona bildiririm', 'Ooc Ticaret yasak olduğundan kabul etmem, şikayet ederim', 'Ondan kaçmaya çalışırım, eğerki pit durumuna gelirse, inip onu bayıltmayı denerim.', 'Fear rp yapmam gerektiği için soygunu yaptırtmam gerekir, karakterimi gasp ettiririm.', '88.233.210.215', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 0, 0, 0, 0, -1, 0),
(90, 'Federico_Casspara', 'c1917a1e2a0bcc66a382345813e4258c', '', 0, 0, '22/12/2024, 21:32', 101, 0, 2455.52, -2114.53, 13.8098, 359.789, 0, 0, 22, 0, 0, 11, 1, 0, 0, 95.05, 0, 1, 'İtalya', 25, 1, 100, 100, 0, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 504173, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 53631102, 0, 0, -1, 10, 0, 0, 0, -1, 0, 0, 1, 40842, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0|0|0|0|0', '0|0|0|0|0', 0, '0|0|0|0|0', 0, '', 0, '', 0, 0, 0, 0, 'c1917a1e2a0bcc66a382345813e4258c', 'emreturay7@gmail.com', '477096782032273408', 1, 'RICHLAND-5815D7584D', 'emrpeek', 0, 1, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 1, 'Öncelikle role uyarım daha sonra CAR DM ihlalini yaptığı için şikayet açarım', 'Pm biraz ooc ye kaçtığı için cevap vermem ooc olarak telefondan ulaşmaya çalışırım', 'Red ederim hesap satışı yasak ', 'Öncelikle herkesin yapacağı gibi kaçmaya çalışırım, pd tarafından pit darbesi yer isem role uyar teslim olurum', 'Fear RP yapacağım mecburen', '79.127.233.137', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_1_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 Version/18.1.1 Safari/605.1.15 AlohaBrowser/6.4.0', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_1_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 Version/18.1.1 Safari/605.1.15 AlohaBrowser/6.4.0', 0, 0, 0, -1, 0, 0),
(82, 'Adriano_Williams', '77c8a4c219fc6f01bd1002944c047121', '', 0, 0, '22/12/2024, 20:06', 234, 0, 158.431, -1961.12, 5.2259, 264.582, 0, 0, 350, 0, 0, 7, 1, 0, 0, 100, 0, 1, 'İtalya', 21, 1, 100, 100, 0, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 467354, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 69242572, 0, 0, -1, 0, 0, 0, 0, -1, 0, 0, 0, 27258, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0|0|0|0|0', '0|0|0|0|0', 0, '0|0|0|0|0', 0, '', 0, '', 0, 0, 0, 0, '77c8a4c219fc6f01bd1002944c047121', 'gorkembaba@gmail.com', '572121511310393368', 1, 'RICHLAND-9AA2F7843F', 'belkibugundegil', 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 1, '1', '1', '1', '1', '1', '149.34.216.61', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 0, 0, 0, -1, -1, 0),
(84, 'Fidel_polino', '4afb15b60a7deeca18e126331e3dc38b', '', 0, 0, '22/12/2024, 21:11', 184, 0, -25.9134, -178.785, 1003.55, 14.0821, 17, 0, 850, 0, 0, 10, 1, 0, 0, 100, 0, 1, 'Meksika', 25, 1, 100, 100, 0, -1, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 916844, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 99113771, 0, 0, -1, 0, 0, 0, 0, -1, 0, 0, 1, 60416, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0|0|0|0|0', '0|0|0|0|0', 0, '0|0|0|0|0', 0, '', 0, '', 0, 0, 0, 0, '4afb15b60a7deeca18e126331e3dc38b', 'turhanbatin9@gmail.com', '996081551429345290', 1, 'RICHLAND-C1195ED230', 'batuhanna', 0, 1, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 1, 'Yere düşmeden refleksle kenara sıçrar aracın plakasını ve yönünü akılda tutar, ardından hemen güvenli bir yere geçip yardım çağırırım', 'Arkadaşım olsa bile uyarırım ooc kuralı ihlalinden eğer tekrarlarsa mecbur olarak şikayet ederdim', 'Bir daha olmaması için uyarırım veya arkadaşıma söylemeden yetkililere bildiririm', 'Silahımı asla gereksiz yere kullanmam farklı bir yoldan kaçmak için etrafıma bakınırım kaçış yolu bulursam güvenli bir yolda durur ve arkaşlarımın beni almasını beklerım ya da bi süre sonra oradan çıkarım', 'Tüfeğime ulaşmak için dikkat dağıtmaya çalışırım sonrasında hızla karşılık veririm tehtid ortadan kalkınca güvenli bir bölgeye uzaklaşırım  r', '95.5.191.10', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', 0, 0, 0, -1, -1, 0),
(83, 'Luther_Bryant', '867e0c5bd82e84afcbb04f1ebdbd103f', '', 0, 0, NULL, 101, 0, 1496.02, -1693.39, 13.3988, 177.546, 0, 0, 1000, 0, 0, 0, 1, 0, 0, 100, 0, 1, 'Amerika', 43, 1, 100, 100, 0, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0|0|0|0|0', '0|0|0|0|0', 0, '0|0|0|0|0', 0, '', 0, '', 0, 0, 0, 0, '2c556e45affa674b43fd2edb7486626d', 'yorgunbaba994@gmail.com', '', 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'Kasıtlı olarak çarpıyorsa bir kaza rolü yaparım. Rol bittikten sonra gidip ticket açar yaptığı şeyi kanıtlarıyla birlikte yetkilere sunarım.', 'Genellikle oyuna girdiğimde Ayarlardan kapatırım. Ama böyle birşey olsaydı takmazdım kısaca. PM yi ayarlardan kapar naparsa yapsın derdim. Ama eğer rol yapmıyorken yazarsa bana ooc ortam olarak gel diye gelirim tabi.', 'Vermem Sunucuda zaten ekonomi hard geliyor bana paraya ihtiyacı olan biride değilim kısaca vermem isterse 1000 olsun.', 'Kişi fazlalığına göre değişen durumlar olur burda tek kişi ise Silahımı kullana bilirim tabi. Ama iki üç dört kişi ise mecbur hapise girmek zorunda kalırsın.', 'Korku rolü. Dediğim gibi tek kişi olsa yapa bilme olasılığın var %50 civarlarda olsada burda iki kişiler o yüzden korku rolü yapman gerek.', '57.129.66.230', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 0, 0, 0, 0, -1, 0),
(96, 'Ken_Shizoa', '55e0b4611bac6b5626a3f704cd4ca37a', '', 0, 0, NULL, 101, 0, 1496.02, -1693.39, 13.3988, 177.546, 0, 0, 1000, 0, 0, 0, 1, 0, 0, 100, 0, 1, 'Japonya', 22, 1, 100, 100, 0, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0|0|0|0|0', '0|0|0|0|0', 0, '0|0|0|0|0', 0, '', 0, '', 0, 0, 0, 0, 'a8bd9fa55ea9d3d74209eab0fd5f96b0', 'burakcakir92@gmail.com', '', 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Ticket', 'Arayabiliyorsa arasin yada sms atmasini soylerim', 'Kabul etmem', 'Kacarim', 'Fear rp yaparim sayi olarak az kisiyim', '162.19.76.247', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', 0, 0, 0, 0, -1, 0),
(95, 'Travis_Campbell', 'c091e076d69bbe263b4693c7e42a9f68', '', 0, 0, NULL, 101, 0, 1496.02, -1693.39, 13.3988, 177.546, 0, 0, 1000, 0, 0, 0, 1, 0, 0, 100, 0, 1, 'Almanya', 23, 1, 100, 100, 0, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0|0|0|0|0', '0|0|0|0|0', 0, '0|0|0|0|0', 0, '', 0, '', 0, 0, 0, 0, 'c091e076d69bbe263b4693c7e42a9f68', 'hesenzadehalil@gmail.com', '', 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Gerekli kanıtları alıp şikayet talebi oluştururum.', 'Oraya gitmem ve böyle şeyler yapmaması için uyarırım.', 'Teklifini reddederim.', 'Yolu tam olarak kapattıysa geri dönmeye çalışırım, arka tarafımıda keserlerse araçtan inip teslim olurum.', 'Fear rp yaparım böyle bir durumda.', '185.146.112.77', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', 0, 0, 0, 0, -1, 0),
(94, 'David_Teller', '40bba7ec7890eb813b4171e26a3c5e2d', '', 0, 0, NULL, 101, 0, 1496.02, -1693.39, 13.3988, 177.546, 0, 0, 1000, 0, 0, 0, 1, 0, 0, 100, 0, 1, 'Amerika', 21, 1, 100, 100, 0, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0|0|0|0|0', '0|0|0|0|0', 0, '0|0|0|0|0', 0, '', 0, '', 0, 0, 0, 0, 'f701c90837a6e1e7c68505721dd96c8d', 'man249768@gmail.com', '', 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Ticket yolundan yetkililere gerekli kanıtlar ile iletirim.', 'İlk öncelikle gitmezdim çünkü pm oyun dışı ooc bir konuşmadır ve dostuma böyle yapmamasi gerektiğini yazarım ', 'vermezdim.', 'Roleplay kavramına uygun bir şekilde davranırım.', 'Öncelikle /me /do kavramlarını kullanarak roleplaya uygun şekilde onları etkisiz hâle getirmeye çalışırım.', '158.69.69.2', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', 0, 0, 0, 0, -1, 0);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `ozelmodel`
--

CREATE TABLE `ozelmodel` (
  `ID` int(8) NOT NULL,
  `hesapID` int(8) NOT NULL DEFAULT 0,
  `modelID` int(7) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin5 COLLATE=latin5_turkish_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `petler`
--

CREATE TABLE `petler` (
  `petid` int(6) NOT NULL,
  `petadi` varchar(32) DEFAULT NULL,
  `petsahip` int(6) NOT NULL DEFAULT 0,
  `petturu` int(2) NOT NULL DEFAULT 1,
  `petcinsiyet` int(1) NOT NULL DEFAULT 1,
  `petrenk` int(2) NOT NULL DEFAULT 1,
  `petaclik` int(4) NOT NULL DEFAULT 50,
  `petsaglik` float NOT NULL DEFAULT 0,
  `petyarali` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin5 COLLATE=latin5_turkish_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `pointler`
--

CREATE TABLE `pointler` (
  `pointID` int(6) NOT NULL,
  `pointBirlik` int(6) NOT NULL DEFAULT 0,
  `pointBolge` varchar(64) DEFAULT NULL,
  `pointPosX` float NOT NULL,
  `pointPosY` float NOT NULL,
  `pointPosZ` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin5 COLLATE=latin5_turkish_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `price_history`
--

CREATE TABLE `price_history` (
  `id` int(11) NOT NULL,
  `coin_id` int(11) NOT NULL,
  `buy_price` decimal(10,2) NOT NULL,
  `sell_price` decimal(10,2) NOT NULL,
  `buy_price_change` decimal(10,2) NOT NULL,
  `sell_price_change` decimal(10,2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `price_history`
--

INSERT INTO `price_history` (`id`, `coin_id`, `buy_price`, `sell_price`, `buy_price_change`, `sell_price_change`, `created_at`) VALUES
(1, 1, 20825.17, 20416.83, -0.83, -1.84, '2024-12-22 09:27:53'),
(2, 2, 1492.54, 1463.27, -0.50, -0.79, '2024-12-22 09:27:53'),
(3, 1, 20708.63, 20302.58, -0.56, -0.56, '2024-12-22 09:28:03'),
(4, 2, 1511.99, 1482.34, 1.30, 1.30, '2024-12-22 09:28:03'),
(5, 1, 20597.10, 20193.23, -0.54, -0.54, '2024-12-22 09:28:13'),
(6, 2, 1525.61, 1495.69, 0.90, 0.90, '2024-12-22 09:28:13'),
(7, 1, 20428.51, 20027.95, -0.82, -0.82, '2024-12-22 09:28:23'),
(8, 2, 1553.81, 1523.35, 1.85, 1.85, '2024-12-22 09:28:23'),
(9, 1, 20254.70, 19857.55, -0.85, -0.85, '2024-12-22 09:28:33'),
(10, 2, 1566.57, 1535.85, 0.82, 0.82, '2024-12-22 09:28:33'),
(11, 1, 19973.45, 19581.82, -1.39, -1.39, '2024-12-22 09:28:43'),
(12, 2, 1535.73, 1505.62, -1.97, -1.97, '2024-12-22 09:28:43'),
(13, 1, 19599.03, 19214.73, -1.87, -1.87, '2024-12-22 09:28:53'),
(14, 2, 1514.94, 1485.23, -1.35, -1.35, '2024-12-22 09:28:53'),
(15, 1, 19296.50, 18918.14, -1.54, -1.54, '2024-12-22 09:29:03'),
(16, 2, 1493.49, 1464.21, -1.42, -1.42, '2024-12-22 09:29:03'),
(17, 1, 19620.07, 19235.36, 1.68, 1.68, '2024-12-22 09:29:13'),
(18, 2, 1516.60, 1486.87, 1.55, 1.55, '2024-12-22 09:29:13'),
(19, 1, 19739.26, 19352.21, 0.61, 0.61, '2024-12-22 09:29:23'),
(20, 2, 1494.83, 1465.52, -1.44, -1.44, '2024-12-22 09:29:23'),
(21, 1, 19857.24, 19467.88, 0.60, 0.60, '2024-12-22 09:29:33'),
(22, 2, 1512.34, 1482.69, 1.17, 1.17, '2024-12-22 09:29:33'),
(23, 1, 19607.61, 19223.15, -1.26, -1.26, '2024-12-22 09:29:43'),
(24, 2, 1524.82, 1494.92, 0.83, 0.83, '2024-12-22 09:29:43'),
(25, 1, 19984.93, 19593.06, 1.92, 1.92, '2024-12-22 09:29:53'),
(26, 2, 1534.88, 1504.79, 0.66, 0.66, '2024-12-22 09:29:53'),
(27, 1, 19850.25, 19461.03, 1984924.86, -0.67, '2024-12-22 09:30:03'),
(28, 2, 1545.82, 1515.51, 0.71, 0.71, '2024-12-22 09:30:03'),
(29, 1, 0.93, 0.92, -100.00, 1.83, '2024-12-22 09:30:13'),
(30, 2, 1.01, 0.99, -32.78, -1.14, '2024-12-22 09:30:13'),
(31, 1, 0.95, 0.93, 1.66, 0.75, '2024-12-22 09:30:23'),
(32, 2, 0.99, 0.97, -1.89, -1.87, '2024-12-22 09:30:23'),
(33, 1, 0.94, 0.92, -0.94, -0.80, '2024-12-22 09:30:33'),
(34, 2, 1.00, 0.98, 0.73, 0.79, '2024-12-22 09:30:33'),
(35, 1, 0.93, 0.91, -0.86, -0.69, '2024-12-22 09:30:43'),
(36, 2, 0.99, 0.97, -1.33, -1.30, '2024-12-22 09:30:43'),
(37, 1, 0.94, 0.92, 1.40, 1.60, '2024-12-22 09:30:53'),
(38, 2, 0.97, 0.96, -1.53, -1.47, '2024-12-22 09:30:53'),
(39, 1, 0.95, 0.93, 0.94, 1.11, '2024-12-22 09:31:03'),
(40, 2, 0.97, 0.95, 0.06, -0.88, '2024-12-22 09:31:03'),
(41, 1, 0.96, 0.94, 0.80, 0.94, '2024-12-22 09:31:13'),
(42, 2, 0.95, 0.93, -1.80, -1.70, '2024-12-22 09:31:13'),
(43, 1, 0.98, 0.96, 1.58, 1.71, '2024-12-22 09:31:23'),
(44, 2, 0.93, 0.91, -1.92, -1.78, '2024-12-22 09:31:23'),
(45, 1, 0.99, 0.97, 0.96, 1.04, '2024-12-22 09:31:33'),
(46, 2, 0.92, 0.90, -0.92, -0.73, '2024-12-22 09:31:33'),
(47, 1, 1.00, 0.98, 0.93, 1.00, '2024-12-22 09:31:43'),
(48, 2, 0.90, 0.89, -1.76, -1.54, '2024-12-22 09:31:43'),
(49, 1, 0.99, 0.97, -0.66, -0.62, '2024-12-22 09:31:53'),
(50, 2, 0.92, 0.90, 2.09, 1.21, '2024-12-22 09:31:53'),
(51, 1, 1.00, 0.98, 0.70, 0.76, '2024-12-22 09:32:03'),
(52, 2, 0.91, 0.89, -1.60, -1.38, '2024-12-22 09:32:03'),
(53, 1, 1.00, 0.99, 0.47, 0.51, '2024-12-22 09:32:13'),
(54, 2, 0.91, 0.90, 0.51, 0.75, '2024-12-22 09:32:13'),
(55, 1, 1.03, 1.00, 2.51, 1.51, '2024-12-22 09:32:23'),
(56, 2, 0.92, 0.91, 1.62, 0.73, '2024-12-22 09:32:23'),
(57, 1, 1.03, 1.01, -0.40, 0.58, '2024-12-22 09:32:33'),
(58, 2, 0.92, 0.90, -0.27, -1.16, '2024-12-22 09:32:33'),
(59, 1, 1.02, 1.00, -0.60, -0.62, '2024-12-22 09:32:43'),
(60, 2, 0.91, 0.89, -0.78, -0.56, '2024-12-22 09:32:43'),
(61, 1, 1.00, 0.98, -1.94, -1.94, '2024-12-22 09:32:53'),
(62, 2, 0.90, 0.88, -1.56, -1.32, '2024-12-22 09:32:53'),
(63, 1, 0.99, 0.97, -0.89, -0.85, '2024-12-22 09:33:03'),
(64, 2, 0.91, 0.89, 1.36, 1.63, '2024-12-22 09:33:03'),
(65, 1, 1.00, 0.98, 0.55, 0.61, '2024-12-22 09:33:13'),
(66, 2, 0.90, 0.88, -1.14, -0.90, '2024-12-22 09:33:13'),
(67, 1, 0.98, 0.96, -1.95, -1.91, '2024-12-22 09:33:24'),
(68, 2, 0.89, 0.87, -0.98, -0.72, '2024-12-22 09:33:24'),
(69, 1, 0.96, 0.94, -1.78, -1.70, '2024-12-22 09:33:34'),
(70, 2, 0.90, 0.88, 1.13, 1.43, '2024-12-22 09:33:34'),
(71, 1, 0.95, 0.93, -1.28, -1.16, '2024-12-22 09:33:44'),
(72, 2, 0.91, 0.89, 1.13, 1.40, '2024-12-22 09:33:44'),
(73, 1, 0.96, 0.94, 1.43, 1.58, '2024-12-22 09:33:54'),
(74, 2, 0.90, 0.89, -0.76, -0.52, '2024-12-22 09:33:54'),
(75, 1, 0.94, 0.92, -1.98, -1.85, '2024-12-22 09:34:04'),
(76, 2, 0.89, 0.88, -0.63, -1.49, '2024-12-22 09:34:04');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `raflar`
--

CREATE TABLE `raflar` (
  `ID` int(11) NOT NULL,
  `rafX` float NOT NULL,
  `rafY` float NOT NULL,
  `rafZ` float NOT NULL,
  `rafA` float NOT NULL,
  `rafEv` int(11) NOT NULL DEFAULT -1,
  `rafBina` int(11) NOT NULL DEFAULT -1,
  `rafInt` int(9) NOT NULL DEFAULT 0,
  `rafVW` int(9) NOT NULL DEFAULT 0,
  `Silah1` int(3) NOT NULL,
  `Silah2` int(3) NOT NULL,
  `Silah3` int(3) NOT NULL,
  `Silah4` int(3) NOT NULL,
  `Mermi1` int(11) NOT NULL,
  `Mermi2` int(11) NOT NULL,
  `Mermi3` int(11) NOT NULL,
  `Mermi4` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin5 COLLATE=latin5_turkish_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `rehberkayitlari`
--

CREATE TABLE `rehberkayitlari` (
  `ID` int(8) NOT NULL,
  `Numara` int(7) NOT NULL DEFAULT 0,
  `Isim` varchar(32) DEFAULT NULL,
  `Kaydeden` int(8) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `sandiklar`
--

CREATE TABLE `sandiklar` (
  `sandikID` int(11) NOT NULL,
  `sandikX` float NOT NULL DEFAULT 0,
  `sandikY` float NOT NULL DEFAULT 0,
  `sandikZ` float NOT NULL DEFAULT 0,
  `sandikA` float NOT NULL DEFAULT 0,
  `sandikInterior` int(11) NOT NULL DEFAULT 0,
  `sandikWorld` int(11) NOT NULL DEFAULT 0,
  `sandikOy` int(11) NOT NULL DEFAULT 0,
  `Sahip` varchar(32) NOT NULL DEFAULT 'Yok'
) ENGINE=MyISAM DEFAULT CHARSET=latin5 COLLATE=latin5_turkish_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `saticilar`
--

CREATE TABLE `saticilar` (
  `sID` int(11) NOT NULL,
  `X` float NOT NULL,
  `Y` float NOT NULL,
  `Z` float NOT NULL,
  `A` float NOT NULL,
  `sInterior` int(11) NOT NULL DEFAULT 0,
  `sWorld` int(11) NOT NULL DEFAULT 0,
  `Fiyat` int(11) NOT NULL DEFAULT 500,
  `Adet` int(11) NOT NULL DEFAULT 1,
  `Kiyafet` int(11) NOT NULL DEFAULT 1,
  `Tur` int(3) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `serials`
--

CREATE TABLE `serials` (
  `username` varchar(32) NOT NULL DEFAULT '',
  `onaylandi` int(3) NOT NULL,
  `ipadress` varchar(16) NOT NULL,
  `macid` varchar(64) NOT NULL,
  `cpuid` varchar(64) NOT NULL,
  `hddserial` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `sicilkaydi`
--

CREATE TABLE `sicilkaydi` (
  `ID` int(11) NOT NULL,
  `Oyuncu` varchar(32) DEFAULT NULL,
  `Sebep` varchar(64) DEFAULT NULL,
  `Memur` varchar(32) DEFAULT NULL,
  `Tarih` varchar(36) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin5 COLLATE=latin5_turkish_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `sikayetler`
--

CREATE TABLE `sikayetler` (
  `sikayetID` int(11) NOT NULL,
  `sEdenID` int(11) NOT NULL,
  `sEdenHesapID` int(11) NOT NULL,
  `sEdilenID` int(11) NOT NULL,
  `sEdilenHesapID` int(11) NOT NULL,
  `sikayetKonusu` text NOT NULL,
  `sikayetIcerik` text NOT NULL,
  `sikayetDurumu` tinyint(4) NOT NULL,
  `sikayetTarihi` datetime NOT NULL,
  `sikayetTuru` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `silahenvanter`
--

CREATE TABLE `silahenvanter` (
  `ID` int(11) NOT NULL,
  `silahID` int(3) NOT NULL DEFAULT 0,
  `karakterID` int(8) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin5 COLLATE=latin5_turkish_ci;

--
-- Tablo döküm verisi `silahenvanter`
--

INSERT INTO `silahenvanter` (`ID`, `silahID`, `karakterID`) VALUES
(1, 24, 3),
(2, 24, 3);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `soyadikilitleri`
--

CREATE TABLE `soyadikilitleri` (
  `ID` int(9) NOT NULL,
  `Soyad` varchar(24) DEFAULT NULL,
  `Kilitleyen` int(9) NOT NULL DEFAULT 0,
  `Tarih` varchar(36) DEFAULT NULL,
  `izin` int(9) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `suclistesi`
--

CREATE TABLE `suclistesi` (
  `ID` int(9) NOT NULL,
  `Suc` varchar(144) DEFAULT NULL,
  `Dakika` int(4) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin5 COLLATE=latin5_turkish_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `tutuklamanoktalari`
--

CREATE TABLE `tutuklamanoktalari` (
  `tID` int(11) NOT NULL,
  `x` float NOT NULL,
  `y` float NOT NULL,
  `z` float NOT NULL,
  `a` float NOT NULL,
  `hx` float NOT NULL,
  `hy` float NOT NULL,
  `hz` float NOT NULL,
  `ha` float NOT NULL,
  `tWorld` int(11) NOT NULL DEFAULT 0,
  `tInterior` int(11) NOT NULL DEFAULT 0,
  `hWorld` int(11) NOT NULL DEFAULT 0,
  `hInterior` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `urunler`
--

CREATE TABLE `urunler` (
  `ID` int(9) NOT NULL,
  `Urun` varchar(36) NOT NULL,
  `Tarih` varchar(36) NOT NULL,
  `Sahip` int(9) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `uyusturucular`
--

CREATE TABLE `uyusturucular` (
  `uID` int(11) NOT NULL,
  `Sahip` int(9) NOT NULL DEFAULT 0,
  `posX` float NOT NULL,
  `posY` float NOT NULL,
  `posZ` float NOT NULL,
  `posA` float NOT NULL,
  `uInterior` int(11) NOT NULL,
  `uWorld` int(11) NOT NULL,
  `Durum` int(11) NOT NULL DEFAULT 0,
  `Dakika` int(6) NOT NULL DEFAULT 0,
  `Bakim` int(11) NOT NULL DEFAULT 0,
  `Ev` int(9) NOT NULL DEFAULT 0,
  `Bina` int(9) NOT NULL DEFAULT 0,
  `Tur` int(2) NOT NULL DEFAULT 0,
  `GenelDakika` int(5) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `wcode_applications`
--

CREATE TABLE `wcode_applications` (
  `id` int(11) NOT NULL,
  `UserID` int(11) NOT NULL,
  `UserName` varchar(32) NOT NULL,
  `FactionID` int(11) NOT NULL,
  `Answers` text NOT NULL,
  `Questions` int(11) NOT NULL,
  `Status` int(11) NOT NULL,
  `Date` timestamp NOT NULL DEFAULT current_timestamp(),
  `ActionBy` varchar(24) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `wcode_commentaries`
--

CREATE TABLE `wcode_commentaries` (
  `ID` int(11) NOT NULL,
  `UserID` int(11) NOT NULL,
  `UserName` varchar(32) NOT NULL,
  `Skin` int(11) NOT NULL,
  `Text` text NOT NULL,
  `Date` timestamp NOT NULL DEFAULT current_timestamp(),
  `Section` varchar(32) NOT NULL,
  `TopicID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Tablo döküm verisi `wcode_commentaries`
--

INSERT INTO `wcode_commentaries` (`ID`, `UserID`, `UserName`, `Skin`, `Text`, `Date`, `Section`, `TopicID`) VALUES
(2, 2, 'Mia_Millerd', 8, 'dd', '2024-12-21 14:22:20', 'complaints', 4),
(4, 2, 'Mia_Millerd', 126, 'Oyuncu hiçbir cezaya verilmeyecek, çünkü hata yapmamış.', '2024-12-22 09:02:16', 'complaints', 9),
(5, 2, 'Mia_Millerd', 126, 'Düzeltildi.', '2024-12-22 12:33:32', 'tickets', 1),
(6, 59, 'Anatsia_Valery', 12, 'Sa', '2024-12-22 13:06:03', 'tickets', 3),
(7, 61, 'Fyodor_Brown', 101, 'Yardmm', '2024-12-22 13:41:29', 'tickets', 7),
(8, 3, 'Fensonn_Danny', 21, 'Aleyküm selam sorun nedir?', '2024-12-22 16:30:22', 'tickets', 3),
(9, 2, 'Mia_Millerd', 8, 'Oyuna giriş sağladığınız zaman rapor atın.', '2024-12-22 16:35:28', 'tickets', 8),
(10, 59, 'Anatsia_Valery', 12, 'Pablo ooc market ne zaman vercen', '2024-12-22 16:54:18', 'tickets', 3),
(11, 59, 'Anatsia_Valery', 12, 'Ooc market', '2024-12-22 16:54:26', 'tickets', 3),
(12, 2, 'Mia_Millerd', 8, 'Bu gece düzeltilecek.', '2024-12-22 17:00:20', 'tickets', 10),
(13, 2, 'Mia_Millerd', 8, 'Düzeltildi.', '2024-12-22 17:02:22', 'tickets', 4),
(14, 2, 'Mia_Millerd', 8, 'Discord hesabınızı eşleştirmeyi deneyin.', '2024-12-22 17:02:51', 'tickets', 6),
(15, 2, 'Mia_Millerd', 8, 'Ekran kaydı iletebilir misiniz? YouTube veya Streamable sitelerinden birine yükleyip link iletin', '2024-12-22 17:21:22', 'tickets', 12),
(16, 2, 'Mia_Millerd', 8, 'Ekran kaydı iletir misinkz', '2024-12-22 17:21:43', 'tickets', 11),
(17, 74, 'Edwin_Gonzalez', 101, 'Kayit almadim..', '2024-12-22 17:22:18', 'tickets', 11),
(18, 74, 'Edwin_Gonzalez', 101, 'Zaten andrew diye biriyleydim ondada 4k gelmedi bendede', '2024-12-22 17:22:56', 'tickets', 11),
(19, 2, 'Mia_Millerd', 8, 'Aktif bir yetkiliye PM atabilir misiniz?', '2024-12-22 17:24:57', 'tickets', 13),
(20, 84, 'Fidel_polino', 184, 'Tamamdır', '2024-12-22 17:34:26', 'tickets', 12),
(21, 84, 'Fidel_polino', 184, 'Bu arada girdim şimdi 0.3.7 r2 den girsin giremeyenler', '2024-12-22 17:35:15', 'tickets', 12),
(22, 84, 'Fidel_polino', 184, 'Bende giriyor burdan', '2024-12-22 17:35:32', 'tickets', 12),
(23, 61, 'Fyodor_Brown', 101, 'Size attm zaten', '2024-12-22 17:36:19', 'tickets', 13),
(24, 61, 'Fyodor_Brown', 101, 'Gene atayim bir dk', '2024-12-22 17:36:29', 'tickets', 13),
(25, 84, 'Fidel_polino', 184, 'Bazen giriyor bazen girmiyor', '2024-12-22 17:37:10', 'tickets', 12),
(26, 84, 'Fidel_polino', 184, 'https://youtube.com/shorts/f6NFB-_CUy0?si=ivU5_A74NBYKEWBO', '2024-12-22 17:39:48', 'tickets', 12),
(27, 61, 'Fyodor_Brown', 101, 'Hayır olmuyor', '2024-12-22 17:58:08', 'tickets', 13),
(28, 2, 'Mia_Millerd', 8, 'Düzeltildi, dağıtımlar ile telafi sağlanacak.', '2024-12-22 21:03:16', 'tickets', 15),
(29, 2, 'Mia_Millerd', 8, 'Düzeltildi, tekrarında yeniden ticket açabilirsiniz.', '2024-12-22 21:03:40', 'tickets', 14),
(30, 2, 'Mia_Millerd', 8, 'Düzeltildi, tekrarında yeniden ticket açabilirsiniz.', '2024-12-22 21:04:00', 'tickets', 10),
(31, 2, 'Mia_Millerd', 8, 'Düzeltildi, tekrarında yeniden ticket açabilirsiniz.', '2024-12-22 21:04:18', 'tickets', 13),
(32, 2, 'Mia_Millerd', 8, 'Düzeltildi, tekrarında yeniden ticket açabilirsiniz.', '2024-12-22 21:05:23', 'tickets', 12);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `wcode_complaints`
--

CREATE TABLE `wcode_complaints` (
  `ID` int(11) NOT NULL,
  `UserID` int(11) NOT NULL,
  `UserName` varchar(32) NOT NULL,
  `AccusedID` int(11) NOT NULL,
  `AccusedName` varchar(32) NOT NULL,
  `Text` text NOT NULL,
  `Category` int(11) NOT NULL,
  `Faction` int(11) NOT NULL,
  `Status` int(11) NOT NULL,
  `Date` timestamp NOT NULL DEFAULT current_timestamp(),
  `ActionBy` varchar(32) NOT NULL,
  `kanitlar` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `wcode_editables`
--

CREATE TABLE `wcode_editables` (
  `ID` int(11) NOT NULL,
  `Text` text NOT NULL,
  `By` varchar(32) NOT NULL,
  `Form` varchar(32) NOT NULL,
  `Updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `wcode_functions`
--

CREATE TABLE `wcode_functions` (
  `ID` int(11) NOT NULL,
  `UserID` int(11) NOT NULL,
  `UserName` varchar(32) NOT NULL,
  `Tag` varchar(64) NOT NULL,
  `Color` varchar(32) NOT NULL,
  `Icon` varchar(64) NOT NULL,
  `Date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Tablo döküm verisi `wcode_functions`
--

INSERT INTO `wcode_functions` (`ID`, `UserID`, `UserName`, `Tag`, `Color`, `Icon`, `Date`) VALUES
(1, 1, 'deks', 'Coder', '#5fc71a', 'fa fa-code', '2024-11-28 22:20:14'),
(3, 130, 'Deks_Baba', 'Developer', '#ff0000', 'fa fa-code', '2024-11-30 08:11:58'),
(4, 2, 'Deks_Baba', 'Örnek Tag', '#ff0000', 'fa fa-star', '2024-12-02 03:55:10'),
(5, 23, 'Mia_Millerd', 'Bot Developer', '#ff0000', 'fa fa-code', '2024-12-03 16:20:09'),
(8, 48, 'Dante_Bray', 'JuniorTerim', '#ff0000', 'fa fa-shield', '2024-12-03 20:08:15');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `wcode_logs`
--

CREATE TABLE `wcode_logs` (
  `ID` int(11) NOT NULL,
  `UserID` int(11) NOT NULL,
  `UserName` varchar(32) NOT NULL,
  `Log` text NOT NULL,
  `VictimID` int(11) NOT NULL,
  `VictimName` varchar(32) NOT NULL,
  `Date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `wcode_notifications`
--

CREATE TABLE `wcode_notifications` (
  `ID` int(11) NOT NULL,
  `UserID` int(11) NOT NULL,
  `UserName` varchar(32) NOT NULL,
  `Notification` text NOT NULL,
  `FromID` int(11) NOT NULL,
  `FromName` varchar(32) NOT NULL,
  `Seen` int(11) NOT NULL,
  `Link` text NOT NULL,
  `Date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Tablo döküm verisi `wcode_notifications`
--

INSERT INTO `wcode_notifications` (`ID`, `UserID`, `UserName`, `Notification`, `FromID`, `FromName`, `Seen`, `Link`, `Date`) VALUES
(1, 3, 'Fensonn_Danny', 'para durumunuz (<font color=\"green\">$</font>9,479 / <font color=\"green\">$</font>3,818) Admin Fensonn_Danny tarafından güncellendi.', 3, 'Fensonn_Danny', 1, 'https://richland-rpg.com/profile/Fensonn_Danny', '2024-12-20 11:39:41'),
(2, 7, 'Dante_Bray', 'Mia_Millerd sana karşı bir Birlik şikayeti yaptı! Kontrol et.', 2, 'Mia_Millerd', 1, 'https://richland-rpg.com/complaints', '2024-12-21 13:57:19'),
(3, 7, 'Dante_Bray', 'Mia_Millerd sana karşı bir Birlik şikayeti yaptı! Kontrol et.', 2, 'Mia_Millerd', 1, 'https://richland-rpg.com/complaints', '2024-12-21 14:14:04'),
(4, 7, 'Dante_Bray', 'Yeni yorum şikayette yayınlandı!', 2, 'Mia_Millerd', 1, 'https://richland-rpg.com/complaints/view/2', '2024-12-21 14:15:47'),
(5, 32, 'Drake_Stark', 'E-posta adresiniz Drake_Stark tarafından değiştirildi.', 32, 'Drake_Stark', 1, 'https://richland-rpg.com/profile/Drake_Stark', '2024-12-21 14:16:06'),
(6, 7, 'Dante_Bray', 'Mia_Millerd sana karşı bir Birlik şikayeti yaptı! Kontrol et.', 2, 'Mia_Millerd', 1, 'https://richland-rpg.com/complaints', '2024-12-21 14:19:41'),
(7, 7, 'Dante_Bray', 'Austin_Williams sana karşı bir Birlik şikayeti yaptı! Kontrol et.', 8, 'Austin_Williams', 1, 'https://richland-rpg.com/complaints', '2024-12-21 14:21:21'),
(8, 8, 'Austin_Williams', 'Yeni yorum şikayette yayınlandı!', 2, 'Mia_Millerd', 1, 'https://richland-rpg.com/complaints/view/4', '2024-12-21 14:22:20'),
(9, 7, 'Dante_Bray', 'Yeni yorum şikayette yayınlandı!', 2, 'Mia_Millerd', 1, 'https://richland-rpg.com/complaints/view/4', '2024-12-21 14:22:20'),
(10, 2, 'Mia_Millerd', 'Austin_Williams sana karşı bir Birlik şikayeti yaptı! Kontrol et.', 8, 'Austin_Williams', 1, 'https://richland-rpg.com/complaints', '2024-12-21 14:23:11'),
(11, 7, 'Dante_Bray', 'Mia_Millerd sana karşı bir Birlik şikayeti yaptı! Kontrol et.', 2, 'Mia_Millerd', 1, 'https://richland-rpg.com/complaints', '2024-12-21 14:32:55'),
(12, 7, 'Dante_Bray', 'Mia_Millerd sana karşı bir Birlik şikayeti yaptı! Kontrol et.', 2, 'Mia_Millerd', 1, 'https://richland-rpg.com/complaints', '2024-12-21 14:34:26'),
(13, 7, 'Dante_Bray', 'Mia_Millerd sana karşı bir Birlik şikayeti yaptı! Kontrol et.', 2, 'Mia_Millerd', 1, 'https://richland-rpg.com/complaints', '2024-12-21 14:37:18'),
(14, 3, 'Fensonn_Danny', 'Mia_Millerd sana karşı bir Birlik şikayeti yaptı! Kontrol et.', 2, 'Mia_Millerd', 0, 'https://richland-rpg.com/complaints', '2024-12-22 09:01:48'),
(15, 3, 'Fensonn_Danny', 'Yeni yorum şikayette yayınlandı!', 2, 'Mia_Millerd', 0, 'https://richland-rpg.com/complaints/view/9', '2024-12-22 09:02:06'),
(16, 49, 'Sean_Blodi', 'Destek talebinizde yeni bir yorum yapıldı!', 2, 'Mia_Millerd', 0, 'https://richland-rpg.com/tickets/view/1', '2024-12-22 12:33:32'),
(17, 3, 'Fensonn_Danny', 'Mia_Millerd sana karşı bir Birlik şikayeti yaptı! Kontrol et.', 2, 'Mia_Millerd', 0, 'https://richland-rpg.com/complaints', '2024-12-22 12:39:28'),
(18, 59, 'Anatsia_Valery', 'Destek talebinizde yeni bir yorum yapıldı!', 3, 'Fensonn_Danny', 1, 'https://richland-rpg.com/tickets/view/3', '2024-12-22 16:30:22'),
(19, 60, 'Juliet_Diamond', 'Destek talebinizde yeni bir yorum yapıldı!', 2, 'Mia_Millerd', 0, 'https://richland-rpg.com/tickets/view/8', '2024-12-22 16:35:28'),
(20, 11, 'John_Doe', 'Destek talebinizde yeni bir yorum yapıldı!', 2, 'Mia_Millerd', 0, 'https://richland-rpg.com/tickets/view/10', '2024-12-22 17:00:20'),
(21, 19, 'Lee_Atkins', 'Destek talebinizde yeni bir yorum yapıldı!', 2, 'Mia_Millerd', 0, 'https://richland-rpg.com/tickets/view/4', '2024-12-22 17:02:22'),
(22, 74, 'Edwin_Gonzalez', 'Destek talebinizde yeni bir yorum yapıldı!', 2, 'Mia_Millerd', 1, 'https://richland-rpg.com/tickets/view/6', '2024-12-22 17:02:51'),
(23, 84, 'Fidel_polino', 'Destek talebinizde yeni bir yorum yapıldı!', 2, 'Mia_Millerd', 1, 'https://richland-rpg.com/tickets/view/12', '2024-12-22 17:21:22'),
(24, 74, 'Edwin_Gonzalez', 'Destek talebinizde yeni bir yorum yapıldı!', 2, 'Mia_Millerd', 1, 'https://richland-rpg.com/tickets/view/11', '2024-12-22 17:21:43'),
(25, 61, 'Fyodor_Brown', 'Destek talebinizde yeni bir yorum yapıldı!', 2, 'Mia_Millerd', 0, 'https://richland-rpg.com/tickets/view/13', '2024-12-22 17:24:57'),
(26, 85, 'Deks_Martinez', 'E-posta adresiniz Deks_Martinez tarafından değiştirildi.', 85, 'Deks_Martinez', 0, 'https://richland-rpg.com/profile/Deks_Martinez', '2024-12-22 17:34:10'),
(27, 87, 'Eazy_Martinez', 'E-posta adresiniz Eazy_Martinez tarafından değiştirildi.', 87, 'Eazy_Martinez', 0, 'https://richland-rpg.com/profile/Eazy_Martinez', '2024-12-22 17:48:22'),
(28, 23, 'Andrew_Walker', 'Destek talebinizde yeni bir yorum yapıldı!', 2, 'Mia_Millerd', 0, 'https://richland-rpg.com/tickets/view/15', '2024-12-22 21:03:16'),
(29, 31, 'Jack_Sully', 'Destek talebinizde yeni bir yorum yapıldı!', 2, 'Mia_Millerd', 0, 'https://richland-rpg.com/tickets/view/14', '2024-12-22 21:03:40'),
(30, 11, 'John_Doe', 'Destek talebinizde yeni bir yorum yapıldı!', 2, 'Mia_Millerd', 0, 'https://richland-rpg.com/tickets/view/10', '2024-12-22 21:04:00'),
(31, 61, 'Fyodor_Brown', 'Destek talebinizde yeni bir yorum yapıldı!', 2, 'Mia_Millerd', 0, 'https://richland-rpg.com/tickets/view/13', '2024-12-22 21:04:18'),
(32, 84, 'Fidel_polino', 'Destek talebinizde yeni bir yorum yapıldı!', 2, 'Mia_Millerd', 0, 'https://richland-rpg.com/tickets/view/12', '2024-12-22 21:05:23');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `wcode_questions`
--

CREATE TABLE `wcode_questions` (
  `id` int(11) NOT NULL,
  `question` text NOT NULL,
  `factionid` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `wcode_recover`
--

CREATE TABLE `wcode_recover` (
  `ID` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `username` varchar(90) NOT NULL,
  `email` text NOT NULL,
  `token` varchar(90) NOT NULL,
  `time` varchar(90) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `wcode_tickets`
--

CREATE TABLE `wcode_tickets` (
  `ID` int(11) NOT NULL,
  `UserID` int(11) NOT NULL,
  `UserName` varchar(32) NOT NULL,
  `Category` varchar(64) NOT NULL,
  `Text` text NOT NULL,
  `Status` int(11) NOT NULL,
  `Date` timestamp NOT NULL DEFAULT current_timestamp(),
  `ActionBy` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Tablo döküm verisi `wcode_tickets`
--

INSERT INTO `wcode_tickets` (`ID`, `UserID`, `UserName`, `Category`, `Text`, `Status`, `Date`, `ActionBy`) VALUES
(1, 49, 'Sean_Blodi', 'Diğer', 'Discors doğrulama botu etkileşim başarsız oldu hatası veriyor', 1, '2024-12-22 09:03:31', ''),
(2, 34, 'Nico_Bruhney', 'Diğer', 'Legal FM\'de başvuru attim, bakan yok.', 1, '2024-12-22 12:39:02', ''),
(3, 59, 'Anatsia_Valery', 'OOC Market Problemleri', 'Pablo dedi bilet ac diye benden ondan actim', 0, '2024-12-22 13:02:43', ''),
(4, 19, 'Lee_Atkins', 'Hata Bildirimi', 'Merhaba, oyuna giriyorum, responding diyor, connected diyor ve server restarting diyor', 1, '2024-12-22 13:11:49', ''),
(5, 31, 'Jack_Sully', 'Hata Bildirimi', 'İic sifremi hatalı olarak gösteriyo', 1, '2024-12-22 13:17:57', ''),
(8, 60, 'Juliet_Diamond', 'Hata Bildirimi', 'Kadin karakter seçtim ama şuan ic de karakterimin cinsiyeti erkek', 0, '2024-12-22 13:55:44', ''),
(9, 78, 'Isaac_Sandell', 'Hesap Problemleri', 'Discord eşleştiremiyorum, mutem var. @zamazingo911\r\n', 1, '2024-12-22 16:51:33', ''),
(10, 11, 'John_Doe', 'Hata Bildirimi', 'Çöpçülük\'te çöpü adama satıyorum para gelmiyor.', 1, '2024-12-22 16:57:34', ''),
(12, 84, 'Fidel_polino', 'Hesap Problemleri', 'Bende hala connected diyor karakter başvurum kabul oldu ss de var ', 1, '2024-12-22 17:16:42', ''),
(13, 61, 'Fyodor_Brown', 'Diğer', 'Giriş yapınca beni mapın diger ucundan başlatıyor', 1, '2024-12-22 17:22:47', ''),
(14, 31, 'Jack_Sully', 'Hata Bildirimi', 'Oyuna girerken mavi bi yazı cikiyo ', 1, '2024-12-22 17:31:00', ''),
(15, 23, 'Andrew_Walker', 'Hata Bildirimi', 'Balıkçıda ve çöpcülükte, genel olarak tüm mesleklerde para alamama problemi var. Balıkçılıkta 9 adet balık tuttum sonra satmaya gittim, bana tam olarak 4.904$ dolar kazandınız yazısı geldi fakat bana para gelmemişti. Bunu çöpcülüktede yaşadım ve bunu yaşayan daha çok arkadaşım var. Bu bug\'un hızlı şekilde fixlenmesini ve paralarımizin geri verilmesini istiyorum.', 1, '2024-12-22 18:50:36', '');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `wcode_unban`
--

CREATE TABLE `wcode_unban` (
  `ID` int(11) NOT NULL,
  `UserID` int(11) NOT NULL,
  `UserName` varchar(32) NOT NULL,
  `BanDetails` text NOT NULL,
  `Title` varchar(32) NOT NULL,
  `Details` text NOT NULL,
  `Status` int(11) NOT NULL,
  `Date` timestamp NOT NULL DEFAULT current_timestamp(),
  `ActionBy` varchar(32) NOT NULL DEFAULT 'Banned'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `yasaklamalar`
--

CREATE TABLE `yasaklamalar` (
  `Yasaklanan` varchar(32) NOT NULL DEFAULT '',
  `Yasaklayan` varchar(32) DEFAULT NULL,
  `Sebep` varchar(32) DEFAULT NULL,
  `IP` varchar(16) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin5 COLLATE=latin5_turkish_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `yorumlar`
--

CREATE TABLE `yorumlar` (
  `yorumID` int(11) NOT NULL,
  `yorumcuID` int(11) NOT NULL,
  `yorumIcerik` text NOT NULL,
  `yorumTarihi` datetime NOT NULL,
  `sikayetID` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `aksesuarlar`
--
ALTER TABLE `aksesuarlar`
  ADD PRIMARY KEY (`ID`);

--
-- Tablo için indeksler `antihile`
--
ALTER TABLE `antihile`
  ADD PRIMARY KEY (`ID`);

--
-- Tablo için indeksler `antisobeit`
--
ALTER TABLE `antisobeit`
  ADD PRIMARY KEY (`ID`);

--
-- Tablo için indeksler `araccezalari`
--
ALTER TABLE `araccezalari`
  ADD PRIMARY KEY (`ID`);

--
-- Tablo için indeksler `araclar`
--
ALTER TABLE `araclar`
  ADD PRIMARY KEY (`aracID`);

--
-- Tablo için indeksler `aramakayitlari`
--
ALTER TABLE `aramakayitlari`
  ADD PRIMARY KEY (`ID`);

--
-- Tablo için indeksler `aranmakayitlari`
--
ALTER TABLE `aranmakayitlari`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `atm`
--
ALTER TABLE `atm`
  ADD PRIMARY KEY (`atmID`);

--
-- Tablo için indeksler `bagaj`
--
ALTER TABLE `bagaj`
  ADD PRIMARY KEY (`esyaID`);

--
-- Tablo için indeksler `bankaislemler`
--
ALTER TABLE `bankaislemler`
  ADD PRIMARY KEY (`ID`);

--
-- Tablo için indeksler `baslangicposlari`
--
ALTER TABLE `baslangicposlari`
  ADD PRIMARY KEY (`ID`);

--
-- Tablo için indeksler `benzinpompalari`
--
ALTER TABLE `benzinpompalari`
  ADD PRIMARY KEY (`pompaID`);

--
-- Tablo için indeksler `bildirimler`
--
ALTER TABLE `bildirimler`
  ADD PRIMARY KEY (`ID`);

--
-- Tablo için indeksler `binalar`
--
ALTER TABLE `binalar`
  ADD PRIMARY KEY (`bID`);

--
-- Tablo için indeksler `birimler`
--
ALTER TABLE `birimler`
  ADD PRIMARY KEY (`birimID`);

--
-- Tablo için indeksler `birlikler`
--
ALTER TABLE `birlikler`
  ADD PRIMARY KEY (`birlikID`);

--
-- Tablo için indeksler `bolgeler`
--
ALTER TABLE `bolgeler`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `bolokayitlari`
--
ALTER TABLE `bolokayitlari`
  ADD PRIMARY KEY (`ID`);

--
-- Tablo için indeksler `cctv`
--
ALTER TABLE `cctv`
  ADD PRIMARY KEY (`ID`);

--
-- Tablo için indeksler `cezalar`
--
ALTER TABLE `cezalar`
  ADD PRIMARY KEY (`cezaID`);

--
-- Tablo için indeksler `coins`
--
ALTER TABLE `coins`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `coplokasyonlari`
--
ALTER TABLE `coplokasyonlari`
  ADD KEY `ID` (`ID`);

--
-- Tablo için indeksler `dedektorler`
--
ALTER TABLE `dedektorler`
  ADD PRIMARY KEY (`dedektorID`);

--
-- Tablo için indeksler `dekorlar`
--
ALTER TABLE `dekorlar`
  ADD PRIMARY KEY (`ID`);

--
-- Tablo için indeksler `duraklar`
--
ALTER TABLE `duraklar`
  ADD UNIQUE KEY `ID` (`ID`) USING BTREE;

--
-- Tablo için indeksler `event_christmas`
--
ALTER TABLE `event_christmas`
  ADD PRIMARY KEY (`account_id`),
  ADD UNIQUE KEY `account_id` (`account_id`);

--
-- Tablo için indeksler `evler`
--
ALTER TABLE `evler`
  ADD PRIMARY KEY (`evID`);

--
-- Tablo için indeksler `fabrikalar`
--
ALTER TABLE `fabrikalar`
  ADD PRIMARY KEY (`fID`);

--
-- Tablo için indeksler `firmalar`
--
ALTER TABLE `firmalar`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID` (`ID`);

--
-- Tablo için indeksler `garajlar`
--
ALTER TABLE `garajlar`
  ADD PRIMARY KEY (`ID`);

--
-- Tablo için indeksler `gateler`
--
ALTER TABLE `gateler`
  ADD PRIMARY KEY (`gateID`);

--
-- Tablo için indeksler `gps`
--
ALTER TABLE `gps`
  ADD PRIMARY KEY (`gpsID`);

--
-- Tablo için indeksler `graffiti`
--
ALTER TABLE `graffiti`
  ADD PRIMARY KEY (`graffitiID`);

--
-- Tablo için indeksler `hesaplar`
--
ALTER TABLE `hesaplar`
  ADD PRIMARY KEY (`ID`);

--
-- Tablo için indeksler `hizradarlari`
--
ALTER TABLE `hizradarlari`
  ADD PRIMARY KEY (`radarID`);

--
-- Tablo için indeksler `hliste`
--
ALTER TABLE `hliste`
  ADD PRIMARY KEY (`ID`);

--
-- Tablo için indeksler `insaatayarlar`
--
ALTER TABLE `insaatayarlar`
  ADD PRIMARY KEY (`ID`);

--
-- Tablo için indeksler `isyerleri`
--
ALTER TABLE `isyerleri`
  ADD PRIMARY KEY (`isyeriID`);

--
-- Tablo için indeksler `kasalar`
--
ALTER TABLE `kasalar`
  ADD PRIMARY KEY (`kasaID`);

--
-- Tablo için indeksler `kenny_applications`
--
ALTER TABLE `kenny_applications`
  ADD PRIMARY KEY (`ID`);

--
-- Tablo için indeksler `kenny_questions`
--
ALTER TABLE `kenny_questions`
  ADD PRIMARY KEY (`ID`);

--
-- Tablo için indeksler `kenny_recovery`
--
ALTER TABLE `kenny_recovery`
  ADD PRIMARY KEY (`ID`);

--
-- Tablo için indeksler `kenny_suspend`
--
ALTER TABLE `kenny_suspend`
  ADD PRIMARY KEY (`ID`);

--
-- Tablo için indeksler `kontraktlar`
--
ALTER TABLE `kontraktlar`
  ADD PRIMARY KEY (`ID`);

--
-- Tablo için indeksler `konumlar`
--
ALTER TABLE `konumlar`
  ADD PRIMARY KEY (`gpsID`);

--
-- Tablo için indeksler `meslekler`
--
ALTER TABLE `meslekler`
  ADD PRIMARY KEY (`mID`);

--
-- Tablo için indeksler `mobilyalar`
--
ALTER TABLE `mobilyalar`
  ADD PRIMARY KEY (`ID`);

--
-- Tablo için indeksler `modifiyenoktalari`
--
ALTER TABLE `modifiyenoktalari`
  ADD PRIMARY KEY (`ID`);

--
-- Tablo için indeksler `objeler`
--
ALTER TABLE `objeler`
  ADD PRIMARY KEY (`objeID`);

--
-- Tablo için indeksler `odemekayitlari`
--
ALTER TABLE `odemekayitlari`
  ADD PRIMARY KEY (`ID`);

--
-- Tablo için indeksler `oocsicil`
--
ALTER TABLE `oocsicil`
  ADD PRIMARY KEY (`ID`);

--
-- Tablo için indeksler `oyuncular`
--
ALTER TABLE `oyuncular`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `ID` (`ID`);

--
-- Tablo için indeksler `ozelmodel`
--
ALTER TABLE `ozelmodel`
  ADD PRIMARY KEY (`ID`);

--
-- Tablo için indeksler `petler`
--
ALTER TABLE `petler`
  ADD PRIMARY KEY (`petid`);

--
-- Tablo için indeksler `pointler`
--
ALTER TABLE `pointler`
  ADD PRIMARY KEY (`pointID`);

--
-- Tablo için indeksler `price_history`
--
ALTER TABLE `price_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `coin_id` (`coin_id`);

--
-- Tablo için indeksler `raflar`
--
ALTER TABLE `raflar`
  ADD PRIMARY KEY (`ID`);

--
-- Tablo için indeksler `rehberkayitlari`
--
ALTER TABLE `rehberkayitlari`
  ADD PRIMARY KEY (`ID`);

--
-- Tablo için indeksler `sandiklar`
--
ALTER TABLE `sandiklar`
  ADD PRIMARY KEY (`sandikID`);

--
-- Tablo için indeksler `saticilar`
--
ALTER TABLE `saticilar`
  ADD PRIMARY KEY (`sID`);

--
-- Tablo için indeksler `serials`
--
ALTER TABLE `serials`
  ADD PRIMARY KEY (`username`);

--
-- Tablo için indeksler `sicilkaydi`
--
ALTER TABLE `sicilkaydi`
  ADD PRIMARY KEY (`ID`);

--
-- Tablo için indeksler `sikayetler`
--
ALTER TABLE `sikayetler`
  ADD PRIMARY KEY (`sikayetID`);

--
-- Tablo için indeksler `silahenvanter`
--
ALTER TABLE `silahenvanter`
  ADD PRIMARY KEY (`ID`);

--
-- Tablo için indeksler `soyadikilitleri`
--
ALTER TABLE `soyadikilitleri`
  ADD PRIMARY KEY (`ID`);

--
-- Tablo için indeksler `suclistesi`
--
ALTER TABLE `suclistesi`
  ADD PRIMARY KEY (`ID`);

--
-- Tablo için indeksler `tutuklamanoktalari`
--
ALTER TABLE `tutuklamanoktalari`
  ADD PRIMARY KEY (`tID`);

--
-- Tablo için indeksler `urunler`
--
ALTER TABLE `urunler`
  ADD PRIMARY KEY (`ID`);

--
-- Tablo için indeksler `uyusturucular`
--
ALTER TABLE `uyusturucular`
  ADD PRIMARY KEY (`uID`);

--
-- Tablo için indeksler `wcode_applications`
--
ALTER TABLE `wcode_applications`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `wcode_commentaries`
--
ALTER TABLE `wcode_commentaries`
  ADD PRIMARY KEY (`ID`);

--
-- Tablo için indeksler `wcode_complaints`
--
ALTER TABLE `wcode_complaints`
  ADD PRIMARY KEY (`ID`);

--
-- Tablo için indeksler `wcode_editables`
--
ALTER TABLE `wcode_editables`
  ADD PRIMARY KEY (`ID`);

--
-- Tablo için indeksler `wcode_functions`
--
ALTER TABLE `wcode_functions`
  ADD PRIMARY KEY (`ID`);

--
-- Tablo için indeksler `wcode_logs`
--
ALTER TABLE `wcode_logs`
  ADD PRIMARY KEY (`ID`);

--
-- Tablo için indeksler `wcode_notifications`
--
ALTER TABLE `wcode_notifications`
  ADD PRIMARY KEY (`ID`);

--
-- Tablo için indeksler `wcode_questions`
--
ALTER TABLE `wcode_questions`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `wcode_recover`
--
ALTER TABLE `wcode_recover`
  ADD PRIMARY KEY (`ID`);

--
-- Tablo için indeksler `wcode_tickets`
--
ALTER TABLE `wcode_tickets`
  ADD PRIMARY KEY (`ID`);

--
-- Tablo için indeksler `wcode_unban`
--
ALTER TABLE `wcode_unban`
  ADD PRIMARY KEY (`ID`);

--
-- Tablo için indeksler `yasaklamalar`
--
ALTER TABLE `yasaklamalar`
  ADD PRIMARY KEY (`Yasaklanan`);

--
-- Tablo için indeksler `yorumlar`
--
ALTER TABLE `yorumlar`
  ADD PRIMARY KEY (`yorumID`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `aksesuarlar`
--
ALTER TABLE `aksesuarlar`
  MODIFY `ID` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Tablo için AUTO_INCREMENT değeri `antihile`
--
ALTER TABLE `antihile`
  MODIFY `ID` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Tablo için AUTO_INCREMENT değeri `antisobeit`
--
ALTER TABLE `antisobeit`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `araccezalari`
--
ALTER TABLE `araccezalari`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `araclar`
--
ALTER TABLE `araclar`
  MODIFY `aracID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- Tablo için AUTO_INCREMENT değeri `aramakayitlari`
--
ALTER TABLE `aramakayitlari`
  MODIFY `ID` int(8) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `aranmakayitlari`
--
ALTER TABLE `aranmakayitlari`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `atm`
--
ALTER TABLE `atm`
  MODIFY `atmID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Tablo için AUTO_INCREMENT değeri `bagaj`
--
ALTER TABLE `bagaj`
  MODIFY `esyaID` int(6) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `bankaislemler`
--
ALTER TABLE `bankaislemler`
  MODIFY `ID` int(7) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `baslangicposlari`
--
ALTER TABLE `baslangicposlari`
  MODIFY `ID` int(8) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `benzinpompalari`
--
ALTER TABLE `benzinpompalari`
  MODIFY `pompaID` int(3) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `bildirimler`
--
ALTER TABLE `bildirimler`
  MODIFY `ID` int(9) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `binalar`
--
ALTER TABLE `binalar`
  MODIFY `bID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Tablo için AUTO_INCREMENT değeri `birimler`
--
ALTER TABLE `birimler`
  MODIFY `birimID` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `birlikler`
--
ALTER TABLE `birlikler`
  MODIFY `birlikID` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `bolokayitlari`
--
ALTER TABLE `bolokayitlari`
  MODIFY `ID` int(9) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `cctv`
--
ALTER TABLE `cctv`
  MODIFY `ID` int(9) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `cezalar`
--
ALTER TABLE `cezalar`
  MODIFY `cezaID` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `coins`
--
ALTER TABLE `coins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Tablo için AUTO_INCREMENT değeri `dedektorler`
--
ALTER TABLE `dedektorler`
  MODIFY `dedektorID` int(8) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `dekorlar`
--
ALTER TABLE `dekorlar`
  MODIFY `ID` int(9) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `evler`
--
ALTER TABLE `evler`
  MODIFY `evID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- Tablo için AUTO_INCREMENT değeri `fabrikalar`
--
ALTER TABLE `fabrikalar`
  MODIFY `fID` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `garajlar`
--
ALTER TABLE `garajlar`
  MODIFY `ID` int(9) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `gateler`
--
ALTER TABLE `gateler`
  MODIFY `gateID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Tablo için AUTO_INCREMENT değeri `gps`
--
ALTER TABLE `gps`
  MODIFY `gpsID` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `graffiti`
--
ALTER TABLE `graffiti`
  MODIFY `graffitiID` int(8) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `hesaplar`
--
ALTER TABLE `hesaplar`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `hizradarlari`
--
ALTER TABLE `hizradarlari`
  MODIFY `radarID` int(8) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `hliste`
--
ALTER TABLE `hliste`
  MODIFY `ID` int(9) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `insaatayarlar`
--
ALTER TABLE `insaatayarlar`
  MODIFY `ID` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `isyerleri`
--
ALTER TABLE `isyerleri`
  MODIFY `isyeriID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Tablo için AUTO_INCREMENT değeri `kasalar`
--
ALTER TABLE `kasalar`
  MODIFY `kasaID` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `kenny_applications`
--
ALTER TABLE `kenny_applications`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Tablo için AUTO_INCREMENT değeri `kenny_questions`
--
ALTER TABLE `kenny_questions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- Tablo için AUTO_INCREMENT değeri `kenny_recovery`
--
ALTER TABLE `kenny_recovery`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Tablo için AUTO_INCREMENT değeri `kenny_suspend`
--
ALTER TABLE `kenny_suspend`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `kontraktlar`
--
ALTER TABLE `kontraktlar`
  MODIFY `ID` int(8) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `konumlar`
--
ALTER TABLE `konumlar`
  MODIFY `gpsID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Tablo için AUTO_INCREMENT değeri `meslekler`
--
ALTER TABLE `meslekler`
  MODIFY `mID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Tablo için AUTO_INCREMENT değeri `mobilyalar`
--
ALTER TABLE `mobilyalar`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `modifiyenoktalari`
--
ALTER TABLE `modifiyenoktalari`
  MODIFY `ID` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `objeler`
--
ALTER TABLE `objeler`
  MODIFY `objeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `odemekayitlari`
--
ALTER TABLE `odemekayitlari`
  MODIFY `ID` int(9) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `oocsicil`
--
ALTER TABLE `oocsicil`
  MODIFY `ID` int(9) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `oyuncular`
--
ALTER TABLE `oyuncular`
  MODIFY `ID` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- Tablo için AUTO_INCREMENT değeri `ozelmodel`
--
ALTER TABLE `ozelmodel`
  MODIFY `ID` int(8) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `petler`
--
ALTER TABLE `petler`
  MODIFY `petid` int(6) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `pointler`
--
ALTER TABLE `pointler`
  MODIFY `pointID` int(6) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `price_history`
--
ALTER TABLE `price_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- Tablo için AUTO_INCREMENT değeri `raflar`
--
ALTER TABLE `raflar`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `rehberkayitlari`
--
ALTER TABLE `rehberkayitlari`
  MODIFY `ID` int(8) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `sandiklar`
--
ALTER TABLE `sandiklar`
  MODIFY `sandikID` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `saticilar`
--
ALTER TABLE `saticilar`
  MODIFY `sID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Tablo için AUTO_INCREMENT değeri `sicilkaydi`
--
ALTER TABLE `sicilkaydi`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `sikayetler`
--
ALTER TABLE `sikayetler`
  MODIFY `sikayetID` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `silahenvanter`
--
ALTER TABLE `silahenvanter`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Tablo için AUTO_INCREMENT değeri `soyadikilitleri`
--
ALTER TABLE `soyadikilitleri`
  MODIFY `ID` int(9) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `suclistesi`
--
ALTER TABLE `suclistesi`
  MODIFY `ID` int(9) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `tutuklamanoktalari`
--
ALTER TABLE `tutuklamanoktalari`
  MODIFY `tID` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `urunler`
--
ALTER TABLE `urunler`
  MODIFY `ID` int(9) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `uyusturucular`
--
ALTER TABLE `uyusturucular`
  MODIFY `uID` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `wcode_applications`
--
ALTER TABLE `wcode_applications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `wcode_commentaries`
--
ALTER TABLE `wcode_commentaries`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- Tablo için AUTO_INCREMENT değeri `wcode_complaints`
--
ALTER TABLE `wcode_complaints`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Tablo için AUTO_INCREMENT değeri `wcode_editables`
--
ALTER TABLE `wcode_editables`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `wcode_functions`
--
ALTER TABLE `wcode_functions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Tablo için AUTO_INCREMENT değeri `wcode_logs`
--
ALTER TABLE `wcode_logs`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Tablo için AUTO_INCREMENT değeri `wcode_notifications`
--
ALTER TABLE `wcode_notifications`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- Tablo için AUTO_INCREMENT değeri `wcode_questions`
--
ALTER TABLE `wcode_questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `wcode_recover`
--
ALTER TABLE `wcode_recover`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `wcode_tickets`
--
ALTER TABLE `wcode_tickets`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Tablo için AUTO_INCREMENT değeri `wcode_unban`
--
ALTER TABLE `wcode_unban`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `yorumlar`
--
ALTER TABLE `yorumlar`
  MODIFY `yorumID` int(11) NOT NULL AUTO_INCREMENT;

--
-- Dökümü yapılmış tablolar için kısıtlamalar
--

--
-- Tablo kısıtlamaları `price_history`
--
ALTER TABLE `price_history`
  ADD CONSTRAINT `price_history_ibfk_1` FOREIGN KEY (`coin_id`) REFERENCES `coins` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
