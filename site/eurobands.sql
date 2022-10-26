-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mer. 26 oct. 2022 à 14:59
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
  `bio_anglais` varchar(5000) NOT NULL,
  `nation_artiste` varchar(50) NOT NULL,
  `url_video_artiste` text NOT NULL,
  `url_image_artiste` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `artiste`
--

INSERT INTO `artiste` (`id_artiste`, `nom_artiste`, `prenom_artiste`, `date_crea`, `bio_artiste`, `bio_anglais`, `nation_artiste`, `url_video_artiste`, `url_image_artiste`) VALUES
(1, 'BigFlo & Oli', '', '2005-01-01', 'Bigflo et Oli est un groupe français de rap, originaire de Toulouse. Le duo est composé des frères Florian \"Bigflo\" et Olivio \"Oli\" Ordonez.\r\n\r\nIls sortent leur premier album \"La Cour des grands\" en 2015, qui est certifié disque d\'or moins de quatre mois après sa sortie puis disque de platine en France. Ils sont alors les plus jeunes rappeurs français à détenir ces récompenses.\r\n\r\nLeur deuxième album intitulé \"La Vraie Vie\", sort le 23 juin 2017. Il est certifié disque de diamant. Leur troisième album, \"La Vie de rêve\", sort en 2018, est certifié disque d\'or en dix jours d\'exploitation puis disque de platine un mois après sa sortie. En mai 2020, il est certifié triple disque de platine.\r\n\r\nAprès une pause médiatique de deux ans, le duo revient avec un quatrième album en 2022, \"Les autres c\'est nous\".', 'Bigflo et Oli is a French rap group from Toulouse. The duo is composed of the brothers Florian \"Bigflo\" and Olivio \"Oli\" Ordonez.\r\n\r\nThey released their first album \"La Cour des grands\" in 2015, which is certified gold less than four months after its release and platinum in France. They are then the youngest French rappers to hold these awards.\r\n\r\nTheir second album entitled \"La Vraie Vie\", was released on June 23, 2017. It is certified diamond disc. Their third album, \"La Vie de rêve\", was released in 2018, was certified gold in ten days of operation and platinum one month after its release. In May 2020, it is certified triple platinum.\r\n\r\nAfter a two-year media break, the duo returns with a fourth album in 2022, \"Les autres c\'est nous\".', 'France', 'https://www.youtube.com/watch?v=F8do1V5ivbI&ab_channel=BigfloetOli', './img/BigfloEtOli.png'),
(2, 'Doré', 'Julien', '2008-01-01', 'Julien Doré est un auteur-compositeur-interprète, musicien, producteur et acteur français, né le 7 juillet 1982 à Alès dans le Gard. Il se fait connaître après avoir gagné la cinquième saison de Nouvelle Star en 2007.\r\n\r\nEn 2015, il remporte la Victoire de l\'artiste interprète masculin aux Victoires de la musique.\r\n\r\nEn 2016, il publie l\'album \"&\", certifié disque de diamant pour plus de 500 000 exemplaires vendus.\r\n\r\nEn 2018, il sort l\'album \"Vous & moi\" qui contient dix des treize chansons du précédent album studio ré-enregistrées en versions acoustiques.\r\n\r\nEn 2020, après deux années d\'absence, le chanteur dévoile son nouveau single intitulé \"La fièvre\". Une chanson dédiée au réchauffement climatique, Julien Doré souhaite alerter ses fans sur ce danger. Un clip tourné en Camargue, l\'artiste s\'engage dans l\'écologie et cette chanson est une manière d\'agir pour la planète. Le 24 août, il dévoile le single \"Barracuda II\", une ballade piano-voix. Le clip vidéo, tourné à Tornac, est sorti le même jour.\r\n\r\nQuatre années après le succès de son album \"&\", Julien Doré dévoilera son nouvel opus intitulé \"Aimée\" le 4 septembre 2020. Lors de la finale de The Voice Kids diffusée le 10 octobre 2020 sur TF1, Julien Doré devient coach suppléant et épaule les candidats en lice pour le fameux trophée de la victoire.', 'Julien Doré is a singer-songwriter, musician, producer and French actor, born on July 7, 1982 in Alès in the Gard. He became known after winning the fifth season of Nouvelle Star in 2007.\r\n\r\nIn 2015, he won the Man Interpret Award at the Music\'s Victories festival.\r\n\r\nIn 2016, he published the album \"&\", certified diamond record for more than 500,000 copies sold.\r\n\r\nIn 2018, he released the album \"Vous & moi\" which contains ten of the thirteen songs of the previous studio album re-recorded in acoustic versions.\r\n\r\nIn 2020, after two years of absence, the singer unveils his new single entitled \"La fièvre\". A song dedicated to global warming, Julien Doré wants to alert his fans about this danger. A video shot in the Camargue, the artist is committed to ecology and this song is a way of acting for the planet. On August 24, he unveiled the single \"Barracuda II\", a piano-voice ballad. The video clip, shot in Tornac, was released the same day.\r\n\r\nFour years after the success of his album \"&\", Julien Doré will unveil his new album entitled \"Aimée\" le 4 septembre 2020. During the final of The Voice Kids broadcast on October 10, 2020 on TF1, Julien Doré becomes an alternate coach and supports the candidates in contention for the famous trophy of victory.', 'France', 'https://www.youtube.com/watch?v=PpRgiaONETI&ab_channel=juliendoreVEVO', './img/Julien.png'),
(3, 'Iglesias', 'Enrique', '1994-01-01', 'Enrique Iglesias, né le 8 mai 1975 à Madrid, en Espagne, est un auteur-compositeur-interprète de pop et acteur espagnol.\r\n\r\nIl commence sa carrière au Mexique, sous le label indépendant Fonovisa Records, et devient ensuite un des artistes les plus célèbres d\'Amérique latine. À la fin des années 1990, il quitte sa maison de disques pour signer un contrat avec Universal Music. Celui-ci comprend l\'enregistrement de plusieurs albums à destination d\'un public anglophone, via le label Interscope, et d\'albums en espagnol à destination du marché hispanophone, via Universal Music Latino. Il est le deuxième fils du célèbre chanteur Julio Iglesias.\r\n\r\nEnrique Iglesias compte plus de 60 millions d\'albums et plus de 40 millions de singles vendus à travers le monde (plus de 12 millions d\'albums rien qu\'aux États-Unis). Il a classé deux titres (\"Bailamos\" et \"Be with You\") no 1 au Billboard Hot 100 et un titre (\"Hero\") no 1 au classement officiel britannique. Sa chanson \"Rhythm Divine\" a connu aussi un grand succès en Espagne et aux États-Unis en 1999-2000. En outre, il détient le record de vingt sept titres placés no 1 au classement des singles en langue espagnole américain, le Billboard Hot Latin Songs.', 'Enrique Iglesias, born on 8 May 1975 in Madrid, Spain, is a pop singer-songwriter and Spanish actor.\r\n\r\nHe began his career in Mexico, under the independent label Fonovisa Records, and then became one of the most famous artists in Latin America. In the late 1990s, he left his label to sign a contract with Universal Music. This includes the recording of several albums for an English-speaking audience, via the Interscope label, and albums in Spanish for the Spanish-speaking market, via Universal Music Latino. He is the second son of the famous singer Julio Iglesias.\r\n\r\nEnrique Iglesias has more than 60 million albums and more than 40 million singles sold worldwide (more than 12 million albums in the United States alone). He ranked two titles (\"Bailamos\" and \"Be with You\") No 1 in the Billboard Hot 100 and one title (\"Hero\") No 1 in the British official classification. His song \"Rhythm Divine\" was also a great success in Spain and the United States in 1999-2000. In addition, he holds the record of twenty seven titles placed #1 in the ranking of singles in American Spanish, the Billboard Hot Latin Songs.', 'Espagne', 'https://www.youtube.com/watch?v=1m7TF2nVV1c&ab_channel=Enrique4Real', './img/Enrique.png'),
(4, 'Angèle', '', '2015-01-01', 'Angèle Van Laeken, dite Angèle, née le 3 décembre 1995 à Uccle (Bruxelles-Capitale), est une auteure-compositrice-interprète, musicienne, productrice, actrice et mannequin belge.\r\n\r\nSon premier album, \"Brol\", sorti en octobre 2018 et certifié double disque de diamant, s\'est vendu à plus de 500 000 exemplaires onze mois après sa sortie, atteignant ainsi la première place des ventes d\'album en France pour l\'année 2019. Elle sort ensuite son album \"Nonante-Cinq\", en 2021 qui connaît un énorme succès.\r\n\r\nEn 2020, elle remporte la Victoire de la musique du concert de l\'année pour son Brol Tour.', 'Angèle Van Laeken, known as Angèle, born on 3 December 1995 in Uccle (Brussels-Capital), is a singer-songwriter, musician, producer, actress and Belgian model.\r\n\r\nHer first album, \"Brol\", released in October 2018 and certified double diamond disc, sold more than 500,000 copies eleven months after its release, reaching the first place in album sales in France for the year 2019. She then released her album \"Nonante-Cinq\", in 2021 which was a huge success.\r\n\r\nIn 2020, she won the Music\'s Victories festival for the concert of the year for her Brol Tour.', 'Belgique', 'https://www.youtube.com/watch?v=Y1sWOW23md0&ab_channel=Ang%C3%A8le', './img/Angele.png'),
(5, 'Sam The Kid', '', '2001-01-01', 'Samuel Martins Torres Santiago Mira est né le 17 juillet 1979 à Chelas, Lisbonne. Révélé en 2001 durant la croissance du hip-hop tuga, Sam the Kid (StK) est un des artistes les plus influents du hip-hop portugais, étant considéré comme l\'un de ceux qui manient le plus l\'art de la plume et de la prose dans la langue de Camões.\r\n\r\nMême s\'il est plutôt méconnu jusqu\'en 2001, Sam the Kid est déjà auparavant un de responsables pour les prouesses d\'autres groupes comme Mind da Gap, Bullet, Chullage, Micro e Valete, entre autres. Son premier album, \"Entre(tanto)\", était disponible depuis 1999, mais seulement en 2001, et en grande partie à cause de son disque instrumental \"Beats Vol 1: Amor\", le nom de Sam the Kid commence à être connu par la population portugaise.', 'Samuel Martins Torres Santiago Mira was born on 17 July 1979 in Chelas, Lisbon. Revealed in 2001 during the growth of tuga hip-hop, Sam the Kid (StK) is one of the most influential artists of Portuguese hip-hop, being considered one of those who wield the art of writing and prose in the language of Camões.\r\n\r\nEven if he is rather unknown until 2001, Sam the Kid is already one of those responsible for the prowess of other bands like Mind da Gap, Bullet, Chullage, Micro e Valete, among others. His first album, \"Entre(tanto)\", was available since 1999, but only in 2001, and largely because of his instrumental disc \"Beats Vol 1: Amor\", the name of Sam the Kid begins to be known by the Portuguese population.', 'Portugal', 'https://www.youtube.com/watch?v=RWMxpStK0BE&ab_channel=i.M', './img/SAM_the_kid.png'),
(6, 'U2', '', '1976-01-01', 'U2 est un groupe rock irlandais originaire de Dublin, formé en 1976.\r\n\r\nIl est composé de Bono au chant et occasionnellement à la guitare ; The Edge à la guitare, au piano et au chant ; Adam Clayton à la basse ; et Larry Mullen Jr. à la batterie.\r\n\r\nDepuis les années 1980, U2 s\'impose comme un groupe majeur sur la scène mondiale. Il est notamment connu pour les albums \"War\", \"The Unforgettable Fire\", \"The Joshua Tree\", \"Achtung Baby\", \"Zooropa\", \"Pop\" et \"All That You Can\'t Leave Behind\". Les singles \"Sunday Bloody Sunday\", \"New Year\'s Day\", \"Pride (In the Name of Love)\", \"With or Without You\", \"I Still Haven\'t Found What I\'m Looking For\", \"Where the Streets Have No Name\", \"Desire\", \"One\", \"Mysterious Ways\", \"Beautiful Day\", \"Elevation\" ou \"Vertigo\" sont quelques exemples de succès planétaire du groupe.\r\n\r\nU2 a vendu 200 millions d\'albums (en juin 2017) et a également remporté 22 Grammy Awards. U2 est classé 22e sur la liste des 100 plus grands artistes de tous les temps par le magazine Rolling Stone. Depuis le milieu des années 1980, le groupe défend la cause des droits de l\'homme, en faisant par exemple la promotion d\'Amnesty International lors de ses concerts. Les membres du groupe deviennent d\'ailleurs « ambassadeurs de conscience » de l\'organisation en décembre 2005. Bono a été en lice pour le prix Nobel de la paix en 2003 et en 2005. Il est également nommé « Personnalité de l\'année 2005 » par le Time Magazine pour son combat en faveur de l\'Afrique, et se voit décerner le titre d\'\"Homme de la paix\" par le maire de Paris, Bertrand Delanoë, en 2008.\r\n\r\n\"Songs of Innocence\", publié le 9 septembre 2014, est proposé gratuitement via l\'iTunes Store jusqu\'au 13 octobre 2014, pour une forme de record inédite : l\'album est mis à la disposition de plus de 500 millions d\'utilisateurs de la plateforme d\'Apple, en arrivant directement sur leurs différents appareils. En 2016, U2 a fêté ses 40 ans de carrière et se maintient au sommet. Leur 14e album studio \"Songs of Experience\" est sorti le 1er décembre 2017.', 'U2 is an Irish rock band from Dublin, formed in 1976.\r\n\r\nIt is composed of Bono on vocals and occasionally guitar; The Edge on guitar, piano and vocals; Adam Clayton on bass; and Larry Mullen Jr. to the battery.\r\n\r\nSince the 1980s, U2 has established itself as a major group on the world stage. He is known for his albums \"War\", \"The Unforgettable Fire\", \"The Joshua Tree\", \"Achtung Baby\", \"Zooropa\", \"Pop\" and \"All That You Can’t Leave Behind\". The singles \"Sunday Bloody Sunday\", \"New Year’s Day\", \"Pride (In the Name of Love)\", \"With or Without You\", \"I Still Haven’t Found What I’m Looking For\", \"Where the Streets Have No Name\", \"One\", \"Desire One\", \"Mysterious Ways\", \"Beautiful Day\", \"Elevation\" or \"Vertigo\" are some examples of the group’s global success.\r\n\r\nU2 sold 200 million albums (in June 2017) and also won 22 Grammy Awards. U2 is ranked 22nd on the list of the 100 greatest artists of all time by Rolling Stone magazine. Since the mid-1980s, the group has been defending the cause of human rights, for example by promoting Amnesty International at its concerts. The members of the group became “ambassadors of conscience” of the organization in December 2005. Bono was nominated for the Nobel Peace Prize in 2003 and 2005. He was also named «Personality of the Year 2005» by Time Magazine for his fight for Africa, and was awarded the title of \"Man of Peace\" by the mayor of Paris, Bertrand Delanoë, in 2008.\r\n\r\n\"Songs of Innocence\", published on September 9, 2014, is available for free through the iTunes Store until October 13, 2014, for a record-breaking form: the album is available to more than 500 million users of the Apple platform, by arriving directly on their various devices. In 2016, U2 celebrated its 40-year career and remains at the top. Their 14th album \"Songs of Experience\" came out on December 1st, 2017.', 'Irlande', 'https://www.youtube.com/watch?v=ujNeHIo7oTE&ab_channel=U2VEVO', './img/U2.png'),
(7, 'Pegboard Nerds', '', '2011-01-01', 'Pegboard Nerds est un groupe de musique électronique scandinave, composé du DJ norvégien Alexander Odden et du DJ danois Michael Parsberg. Le nom de Pegboard Nerds est un anagramme des noms de famille du duo, Odden et Parsberg. Odden et Parsberg se sont rencontrés pour la première fois en 2005 et ont formé le groupe en 2011. Auparavant, leurs albums étaient publiés dans le cadre de projets distincts et les deux étaient produits depuis les années 1990.\r\n\r\nLe 21 octobre 2015, le duo a lancé \"Pink Cloud\" pour financer la recherche sur le cancer du sein qui est passée au deuxième rang sur iTunes Dance Albums et au Top 10 sur les albums de danse Billboard.\r\n\r\nEn 2015, leur collaboration avec Jauz, un single intitulé \"Get On Up\", a été l’une des meilleures chansons de bass house de l’année. \"Superstar\" avec Nghtmre et Krewella était la chanson dubstep numéro 1 sur les Beatport Dubstep Charts de mai 2016 et a culminé à 28 sur le graphique Dance/Mix Show Airplay de Billboard en octobre 2016. Leur collaboration \"Deep In The Night\" avec l’artiste montréalais Snails est sortie en août 2016.\r\n\r\nEn 2017, le duo sort \"Nerds by Nature\" avec un EP remix qui sort plus tard dans l’année. Le Parlement européen est arrivé au 12e rang sur les palmarès des meilleurs albums de danse et d’albums électroniques et a reçu des commentaires généralement positifs.', 'Pegboard Nerds is a Scandinavian electronic music group composed of Norwegian DJ Alexander Odden and Danish DJ Michael Parsberg. The name Pegboard Nerds is an anagram of the duo’s surnames, Odden and Parsberg. Odden and Parsberg first met in 2005 and formed the group in 2011. Previously, their albums were published as separate projects and both were produced since the 1990s.\r\n\r\nOn October 21, 2015, the duo launched \"Pink Cloud\" to fund breast cancer research that went to second place on iTunes Dance Albums and top 10 on Billboard dance albums.\r\n\r\nIn 2015, their collaboration with Jauz, a single entitled \"Get On Up\", was one of the best bass house songs of the year. Superstar\" with Nghtmre and Krewella was the number one dubstep song on the Beatport Dubstep Charts of May 2016 and peaked at 28 on Billboard’s Dance/Mix Show Airplay chart in October 2016. Their collaboration \"Deep In The Night\" with Montreal artist Snails was released in August 2016.\r\n\r\nIn 2017, the duo released \"Nerds by Nature\" with a remix EP that will be released later this year. The European Parliament ranked 12th on the list of the best dance and electronic albums and received generally positive comments.', 'Danemark et Norvège', 'https://www.youtube.com/watch?v=MwSkC85TDgY&ab_channel=MonstercatUncaged', './img/Pegboard_Nerds.png'),
(8, 'Mero', '', '2018-01-01', 'Mero, de son vrai nom Enes Meral, est un rappeur allemand d\'origine turque, né le 28 juillet 2000 à Rüsselsheim am Main.\r\n\r\nMero attire l\'attention avec des vidéos de rap sur Instagram. Mero signe en mai 2018 un contrat avec Groove Attack TraX, une coentreprise entre le rappeur Xatar et le label Groove Attack, dirigé par Xatar1.\r\n\r\nLe 23 novembre 2018, Mero publie son premier single \"Baller los\" qui devient immédiatement le numéro un des tendances allemands sur YouTube puis sur Spotify. Après seulement une journée, la vidéo atteint un million de vues. La chanson est numéro un des ventes en Allemagne le 30 novembre 20183 et en Autriche. Il est le premier rappeur de l\'histoire du classement allemand à être numéro un avec son premier single. Son style se caractérise par des chœurs d\'inspiration orientale et l\'utilisation du double-temps. La sortie de son premier album studio \"Ya Hero Ya Mero\" est prévue pour le 15 mars 2019. Le deuxième single \"Hobby Hobby\" paraît en janvier 2019 et a déjà après un jour plus de 1,7 million de streams sur Spotify. Il est numéro un des ventes en Allemagne et en Autriche.\r\n\r\nEn 2021 il est coach de \"O Ses Türkiye RAP\", la version rap de \"O Ses Türkiye\".', 'Mero, whose real name is Enes Meral, is a German rapper of Turkish origin, born on July 28, 2000 in Rüsselsheim am Main.\r\n\r\nMero draws attention with rap videos on Instagram. In May 2018, Mero signed a contract with Groove Attack TraX, a joint venture between rapper Xatar and Groove Attack, directed by Xatar1.\r\n\r\nOn November 23, 2018, Mero released his first single \"Baller los\" which immediately became the number one German trend on YouTube and then on Spotify. After only one day, the video reaches a million views. The song is number one in sales in Germany on November 30, 20183 and in Austria. He is the first rapper in the history of the German ranking to be number one with his first single. His style is characterized by eastern-inspired choirs and the use of double-time. The release of his first studio album \"Ya Hero Ya Mero\" is scheduled for March 15, 2019. The second single \"Hobby Hobby\" was released in January 2019 and after one day had more than 1.7 million streams on Spotify. It is number one sales in Germany and Austria.\r\n\r\nIn 2021 he is coach of \"O Ses Türkiye RAP\", the rap version of \"O Ses Türkiye\".', 'Allemagne', 'https://www.youtube.com/watch?v=cWwSBq3zlWw&ab_channel=MERO', './img/MERO.png'),
(9, 'Hldano Pivo', '', '1987-01-01', 'Hladno pivo (\"Cold beer\" en anglais ou \"Bière froide\" en français) est un groupe punk rock croate. Le groupe d’enregistrement, dirigé par Mile Kekin, reste l’un des groupes de rock les plus populaires en Croatie.\r\n\r\nLe groupe a été formée en 1987 à Zagreb, République socialiste de Croatie, SFR Yougoslavie. Il se composait initialement de cinq membres : Zok, Tedi, Suba, Stipe et Mile. Au début, le groupe a joué des reprises de Ramones, Sex Pistols, Dead Kennedys, AC/DC, Motörhead, The Rolling Stones, The Beatles, Judas Priest, Azra, Zabranjeno pušenje et Električni orgazam.\r\n\r\nLe 21 mai 1988, le groupe donne son premier concert à Kumrovec. En 1988 le groupe a également tenu un concert infructueux au lac Jarun à Zagreb, en raison du batteur du groupe qui a joué avant eux refusant de quitter la batterie pour laisser la place Hladno pivo.\r\n\r\nEn 1989 Stipe quitte le groupe (pour former Falschspieler). Cette année est aussi importante car Zok, Tedi, Suba et Mile enregistrent leur première démo. La démo comprenait six chansons : \"Für immer Punk\" (une reprise de Goldene Zitronen), \"Bonzo\", \"Savršeni marginalci\", \"Niemals\", \"Buntovnik\" et \"Čelične zavjese\". La démo a été enregistrée à Jozo à Trešnjevka, Zagreb. Une semaine plus tard, Mile et Zok ont été envoyés pour faire leur service militaire.\r\n\r\nLorsqu’ils sont revenus du service militaire en 1990, ils ont recommencé à jouer. Ils ont ainsi sorti : \"Princeza\", \"Heroin\", \"Dobro veče\", \"Trening za umiranje\", \"Buba švabe\", \"Zakaj se tak\' oblačiš\", and \"Pjevajte nešto ljubavno\". Ces chansons ont été enregistrées en 1991 chez Denis (alias Denyken) à Sopot, Zagreb. Ces chansons, ainsi que la version modifiée de \r\n \"Marginalci\", ont été publiées comme cassette en production de Megatherium rec.\r\n\r\nLe 20 septembre 2008, ils se sont produits devant 20000 personnes le jour du 20e anniversaire du groupe à Zagreb.\r\n', 'Hladno pivo (\"Cold beer\" in English or \"Cold beer\" in French) is a Croatian punk rock band. The recording group, led by Mile Kekin, remains one of the most popular rock bands in Croatia.\r\n\r\nThe group was formed in 1987 in Zagreb, Socialist Republic of Croatia, SFR Yugoslavia. It was initially composed of five members: Zok, Tedi, Suba, Stipe and Mile. In the beginning, the band played covers of Ramones, Sex Pistols, Dead Kennedys, AC/DC, Motörhead, The Rolling Stones, The Beatles, Judas Priest, Azra, Zabranjeno pušenje and Električni orgazam.\r\n\r\nOn May 21, 1988, the group gave its first concert in Kumrovec. In 1988 the band also held an unsuccessful concert at Jarun Lake in Zagreb, due to the drummer of the band who played before them refusing to leave the drums to leave the square Hladno pivo.\r\n\r\nIn 1989 Stipe left the group (to form Falschspieler). This year is also important because Zok, Tedi, Suba and Mile record their first demo. The demo included six songs: \"Für immer Punk\" (a cover of Goldene Zitronen), \"Bonzo\", \"Savršeni marginalci\", \"Niemals\", \"Buntovnik\" and \"Čelične zavjese\". The demo was recorded in Jozo in Trešnjevka, Zagreb. A week later, Mile and Zok were sent to do their military service.\r\n\r\nWhen they returned from military service in 1990, they started playing again. Ils ont ainsi sorti : \"Princeza\", \"Heroin\", \"Dobro veče\", \"Trening za umiranje\", \"Buba švabe\", \"Zakaj se tak\' oblačiš\", and \"Pjevajte nešto ljubavno\". These songs were recorded in 1991 by Denis (aka Denyken) in Sopot, Zagreb. These songs, as well as the modified version of \r\n \"Marginalci\", were published as a cassette in production of Megatherium rec.\r\n\r\nOn 20 September 2008, they performed in front of 20,000 people on the 20th anniversary of the group in Zagreb.\r\n', 'Croatie', 'https://www.youtube.com/watch?v=m1anY6MTvxA&ab_channel=skrobi0104', './img/HLADNO_PIVO.png'),
(10, 'The Rasmus', '', '1994-01-01', 'The Rasmus est un groupe de rock finlandais originaire d\'Helsinki.\r\n\r\nIl fit ses débuts en 1994, ses membres étant alors âgés de 16 ans. Il était alors formé de Lauri Ylönen (chant), Pauli Rantasalmi (guitare), Eero Heinonen (basse) et Janne Heiskanen (batterie), qui quitta le groupe en 1998. Il sera remplacé par Aki Hakala (batterie). En 1996, ils sortent leur premier album \"Peep\", puis l\'année suivante c\'est au tour de \"Playboy\". La musique des Rasmus est plutôt orientée funk. En 1998, l\'album \"Hell of a Tester\" fait son apparition et le funk laisse sa place au rock mélodieux. Leur best-of \"Hell of a Collection\" sort l\'année suivante.\r\n\r\nAvant même de s\'imposer en Finlande, le groupe s\'appelait Antalla. Avant la sortie de leur quatrième album en 2001 (\"Into\"), le groupe s\'appelait Rasmus, mais ils ont changé afin d\'éviter d\'être confondus avec un DJ suédois. En 2003, ils frappent très fort avec leur album \"Dead Letters\" et leur chanson-phare \"In the Shadows\", qui les fait connaître dans le monde entier.\r\n\r\nAujourd\'hui, The Rasmus est l\'un des groupes finlandais qui a le mieux réussi avec plus de 1,5 million d\'albums vendus dans le monde, huit récompenses en or et cinq récompenses en platine. Ils ont fait 9 albums, y compris leur tout dernier, \"Dark Matters\", sorti en 2017. Les chansons les plus connues du groupe sont \"In the Shadows\", \"F-F-F-Falling\", \"Shot\", \"First Day Of My Life\", \"Guilty\" et \"Livin\' In A World Without You\".', 'The Rasmus is a Finnish rock band from Helsinki.\r\n\r\nIt made its debut in 1994, when its members were 16 years old. He was then composed of Lauri Ylönen (vocals), Pauli Rantasalmi (guitar), Eero Heinonen (bass) and Janne Heiskanen (drums), who left the band in 1998. He will be replaced by Aki Hakala (drums). In 1996, they release their first album \"Peep\", then the following year it is the turn of \"Playboy\". The music of the Rasmus is rather funk oriented. In 1998, the album \"Hell of a Tester\" makes its appearance and the funk leaves its place to melodious rock. Their best-of \"Hell of a Collection\" was released the following year.\r\n\r\nEven before winning in Finland, the band was called Antalla. Before the release of their fourth album in 2001 (\"Into\"), the band was called Rasmus, but they changed to avoid being confused with a Swedish DJ. In 2003, they hit very hard with their album \"Dead Letters\" and their flagship song \"In the Shadows\", which makes them known all over the world.\r\n\r\nToday, The Rasmus is one of the most successful Finnish bands with over 1.5 million albums sold worldwide, eight gold awards and five platinum awards. They made 9 albums, including their latest, \"Dark Matters\", released in 2017. The band’s best-known songs are \"In the Shadows\", \"F-F-F-Falling\", \"Shot\", \"First Day Of My Life\", \"Guilty\" and \"Livin\' In A World Without You\".', 'Finlande', 'https://www.youtube.com/watch?v=7gwO8-oqwFw&ab_channel=TheRasmus', './img/THE_RASMUS.png'),
(11, 'Van Buuren', 'Armin', '1996-01-01', 'Armin van Buuren, né le 25 décembre 1976 à Leyde, est un disc jockey, producteur de musique et compositeur néerlandais. Surnommé « le roi de la trance » par la presse spécialisée, il est élu meilleur DJ au monde par votation populaire via DJ Magazine à cinq reprises (2007, 2008, 2009, 2010, 2012), détenant le record de décernements du titre.\r\n\r\nArmin van Buuren est actif sous divers pseudonymes depuis 1996, d\'abord aux Pays-Bas puis à l\'international. Il est de nos jours principalement connu pour ses mixes de plusieurs heures diffusés depuis Amsterdam dans son émission musicale \"A State of Trance (ASOT)\", écoutée hebdomadairement par environ 40 millions de personnes dans le monde à travers 84 pays sur plus de 100 stations radiophoniques. Lancée en 2001, l\'émission célèbre son 1 000e épisode en 2021. Armin van Buuren est également connu pour sa participation aux plus grands festivals comme tête d\'affiche et en tant qu\'organisateur de plusieurs événements aux côtés d\'autres artistes, dont \"A State of Trance Festival\", avec des dates en tournée régulières, dont une annuelle à la Jaarbeurs d\'Utrecht.\r\n\r\nAuteur de sept albums, dont six parus sur Armada Music, le label qu\'il cofonde en 2003, ainsi que de nombreuses collaborations, il détient le record de longévité pour un artiste associé au genre musical de la trance sur le classement hebdomadaire Dance/Electronic Albums du magazine américain Billboard, avec 21 entrées. En 2013, il est fait citoyen d\'honneur de sa ville natale de Leyde, deux ans après sa nomination au rang d\'officier dans l\'ordre d\'Orange-Nassau par la reine Beatrix pour services à la musique, à l\'occasion de la fête de la Reine.', 'Armin van Buuren, born 25 December 1976 in Leiden, is a disc jockey, Dutch music producer and composer. Dubbed «the king of trance» by the specialized press, he is elected best DJ in the world by popular vote via DJ Magazine on five occasions (2007, 2008, 2009, 2010, 2012), holding the record of awards of the title.\r\n\r\nArmin van Buuren has been active under various pseudonyms since 1996, first in the Netherlands and then internationally. He is nowadays mainly known for his mixes of several hours broadcast from Amsterdam in his musical show \"A State of Trance (ASOT)\", listened to weekly by about 40 million people worldwide across 84 countries on over 100 radio stations. Launched in 2001, the show celebrates its 1,000th episode in 2021. Armin van Buuren is also known for his participation in the biggest festivals as a headliner and as an organizer of several events alongside other artists, including \"A State of Trance Festival\", with dates on regular tour, One of these is held annually at the Jaarbeurs in Utrecht.\r\n\r\nAuthor of seven albums, including six on Armada Music, the label he co-founded in 2003, as well as numerous collaborations, He holds the record of longevity for an artist associated with the musical genre of trance on the weekly Dance/Electronic Albums ranking of the American magazine Billboard, with 21 admissions. In 2013, he was made an honorary citizen of his hometown of Leiden, two years after Queen Beatrix appointed him an officer in the Orange-Nassau order for music services on the occasion of Victoria Day.', 'Pays-Bas', 'https://www.youtube.com/watch?v=LofWybYHljQ&ab_channel=ArminvanBuuren', './img/ARMIN_VAN_BUUREN.png'),
(12, 'The Knife', '', '1999-01-01', 'The Knife est un groupe suédois de synthpop, originaire de Göteborg. Il est formé en 1999 par Olof et Karin Dreijer, frère et sœur, et reconnu par la critique à partir de 2006. \r\n\r\nLe premier album, The Knife du duo sort en 2001. En 2003, le titre \"Heartbeats\" est repris par José González dans son album \"Veneer\". Cette version sera ensuite utilisée en 2006 dans une publicité pour les écrans Bravia de Sony. Dans une interview pour le journal Dagens Nyheter, le groupe prétend que Sony a payé une grande somme d\'argent pour utiliser leur chanson ; malgré les vues anti-commerciales du groupe, ils ont justifié la transaction en citant leur besoin d\'argent.\r\n\r\nLe groupe se sépare en 2014.\r\n\r\n', 'The Knife is a Swedish synthpop band from Gothenburg. He was formed in 1999 by Olof and Karin Dreijer, brother and sister, and recognized by the critics from 2006. \r\n\r\nThe duo’s first album, The Knife, was released in 2001. In 2003, the title \"Heartbeats\" was taken up by José González in his album \"Veneer\". This version will then be used in 2006 in an advertisement for Sony’s Bravia screens. In an interview for the newspaper Dagens Nyheter, the group claims that Sony paid a large amount of money to use their song; despite the group’s anti-commercial views, they justified the transaction by citing their need for money.\r\n\r\nThe group split in 2014.\r\n\r\n', 'Suède', 'https://www.youtube.com/watch?v=gKhjaGRhIYU&ab_channel=LOST', './img/The_Knife.png');

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
-- Structure de la table `lien_artiste_style`
--

CREATE TABLE `lien_artiste_style` (
  `id_artiste` int(11) NOT NULL,
  `id_style` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `lien_artiste_style`
--

INSERT INTO `lien_artiste_style` (`id_artiste`, `id_style`) VALUES
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
-- Structure de la table `lien_jour_artiste`
--

CREATE TABLE `lien_jour_artiste` (
  `id_jour` int(11) NOT NULL,
  `id_artiste` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `lien_jour_artiste`
--

INSERT INTO `lien_jour_artiste` (`id_jour`, `id_artiste`) VALUES
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
-- Index pour la table `lien_artiste_style`
--
ALTER TABLE `lien_artiste_style`
  ADD KEY `id_artiste` (`id_artiste`),
  ADD KEY `id_style` (`id_style`);

--
-- Index pour la table `lien_jour_artiste`
--
ALTER TABLE `lien_jour_artiste`
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
-- Contraintes pour la table `lien_artiste_style`
--
ALTER TABLE `lien_artiste_style`
  ADD CONSTRAINT `lien_artiste_style_ibfk_1` FOREIGN KEY (`id_artiste`) REFERENCES `artiste` (`id_artiste`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `lien_artiste_style_ibfk_2` FOREIGN KEY (`id_style`) REFERENCES `style` (`id_style`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `lien_jour_artiste`
--
ALTER TABLE `lien_jour_artiste`
  ADD CONSTRAINT `lien_jour_artiste_ibfk_1` FOREIGN KEY (`id_artiste`) REFERENCES `artiste` (`id_artiste`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `lien_jour_artiste_ibfk_2` FOREIGN KEY (`id_jour`) REFERENCES `jour` (`id_jour`) ON DELETE CASCADE ON UPDATE CASCADE;

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
