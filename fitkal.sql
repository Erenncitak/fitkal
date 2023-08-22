-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 22 Ağu 2023, 11:14:33
-- Sunucu sürümü: 10.4.28-MariaDB
-- PHP Sürümü: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `fitkal`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `adminler`
--

CREATE TABLE `adminler` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Tablo döküm verisi `adminler`
--

INSERT INTO `adminler` (`id`, `username`, `password`, `created_at`) VALUES
(1, 'admin', '8c6976e5b5410415bde908bd4dee15dfb167a9c873fc4bb8a81f6f2ab448a918', '2023-08-20 21:51:38');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `giris`
--

CREATE TABLE `giris` (
  `kullanici_id` int(11) NOT NULL,
  `kullanici_ad` varchar(255) NOT NULL,
  `kullanici_soyad` varchar(255) NOT NULL,
  `kullanici_mail` varchar(255) NOT NULL,
  `kullanici_sifre` varchar(255) NOT NULL,
  `kod` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Tablo döküm verisi `giris`
--

INSERT INTO `giris` (`kullanici_id`, `kullanici_ad`, `kullanici_soyad`, `kullanici_mail`, `kullanici_sifre`, `kod`) VALUES
(1, 'eren', 'çıtak', 'erenncitak@gmail.com', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', 'Do8nT'),
(2, 'ahmet', 'türkel', 'ahmet@gmail.com', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', ''),
(5, 'erol', 'çıtak', 'erolcitak@gmail.com', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', ''),
(6, 'test', 'test123', 'zreverse12@gmail.com', '932f3c1b56257ce8539ac269d7aab42550dacf8818d075f0bdf1990562aae3ef', 'H1erVW4EZA5aZ6EpFVn7JB5DJY0CXd3dbGMgHoEI7CMilpl54x'),
(7, 'Hande', 'Çıtak', 'handecitak99@gmail.com', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', 'bBnNG');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `remember_me`
--

CREATE TABLE `remember_me` (
  `user_id` varchar(255) NOT NULL,
  `remember_token` varchar(255) NOT NULL,
  `expired_time` varchar(255) NOT NULL,
  `user_browser` text NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `remember_me`
--

INSERT INTO `remember_me` (`user_id`, `remember_token`, `expired_time`, `user_browser`, `id`) VALUES
('erolcitak@gmail.com', '87f0e5895f9fcdad605d27816e46f748a5553f5a51e18f060c6bc0742bf1b6d0', '1692902590', '2533f8900067a6227d582dcd96b98994', 10),
('erenncitak@gmail.com', 'fb43c4b333df11d284b1938b444a75811a753532d7cf901583acc95c1d48a6f4', '1693061016', '2533f8900067a6227d582dcd96b98994', 11),
('erenncitak@gmail.com', 'a90c08f67445c7cb7e53b4d0f8a97abebc768074492af96af4e495f3782e7d55', '1693061066', '2533f8900067a6227d582dcd96b98994', 12),
('erenncitak@gmail.com', '1fc485c6fcca3b910fdfe5ca65e339d2ee5f22e7f819f419642f668677ad4717', '1693062764', '3357fadb0316939352bbdd4d5360a97f', 13),
('erenncitak@gmail.com', '03e28aea785a59915d88fcfb000a6712fef8521d4da0361b1b31e8e51adedf98', '1693062836', '3357fadb0316939352bbdd4d5360a97f', 14),
('erenncitak@gmail.com', 'b33b585bf9668828432876c09440b120d1eeae1d174e529cf4f33a14c1a6962c', '1693064216', '3357fadb0316939352bbdd4d5360a97f', 15),
('erenncitak@gmail.com', '0a90de298033494fab95732018f20c5f1cae82490166fba986dbd37f556b5a34', '1693174088', '3357fadb0316939352bbdd4d5360a97f', 16),
('erenncitak@gmail.com', '3be8ff70133ff0bc2642a2ef81f7e1482e7389344bc23bdb4b20b70e8ec1428d', '1693232375', '2533f8900067a6227d582dcd96b98994', 17),
('handecitak99@gmail.com', '6d3f2e943ae7bf83d34d44d0a0539456bfdf52d6b18f028e3d54b68537b440e9', '1693256065', '2533f8900067a6227d582dcd96b98994', 18),
('handecitak99@gmail.com', '1ef2a33c70e0ab95cdd72b3cd477f3a583da5d459a8a62fb552976fe5a3ca63c', '1693256275', '2533f8900067a6227d582dcd96b98994', 19),
('admin', 'e96af4de6039dac98e0e3fa856c7df6d01436abf0fd2681c63ae05deb58fb792', '1693262400', '2533f8900067a6227d582dcd96b98994', 20),
('erenncitak@gmail.com', '541242fdc116918901fcfcd567a04e67b21e5b9168448046f972738350d2030f', '1693262486', '2533f8900067a6227d582dcd96b98994', 21);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `sifre_unuttum`
--

CREATE TABLE `sifre_unuttum` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `token` varchar(255) NOT NULL,
  `expires` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `yorumlar`
--

CREATE TABLE `yorumlar` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `yorum` text NOT NULL,
  `onaylandi` tinyint(1) NOT NULL DEFAULT 0,
  `page_id` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Tablo döküm verisi `yorumlar`
--

INSERT INTO `yorumlar` (`id`, `user_id`, `yorum`, `onaylandi`, `page_id`, `created_at`) VALUES
(1, 1, 'test', 1, 0, '2023-08-20 22:36:51'),
(2, 1, 'asdasd', 1, 0, '2023-08-20 22:37:07'),
(3, 1, 't1t', 1, 0, '2023-08-20 22:37:38'),
(4, 1, 'test', 1, 0, '2023-08-20 22:38:02'),
(5, 1, 't1', 1, 0, '2023-08-20 22:38:53'),
(6, 1, 'tttet', 1, 0, '2023-08-20 22:39:34'),
(7, 1, 't1t1', 1, 0, '2023-08-20 22:42:20'),
(8, 1, 't123', 1, 0, '2023-08-20 22:43:30'),
(9, 1, 'oç', 1, 0, '2023-08-20 22:45:37'),
(10, 1, 'yark', 1, 0, '2023-08-20 22:45:47'),
(11, 1, 'yarrk', 1, 0, '2023-08-20 22:45:50'),
(12, 1, 'onaysız', 2, 0, '2023-08-20 23:13:00'),
(13, 1, 'tet', 2, 0, '2023-08-20 23:13:26'),
(14, 1, 'test', 1, 3, '2023-08-21 13:28:03'),
(15, 1, 't2', 1, 4, '2023-08-21 13:30:07'),
(16, 1, 't3', 1, 5, '2023-08-21 13:30:12'),
(17, 1, 'tt', 1, 0, '2023-08-21 13:30:18'),
(18, 1, 'bca', 1, 1, '2023-08-21 13:30:22'),
(19, 1, 'bb', 1, 1, '2023-08-21 13:30:26'),
(20, 1, 't3', 1, 1, '2023-08-21 13:30:52'),
(21, 1, 't31', 2, 1, '2023-08-21 13:31:10'),
(22, 1, 'ggg', 1, 2, '2023-08-21 13:31:16');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `adminler`
--
ALTER TABLE `adminler`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `giris`
--
ALTER TABLE `giris`
  ADD PRIMARY KEY (`kullanici_id`);

--
-- Tablo için indeksler `remember_me`
--
ALTER TABLE `remember_me`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `sifre_unuttum`
--
ALTER TABLE `sifre_unuttum`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Tablo için indeksler `yorumlar`
--
ALTER TABLE `yorumlar`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `adminler`
--
ALTER TABLE `adminler`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `giris`
--
ALTER TABLE `giris`
  MODIFY `kullanici_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Tablo için AUTO_INCREMENT değeri `remember_me`
--
ALTER TABLE `remember_me`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Tablo için AUTO_INCREMENT değeri `sifre_unuttum`
--
ALTER TABLE `sifre_unuttum`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `yorumlar`
--
ALTER TABLE `yorumlar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
