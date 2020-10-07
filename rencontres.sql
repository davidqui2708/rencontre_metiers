-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  jeu. 08 oct. 2020 à 01:42
-- Version du serveur :  5.7.17
-- Version de PHP :  5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `rencontres`
--

-- --------------------------------------------------------

--
-- Structure de la table `forum`
--

CREATE TABLE `forum` (
  `ID` int(7) UNSIGNED NOT NULL,
  `autor` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `titulo` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `mensaje` text COLLATE utf8_unicode_ci NOT NULL,
  `fecha` date NOT NULL,
  `respuestas` int(11) NOT NULL DEFAULT '0',
  `identificador` int(7) NOT NULL DEFAULT '0',
  `ult_respuesta` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Déchargement des données de la table `forum`
--

INSERT INTO `forum` (`ID`, `autor`, `titulo`, `mensaje`, `fecha`, `respuestas`, `identificador`, `ult_respuesta`) VALUES
(8, 'Antonio', 'test', 'test1', '2020-10-07', 3, 0, '2020-10-07'),
(9, 'David', 'Repondre', 'test r&eacute;pondre Antonio ', '2020-10-07', 0, 8, '2020-10-07'),
(10, 'Jose', 'test2', 'test reponse2', '2020-10-08', 0, 8, '2020-10-08');

-- --------------------------------------------------------

--
-- Structure de la table `membres`
--

CREATE TABLE `membres` (
  `Id` mediumint(8) NOT NULL,
  `Nom` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `Prenom` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `Email` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `Password` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `Metier` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `Ville` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `membres`
--

INSERT INTO `membres` (`Id`, `Nom`, `Prenom`, `Email`, `Password`, `Metier`, `Ville`) VALUES
(14, 'Quintero Guzman', 'David Ricardo', 'drquinterog@gmail.com', '$2y$10$ew5bct.dyG.SkbSO7QFEiuZGJ3RX9.ZjLYQ9agq.BE11TJK4x8pYi', 'Jardinier', 'MontrÃ©al'),
(15, 'GuzmÃ¡n', 'David Ricardo', 'test@gmail.com', '$2y$10$3Qio4HZjo7XTlxzxZFzDJ.mOwUeezZepATXjw0fyYzMznmz2fpgVy', 'Jardinier', 'Longueuil');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `forum`
--
ALTER TABLE `forum`
  ADD PRIMARY KEY (`ID`);

--
-- Index pour la table `membres`
--
ALTER TABLE `membres`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `forum`
--
ALTER TABLE `forum`
  MODIFY `ID` int(7) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT pour la table `membres`
--
ALTER TABLE `membres`
  MODIFY `Id` mediumint(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
