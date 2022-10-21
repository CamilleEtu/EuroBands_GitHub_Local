-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : ven. 21 oct. 2022 à 15:42
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

--
-- Déchargement des données de la table `artistes`
--

INSERT INTO `artistes` (`id_artiste`, `nom_artiste`, `pays_artiste`, `url_image`, `bio_artiste`, `url_video`, `date_crea_artiste`) VALUES
(1, 'ABBA', 'Suède', '', 'Groupe de pop suédois fondé à Stockholm le 1er novembre 1971. Le groupe est originellement composé d\'Agnetha Fältskog, Benny Andersson, Björn Ulvaeus et Anni-Frid Lyngstad, dite « Frida ». Lors de leur formation, ils sont deux couples mariés, Agnetha et Björn, Frida et Benny.\r\n\r\nL\'acronyme et palindrome ABBA est composé des quatre initiales des prénoms des membres (Agnetha, Björn, Benny, Anni-Frid). Ce n\'est qu\'à partir de 1976 que le désormais célèbre ambigramme, avec un B inversé, est utilisé comme logo.\r\n\r\nSéparés depuis 1982, ABBA annonce fin avril 2018 que ses membres se sont retrouvés au cours de l\'été 2017 pour l\'enregistrement de deux nouvelles chansons qui feront partie de leur prochain album. Ce dernier, leur neuvième, intitulé Voyage, est sorti le 5 novembre 2021.', '', '1971-11-01'),
(2, 'U2', 'Irlande', '', 'Groupe rock irlandais originaire de Dublin, formé en 1976.\r\n\r\nIl est composé de Bono au chant et occasionnellement à la guitare ; The Edge à la guitare, au piano et au chant ; Adam Clayton à la basse ; et Larry Mullen Jr. à la batterie.\r\n\r\nU2 a vendu 200 millions d\'albums (en juin 2017) et a également remporté 22 Grammy Awards. U2 est classé 22e sur la liste des 100 plus grands artistes de tous les temps par le magazine Rolling Stone. Depuis le milieu des années 1980, le groupe défend la cause des droits de l\'homme, en faisant par exemple la promotion d\'Amnesty International lors de ses concerts. Les membres du groupe deviennent « ambassadeurs de conscience » de l\'organisation en décembre 2005. ', '', '1976-01-01'),
(3, 'Booba', 'France', '', 'Il est le fondateur du 92i, collectif regroupant initialement des rappeurs issus des Hauts-de-Seine, tels Mala, Nessbeal et Bram\'s ; il est également membre du groupe de rap français Lunatic, avec son ancien acolyte Ali, au sein duquel ils se sont fait connaître au milieu des années 1990.\r\n\r\nAvec l’album Mauvais Œil, Booba et Ali entrent dans l\'histoire du rap français en obtenant le premier disque d\'or pour un album indépendant.\r\n\r\nBooba a publié dix albums studio, a vendu plus de 3 millions de disques, a obtenu de nombreux disques de certification et est classé à la quatrième place des rappeurs ayant vendu le plus d\'albums dans l\'histoire du rap français. Son premier album, Temps mort, paraît en 2002. Il est suivi de Panthéon, Ouest Side et 0.9, tous certifiés et considérés comme des classiques du rap français. Son cinquième album, Lunatic, publié en 2010, reprend le nom de son ancien groupe. En 2012, Booba publie son sixième opus, intitulé Futur. En 2015, Booba sort deux albums : D.U.C et Nero Nemesis. En 2017, il sort son 9e album, Trône. En 2021, ULTRA est annoncé comme son dernier album.', '', '1994-01-01'),
(4, 'Sfera Ebbasta', 'Italie', '', 'Rappeur italien, aidé par son travail avec le producteur Charlie Charles, il est considéré comme l\'un des pionniers de la trap en Italie. En France, le jeune rappeur se fait connaitre à la suite de son apparition dans Anarchie, le premier album de SCH sur le titre Cartine Cartier.', '', '2011-01-01'),
(5, 'Morad', 'Espagne', '', 'Rappeur espagnol d\'origine marocaine, il fait son entrée dans la scène du rap espagnol en 2019 avec son single M.D.L.R, puis en montant un label du même nom.', '', '2017-01-01'),
(6, 'Damso', 'Belgique', '', '', '', '2006-01-01'),
(7, 'Mero', 'Allemagne', '', '', '', '2018-01-01'),
(8, 'Monsieur Doumani', 'Chypre', '', '', '', '2011-01-01'),
(9, 'David Guetta', 'France', '', '', '', '1986-01-01'),
(10, 'Angèle', 'Belgique', '', '', '', '2015-01-01'),
(11, '2Cellos', 'Croatie', '', '', '', '2011-01-01');

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
(3, '2023-06-25');

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

--
-- Déchargement des données de la table `lien_style/artiste`
--

INSERT INTO `lien_style/artiste` (`id_style`, `id_artiste`) VALUES
(1, 1),
(1, 8),
(1, 10),
(2, 3),
(2, 4),
(2, 5),
(2, 6),
(2, 7),
(3, 2),
(3, 11),
(4, 9);

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

--
-- Déchargement des données de la table `style`
--

INSERT INTO `style` (`id_style`, `style`) VALUES
(1, 'Pop'),
(2, 'Rap'),
(3, 'Rock'),
(4, 'Electro');

-- --------------------------------------------------------

--
-- Structure de la table `tarifs`
--

CREATE TABLE `tarifs` (
  `id_tarif` int(11) NOT NULL,
  `tarif` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `tarifs`
--

INSERT INTO `tarifs` (`id_tarif`, `tarif`) VALUES
(1, 24.99),
(2, 44.99),
(3, 64.99);

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
  ADD KEY `id_artiste` (`id_artiste`) USING BTREE,
  ADD KEY `id_jour` (`id_jour`) USING BTREE;

--
-- Index pour la table `lien_jour/reservation`
--
ALTER TABLE `lien_jour/reservation`
  ADD PRIMARY KEY (`id_jour`,`id_resa`),
  ADD KEY `id_resa` (`id_resa`) USING BTREE,
  ADD KEY `id_jour` (`id_jour`) USING BTREE;

--
-- Index pour la table `lien_style/artiste`
--
ALTER TABLE `lien_style/artiste`
  ADD PRIMARY KEY (`id_style`,`id_artiste`),
  ADD KEY `id_style` (`id_style`) USING BTREE,
  ADD KEY `id_artiste` (`id_artiste`) USING BTREE;

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
  MODIFY `id_artiste` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `jour`
--
ALTER TABLE `jour`
  MODIFY `id_jour` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `reservation`
--
ALTER TABLE `reservation`
  MODIFY `id_resa` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `style`
--
ALTER TABLE `style`
  MODIFY `id_style` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `tarifs`
--
ALTER TABLE `tarifs`
  MODIFY `id_tarif` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
