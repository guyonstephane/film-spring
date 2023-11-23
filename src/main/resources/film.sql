-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : jeu. 23 nov. 2023 à 10:22
-- Version du serveur :  8.0.35-0ubuntu0.20.04.1
-- Version de PHP : 7.4.3-4ubuntu2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `filmspring`
--

-- --------------------------------------------------------

--
-- Structure de la table `film`
--

CREATE TABLE `film` (
                        `id` bigint NOT NULL,
                        `titre` varchar(255) DEFAULT NULL,
                        `genre` varchar(255) DEFAULT NULL,
                        `date_sortie` datetime(6) DEFAULT NULL,
                        `recettes` varchar(255) DEFAULT NULL,
                        `id_realisateur_id` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `film`
--

INSERT INTO `film` (`id`, `titre`, `genre`, `date_sortie`, `recettes`, `id_realisateur_id`) VALUES
                                                                                                (1, 'Twilight chapitre II : Tentation', 'Fantastique', '2009-02-12 00:00:00.000000', '710', 6),
                                                                                                (2, 'Transformers', 'Fantastique', '2007-06-06 00:00:00.000000', '709', 4),
                                                                                                (3, 'Twilight chapitre III : Hésitation', 'Fantastique', '2010-01-10 00:00:00.000000', '698', 7),
                                                                                                (4, 'Forrest Gump', 'Histoire', '1994-05-20 00:00:00.000000', '677', 8),
                                                                                                (5, 'Avatar', 'Fantastique', '2009-02-15 00:00:00.000000', '2782', 1),
                                                                                                (6, 'Titanic', 'Drame', '1997-07-23 00:00:00.000000', '1843', 1),
                                                                                                (7, 'Harry Potter et les Reliques de la Mort II', 'Fantastique', '2011-12-01 00:00:00.000000', '1294', 2),
                                                                                                (8, 'Le Seigneur des anneaux : Le Retour du roi', 'Histoire', '2003-05-23 00:00:00.000000', '1119', 3),
                                                                                                (9, 'Sixième Sens', 'Science fiction', '1999-03-06 00:00:00.000000', '673', 9),
                                                                                                (10, 'L âge de glace 2', 'Animation', '2006-09-06 00:00:00.000000', '655', 10),
                                                                                                (11, 'Pirates des Caraïbes : La MalÃ©diction du Black Pearl', 'Fantastique', '2003-04-02 00:00:00.000000', '654', 5),
                                                                                                (12, 'Transformers 3 : La Face cachée de la Lune', 'Fantastique', '2011-04-23 00:00:00.000000', '1106', 4),
                                                                                                (13, 'Pirates des Caraïbes : Le Secret du coffre maudit', 'Fantastique', '2006-12-01 00:00:00.000000', '1066', 5),
                                                                                                (14, 'Toy Story 3', 'Animation', '2010-07-10 00:00:00.000000', '1063', 11),
                                                                                                (15, 'Pirates des Caraïbes : La Fontaine de Jouvence', 'Fantastique', '2011-03-09 00:00:00.000000', '1038', 12),
                                                                                                (16, 'Alice au pays des merveilles', 'Animation', '2010-09-04 00:00:00.000000', '1024', 13),
                                                                                                (17, 'The Dark Knight : Le Chevalier noir', 'Fantastique', '2008-08-06 00:00:00.000000', '1001', 14),
                                                                                                (18, 'Harry Potter à l\'école des Sorciers', 'Fantastique', '2001-02-01 00:00:00.000000', '975', 15),
(19, 'Da Vinci Code', 'Policier', '2006-08-02 00:00:00.000000', '758', 16),
(20, 'Shrek 4 : Il était une fin', 'Animation', '2010-01-05 00:00:00.000000', '753', 17),
(21, 'Le Monde de Narnia', 'Fantastique', '2005-07-04 00:00:00.000000', '745', 18),
(22, 'Matrix Reloaded', 'Science fiction', '2003-09-21 00:00:00.000000', '742', 19),
(23, 'Là-haut', 'Animation', '2009-11-07 00:00:00.000000', '731', 20),
(24, 'Pirates des Caraïbes : Jusqu au bout du monde', 'Fantastique', '2007-10-23 00:00:00.000000', '963', 5),
(25, 'Harry Potter et les Reliques de la Mort I', 'Fantastique', '2010-04-03 00:00:00.000000', '955', 2),
(26, 'Harry Potter et l Ordre du Phoenix', 'Fantastique', '2007-02-01 00:00:00.000000', '940', 2),
(27, 'Harry Potter et le Prince de Sang-Mêlé', 'Fantastique', '2009-09-04 00:00:00.000000', '934', 2),
(28, 'Le Seigneur des anneaux : Les Deux Tours', 'Histoire', '2002-07-12 00:00:00.000000', '925', 3),
(29, 'Star Wars I : La Menace fantôme', 'Science fiction', '1999-06-21 00:00:00.000000', '924', 21),
(30, 'Shrek 2', 'Animation', '2004-05-26 00:00:00.000000', '920', 18),
(31, 'Independence Day', 'Science fiction', '1996-01-02 00:00:00.000000', '817', 27),
(32, 'Shrek le troisième', 'Animation', '2007-08-03 00:00:00.000000', '798', 22),
(33, 'Harry Potter et le Prisonnier d Azkaban', 'Fantastique', '2003-04-18 00:00:00.000000', '796', 23),
(34, 'E.T. l extra-terrestre', 'Science fiction', '1982-04-04 00:00:00.000000', '792', 24),
(35, 'Indiana Jones', 'Aventure', '2008-02-02 00:00:00.000000', '786', 24),
(36, 'Le Roi lion', 'Animation', '1994-06-06 00:00:00.000000', '784', 25),
(37, 'Spider-Man 2', 'Fantastique', '2004-11-23 00:00:00.000000', '783', 26),
(38, 'Star Wars  IV : Un nouvel espoir', 'Science fiction', '1977-09-17 00:00:00.000000', '775', 21),
(39, '2012', 'Science fiction', '2009-04-03 00:00:00.000000', '769', 27),
(40, 'L Ã‚ge de glace 3', 'Animation', '2009-09-01 00:00:00.000000', '886', 10),
(41, 'Harry Potter et la Chambre des Secrets', 'Fantastique', '2002-03-26 00:00:00.000000', '878', 15),
(42, 'Le Seigneur des anneaux : La Communauté de l anneau', 'Histoire', '2001-07-03 00:00:00.000000', '870', 3),
(43, 'Le Monde de Nemo', 'Animation', '2003-05-01 00:00:00.000000', '867', 28),
(44, 'Star Wars III : La Revanche des Sith', 'Science fiction', '2005-11-04 00:00:00.000000', '848', 21),
(45, 'Transformers 2 : La Revanche', 'Fantastique', '2009-08-02 00:00:00.000000', '836', 4),
(46, 'Inception', 'Fantastique', '2010-09-04 00:00:00.000000', '825', 14),
(47, 'Spider-Man', 'Fantastique', '2002-06-06 00:00:00.000000', '821', 26),
(48, 'Jurassic Park', 'Fantastique', '1993-08-12 00:00:00.000000', '914', 24),
(49, 'Harry Potter et la Coupe de Feu', 'Fantastique', '2005-07-07 00:00:00.000000', '896', 29),
(50, 'Spider-Man 3', 'Fantastique', '2007-09-01 00:00:00.000000', '890', 26);

-- --------------------------------------------------------

--
-- Structure de la table `realisateur`
--

CREATE TABLE `realisateur` (
  `id` bigint NOT NULL,
  `nom` varchar(255) DEFAULT NULL,
  `prenom` varchar(255) DEFAULT NULL,
  `date_naissance` datetime(6) DEFAULT NULL,
  `nation` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `realisateur`
--

INSERT INTO `realisateur` (`id`, `nom`, `prenom`, `date_naissance`, `nation`) VALUES
(1, 'Cameron', 'James', '1954-08-16 00:00:00.000000', 'USA'),
(2, 'Yates', 'David', '1963-11-30 00:00:00.000000', 'Angleterre'),
(3, 'Jackson', 'Peter', '1961-10-31 00:00:00.000000', 'Nouvelle Zélande'),
(4, 'Bay', 'Michael', '1965-02-17 00:00:00.000000', 'USA'),
(5, 'Verbinski', 'Gore', '1964-03-16 00:00:00.000000', 'USA'),
(6, 'Weitz', 'Chris', '1969-11-30 00:00:00.000000', 'USA'),
(7, 'Slade', 'David', '1969-09-26 00:00:00.000000', 'Angleterre'),
(8, 'Zemeckis', 'Robert', '1951-05-14 00:00:00.000000', 'USA'),
(9, 'Shyamalan', 'Night', '1970-08-06 00:00:00.000000', 'USA'),
(10, 'Saldanha', 'Carlos', '1965-07-24 00:00:00.000000', 'Brésil'),
(11, 'Unkrich', 'Lee', '1967-08-08 00:00:00.000000', 'USA'),
(12, 'Marshall', 'Rob', '1960-10-17 00:00:00.000000', 'USA'),
(13, 'Burton', 'Tim', '1958-08-25 00:00:00.000000', 'USA'),
(14, 'Nolan', 'Christopher', '1970-07-30 00:00:00.000000', 'Angleterre'),
(15, 'Columbus', 'Chris', '1958-09-10 00:00:00.000000', 'USA'),
(16, 'Howard', 'Ron', '1954-03-01 00:00:00.000000', 'USA'),
(17, 'Mitchell', 'Mike', '1970-10-20 00:00:00.000000', 'USA'),
(18, 'Adamson', 'Andrew', '1966-12-01 00:00:00.000000', 'Nouvelle Zélande'),
(19, 'Wachowski', 'Larry', '1967-12-29 00:00:00.000000', 'USA'),
(20, 'Peterson', 'Bob', '1961-01-05 00:00:00.000000', 'USA'),
(21, 'Lucas', 'Ceorge', '1944-05-14 00:00:00.000000', 'USA'),
(22, 'Miller', 'Chris', '1975-09-23 00:00:00.000000', 'USA'),
(23, 'Cuarón', 'Alfonso', '1961-11-28 00:00:00.000000', 'Mexique'),
(24, 'Spielberg', 'Steven', '1946-12-18 00:00:00.000000', 'USA'),
(25, 'Allers', 'Roger', '1949-10-02 00:00:00.000000', 'USA'),
(26, 'Raimi', 'Sam', '1959-10-23 00:00:00.000000', 'USA'),
(27, 'Emmerich', 'Roland', '1955-11-10 00:00:00.000000', 'Allemagne'),
(28, 'Stanton', 'Andrew', '1965-12-03 00:00:00.000000', 'USA'),
(29, 'Newell', 'Mike', '1942-03-28 00:00:00.000000', 'Angleterre');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `film`
--
ALTER TABLE `film`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK88fijxc6dwacec74hcn5c5q5o` (`id_realisateur_id`);

--
-- Index pour la table `realisateur`
--
ALTER TABLE `realisateur`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `film`
--
ALTER TABLE `film`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT pour la table `realisateur`
--
ALTER TABLE `realisateur`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `film`
--
ALTER TABLE `film`
  ADD CONSTRAINT `FK88fijxc6dwacec74hcn5c5q5o` FOREIGN KEY (`id_realisateur_id`) REFERENCES `realisateur` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;