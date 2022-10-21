-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : ven. 21 oct. 2022 à 11:57
-- Version du serveur : 10.4.24-MariaDB
-- Version de PHP : 8.1.6

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
-- Structure de la table `artistes`
--

CREATE TABLE `artistes` (
  `id_artiste` int(11) NOT NULL,
  `nom_artiste` varchar(100) NOT NULL,
  `pays_artiste` varchar(100) NOT NULL,
  `url_image` text NOT NULL,
  `bio_artiste` text NOT NULL,
  `url_video` varchar(100) NOT NULL,
  `date_crea_artiste` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `jour`
--

CREATE TABLE `jour` (
  `id_jour` int(11) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `lien_artiste/jour`
--

CREATE TABLE `lien_artiste/jour` (
  `id_artiste` int(11) NOT NULL,
  `id_jour` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `lien_jour/reservation`
--

CREATE TABLE `lien_jour/reservation` (
  `id_jour` int(11) NOT NULL,
  `id_resa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `lien_style/artiste`
--

CREATE TABLE `lien_style/artiste` (
  `id_style` int(11) NOT NULL,
  `id_artiste` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `reservation`
--

CREATE TABLE `reservation` (
  `id_resa` int(11) NOT NULL,
  `id_tarif` int(11) NOT NULL,
  `nom_resa` varchar(100) NOT NULL,
  `prenom_resa` varchar(100) NOT NULL,
  `mail_resa` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `style`
--

CREATE TABLE `style` (
  `id_style` int(11) NOT NULL,
  `style` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `tarifs`
--

CREATE TABLE `tarifs` (
  `id_tarif` int(11) NOT NULL,
  `tarif` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `artistes`
--
ALTER TABLE `artistes`
  ADD PRIMARY KEY (`id_artiste`);

--
-- Index pour la table `jour`
--
ALTER TABLE `jour`
  ADD PRIMARY KEY (`id_jour`);

--
-- Index pour la table `lien_artiste/jour`
--
ALTER TABLE `lien_artiste/jour`
  ADD PRIMARY KEY (`id_artiste`,`id_jour`),
  ADD UNIQUE KEY `id_artiste` (`id_artiste`),
  ADD UNIQUE KEY `id_jour` (`id_jour`);

--
-- Index pour la table `lien_jour/reservation`
--
ALTER TABLE `lien_jour/reservation`
  ADD PRIMARY KEY (`id_jour`,`id_resa`),
  ADD UNIQUE KEY `id_jour` (`id_jour`),
  ADD UNIQUE KEY `id_resa` (`id_resa`),
  ADD UNIQUE KEY `id_resa_2` (`id_resa`);

--
-- Index pour la table `lien_style/artiste`
--
ALTER TABLE `lien_style/artiste`
  ADD PRIMARY KEY (`id_style`,`id_artiste`),
  ADD UNIQUE KEY `id_style` (`id_style`),
  ADD UNIQUE KEY `id_artiste` (`id_artiste`);

--
-- Index pour la table `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`id_resa`),
  ADD UNIQUE KEY `id_tarif` (`id_tarif`);

--
-- Index pour la table `style`
--
ALTER TABLE `style`
  ADD PRIMARY KEY (`id_style`);

--
-- Index pour la table `tarifs`
--
ALTER TABLE `tarifs`
  ADD PRIMARY KEY (`id_tarif`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `artistes`
--
ALTER TABLE `artistes`
  MODIFY `id_artiste` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `jour`
--
ALTER TABLE `jour`
  MODIFY `id_jour` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `reservation`
--
ALTER TABLE `reservation`
  MODIFY `id_resa` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `style`
--
ALTER TABLE `style`
  MODIFY `id_style` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `tarifs`
--
ALTER TABLE `tarifs`
  MODIFY `id_tarif` int(11) NOT NULL AUTO_INCREMENT;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `lien_artiste/jour`
--
ALTER TABLE `lien_artiste/jour`
  ADD CONSTRAINT `lien_artiste/jour_ibfk_1` FOREIGN KEY (`id_artiste`) REFERENCES `artistes` (`id_artiste`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `lien_artiste/jour_ibfk_2` FOREIGN KEY (`id_jour`) REFERENCES `jour` (`id_jour`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `lien_jour/reservation`
--
ALTER TABLE `lien_jour/reservation`
  ADD CONSTRAINT `lien_jour/reservation_ibfk_1` FOREIGN KEY (`id_resa`) REFERENCES `reservation` (`id_resa`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `lien_jour/reservation_ibfk_2` FOREIGN KEY (`id_jour`) REFERENCES `jour` (`id_jour`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `lien_style/artiste`
--
ALTER TABLE `lien_style/artiste`
  ADD CONSTRAINT `lien_style/artiste_ibfk_1` FOREIGN KEY (`id_style`) REFERENCES `style` (`id_style`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `lien_style/artiste_ibfk_2` FOREIGN KEY (`id_artiste`) REFERENCES `artistes` (`id_artiste`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `reservation`
--
ALTER TABLE `reservation`
  ADD CONSTRAINT `reservation_ibfk_1` FOREIGN KEY (`id_tarif`) REFERENCES `tarifs` (`id_tarif`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
