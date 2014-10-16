-- phpMyAdmin SQL Dump
-- version 4.1.4
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Jeu 16 Octobre 2014 à 10:45
-- Version du serveur :  5.6.15-log
-- Version de PHP :  5.4.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `ajax`
--

-- --------------------------------------------------------

--
-- Structure de la table `categorie`
--

CREATE TABLE IF NOT EXISTS `categorie` (
  `ca_id` int(11) NOT NULL DEFAULT '0',
  `ca_libelle` varchar(40) NOT NULL DEFAULT '',
  PRIMARY KEY (`ca_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `categorie`
--

INSERT INTO `categorie` (`ca_id`, `ca_libelle`) VALUES
(1, 'fauteuil'),
(2, 'canap'),
(3, 'chaise'),
(4, 'armoire');

-- --------------------------------------------------------

--
-- Structure de la table `produit`
--

CREATE TABLE IF NOT EXISTS `produit` (
  `pr_id` int(11) NOT NULL DEFAULT '0',
  `pr_libelle` varchar(40) NOT NULL DEFAULT '',
  `pr_prix` decimal(18,2) NOT NULL DEFAULT '0.00',
  `pr_categorie` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pr_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `produit`
--

INSERT INTO `produit` (`pr_id`, `pr_libelle`, `pr_prix`, `pr_categorie`) VALUES
(1, 'fauteuil confortable', '50.00', 1),
(2, 'fauteuil de style', '100.00', 1),
(3, 'fauteuil moderne', '75.00', 1),
(4, 'fauteuil de style picard', '80.00', 1),
(5, 'Canap? en cuir', '800.00', 2),
(6, 'Petit canap? sympa', '450.00', 2),
(7, 'Canap? 12 places', '2000.00', 2),
(8, 'Chaise longue', '40.00', 3),
(9, 'Chaise haute', '45.00', 3),
(10, 'Petite chaise rouge', '25.00', 3),
(11, 'Chaise bancale', '120.00', 3),
(12, 'Chaise musicale', '250.00', 3);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
