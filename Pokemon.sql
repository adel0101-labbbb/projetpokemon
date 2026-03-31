-- phpMyAdmin SQL Dump
-- version 5.2.1deb1+deb12u1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : mar. 31 mars 2026 à 12:59
-- Version du serveur : 10.11.14-MariaDB-0+deb12u2
-- Version de PHP : 8.2.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `Pokemon`
--

-- --------------------------------------------------------

--
-- Structure de la table `attaques`
--

CREATE TABLE `attaques` (
  `id` int(11) NOT NULL,
  `libelle` varchar(50) NOT NULL,
  `type_id` int(11) NOT NULL,
  `pp` int(11) NOT NULL,
  `puissance` int(11) DEFAULT NULL,
  `precis` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `attaques`
--

INSERT INTO `attaques` (`id`, `libelle`, `type_id`, `pp`, `puissance`, `precis`) VALUES
(1, 'Abîme', 13, 5, NULL, 30),
(2, 'Acid\'armure', 10, 40, NULL, 100),
(3, 'Acide', 10, 30, 40, 100),
(4, 'Adaptation', 8, 40, NULL, 100),
(5, 'Affûtage', 8, 30, NULL, 100),
(6, 'Amnésie', 11, 20, NULL, 100),
(7, 'Armure', 8, 30, NULL, 100),
(8, 'Balayage', 1, 20, 50, 90),
(9, 'Bec Vrille', 15, 20, 80, 100),
(10, 'Bélier', 8, 20, 90, 85),
(11, 'Berceuse', 8, 15, NULL, 55),
(12, 'Blizzard', 6, 5, 120, 90),
(13, 'Bomb\'oeuf', 8, 10, 100, 75),
(14, 'Bouclier', 11, 30, NULL, 100),
(15, 'Boul\'armure', 8, 20, NULL, 100),
(16, 'Brouillard', 8, 20, NULL, 100),
(17, 'Brume', 6, 30, NULL, 100),
(18, 'Buée noire', 6, 30, NULL, 100),
(19, 'Bulles d\'O', 3, 20, 65, 100),
(20, 'Cage éclair', 4, 20, NULL, 100),
(21, 'Cascade', 3, 15, 80, 100),
(22, 'Charge', 8, 35, 35, 85),
(23, 'Choc mental', 11, 25, 50, 100),
(24, 'Claquoir', 3, 10, 35, 75),
(25, 'Clonage', 8, 10, NULL, 100),
(26, 'Combo-griffes', 8, 15, 20, 80),
(27, 'Constriction', 8, 35, 10, 100),
(28, 'Copie', 8, 10, NULL, 100),
(29, 'Coud\'boule', 8, 15, 70, 100),
(30, 'Coud\'krâne', 8, 15, 100, 100),
(31, 'Coupe', 8, 30, 50, 95),
(32, 'Coupe-vent', 8, 10, 80, 75),
(33, 'Croc de mort', 8, 15, 80, 70),
(34, 'Croc fatal', 8, 10, NULL, 90),
(35, 'Croissance', 8, 40, NULL, 100),
(36, 'Cru-aile', 15, 35, 35, 100),
(37, 'Cyclone', 8, 20, NULL, 85),
(38, 'Damoclès', 8, 15, 15, 100),
(39, 'Danse-Flamme', 5, 15, 15, 70),
(40, 'Danse-Fleur', 9, 20, 70, 100),
(41, 'Danse-Lames', 8, 30, NULL, 100),
(42, 'Dard-Nuée', 7, 20, 14, 85),
(43, 'Dard-Venin', 10, 35, 15, 100),
(44, 'Déflagration', 5, 5, 120, 85),
(45, 'Destruction', 8, 5, 260, 100),
(46, 'Détitrus', 10, 20, 65, 100),
(47, 'Dévorêve', 11, 15, 100, 100),
(48, 'Double-Dard', 7, 20, 25, 100),
(49, 'Double-Pied', 1, 30, 30, 100),
(50, 'Draco-Rage', 2, 10, 40, 100),
(51, 'Eboulement', 12, 10, 80, 90),
(52, 'Eclair', 4, 30, 40, 100),
(53, 'E-Coque', 8, 10, NULL, 100),
(54, 'Ecrasement', 8, 20, 65, 100),
(55, 'Ecras\'face', 8, 35, 40, 100),
(56, 'Ecume', 3, 30, 20, 100),
(57, 'Empal\'korne', 8, 5, NULL, 30),
(58, 'Entrave', 8, 20, NULL, 55),
(59, 'Etreinte', 8, 20, 15, 75),
(60, 'Explosion', 8, 5, 340, 100),
(61, 'Fatale-Foudre', 4, 10, 120, 70),
(62, 'Flammèches', 5, 25, 40, 100),
(63, 'Flash', 8, 20, NULL, 70),
(64, 'Force', 8, 15, 80, 100),
(65, 'Force-Poigne', 8, 30, 55, 100),
(66, 'Fouet Lianes', 9, 10, 35, 100),
(67, 'Frappe-Atlas', 1, 20, 0, 100),
(68, 'Frénésie', 8, 20, 20, 100),
(69, 'Furie', 8, 20, 15, 85),
(70, 'Gaz Toxik', 10, 40, NULL, 55),
(71, 'Griffe', 8, 35, 40, 100),
(72, 'Grincement', 8, 40, NULL, 85),
(73, 'Grobisou', 8, 10, NULL, 75),
(74, 'Gros\'yeux', 8, 30, NULL, 100),
(75, 'Guillotine', 8, 5, NULL, 30),
(76, 'Hâte', 11, 30, NULL, 100),
(77, 'Hurlement', 8, 20, NULL, 100),
(78, 'Hydrocanon', 3, 5, 120, 80),
(79, 'Hypnose', 11, 20, NULL, 60),
(80, 'Intimidation', 8, 30, NULL, 75),
(81, 'Jackpot', 8, 20, 40, 100),
(82, 'Jet de sable', 8, 15, NULL, 100),
(83, 'Jet de pierres', 12, 15, 50, 75),
(84, 'Koud\'korne', 8, 25, 65, 100),
(85, 'Lance-Flamme', 5, 15, 95, 100),
(86, 'Lance-Soleil', 9, 10, 120, 100),
(87, 'Laser-Glace', 6, 10, 95, 100),
(88, 'Léchouille', 14, 30, 20, 100),
(89, 'Ligotage', 8, 20, 15, 85),
(90, 'Liliput', 8, 20, NULL, 100),
(91, 'Lutte', 8, 1, 100, 100),
(92, 'Mania', 8, 20, 90, 100),
(93, 'Massd\'os', 13, 20, 65, 85),
(94, 'Mawashi Geri', 1, 15, 60, 80),
(95, 'Mega-Sangsue', 9, 10, 40, 100),
(96, 'Météores', 8, 20, 60, 100),
(97, 'Métronome', 8, 10, NULL, 100),
(98, 'Mimique', 15, 20, NULL, 100),
(99, 'Mimi-Queue', 8, 30, NULL, 100),
(100, 'Morphing', 8, 10, NULL, 100),
(101, 'Morsure', 8, 25, 60, 100),
(102, 'Mur Lumière', 11, 30, NULL, 100),
(103, 'Onde Boréale', 6, 20, 65, 100),
(104, 'Onde Folie', 14, 10, NULL, 100),
(105, 'Osmerang', 13, 10, 50, 90),
(106, 'Paraspore', 9, 30, NULL, 75),
(107, 'Patience', 8, 10, NULL, 100),
(108, 'Picanon', 8, 15, 20, 100),
(109, 'Picpic', 15, 35, 35, 100),
(110, 'Pied Sauté', 1, 25, 70, 95),
(111, 'Pied Voltige', 1, 20, 85, 90),
(112, 'Pilonnage', 8, 20, 15, 85),
(113, 'Pince-Masse', 3, 10, 90, 85),
(114, 'Piqué', 15, 5, 140, 90),
(115, 'Pistolet à O', 3, 20, 40, 100),
(116, 'Plaquage', 8, 15, 85, 100),
(117, 'Poing Comète', 8, 15, 18, 85),
(118, 'Poing de Feu', 5, 15, 75, 100),
(119, 'Poing Karaté', 1, 25, 50, 100),
(120, 'Poing Eclair', 4, 15, 75, 100),
(121, 'Poing Glace', 6, 15, 75, 100),
(122, 'Poudre Dodo', 9, 15, NULL, 75),
(123, 'Poudre Toxik', 10, 35, NULL, 75),
(124, 'Protection', 11, 20, NULL, 100),
(125, 'Psyko', 11, 10, 90, 100),
(126, 'Puissance', 8, 30, NULL, 100),
(127, 'Purédpois', 10, 20, 20, 70),
(128, 'Rafale Psy', 11, 20, 65, 100),
(129, 'Reflet', 8, 15, NULL, 100),
(130, 'Repli', 3, 40, NULL, 100),
(131, 'Repos', 11, 10, NULL, 100),
(132, 'Riposte', 1, 20, NULL, 100),
(133, 'Rugissement', 8, 10, NULL, 100),
(134, 'Sacrifice', 1, 25, 80, 80),
(135, 'Sécrétion', 7, 40, NULL, 95),
(136, 'Séisme', 13, 10, 100, 100),
(137, 'Soin', 8, 10, NULL, 100),
(138, 'Sonicboom', 8, 20, 20, 100),
(139, 'Souplesse', 8, 20, 80, 75),
(140, 'Spore', 9, 15, NULL, 100),
(141, 'Surf', 3, 15, 95, 100),
(142, 'Télékinésie', 11, 15, NULL, 75),
(143, 'Téléport', 11, 20, NULL, 100),
(144, 'Ténèbres', 14, 15, 0, 100),
(145, 'Tonnerre', 4, 15, 95, 100),
(146, 'Torgnoles', 8, 10, 15, 85),
(147, 'Tornade', 15, 35, 40, 100),
(148, 'Toxik', 10, 10, NULL, 85),
(149, 'Tranche', 8, 20, 70, 100),
(150, 'Tranch\'herbe', 9, 25, 55, 95),
(151, 'Trempette', 3, 40, NULL, 100),
(152, 'Triplattaque', 8, 10, 80, 100),
(153, 'Tunnel', 13, 10, 100, 100),
(154, 'Ultimapoing', 8, 20, 80, 85),
(155, 'Ultimawashi', 8, 5, 120, 75),
(156, 'Ultralaser', 8, 5, 120, 90),
(157, 'Ultrason', 8, 20, NULL, 55),
(158, 'Uppercut', 8, 10, 70, 100),
(159, 'Vague Psy', 11, 15, NULL, 80),
(160, 'Vampigraine', 9, 10, NULL, 90),
(161, 'Vampirisme', 7, 15, 20, 100),
(162, 'Vive Attaque', 8, 30, 40, 100),
(163, 'Vol', 15, 15, 70, 95),
(164, 'Vol-vie', 9, 20, 20, 100),
(165, 'Yoga', 11, 40, NULL, 100);

-- --------------------------------------------------------

--
-- Structure de la table `detient_pokemons`
--

CREATE TABLE `detient_pokemons` (
  `dresseur_id` int(11) NOT NULL,
  `pokemon_id` int(11) NOT NULL,
  `niveau` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `detient_pokemons`
--

INSERT INTO `detient_pokemons` (`dresseur_id`, `pokemon_id`, `niveau`) VALUES
(2, 74, 12),
(2, 95, 14),
(3, 120, 18),
(3, 121, 21),
(4, 100, 21),
(4, 25, 18),
(4, 26, 24),
(5, 71, 29),
(5, 114, 24),
(5, 45, 29),
(6, 109, 37),
(6, 89, 39),
(6, 109, 37),
(6, 110, 43),
(7, 64, 38),
(7, 122, 37),
(7, 49, 38),
(7, 65, 43),
(8, 58, 42),
(8, 77, 40),
(8, 78, 42),
(8, 59, 47),
(9, 111, 42),
(9, 51, 42),
(9, 31, 44),
(9, 34, 45),
(9, 112, 50),
(10, 87, 54),
(10, 91, 53),
(10, 80, 54),
(10, 124, 56),
(10, 131, 56),
(11, 95, 53),
(11, 107, 55),
(11, 106, 55),
(11, 95, 56),
(11, 68, 58),
(12, 94, 56),
(12, 42, 56),
(12, 93, 55),
(12, 24, 58),
(12, 94, 60),
(13, 130, 58),
(13, 148, 56),
(13, 148, 56),
(13, 142, 60),
(13, 149, 62);

-- --------------------------------------------------------

--
-- Structure de la table `dresseurs`
--

CREATE TABLE `dresseurs` (
  `id` int(11) NOT NULL,
  `nom` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `dresseurs`
--

INSERT INTO `dresseurs` (`id`, `nom`) VALUES
(2, 'Pierre'),
(3, 'Ondine'),
(4, 'Major Bob'),
(5, 'Erika'),
(6, 'Koga'),
(7, 'Morgane'),
(8, 'Auguste'),
(9, 'Giovanni'),
(10, 'Olga'),
(11, 'Aldo'),
(12, 'Agatha'),
(13, 'Peter');

-- --------------------------------------------------------

--
-- Structure de la table `efficacite`
--

CREATE TABLE `efficacite` (
  `fkAtt` int(11) DEFAULT NULL,
  `fkDef` int(11) DEFAULT NULL,
  `multi` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `efficacite`
--

INSERT INTO `efficacite` (`fkAtt`, `fkDef`, `multi`) VALUES
(1, 1, 1),
(1, 2, 1),
(1, 3, 1),
(1, 4, 1),
(1, 5, 1),
(1, 6, 2),
(1, 7, 1),
(1, 8, 2),
(1, 9, 1),
(1, 10, 1),
(1, 11, 1),
(1, 12, 2),
(1, 13, 1),
(1, 14, 0),
(1, 15, 1),
(2, 1, 1),
(2, 2, 2),
(2, 3, 1),
(2, 4, 1),
(2, 5, 1),
(2, 6, 1),
(2, 7, 1),
(2, 8, 1),
(2, 9, 1),
(2, 10, 1),
(2, 11, 1),
(2, 12, 1),
(2, 13, 1),
(2, 14, 1),
(2, 15, 1),
(3, 1, 1),
(3, 2, 1),
(3, 3, 1),
(3, 4, 1),
(3, 5, 2),
(3, 6, 1),
(3, 7, 1),
(3, 8, 1),
(3, 9, 1),
(3, 10, 1),
(3, 11, 1),
(3, 12, 2),
(3, 13, 2),
(3, 14, 1),
(3, 15, 1),
(4, 1, 1),
(4, 2, 1),
(4, 3, 2),
(4, 4, 1),
(4, 5, 1),
(4, 6, 1),
(4, 7, 1),
(4, 8, 1),
(4, 9, 1),
(4, 10, 1),
(4, 11, 1),
(4, 12, 1),
(4, 13, 0),
(4, 14, 1),
(4, 15, 2),
(5, 1, 1),
(5, 2, 1),
(5, 3, 1),
(5, 4, 1),
(5, 5, 1),
(5, 6, 2),
(5, 7, 2),
(5, 8, 1),
(5, 9, 2),
(5, 10, 1),
(5, 11, 1),
(5, 12, 1),
(5, 13, 1),
(5, 14, 1),
(5, 15, 1),
(6, 1, 1),
(6, 2, 2),
(6, 3, 1),
(6, 4, 1),
(6, 5, 1),
(6, 6, 1),
(6, 7, 1),
(6, 8, 1),
(6, 9, 2),
(6, 10, 1),
(6, 11, 1),
(6, 12, 1),
(6, 13, 2),
(6, 14, 1),
(6, 15, 2),
(7, 1, 1),
(7, 2, 1),
(7, 3, 1),
(7, 4, 1),
(7, 5, 1),
(7, 6, 1),
(7, 7, 1),
(7, 8, 1),
(7, 9, 2),
(7, 10, 2),
(7, 11, 2),
(7, 12, 1),
(7, 13, 1),
(7, 14, 1),
(7, 15, 1),
(8, 1, 1),
(8, 2, 1),
(8, 3, 1),
(8, 4, 1),
(8, 5, 1),
(8, 6, 1),
(8, 7, 1),
(8, 8, 1),
(8, 9, 1),
(8, 10, 1),
(8, 11, 1),
(8, 12, 1),
(8, 13, 1),
(8, 14, 0),
(8, 15, 1),
(9, 1, 1),
(9, 2, 1),
(9, 3, 2),
(9, 4, 1),
(9, 5, 1),
(9, 6, 1),
(9, 7, 1),
(9, 8, 1),
(9, 9, 1),
(9, 10, 1),
(9, 11, 1),
(9, 12, 2),
(9, 13, 2),
(9, 14, 1),
(9, 15, 1),
(10, 1, 1),
(10, 2, 1),
(10, 3, 1),
(10, 4, 1),
(10, 5, 1),
(10, 6, 1),
(10, 7, 2),
(10, 8, 2),
(10, 9, 2),
(10, 10, 1),
(10, 11, 1),
(10, 12, 1),
(10, 13, 1),
(10, 14, 0),
(10, 15, 1),
(11, 1, 2),
(11, 2, 1),
(11, 3, 1),
(11, 4, 1),
(11, 5, 1),
(11, 6, 1),
(11, 7, 1),
(11, 8, 1),
(11, 9, 1),
(11, 10, 2),
(11, 11, 1),
(11, 12, 1),
(11, 13, 1),
(11, 14, 0),
(11, 15, 1),
(12, 1, 1),
(12, 2, 1),
(12, 3, 1),
(12, 4, 1),
(12, 5, 2),
(12, 6, 2),
(12, 7, 2),
(12, 8, 1),
(12, 9, 1),
(12, 10, 1),
(12, 11, 1),
(12, 12, 1),
(12, 13, 1),
(12, 14, 1),
(12, 15, 2),
(13, 1, 1),
(13, 2, 1),
(13, 3, 1),
(13, 4, 2),
(13, 5, 2),
(13, 6, 1),
(13, 7, 1),
(13, 8, 1),
(13, 9, 1),
(13, 10, 2),
(13, 11, 1),
(13, 12, 2),
(13, 13, 1),
(13, 14, 1),
(13, 15, 0),
(14, 1, 1),
(14, 2, 1),
(14, 3, 1),
(14, 4, 1),
(14, 5, 1),
(14, 6, 1),
(14, 7, 1),
(14, 8, 0),
(14, 9, 1),
(14, 10, 1),
(14, 11, 0),
(14, 12, 1),
(14, 13, 1),
(14, 14, 2),
(14, 15, 1),
(15, 1, 2),
(15, 2, 1),
(15, 3, 1),
(15, 4, 1),
(15, 5, 1),
(15, 6, 1),
(15, 7, 2),
(15, 8, 1),
(15, 9, 2),
(15, 10, 1),
(15, 11, 1),
(15, 12, 1),
(15, 13, 1),
(15, 14, 1),
(15, 15, 1);

-- --------------------------------------------------------

--
-- Structure de la table `efficacite_type`
--

CREATE TABLE `efficacite_type` (
  `id_type_attaquant` int(11) NOT NULL,
  `id_type_defenseur` int(11) NOT NULL,
  `coefficient` decimal(2,1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `est_type`
--

CREATE TABLE `est_type` (
  `pokemon_id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `est_type`
--

INSERT INTO `est_type` (`pokemon_id`, `type_id`) VALUES
(1, 9),
(1, 10),
(2, 9),
(2, 10),
(3, 9),
(3, 10),
(4, 5),
(5, 5),
(6, 5),
(6, 15),
(7, 3),
(8, 3),
(9, 3),
(10, 7),
(11, 7),
(12, 7),
(12, 15),
(13, 7),
(13, 10),
(14, 7),
(14, 10),
(15, 7),
(15, 10),
(16, 8),
(16, 15),
(17, 8),
(17, 15),
(18, 8),
(18, 15),
(19, 8),
(20, 8),
(21, 8),
(21, 15),
(22, 8),
(22, 15),
(23, 10),
(24, 10),
(25, 4),
(26, 4),
(27, 13),
(28, 13),
(29, 10),
(30, 10),
(31, 10),
(31, 13),
(32, 10),
(33, 10),
(34, 10),
(34, 13),
(35, 8),
(36, 8),
(37, 5),
(38, 5),
(39, 8),
(40, 8),
(41, 10),
(41, 15),
(42, 10),
(42, 15),
(43, 9),
(43, 10),
(44, 9),
(44, 10),
(45, 9),
(45, 10),
(46, 7),
(46, 9),
(47, 7),
(47, 9),
(48, 7),
(48, 10),
(49, 7),
(49, 10),
(50, 13),
(51, 13),
(52, 8),
(53, 8),
(54, 3),
(55, 3),
(56, 1),
(57, 1),
(58, 5),
(59, 5),
(60, 3),
(61, 3),
(62, 3),
(62, 1),
(63, 11),
(64, 11),
(65, 11),
(66, 1),
(67, 1),
(68, 1),
(69, 9),
(69, 10),
(70, 9),
(70, 10),
(71, 9),
(71, 10),
(72, 3),
(72, 10),
(73, 3),
(73, 10),
(74, 12),
(74, 13),
(75, 12),
(75, 13),
(76, 12),
(76, 13),
(77, 5),
(78, 5),
(79, 3),
(79, 11),
(80, 3),
(80, 11),
(81, 4),
(82, 4),
(83, 8),
(83, 15),
(84, 8),
(84, 15),
(85, 8),
(85, 15),
(86, 3),
(87, 3),
(87, 6),
(88, 10),
(89, 10),
(90, 3),
(91, 3),
(91, 6),
(92, 14),
(92, 10),
(93, 14),
(93, 10),
(94, 14),
(94, 10),
(95, 12),
(95, 13),
(96, 11),
(97, 11),
(98, 3),
(99, 3),
(100, 4),
(101, 4),
(102, 9),
(102, 11),
(103, 9),
(103, 11),
(104, 13),
(105, 13),
(106, 1),
(107, 1),
(108, 8),
(109, 10),
(110, 10),
(111, 13),
(111, 12),
(112, 13),
(112, 12),
(113, 8),
(114, 9),
(115, 8),
(116, 3),
(117, 3),
(118, 3),
(119, 3),
(120, 3),
(121, 3),
(121, 11),
(122, 11),
(123, 7),
(123, 15),
(124, 6),
(124, 11),
(125, 4),
(126, 5),
(127, 7),
(128, 8),
(129, 3),
(130, 3),
(130, 15),
(131, 3),
(131, 6),
(132, 8),
(133, 8),
(134, 3),
(135, 4),
(136, 5),
(137, 8),
(138, 12),
(138, 3),
(139, 12),
(139, 3),
(140, 12),
(140, 3),
(141, 12),
(141, 3),
(142, 12),
(142, 15),
(143, 8),
(144, 6),
(144, 15),
(145, 4),
(145, 15),
(146, 5),
(146, 15),
(147, 2),
(148, 2),
(149, 2),
(149, 15),
(150, 11),
(151, 11);

-- --------------------------------------------------------

--
-- Structure de la table `evolue_en`
--

CREATE TABLE `evolue_en` (
  `pokemon_base_id` int(11) NOT NULL,
  `pokemon_evol_id` int(11) NOT NULL,
  `niveau` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `evolue_en`
--

INSERT INTO `evolue_en` (`pokemon_base_id`, `pokemon_evol_id`, `niveau`) VALUES
(1, 2, 16),
(2, 3, 32),
(4, 5, 16),
(5, 6, 36),
(7, 8, 16),
(8, 9, 36),
(10, 11, 7),
(11, 12, 10),
(13, 14, 7),
(14, 15, 10),
(16, 17, 18),
(17, 18, 36),
(19, 20, 20),
(21, 22, 20),
(23, 24, 22),
(25, 26, -1),
(27, 28, 22),
(29, 30, 16),
(30, 31, -1),
(32, 33, 16),
(33, 34, -1),
(35, 36, -1),
(37, 38, -1),
(39, 40, -1),
(41, 42, 22),
(43, 44, 21),
(44, 45, -1),
(46, 47, 24),
(48, 49, 31),
(50, 51, 26),
(52, 53, 28),
(54, 55, 33),
(56, 57, 28),
(58, 59, -1),
(60, 61, 25),
(61, 62, -1),
(63, 64, 16),
(64, 65, -2),
(66, 67, 28),
(67, 68, -2),
(69, 70, 21),
(70, 71, -1),
(72, 73, 30),
(74, 75, 25),
(75, 76, -2),
(77, 78, 40),
(79, 80, 37),
(81, 82, 30),
(84, 85, 31),
(86, 87, 34),
(88, 89, 38),
(90, 91, -1),
(92, 93, 25),
(93, 94, -2),
(96, 97, 26),
(98, 99, 28),
(100, 101, 30),
(102, 103, -1),
(104, 105, 28),
(109, 110, 35),
(111, 112, 42),
(116, 117, 32),
(118, 119, 33),
(120, 121, -1),
(129, 130, 20),
(133, 134, -1),
(133, 135, -1),
(133, 136, -1),
(138, 139, 40),
(140, 141, 40),
(147, 148, 30),
(148, 149, 55);

-- --------------------------------------------------------

--
-- Structure de la table `pokemons`
--

CREATE TABLE `pokemons` (
  `id` int(11) NOT NULL,
  `nom` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `pokemons`
--

INSERT INTO `pokemons` (`id`, `nom`) VALUES
(1, 'Bulbizarre'),
(2, 'Herbizarre'),
(3, 'Florizarre'),
(4, 'Salameche'),
(5, 'Reptincel'),
(6, 'Dracaufeu'),
(7, 'Carapuce'),
(8, 'Carabaffe'),
(9, 'Tortank'),
(10, 'Chenipan'),
(11, 'Chrysacier'),
(12, 'Papilusion'),
(13, 'Aspicot'),
(14, 'Coconfort'),
(15, 'Dardargnan'),
(16, 'Roucool'),
(17, 'Roucoups'),
(18, 'Roucarnage'),
(19, 'Rattata'),
(20, 'Rattatac'),
(21, 'Piafabec'),
(22, 'Rapasdepic'),
(23, 'Abo'),
(24, 'Arbok'),
(25, 'Pikachu'),
(26, 'Raichu'),
(27, 'Sabelette'),
(28, 'Sablaireau'),
(29, 'NidoranF'),
(30, 'Nidorina'),
(31, 'Nidoqueen'),
(32, 'NidoranM'),
(33, 'Nidorino'),
(34, 'Nidoking'),
(35, 'Melofee'),
(36, 'Melodelfe'),
(37, 'Goupix'),
(38, 'Feunard'),
(39, 'Rondoudou'),
(40, 'Grodoudou'),
(41, 'Nosferapti'),
(42, 'Nosferalto'),
(43, 'Mystherbe'),
(44, 'Ortide'),
(45, 'Rafflesia'),
(46, 'Paras'),
(47, 'Parasect'),
(48, 'Mimitoss'),
(49, 'Aeromite'),
(50, 'Taupiqueur'),
(51, 'Triopikeur'),
(52, 'Miaouss'),
(53, 'Persian'),
(54, 'Psykokwak'),
(55, 'Akwakwak'),
(56, 'Ferosinge'),
(57, 'Colossinge'),
(58, 'Caninos'),
(59, 'Arcanin'),
(60, 'Ptitard'),
(61, 'Tetarte'),
(62, 'Tartard'),
(63, 'Abra'),
(64, 'Kadabra'),
(65, 'Alakazam'),
(66, 'Machoc'),
(67, 'Machopeur'),
(68, 'Mackogneur'),
(69, 'Chetiflor'),
(70, 'Boustiflor'),
(71, 'Empiflor'),
(72, 'Tentacool'),
(73, 'Tentacruel'),
(74, 'Racaillou'),
(75, 'Gravalanch'),
(76, 'Grolem'),
(77, 'Ponyta'),
(78, 'Galopa'),
(79, 'Ramoloss'),
(80, 'Flagadoss'),
(81, 'Magneti'),
(82, 'Magneton'),
(83, 'Canarticho'),
(84, 'Doduo'),
(85, 'Dodrio'),
(86, 'Otaria'),
(87, 'Lamantine'),
(88, 'Tadmorv'),
(89, 'Grotadmorv'),
(90, 'Kokiyas'),
(91, 'Crustabri'),
(92, 'Fantominus'),
(93, 'Spectrum'),
(94, 'Ectoplasma'),
(95, 'Onix'),
(96, 'Soporifik'),
(97, 'Hypnomade'),
(98, 'Krabby'),
(99, 'Krabboss'),
(100, 'Voltorbe'),
(101, 'Electrode'),
(102, 'Noeunoeuf'),
(103, 'Noadkoko'),
(104, 'Osselait'),
(105, 'Ossatueur'),
(106, 'Kicklee'),
(107, 'Tygnon'),
(108, 'Excelangue'),
(109, 'Smogo'),
(110, 'Smogogo'),
(111, 'Rhinocorne'),
(112, 'Rhinoferos'),
(113, 'Leveinard'),
(114, 'Saquedeneu'),
(115, 'Kangourex'),
(116, 'Hypotrempe'),
(117, 'Hypocean'),
(118, 'Poissirene'),
(119, 'Poissoroy'),
(120, 'Stari'),
(121, 'Staross'),
(122, 'M. Mime'),
(123, 'Insecateur'),
(124, 'Lippoutou'),
(125, 'Elektek'),
(126, 'Magmar'),
(127, 'Scarabrute'),
(128, 'Tauros'),
(129, 'Magicarpe'),
(130, 'Leviator'),
(131, 'Lokhlass'),
(132, 'Metamorph'),
(133, 'Evoli'),
(134, 'Aquali'),
(135, 'Voltali'),
(136, 'Pyroli'),
(137, 'Porygon'),
(138, 'Amonita'),
(139, 'Amonistar'),
(140, 'Kabuto'),
(141, 'Kabutops'),
(142, 'Ptera'),
(143, 'Ronflex'),
(144, 'Artikodin'),
(145, 'Electhor'),
(146, 'Sulfura'),
(147, 'Minidraco'),
(148, 'Draco'),
(149, 'Dracolosse'),
(150, 'Mewtwo'),
(151, 'Mew');

-- --------------------------------------------------------

--
-- Structure de la table `types`
--

CREATE TABLE `types` (
  `id` int(11) NOT NULL,
  `libelle` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `types`
--

INSERT INTO `types` (`id`, `libelle`) VALUES
(1, 'Combat'),
(2, 'Dragon'),
(3, 'Eau'),
(4, 'Electrique'),
(5, 'Feu'),
(6, 'Glace'),
(7, 'Insecte'),
(8, 'Normal'),
(9, 'Plante'),
(10, 'Poison'),
(11, 'Psy'),
(12, 'Roche'),
(13, 'Sol'),
(14, 'Spectre'),
(15, 'Vol');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `attaques`
--
ALTER TABLE `attaques`
  ADD PRIMARY KEY (`id`),
  ADD KEY `type_id` (`type_id`);

--
-- Index pour la table `detient_pokemons`
--
ALTER TABLE `detient_pokemons`
  ADD KEY `dresseur_id` (`dresseur_id`),
  ADD KEY `pokemon_id` (`pokemon_id`);

--
-- Index pour la table `dresseurs`
--
ALTER TABLE `dresseurs`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `efficacite_type`
--
ALTER TABLE `efficacite_type`
  ADD PRIMARY KEY (`id_type_attaquant`,`id_type_defenseur`),
  ADD KEY `id_type_defenseur` (`id_type_defenseur`);

--
-- Index pour la table `est_type`
--
ALTER TABLE `est_type`
  ADD KEY `pokemon_id` (`pokemon_id`),
  ADD KEY `type_id` (`type_id`);

--
-- Index pour la table `evolue_en`
--
ALTER TABLE `evolue_en`
  ADD KEY `pokemon_base_id` (`pokemon_base_id`),
  ADD KEY `pokemon_evol_id` (`pokemon_evol_id`);

--
-- Index pour la table `pokemons`
--
ALTER TABLE `pokemons`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `types`
--
ALTER TABLE `types`
  ADD PRIMARY KEY (`id`);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `attaques`
--
ALTER TABLE `attaques`
  ADD CONSTRAINT `attaques_ibfk_1` FOREIGN KEY (`type_id`) REFERENCES `types` (`id`);

--
-- Contraintes pour la table `detient_pokemons`
--
ALTER TABLE `detient_pokemons`
  ADD CONSTRAINT `detient_pokemons_ibfk_1` FOREIGN KEY (`dresseur_id`) REFERENCES `dresseurs` (`id`),
  ADD CONSTRAINT `detient_pokemons_ibfk_2` FOREIGN KEY (`pokemon_id`) REFERENCES `pokemons` (`id`);

--
-- Contraintes pour la table `efficacite_type`
--
ALTER TABLE `efficacite_type`
  ADD CONSTRAINT `efficacite_type_ibfk_1` FOREIGN KEY (`id_type_attaquant`) REFERENCES `types` (`id`),
  ADD CONSTRAINT `efficacite_type_ibfk_2` FOREIGN KEY (`id_type_defenseur`) REFERENCES `types` (`id`);

--
-- Contraintes pour la table `est_type`
--
ALTER TABLE `est_type`
  ADD CONSTRAINT `est_type_ibfk_1` FOREIGN KEY (`pokemon_id`) REFERENCES `pokemons` (`id`),
  ADD CONSTRAINT `est_type_ibfk_2` FOREIGN KEY (`type_id`) REFERENCES `types` (`id`);

--
-- Contraintes pour la table `evolue_en`
--
ALTER TABLE `evolue_en`
  ADD CONSTRAINT `evolue_en_ibfk_1` FOREIGN KEY (`pokemon_base_id`) REFERENCES `pokemons` (`id`),
  ADD CONSTRAINT `evolue_en_ibfk_2` FOREIGN KEY (`pokemon_evol_id`) REFERENCES `pokemons` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
