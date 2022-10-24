-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : lun. 24 oct. 2022 à 11:00
-- Version du serveur : 10.4.22-MariaDB
-- Version de PHP : 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `eurobands`
--

-- --------------------------------------------------------

--
-- Structure de la table `artiste`
--

CREATE TABLE `artiste` (
  `id_artiste` int(11) NOT NULL,
  `nom_artiste` varchar(50) NOT NULL,
  `prenom_artiste` varchar(50) NOT NULL,
  `date_crea` date NOT NULL,
  `bio_artiste` varchar(500) NOT NULL,
  `nation_artiste` varchar(50) NOT NULL,
  `url_video_artiste` text NOT NULL,
  `url_image_artiste` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `artiste`
--

INSERT INTO `artiste` (`id_artiste`, `nom_artiste`, `prenom_artiste`, `date_crea`, `bio_artiste`, `nation_artiste`, `url_video_artiste`, `url_image_artiste`) VALUES
(1, 'BigFlo & Oli', '', '2005-01-01', '', 'France', '', ''),
(2, 'Doré', 'Julien', '2008-01-01', '', 'France', '', ''),
(3, 'Iglesias', 'Enrique', '1994-01-01', '', 'Espagne', '', ''),
(4, 'Angèle', '', '2015-01-01', '', 'Belgique', '', ''),
(5, 'Sam The Kid', '', '2001-01-01', '', 'Portugal', '', ''),
(6, 'U2', '', '1976-01-01', '', 'Irlande', '', ''),
(7, 'Pegboard Nerds', '', '2011-01-01', '', 'Danemark et Norvège', '', ''),
(8, 'Mero', '', '2018-01-01', '', 'Allemagne', '', ''),
(9, 'Hldano Pivo', '', '1987-01-01', '', 'Croatie', '', ''),
(10, 'The Rasmus', '', '1994-01-01', '', 'Finlande', '', ''),
(11, 'van Buuren', 'Armin', '1996-01-01', '', 'Pays-Bas', '', ''),
(12, 'The Knife', '', '1999-01-01', '', 'Suède', '', '');

-- --------------------------------------------------------

--
-- Structure de la table `festivalier`
--

CREATE TABLE `festivalier` (
  `id_festivalier` int(11) NOT NULL,
  `nom_festivalier` varchar(50) NOT NULL,
  `prenom_festivalier` varchar(50) NOT NULL,
  `mail_festivalier` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `jour`
--

CREATE TABLE `jour` (
  `id_jour` int(11) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `jour`
--

INSERT INTO `jour` (`id_jour`, `date`) VALUES
(1, '2023-06-23'),
(2, '2023-06-24'),
(3, '2023-06-25'),
(4, '2023-06-22');

-- --------------------------------------------------------

--
-- Structure de la table `lien_artiste/style`
--

CREATE TABLE `lien_artiste/style` (
  `id_artiste` int(11) NOT NULL,
  `id_style` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `lien_jour/artiste`
--

CREATE TABLE `lien_jour/artiste` (
  `id_jour` int(11) NOT NULL,
  `id_artiste` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `reserve`
--

CREATE TABLE `reserve` (
  `tarif` float NOT NULL,
  `id_festivalier` int(11) NOT NULL,
  `id_jour` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `style`
--

CREATE TABLE `style` (
  `id_style` int(11) NOT NULL,
  `style_artiste` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `style`
--

INSERT INTO `style` (`id_style`, `style_artiste`) VALUES
(1, 'pop'),
(2, 'rap'),
(3, 'rock'),
(4, 'electro');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `artiste`
--
ALTER TABLE `artiste`
  ADD PRIMARY KEY (`id_artiste`);

--
-- Index pour la table `festivalier`
--
ALTER TABLE `festivalier`
  ADD PRIMARY KEY (`id_festivalier`);

--
-- Index pour la table `jour`
--
ALTER TABLE `jour`
  ADD PRIMARY KEY (`id_jour`);

--
-- Index pour la table `lien_artiste/style`
--
ALTER TABLE `lien_artiste/style`
  ADD KEY `id_artiste` (`id_artiste`),
  ADD KEY `id_style` (`id_style`);

--
-- Index pour la table `lien_jour/artiste`
--
ALTER TABLE `lien_jour/artiste`
  ADD KEY `id_jour` (`id_jour`),
  ADD KEY `id_artiste` (`id_artiste`);

--
-- Index pour la table `reserve`
--
ALTER TABLE `reserve`
  ADD KEY `id_festivalier` (`id_festivalier`),
  ADD KEY `id_jour` (`id_jour`);

--
-- Index pour la table `style`
--
ALTER TABLE `style`
  ADD PRIMARY KEY (`id_style`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `artiste`
--
ALTER TABLE `artiste`
  MODIFY `id_artiste` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pour la table `festivalier`
--
ALTER TABLE `festivalier`
  MODIFY `id_festivalier` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `jour`
--
ALTER TABLE `jour`
  MODIFY `id_jour` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `style`
--
ALTER TABLE `style`
  MODIFY `id_style` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `lien_artiste/style`
--
ALTER TABLE `lien_artiste/style`
  ADD CONSTRAINT `lien_artiste/style_ibfk_1` FOREIGN KEY (`id_style`) REFERENCES `style` (`id_style`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `lien_artiste/style_ibfk_2` FOREIGN KEY (`id_artiste`) REFERENCES `artiste` (`id_artiste`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `lien_jour/artiste`
--
ALTER TABLE `lien_jour/artiste`
  ADD CONSTRAINT `lien_jour/artiste_ibfk_1` FOREIGN KEY (`id_jour`) REFERENCES `jour` (`id_jour`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `lien_jour/artiste_ibfk_2` FOREIGN KEY (`id_artiste`) REFERENCES `artiste` (`id_artiste`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `reserve`
--
ALTER TABLE `reserve`
  ADD CONSTRAINT `reserve_ibfk_1` FOREIGN KEY (`id_festivalier`) REFERENCES `festivalier` (`id_festivalier`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `reserve_ibfk_2` FOREIGN KEY (`id_jour`) REFERENCES `jour` (`id_jour`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
