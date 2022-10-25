-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mar. 25 oct. 2022 à 17:01
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
  `bio_artiste` varchar(5000) NOT NULL,
  `nation_artiste` varchar(50) NOT NULL,
  `url_video_artiste` text NOT NULL,
  `url_image_artiste` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `artiste`
--

INSERT INTO `artiste` (`id_artiste`, `nom_artiste`, `prenom_artiste`, `date_crea`, `bio_artiste`, `nation_artiste`, `url_video_artiste`, `url_image_artiste`) VALUES
(1, 'BigFlo & Oli', '', '2005-01-01', 'Bigflo et Oli est un groupe français de rap, originaire de Toulouse. Le duo est composé des frères Florian \"Bigflo\" et Olivio \"Oli\" Ordonez.\r\n\r\nIls sortent leur premier album \"La Cour des grands\" en 2015, qui est certifié disque d\'or moins de quatre mois après sa sortie puis disque de platine en France. Ils sont alors les plus jeunes rappeurs français à détenir ces récompenses.\r\n\r\nLeur deuxième album intitulé \"La Vraie Vie\", sort le 23 juin 2017. Il est certifié disque de diamant. Leur troisième album, \"La Vie de rêve\", sort en 2018, est certifié disque d\'or en dix jours d\'exploitation puis disque de platine un mois après sa sortie. En mai 2020, il est certifié triple disque de platine.\r\n\r\nAprès une pause médiatique de deux ans, le duo revient avec un quatrième album en 2022, \"Les autres c\'est nous\".', 'France', 'https://www.youtube.com/watch?v=F8do1V5ivbI&ab_channel=BigfloetOli', './img/BigfloEtOli.png'),
(2, 'Doré', 'Julien', '2008-01-01', 'Julien Doré est un auteur-compositeur-interprète, musicien, producteur et acteur français, né le 7 juillet 1982 à Alès dans le Gard. Il se fait connaître après avoir gagné la cinquième saison de Nouvelle Star en 2007.\r\n\r\nEn 2015, il remporte la Victoire de l\'artiste interprète masculin aux Victoires de la musique.\r\n\r\nEn 2016, il publie l\'album \"&\", certifié disque de diamant pour plus de 500 000 exemplaires vendus.\r\n\r\nEn 2018, il sort l\'album \"Vous & moi\" qui contient dix des treize chansons du précédent album studio ré-enregistrées en versions acoustiques.\r\n\r\nEn 2020, après deux années d\'absence, le chanteur dévoile son nouveau single intitulé \"La fièvre\". Une chanson dédiée au réchauffement climatique, Julien Doré souhaite alerter ses fans sur ce danger. Un clip tourné en Camargue, l\'artiste s\'engage dans l\'écologie et cette chanson est une manière d\'agir pour la planète. Le 24 août, il dévoile le single \"Barracuda II\", une ballade piano-voix. Le clip vidéo, tourné à Tornac, est sorti le même jour.\r\n\r\nQuatre années après le succès de son album \"&\", Julien Doré dévoilera son nouvel opus intitulé \"Aimée le 4 septembre 2020\". Lors de la finale de The Voice Kids diffusée le 10 octobre 2020 sur TF1, Julien Doré devient coach suppléant et épaule les candidats en lice pour le fameux trophée de la victoire.', 'France', 'https://www.youtube.com/watch?v=PpRgiaONETI&ab_channel=juliendoreVEVO', './img/Julien.png'),
(3, 'Iglesias', 'Enrique', '1994-01-01', 'Enrique Iglesias, né le 8 mai 1975 à Madrid, en Espagne, est un auteur-compositeur-interprète de pop et acteur espagnol.\r\n\r\nIl commence sa carrière au Mexique, sous le label indépendant Fonovisa Records, et devient ensuite un des artistes les plus célèbres d\'Amérique latine. À la fin des années 1990, il quitte sa maison de disques pour signer un contrat avec Universal Music. Celui-ci comprend l\'enregistrement de plusieurs albums à destination d\'un public anglophone, via le label Interscope, et d\'albums en espagnol à destination du marché hispanophone, via Universal Music Latino. Il est le deuxième fils du célèbre chanteur Julio Iglesias.\r\n\r\nEnrique Iglesias compte plus de 60 millions d\'albums et plus de 40 millions de singles vendus à travers le monde (plus de 12 millions d\'albums rien qu\'aux États-Unis). Il a classé deux titres (\"Bailamos\" et \"Be with You\") no 1 au Billboard Hot 100 et un titre (\"Hero\") no 1 au classement officiel britannique. Sa chanson \"Rhythm Divine\" a connu aussi un grand succès en Espagne et aux États-Unis en 1999-2000. En outre, il détient le record de vingt sept titres placés no 1 au classement des singles en langue espagnole américain, le Billboard Hot Latin Songs.', 'Espagne', 'https://www.youtube.com/watch?v=1m7TF2nVV1c&ab_channel=Enrique4Real', './img/Enrique.png'),
(4, 'Angèle', '', '2015-01-01', 'Angèle Van Laeken, dite Angèle, née le 3 décembre 1995 à Uccle (Bruxelles-Capitale), est une auteure-compositrice-interprète, musicienne, productrice, actrice et mannequin belge.\r\n\r\nSon premier album, \"Brol\", sorti en octobre 2018 et certifié double disque de diamant, s\'est vendu à plus de 500 000 exemplaires onze mois après sa sortie, atteignant ainsi la première place des ventes d\'album en France pour l\'année 2019. Elle sort ensuite son album \"Nonante-Cinq\", en 2021 qui connaît un énorme succès.\r\n\r\nEn 2020, elle remporte la Victoire de la musique du concert de l\'année pour son Brol Tour.', 'Belgique', 'https://www.youtube.com/watch?v=Y1sWOW23md0&ab_channel=Ang%C3%A8le', './img/Angèle Final.png'),
(5, 'Sam The Kid', '', '2001-01-01', 'Samuel Martins Torres Santiago Mira est né le 17 juillet 1979 à Chelas, Lisbonne. Révélé en 2001 durant la croissance du hip-hop tuga, Sam the Kid (StK) est un des artistes les plus influents du hip-hop portugais, étant considéré comme l\'un de ceux qui manient le plus l\'art de la plume et de la prose dans la langue de Camões.\r\n\r\nMême s\'il est plutôt méconnu jusqu\'en 2001, Sam the Kid est déjà auparavant un de responsables pour les prouesses d\'autres groupes comme Mind da Gap, Bullet, Chullage, Micro e Valete, entre autres. Son premier album, \"Entre(tanto)\", était disponible depuis 1999, mais seulement en 2001, et en grande partie à cause de son disque instrumental \"Beats Vol 1: Amor\", le nom de Sam the Kid commence à être connu par la population portugaise.', 'Portugal', 'https://www.youtube.com/watch?v=RWMxpStK0BE&ab_channel=i.M', './img/SAM the kid.png'),
(6, 'U2', '', '1976-01-01', 'U2 est un groupe rock irlandais originaire de Dublin, formé en 1976.\r\n\r\nIl est composé de Bono au chant et occasionnellement à la guitare ; The Edge à la guitare, au piano et au chant ; Adam Clayton à la basse ; et Larry Mullen Jr. à la batterie.\r\n\r\nDepuis les années 1980, U2 s\'impose comme un groupe majeur sur la scène mondiale. Il est notamment connu pour les albums \"War\", \"The Unforgettable Fire\", \"The Joshua Tree\", \"Achtung Baby\", \"Zooropa\", \"Pop\" et \"All That You Can\'t Leave Behind\". Les singles \"Sunday Bloody Sunday\", \"New Year\'s Day\", \"Pride (In the Name of Love)\", \"With or Without You\", \"I Still Haven\'t Found What I\'m Looking For\", \"Where the Streets Have No Name\", \"Desire\", \"One\", \"Mysterious Ways\", \"Beautiful Day\", \"Elevation\" ou \"Vertigo\" sont quelques exemples de succès planétaire du groupe.\r\n\r\nU2 a vendu 200 millions d\'albums (en juin 2017) et a également remporté 22 Grammy Awards. U2 est classé 22e sur la liste des 100 plus grands artistes de tous les temps par le magazine Rolling Stone. Depuis le milieu des années 1980, le groupe défend la cause des droits de l\'homme, en faisant par exemple la promotion d\'Amnesty International lors de ses concerts. Les membres du groupe deviennent d\'ailleurs « ambassadeurs de conscience » de l\'organisation en décembre 2005. Bono a été en lice pour le prix Nobel de la paix en 2003 et en 2005. Il est également nommé « Personnalité de l\'année 2005 » par le Time Magazine pour son combat en faveur de l\'Afrique, et se voit décerner le titre d\'\"Homme de la paix\" par le maire de Paris, Bertrand Delanoë, en 2008.\r\n\r\n\"Songs of Innocence\", publié le 9 septembre 2014, est proposé gratuitement via l\'iTunes Store jusqu\'au 13 octobre 2014, pour une forme de record inédite : l\'album est mis à la disposition de plus de 500 millions d\'utilisateurs de la plateforme d\'Apple, en arrivant directement sur leurs différents appareils. En 2016, U2 a fêté ses 40 ans de carrière et se maintient au sommet. Leur 14e album studio \"Songs of Experience\" est sorti le 1er décembre 2017.', 'Irlande', 'https://www.youtube.com/watch?v=ujNeHIo7oTE&ab_channel=U2VEVO', './img/U2.png'),
(7, 'Pegboard Nerds', '', '2011-01-01', 'Pegboard Nerds est un groupe de musique électronique scandinave, composé du DJ norvégien Alexander Odden et du DJ danois Michael Parsberg. Le nom de Pegboard Nerds est un anagramme des noms de famille du duo, Odden et Parsberg. Odden et Parsberg se sont rencontrés pour la première fois en 2005 et ont formé le groupe en 2011. Auparavant, leurs albums étaient publiés dans le cadre de projets distincts et les deux étaient produits depuis les années 1990.\r\n\r\nLe 21 octobre 2015, le duo a lancé \"Pink Cloud\" pour financer la recherche sur le cancer du sein qui est passée au deuxième rang sur iTunes Dance Albums et au Top 10 sur les albums de danse Billboard.\r\n\r\nEn 2015, leur collaboration avec Jauz, un single intitulé \"Get On Up\", a été l’une des meilleures chansons de bass house de l’année. \"Superstar\" avec Nghtmre et Krewella était la chanson dubstep numéro 1 sur les Beatport Dubstep Charts de mai 2016 et a culminé à 28 sur le graphique Dance/Mix Show Airplay de Billboard en octobre 2016. Leur collaboration \"Deep In The Night\" avec l’artiste montréalais Snails est sortie en août 2016.\r\n\r\nEn 2017, le duo sort \"Nerds by Nature\" avec un EP remix qui sort plus tard dans l’année. Le Parlement européen est arrivé au 12e rang sur les palmarès des meilleurs albums de danse et d’albums électroniques et a reçu des commentaires généralement positifs.', 'Danemark et Norvège', 'https://www.youtube.com/watch?v=MwSkC85TDgY&ab_channel=MonstercatUncaged', './img/Pegboard Nerds.png'),
(8, 'Mero', '', '2018-01-01', 'Mero, de son vrai nom Enes Meral, est un rappeur allemand d\'origine turque, né le 28 juillet 2000 à Rüsselsheim am Main.\r\n\r\nMero attire l\'attention avec des vidéos de rap sur Instagram. Mero signe en mai 2018 un contrat avec Groove Attack TraX, une coentreprise entre le rappeur Xatar et le label Groove Attack, dirigé par Xatar1.\r\n\r\nLe 23 novembre 2018, Mero publie son premier single \"Baller los\" qui devient immédiatement le numéro un des tendances allemands sur YouTube puis sur Spotify. Après seulement une journée, la vidéo atteint un million de vues. La chanson est numéro un des ventes en Allemagne le 30 novembre 20183 et en Autriche. Il est le premier rappeur de l\'histoire du classement allemand à être numéro un avec son premier single. Son style se caractérise par des chœurs d\'inspiration orientale et l\'utilisation du double-temps. La sortie de son premier album studio \"Ya Hero Ya Mero\" est prévue pour le 15 mars 2019. Le deuxième single \"Hobby Hobby\" paraît en janvier 2019 et a déjà après un jour plus de 1,7 million de streams sur Spotify. Il est numéro un des ventes en Allemagne et en Autriche.\r\n\r\nEn 2021 il est coach de \"O Ses Türkiye RAP\", la version rap de \"O Ses Türkiye\".', 'Allemagne', 'https://www.youtube.com/watch?v=cWwSBq3zlWw&ab_channel=MERO', './img/MERO.png'),
(9, 'Hldano Pivo', '', '1987-01-01', 'Hladno pivo (\"Cold beer\" en anglais ou \"Bière froide\" en français) est un groupe punk rock croate. Le groupe d’enregistrement, dirigé par Mile Kekin, reste l’un des groupes de rock les plus populaires en Croatie.\r\n\r\nLe groupe a été formée en 1987 à Zagreb, République socialiste de Croatie, SFR Yougoslavie. Il se composait initialement de cinq membres : Zok, Tedi, Suba, Stipe et Mile. Au début, le groupe a joué des reprises de Ramones, Sex Pistols, Dead Kennedys, AC/DC, Motörhead, The Rolling Stones, The Beatles, Judas Priest, Azra, Zabranjeno pušenje et Električni orgazam.\r\n\r\nLe 21 mai 1988, le groupe donne son premier concert à Kumrovec. En 1988 le groupe a également tenu un concert infructueux au lac Jarun à Zagreb, en raison du batteur du groupe qui a joué avant eux refusant de quitter la batterie pour laisser la place Hladno pivo.\r\n\r\nEn 1989 Stipe quitte le groupe (pour former Falschspieler). Cette année est aussi importante car Zok, Tedi, Suba et Mile enregistrent leur première démo. La démo comprenait six chansons : \"Für immer Punk\" (une reprise de Goldene Zitronen), \"Bonzo\", \"Savršeni marginalci\", \"Niemals\", \"Buntovnik\" et \"Čelične zavjese\". La démo a été enregistrée à Jozo à Trešnjevka, Zagreb. Une semaine plus tard, Mile et Zok ont été envoyés pour faire leur service militaire.\r\n\r\nLorsqu’ils sont revenus du service militaire en 1990, ils ont recommencé à jouer. Ils ont ainsi sorti : \"Princeza\", \"Heroin\", \"Dobro veče\", \"Trening za umiranje\", \"Buba švabe\", \"Zakaj se tak\' oblačiš\", and \"Pjevajte nešto ljubavno\". Ces chansons ont été enregistrées en 1991 chez Denis (alias Denyken) à Sopot, Zagreb. Ces chansons, ainsi que la version modifiée de \r\n \"Marginalci\", ont été publiées comme cassette en production de Megatherium rec.\r\n\r\nLe 20 septembre 2008, ils se sont produits devant 20000 personnes le jour du 20e anniversaire du groupe à Zagreb.\r\n', 'Croatie', 'https://www.youtube.com/watch?v=m1anY6MTvxA&ab_channel=skrobi0104', './img/HLADNO PIVO.png'),
(10, 'The Rasmus', '', '1994-01-01', 'The Rasmus est un groupe de rock finlandais originaire d\'Helsinki.\r\n\r\nIl fit ses débuts en 1994, ses membres étant alors âgés de 16 ans. Il était alors formé de Lauri Ylönen (chant), Pauli Rantasalmi (guitare), Eero Heinonen (basse) et Janne Heiskanen (batterie), qui quitta le groupe en 1998. Il sera remplacé par Aki Hakala (batterie). En 1996, ils sortent leur premier album \"Peep\", puis l\'année suivante c\'est au tour de \"Playboy\". La musique des Rasmus est plutôt orientée funk. En 1998, l\'album \"Hell of a Tester\" fait son apparition et le funk laisse sa place au rock mélodieux. Leur best-of \"Hell of a Collection\" sort l\'année suivante.\r\n\r\nAvant même de s\'imposer en Finlande, le groupe s\'appelait Antalla. Avant la sortie de leur quatrième album en 2001 (\"Into\"), le groupe s\'appelait Rasmus, mais ils ont changé afin d\'éviter d\'être confondus avec un DJ suédois. En 2003, ils frappent très fort avec leur album \"Dead Letters\" et leur chanson-phare \"In the Shadows\", qui les fait connaître dans le monde entier.\r\n\r\nAujourd\'hui, The Rasmus est l\'un des groupes finlandais qui a le mieux réussi avec plus de 1,5 million d\'albums vendus dans le monde, huit récompenses en or et cinq récompenses en platine. Ils ont fait 9 albums, y compris leur tout dernier, \"Dark Matters\", sorti en 2017. Les chansons les plus connues du groupe sont \"In the Shadows\", \"F-F-F-Falling\", \"Shot\", \"First Day Of My Life\", \"Guilty\" et \"Livin\' In A World Without You\".', 'Finlande', 'https://www.youtube.com/watch?v=7gwO8-oqwFw&ab_channel=TheRasmus', './img/THE RASMUS.png'),
(11, 'van Buuren', 'Armin', '1996-01-01', 'Armin van Buuren, né le 25 décembre 1976 à Leyde, est un disc jockey, producteur de musique et compositeur néerlandais. Surnommé « le roi de la trance » par la presse spécialisée, il est élu meilleur DJ au monde par votation populaire via DJ Magazine à cinq reprises (2007, 2008, 2009, 2010, 2012), détenant le record de décernements du titre.\r\n\r\nArmin van Buuren est actif sous divers pseudonymes depuis 1996, d\'abord aux Pays-Bas puis à l\'international. Il est de nos jours principalement connu pour ses mixes de plusieurs heures diffusés depuis Amsterdam dans son émission musicale \"A State of Trance (ASOT)\", écoutée hebdomadairement par environ 40 millions de personnes dans le monde à travers 84 pays sur plus de 100 stations radiophoniques. Lancée en 2001, l\'émission célèbre son 1 000e épisode en 2021. Armin van Buuren est également connu pour sa participation aux plus grands festivals comme tête d\'affiche et en tant qu\'organisateur de plusieurs événements aux côtés d\'autres artistes, dont \"A State of Trance Festival\", avec des dates en tournée régulières, dont une annuelle à la Jaarbeurs d\'Utrecht.\r\n\r\nAuteur de sept albums, dont six parus sur Armada Music, le label qu\'il cofonde en 2003, ainsi que de nombreuses collaborations, il détient le record de longévité pour un artiste associé au genre musical de la trance sur le classement hebdomadaire Dance/Electronic Albums du magazine américain Billboard, avec 21 entrées. En 2013, il est fait citoyen d\'honneur de sa ville natale de Leyde, deux ans après sa nomination au rang d\'officier dans l\'ordre d\'Orange-Nassau par la reine Beatrix pour services à la musique, à l\'occasion de la fête de la Reine.', 'Pays-Bas', 'https://www.youtube.com/watch?v=LofWybYHljQ&ab_channel=ArminvanBuuren', './img/ARMIN VAN BUUREN.png'),
(12, 'The Knife', '', '1999-01-01', 'The Knife est un groupe suédois de synthpop, originaire de Göteborg. Il est formé en 1999 par Olof et Karin Dreijer, frère et sœur, et reconnu par la critique à partir de 2006. \r\n\r\nLe premier album, The Knife du duo sort en 2001. En 2003, le titre \"Heartbeats\" est repris par José González dans son album \"Veneer\". Cette version sera ensuite utilisée en 2006 dans une publicité pour les écrans Bravia de Sony. Dans une interview pour le journal Dagens Nyheter, le groupe prétend que Sony a payé une grande somme d\'argent pour utiliser leur chanson ; malgré les vues anti-commerciales du groupe, ils ont justifié la transaction en citant leur besoin d\'argent.\r\n\r\nLe groupe se sépare en 2014.\r\n\r\n', 'Suède', 'https://www.youtube.com/watch?v=gKhjaGRhIYU&ab_channel=LOST', './img/The Knife.png');

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

--
-- Déchargement des données de la table `lien_artiste/style`
--

INSERT INTO `lien_artiste/style` (`id_artiste`, `id_style`) VALUES
(1, 2),
(2, 1),
(3, 1),
(4, 1),
(5, 2),
(6, 3),
(7, 4),
(8, 2),
(9, 3),
(10, 3),
(11, 4),
(12, 4);

-- --------------------------------------------------------

--
-- Structure de la table `lien_jour/artiste`
--

CREATE TABLE `lien_jour/artiste` (
  `id_jour` int(11) NOT NULL,
  `id_artiste` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `lien_jour/artiste`
--

INSERT INTO `lien_jour/artiste` (`id_jour`, `id_artiste`) VALUES
(4, 1),
(4, 5),
(4, 8),
(4, 7),
(1, 11),
(1, 12),
(1, 2),
(1, 3),
(2, 4),
(2, 10),
(2, 9),
(2, 6);

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
