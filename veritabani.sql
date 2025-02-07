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
