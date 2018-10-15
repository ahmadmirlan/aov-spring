-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: 13 Okt 2018 pada 13.22
-- Versi Server: 5.7.23-0ubuntu0.18.04.1
-- PHP Version: 7.2.10-0ubuntu0.18.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aov`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `heroes`
--

CREATE TABLE `heroes` (
  `id` int(11) NOT NULL,
  `hero_name` varchar(255) NOT NULL,
  `tagline` varchar(255) NOT NULL,
  `skill` varchar(255) NOT NULL,
  `cover` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `heroes`
--

INSERT INTO `heroes` (`id`, `hero_name`, `tagline`, `skill`, `cover`) VALUES
(1, 'Valhein', 'Be very very quiet, I\'m huntin\' demons.', 'http://dl.garenanow.com/cdn.garenanow.com/mgames/kgsam/resources/Website/Main%20Website/Heroes/stats/Valhein.png', 'https://arenaofmoba.com/wp-content/uploads/2017/12/133.jpg'),
(2, 'Murad', 'Attack when they are unprepared, make your move when they do not expect it.', 'http://dl.garenanow.com/cdn.garenanow.com/mgames/kgsam/resources/Website/Main%20Website/Heroes/stats/Murad.png', 'https://arenaofmoba.com/wp-content/uploads/2017/12/131.jpg'),
(3, 'Batman', 'Keep to the shadows!', 'http://dl.garenanow.com/cdn.garenanow.com/mgames/kgsam/resources/Website/Main%20Website/Heroes/stats/Batman.png', 'https://arenaofmoba.com/wp-content/uploads/2017/11/153.jpg'),
(4, 'Nakroth', 'You shall be judged.', 'http://dl.garenanow.com/cdn.garenanow.com/mgames/kgsam/resources/Website/Main%20Website/Heroes/stats/Nakroth.png', 'https://arenaofmoba.com/wp-content/uploads/2017/12/150.jpg'),
(5, 'Ilumia', 'The powers of the cosmos are mine to command!', 'http://dl.garenanow.com/cdn.garenanow.com/mgames/kgsam/resources/Website/Main%20Website/Heroes/stats/Ilumia.png', 'https://arenaofmoba.com/wp-content/uploads/2017/11/136.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `hero_roles`
--

CREATE TABLE `hero_roles` (
  `hero_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `hero_roles`
--

INSERT INTO `hero_roles` (`hero_id`, `role_id`) VALUES
(1, 1),
(3, 1),
(1, 2),
(2, 2),
(5, 2),
(4, 3),
(4, 4);

-- --------------------------------------------------------

--
-- Struktur dari tabel `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `role_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `roles`
--

INSERT INTO `roles` (`id`, `role_name`) VALUES
(1, 'Tank'),
(2, 'Marksman'),
(3, 'Warrior'),
(4, 'Assasin'),
(5, 'Mage'),
(6, 'Support');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `heroes`
--
ALTER TABLE `heroes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hero_roles`
--
ALTER TABLE `hero_roles`
  ADD PRIMARY KEY (`hero_id`,`role_id`),
  ADD KEY `role_id` (`role_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `heroes`
--
ALTER TABLE `heroes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `hero_roles`
--
ALTER TABLE `hero_roles`
  ADD CONSTRAINT `hero_roles_ibfk_1` FOREIGN KEY (`hero_id`) REFERENCES `heroes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `hero_roles_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
