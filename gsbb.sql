-- phpMyAdmin SQL Dump
-- version 4.1.4
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Jeu 16 Octobre 2014 à 10:44
-- Version du serveur :  5.6.15-log
-- Version de PHP :  5.4.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `gsbb`
--

-- --------------------------------------------------------

--
-- Structure de la table `famille`
--

CREATE TABLE IF NOT EXISTS `famille` (
  `FAM_CODE` char(3) NOT NULL,
  `FAM_LIBELLE` char(80) DEFAULT NULL,
  PRIMARY KEY (`FAM_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `famille`
--

INSERT INTO `famille` (`FAM_CODE`, `FAM_LIBELLE`) VALUES
('AA', 'Antalgiques en association'),
('AAA', 'Antalgiques antipyr'),
('AAC', 'Antid'),
('AAH', 'Antivertigineux antihistaminique H1'),
('ABA', 'Antibiotique antituberculeux'),
('ABC', 'Antibiotique antiacn'),
('ABP', 'Antibiotique de la famille des b'),
('AFC', 'Antibiotique de la famille des cyclines'),
('AFM', 'Antibiotique de la famille des macrolides'),
('AH', 'Antihistaminique H1 local'),
('AIM', 'Antid'),
('AIN', 'Antid'),
('ALO', 'Antibiotique local (ORL)'),
('ANS', 'Antid'),
('AO', 'Antibiotique ophtalmique'),
('AP', 'Antipsychotique normothymique'),
('AUM', 'Antibiotique urinaire minute'),
('CRT', 'Cortico'),
('HYP', 'Hypnotique antihistaminique'),
('PSA', 'Psychostimulant, antiasth');

-- --------------------------------------------------------

--
-- Structure de la table `medicament`
--

CREATE TABLE IF NOT EXISTS `medicament` (
  `MED_DEPOTLEGAL` char(10) NOT NULL,
  `MED_NOMCOMMERCIAL` char(25) DEFAULT NULL,
  `FAM_CODE` char(3) DEFAULT NULL,
  `MED_COMPOSITION` char(255) DEFAULT NULL,
  `MED_EFFETS` char(255) DEFAULT NULL,
  `MED_CONTREINDIC` char(255) DEFAULT NULL,
  `MED_PRIXECHANTILLON` double DEFAULT NULL,
  PRIMARY KEY (`MED_DEPOTLEGAL`),
  KEY `APPARTENIR_FK` (`FAM_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `medicament`
--

INSERT INTO `medicament` (`MED_DEPOTLEGAL`, `MED_NOMCOMMERCIAL`, `FAM_CODE`, `MED_COMPOSITION`, `MED_EFFETS`, `MED_CONTREINDIC`, `MED_PRIXECHANTILLON`) VALUES
('3MYC7', 'TRIMYCINE', 'CRT', 'Triamcinolone (ac', 'Ce m', 'Ce m', 0),
('ADIMOL9', 'ADIMOL', 'ABP', 'Amoxicilline + Acide clavulanique', 'Ce m', 'Ce m', 0),
('AMOPIL7', 'AMOPIL', 'ABP', 'Amoxicilline', 'Ce m', 'Ce m', 0),
('AMOX45', 'AMOXAR', 'ABP', 'Amoxicilline', 'Ce m', 'La prise de ce m', 0),
('AMOXIG12', 'AMOXI G', 'ABP', 'Amoxicilline', 'Ce m', 'Ce m', 0),
('APATOUX22', 'APATOUX Vitamine C', 'ALO', 'Tyrothricine + T', 'Ce m', 'Ce m', 0),
('BACTIG10', 'BACTIGEL', 'ABC', 'Erythromycine', 'Ce m', 'Ce m', 0),
('BACTIV13', 'BACTIVIL', 'AFM', 'Erythromycine', 'Ce m', 'Ce m', 0),
('BITALV', 'BIVALIC', 'AAA', 'Dextropropoxyph', 'Ce m', 'Ce m', 0),
('CARTION6', 'CARTION', 'AAA', 'Acide ac', 'Ce m', 'Ce m', 0),
('CLAZER6', 'CLAZER', 'AFM', 'Clarithromycine', 'Ce m', 'Ce m', 0),
('DEPRIL9', 'DEPRAMIL', 'AIM', 'Clomipramine', 'Ce m', 'Ce m', 0),
('DIMIRTAM6', 'DIMIRTAM', 'AAC', 'Mirtazapine', 'Ce m', 'La prise de ce produit est contre-indiqu', 0),
('DOLRIL7', 'DOLORIL', 'AAA', 'Acide ac', 'Ce m', 'Ce m', 0),
('DORNOM8', 'NORMADOR', 'HYP', 'Doxylamine', 'Ce m', 'Ce m', 0),
('EQUILARX6', 'EQUILAR', 'AAH', 'M', 'Ce m', 'Ce m', 0),
('EVILR7', 'EVEILLOR', 'PSA', 'Adrafinil', 'Ce m', 'Ce m', 0),
('INSXT5', 'INSECTIL', 'AH', 'Diph', 'Ce m', 'Ce m', 0),
('JOVAI8', 'JOVENIL', 'AFM', 'Josamycine', 'Ce m', 'Ce m', 0),
('LIDOXY23', 'LIDOXYTRACINE', 'AFC', 'Oxyt', 'Ce m', 'Ce m', 0),
('LITHOR12', 'LITHORINE', 'AP', 'Lithium', 'Ce m', 'Ce m', 0),
('PARMOL16', 'PARMOCODEINE', 'AA', 'Cod', 'Ce m', 'Ce m', 0),
('PHYSOI8', 'PHYSICOR', 'PSA', 'Sulbutiamine', 'Ce m', 'Ce m', 0),
('PIRIZ8', 'PIRIZAN', 'ABA', 'Pyrazinamide', 'Ce m', 'Ce m', 0),
('POMDI20', 'POMADINE', 'AO', 'Bacitracine', 'Ce m', 'Ce m', 0),
('TROXT21', 'TROXADET', 'AIN', 'Parox', 'Ce m', 'Ce m', 0),
('TXISOL22', 'TOUXISOL Vitamine C', 'ALO', 'Tyrothricine + Acide ascorbique (Vitamine C)', 'Ce m', 'Ce m', 0),
('URIEG6', 'URIREGUL', 'AUM', 'Fosfomycine trom', 'Ce m', 'La prise de ce m', 0);

-- --------------------------------------------------------

--
-- Structure de la table `offrir`
--

CREATE TABLE IF NOT EXISTS `offrir` (
  `VIS_MATRICULE` char(10) NOT NULL,
  `RAP_NUM` int(11) NOT NULL,
  `MED_DEPOTLEGAL` char(10) NOT NULL,
  `OFF_QTE` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`VIS_MATRICULE`,`RAP_NUM`,`MED_DEPOTLEGAL`),
  KEY `LIEN_287_FK` (`MED_DEPOTLEGAL`),
  KEY `LIEN_34_FK` (`VIS_MATRICULE`,`RAP_NUM`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `offrir`
--

INSERT INTO `offrir` (`VIS_MATRICULE`, `RAP_NUM`, `MED_DEPOTLEGAL`, `OFF_QTE`) VALUES
('a17', 4, '3MYC7', 3),
('a17', 4, 'AMOX45', 12);

-- --------------------------------------------------------

--
-- Structure de la table `praticien`
--

CREATE TABLE IF NOT EXISTS `praticien` (
  `PRA_NUM` smallint(6) NOT NULL,
  `PRA_NOM` char(25) DEFAULT NULL,
  `PRA_PRENOM` char(30) DEFAULT NULL,
  `PRA_ADRESSE` char(50) DEFAULT NULL,
  `PRA_CP` char(5) DEFAULT NULL,
  `PRA_VILLE` char(25) DEFAULT NULL,
  `PRA_COEFNOTORIETE` double DEFAULT NULL,
  `TYP_CODE` char(3) DEFAULT NULL,
  PRIMARY KEY (`PRA_NUM`),
  KEY `RELEVER_FK` (`TYP_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `praticien`
--

INSERT INTO `praticien` (`PRA_NUM`, `PRA_NOM`, `PRA_PRENOM`, `PRA_ADRESSE`, `PRA_CP`, `PRA_VILLE`, `PRA_COEFNOTORIETE`, `TYP_CODE`) VALUES
(1, 'Notini', 'Alain', '114 r Authie', '85000', 'LA ROCHE SUR YON', 290, 'MH'),
(2, 'Gosselin', 'Albert', '13 r Devon', '41000', 'BLOIS', 307, 'MV'),
(3, 'Delahaye', 'Andr', '36 av 6 Juin', '25000', 'BESANCON', 185, 'PS'),
(4, 'Leroux', 'Andr', '47 av Robert Schuman', '60000', 'BEAUVAIS', 172, 'PH'),
(5, 'Desmoulins', 'Anne', '31 r St Jean', '30000', 'NIMES', 94, 'PO'),
(6, 'Mouel', 'Anne', '27 r Auvergne', '80000', 'AMIENS', 45, 'MH'),
(7, 'Desgranges-Lentz', 'Antoine', '1 r Albert de Mun', '29000', 'MORLAIX', 20, 'MV'),
(8, 'Marcouiller', 'Arnaud', '31 r St Jean', '68000', 'MULHOUSE', 396, 'PS'),
(9, 'Dupuy', 'Benoit', '9 r Demolombe', '34000', 'MONTPELLIER', 395, 'PH'),
(10, 'Lerat', 'Bernard', '31 r St Jean', '59000', 'LILLE', 257, 'PO'),
(11, 'Mar', 'Bertrand', '86Bis r Basse', '67000', 'STRASBOURG', 450, 'MH'),
(12, 'Boscher', 'Bruno', '94 r Falaise', '10000', 'TROYES', 356, 'MV'),
(13, 'Morel', 'Catherine', '21 r Chateaubriand', '75000', 'PARIS', 379, 'PS'),
(14, 'Guivarch', 'Chantal', '4 av G', '45000', 'ORLEANS', 114, 'PH'),
(15, 'Bessin-Grosdoit', 'Christophe', '92 r Falaise', '6000', 'NICE', 222, 'PO'),
(16, 'Rossa', 'Claire', '14 av Thi', '6000', 'NICE', 529, 'MH'),
(17, 'Cauchy', 'Denis', '5 av Ste Th', '11000', 'NARBONNE', 458, 'MV'),
(18, 'Gaff', 'Dominique', '9 av 1', '35000', 'RENNES', 213, 'PS'),
(19, 'Guenon', 'Dominique', '98 bd Mar Lyautey', '44000', 'NANTES', 175, 'PH'),
(20, 'Pr', 'Dominique', '29 r Lucien Nelle', '87000', 'LIMOGES', 151, 'PO'),
(21, 'Houchard', 'Eliane', '9 r Demolombe', '49100', 'ANGERS', 436, 'MH'),
(22, 'Desmons', 'Elisabeth', '51 r Berni', '29000', 'QUIMPER', 281, 'MV'),
(23, 'Flament', 'Elisabeth', '11 r Pasteur', '35000', 'RENNES', 315, 'PS'),
(24, 'Goussard', 'Emmanuel', '9 r Demolombe', '41000', 'BLOIS', 40, 'PH'),
(25, 'Desprez', 'Eric', '9 r Vaucelles', '33000', 'BORDEAUX', 406, 'PO'),
(26, 'Coste', 'Evelyne', '29 r Lucien Nelle', '19000', 'TULLE', 441, 'MH'),
(27, 'Lefebvre', 'Fr', '2 pl Wurzburg', '55000', 'VERDUN', 573, 'MV'),
(28, 'Lem', 'Fr', '29 av 6 Juin', '56000', 'VANNES', 326, 'PS'),
(29, 'Martin', 'Fr', 'B', '70000', 'VESOUL', 506, 'PH'),
(30, 'Marie', 'Fr', '172 r Caponi', '70000', 'VESOUL', 313, 'PO'),
(31, 'Rosenstech', 'Genevi', '27 r Auvergne', '75000', 'PARIS', 366, 'MH'),
(32, 'Pontavice', 'Ghislaine', '8 r Gaillon', '86000', 'POITIERS', 265, 'MV'),
(33, 'Leveneur-Mosquet', 'Guillaume', '47 av Robert Schuman', '64000', 'PAU', 184, 'PS'),
(34, 'Blanchais', 'Guy', '30 r Authie', '8000', 'SEDAN', 502, 'PH'),
(35, 'Leveneur', 'Hugues', '7 pl St Gilles', '62000', 'ARRAS', 7, 'PO'),
(36, 'Mosquet', 'Isabelle', '22 r Jules Verne', '76000', 'ROUEN', 77, 'MH'),
(37, 'Giraudon', 'Jean-Christophe', '1 r Albert de Mun', '38100', 'VIENNE', 92, 'MV'),
(38, 'Marie', 'Jean-Claude', '26 r H', '69000', 'LYON', 120, 'PS'),
(39, 'Maury', 'Jean-Fran', '5 r Pierre Girard', '71000', 'CHALON SUR SAONE', 13, 'PH'),
(40, 'Dennel', 'Jean-Louis', '7 pl St Gilles', '28000', 'CHARTRES', 550, 'PO'),
(41, 'Ain', 'Jean-Pierre', '4 r', '2000', 'LAON', 5, 'MH'),
(42, 'Chemery', 'Jean-Pierre', '51 pl Ancienne Boucherie', '14000', 'CAEN', 396, 'MV'),
(43, 'Comoz', 'Jean-Pierre', '35 r Auguste Lechesne', '18000', 'BOURGES', 340, 'PS'),
(44, 'Desfaudais', 'Jean-Pierre', '7 pl St Gilles', '29000', 'BREST', 71, 'PH'),
(45, 'Phan', 'J', '9 r Clos Caillet', '79000', 'NIORT', 451, 'PO'),
(46, 'Riou', 'Line', '43 bd G', '77000', 'MARNE LA VALLEE', 193, 'MH'),
(47, 'Chubilleau', 'Louis', '46 r Eglise', '17000', 'SAINTES', 202, 'MV'),
(48, 'Lebrun', 'Lucette', '178 r Auge', '54000', 'NANCY', 410, 'PS'),
(49, 'Goessens', 'Marc', '6 av 6 Juin', '39000', 'DOLE', 548, 'PH'),
(50, 'Laforge', 'Marc', '5 r', '50000', 'SAINT LO', 265, 'PO'),
(51, 'Millereau', 'Marc', '36 av 6 Juin', '72000', 'LA FERTE BERNARD', 430, 'MH'),
(52, 'Dauverne', 'Marie-Christine', '69 av Charlemagne', '21000', 'DIJON', 281, 'MV'),
(53, 'Vittorio', 'Myriam', '3 pl Champlain', '94000', 'BOISSY SAINT LEGER', 356, 'PS'),
(54, 'Lapasset', 'Nhieu', '31 av 6 Juin', '52000', 'CHAUMONT', 107, 'PH'),
(55, 'Plantet-Besnier', 'Nicole', '10 av 1', '86000', 'CHATELLEREAULT', 369, 'PO'),
(56, 'Chubilleau', 'Pascal', '3 r Hastings', '15000', 'AURRILLAC', 290, 'MH'),
(57, 'Robert', 'Pascal', '31 r St Jean', '93000', 'BOBIGNY', 162, 'MV'),
(58, 'Jean', 'Pascale', '114 r Authie', '49100', 'SAUMUR', 375, 'PS'),
(59, 'Chanteloube', 'Patrice', '14 av Thi', '13000', 'MARSEILLE', 478, 'PH'),
(60, 'Lecuirot', 'Patrice', 'r', '54000', 'NANCY', 239, 'PO'),
(61, 'Gandon', 'Patrick', '47 av Robert Schuman', '37000', 'TOURS', 599, 'MH'),
(62, 'Mirouf', 'Patrick', '22 r Puits Picard', '74000', 'ANNECY', 458, 'MV'),
(63, 'Boireaux', 'Philippe', '14 av Thi', '10000', 'CHALON EN CHAMPAGNE', 454, 'PS'),
(64, 'Cendrier', 'Philippe', '7 pl St Gilles', '12000', 'RODEZ', 164, 'PH'),
(65, 'Duhamel', 'Philippe', '114 r Authie', '34000', 'MONTPELLIER', 98, 'PO'),
(66, 'Grigy', 'Philippe', '15 r M', '44000', 'CLISSON', 285, 'MH'),
(67, 'Linard', 'Philippe', '1 r Albert de Mun', '81000', 'ALBI', 486, 'MV'),
(68, 'Lozier', 'Philippe', '8 r Gaillon', '31000', 'TOULOUSE', 48, 'PS'),
(69, 'Dech', 'Pierre', '63 av Thi', '23000', 'MONTLUCON', 253, 'PH'),
(70, 'Goessens', 'Pierre', '22 r Jean Romain', '40000', 'MONT DE MARSAN', 426, 'PO'),
(71, 'Lem', 'Pierre', '39 av 6 Juin', '57000', 'METZ', 118, 'MH'),
(72, 'N', 'Pierre', '39 av 6 Juin', '82000', 'MONTAUBAN', 72, 'MV'),
(73, 'Guyot', 'Pierre-Laurent', '43 bd G', '48000', 'MENDE', 352, 'PS'),
(74, 'Chauchard', 'Roger', '9 r Vaucelles', '13000', 'MARSEILLE', 552, 'PH'),
(75, 'Mabire', 'Roland', '11 r Boutiques', '67000', 'STRASBOURG', 422, 'PO'),
(76, 'Leroy', 'Soazig', '45 r Boutiques', '61000', 'ALENCON', 570, 'MH'),
(77, 'Guyot', 'St', '26 r H', '46000', 'FIGEAC', 28, 'MV'),
(78, 'Delposen', 'Sylvain', '39 av 6 Juin', '27000', 'DREUX', 292, 'PS'),
(79, 'Rault', 'Sylvie', '15 bd Richemond', '2000', 'SOISSON', 526, 'PH'),
(80, 'Renouf', 'Sylvie', '98 bd Mar Lyautey', '88000', 'EPINAL', 425, 'PO'),
(81, 'Alliet-Grach', 'Thierry', '14 av Thi', '7000', 'PRIVAS', 451, 'MH'),
(82, 'Bayard', 'Thierry', '92 r Falaise', '42000', 'SAINT ETIENNE', 271, 'MV'),
(83, 'Gauchet', 'Thierry', '7 r Desmoueux', '38100', 'GRENOBLE', 406, 'PS'),
(84, 'Bobichon', 'Tristan', '219 r Caponi', '9000', 'FOIX', 218, 'PH'),
(85, 'Duchemin-Laniel', 'V', '130 r St Jean', '33000', 'LIBOURNE', 265, 'PO'),
(86, 'Laurent', 'Youn', '34 r Demolombe', '53000', 'MAYENNE', 496, 'MH');

-- --------------------------------------------------------

--
-- Structure de la table `rapport_visite`
--

CREATE TABLE IF NOT EXISTS `rapport_visite` (
  `VIS_MATRICULE` char(10) NOT NULL,
  `RAP_NUM` int(11) NOT NULL,
  `PRA_NUM` smallint(6) DEFAULT NULL,
  `RAP_DATE` datetime DEFAULT NULL,
  `RAP_BILAN` char(255) DEFAULT NULL,
  `RAP_MOTIF` char(255) DEFAULT NULL,
  PRIMARY KEY (`VIS_MATRICULE`,`RAP_NUM`),
  KEY `CONCERNER_FK` (`PRA_NUM`),
  KEY `REDIGER_FK` (`VIS_MATRICULE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `rapport_visite`
--

INSERT INTO `rapport_visite` (`VIS_MATRICULE`, `RAP_NUM`, `PRA_NUM`, `RAP_DATE`, `RAP_BILAN`, `RAP_MOTIF`) VALUES
('a131', 7, 41, '0000-00-00 00:00:00', 'RAS\r\nChangement de tel : 05 89 89 89 89', 'Rapport Annuel'),
('a17', 4, 4, '0000-00-00 00:00:00', 'Changement de direction, red', 'Baisse activit');

-- --------------------------------------------------------

--
-- Structure de la table `region`
--

CREATE TABLE IF NOT EXISTS `region` (
  `REG_CODE` char(2) NOT NULL,
  `SEC_CODE` char(1) DEFAULT NULL,
  `REG_NOM` char(50) DEFAULT NULL,
  PRIMARY KEY (`REG_CODE`),
  KEY `RATTACHER_FK` (`SEC_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `region`
--

INSERT INTO `region` (`REG_CODE`, `SEC_CODE`, `REG_NOM`) VALUES
('AL', 'E', 'Alsace Lorraine'),
('AQ', 'S', 'Aquitaine'),
('AU', 'P', 'Auvergne'),
('BG', 'O', 'Bretagne'),
('BN', 'O', 'Basse Normandie'),
('BO', 'E', 'Bourgogne'),
('CA', 'N', 'Champagne Ardennes'),
('CE', 'P', 'Centre'),
('FC', 'E', 'Franche Comt'),
('HN', 'N', 'Haute Normandie'),
('IF', 'P', 'Ile de France'),
('LG', 'S', 'Languedoc'),
('LI', 'P', 'Limousin'),
('MP', 'S', 'Midi Pyr'),
('NP', 'N', 'Nord Pas de Calais'),
('PA', 'S', 'Provence Alpes Cote d''Azur'),
('PC', 'O', 'Poitou Charente'),
('PI', 'N', 'Picardie'),
('PL', 'O', 'Pays de Loire'),
('RA', 'E', 'Rhone Alpes'),
('RO', 'S', 'Roussilon'),
('VD', 'O', 'Vend');

-- --------------------------------------------------------

--
-- Structure de la table `secteur`
--

CREATE TABLE IF NOT EXISTS `secteur` (
  `SEC_CODE` char(1) NOT NULL,
  `SEC_LIBELLE` char(15) DEFAULT NULL,
  PRIMARY KEY (`SEC_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `secteur`
--

INSERT INTO `secteur` (`SEC_CODE`, `SEC_LIBELLE`) VALUES
('E', 'Est'),
('N', 'Nord'),
('O', 'Ouest'),
('P', 'Paris centre'),
('S', 'Sud');

-- --------------------------------------------------------

--
-- Structure de la table `travailler`
--

CREATE TABLE IF NOT EXISTS `travailler` (
  `VIS_MATRICULE` char(10) NOT NULL,
  `JJMMAA` datetime NOT NULL,
  `REG_CODE` char(2) NOT NULL,
  `TRA_ROLE` char(11) DEFAULT NULL,
  PRIMARY KEY (`JJMMAA`,`VIS_MATRICULE`,`REG_CODE`),
  KEY `LIEN_77_FK` (`VIS_MATRICULE`),
  KEY `LIEN_78_FK` (`REG_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `travailler`
--

INSERT INTO `travailler` (`VIS_MATRICULE`, `JJMMAA`, `REG_CODE`, `TRA_ROLE`) VALUES
('a131', '0000-00-00 00:00:00', 'BG', 'Visiteur'),
('a131', '0000-00-00 00:00:00', 'BN', 'Visiteur'),
('a17', '0000-00-00 00:00:00', 'RA', 'Délégué'),
('a55', '0000-00-00 00:00:00', 'MP', 'Visiteur'),
('a55', '0000-00-00 00:00:00', 'RO', 'Délégué'),
('a93', '0000-00-00 00:00:00', 'PC', 'Visiteur'),
('b13', '0000-00-00 00:00:00', 'AL', 'Visiteur'),
('b16', '0000-00-00 00:00:00', 'BG', 'Visiteur'),
('b19', '0000-00-00 00:00:00', 'PL', 'Visiteur'),
('b25', '0000-00-00 00:00:00', 'PL', 'Délégué'),
('b28', '0000-00-00 00:00:00', 'LG', 'Visiteur'),
('b34', '0000-00-00 00:00:00', 'CE', 'Responsable'),
('b4', '0000-00-00 00:00:00', 'AQ', 'Visiteur'),
('b50', '0000-00-00 00:00:00', 'PA', 'Visiteur'),
('b59', '0000-00-00 00:00:00', 'RA', 'Visiteur'),
('c14', '0000-00-00 00:00:00', 'PA', 'Responsable'),
('c3', '0000-00-00 00:00:00', 'CA', 'Visiteur'),
('c54', '0000-00-00 00:00:00', 'AL', 'Visiteur'),
('d13', '0000-00-00 00:00:00', 'PL', 'Visiteur'),
('d51', '0000-00-00 00:00:00', 'FC', 'Responsable'),
('e22', '0000-00-00 00:00:00', 'AL', 'Visiteur'),
('e24', '0000-00-00 00:00:00', 'AL', 'Responsable'),
('e39', '0000-00-00 00:00:00', 'IF', 'Visiteur'),
('e49', '0000-00-00 00:00:00', 'MP', 'Visiteur'),
('e5', '0000-00-00 00:00:00', 'AQ', 'Responsable'),
('e5', '0000-00-00 00:00:00', 'MP', 'Délégué'),
('e52', '0000-00-00 00:00:00', 'HN', 'Visiteur'),
('f21', '0000-00-00 00:00:00', 'RA', 'Visiteur'),
('f39', '0000-00-00 00:00:00', 'RA', 'Visiteur'),
('f4', '0000-00-00 00:00:00', 'MP', 'Visiteur'),
('g19', '0000-00-00 00:00:00', 'IF', 'Visiteur'),
('g30', '0000-00-00 00:00:00', 'PI', 'Responsable'),
('g53', '0000-00-00 00:00:00', 'BG', 'Visiteur'),
('g7', '0000-00-00 00:00:00', 'LI', 'Visiteur'),
('h13', '0000-00-00 00:00:00', 'LI', 'Visiteur'),
('h30', '0000-00-00 00:00:00', 'IF', 'Visiteur'),
('h35', '0000-00-00 00:00:00', 'AU', 'Visiteur'),
('h40', '0000-00-00 00:00:00', 'CA', 'Visiteur'),
('j45', '0000-00-00 00:00:00', 'CA', 'Responsable'),
('j50', '0000-00-00 00:00:00', 'NP', 'Visiteur'),
('j8', '0000-00-00 00:00:00', 'IF', 'Responsable'),
('k4', '0000-00-00 00:00:00', 'LG', 'Visiteur'),
('k53', '0000-00-00 00:00:00', 'AL', 'Délégué'),
('k53', '0000-00-00 00:00:00', 'CA', 'Visiteur'),
('l14', '0000-00-00 00:00:00', 'PL', 'Visiteur'),
('l23', '0000-00-00 00:00:00', 'PC', 'Visiteur'),
('l46', '0000-00-00 00:00:00', 'PL', 'Visiteur'),
('l56', '0000-00-00 00:00:00', 'FC', 'Visiteur'),
('m35', '0000-00-00 00:00:00', 'MP', 'Visiteur'),
('m45', '0000-00-00 00:00:00', 'AL', 'Délégué'),
('n42', '0000-00-00 00:00:00', 'HN', 'Visiteur'),
('n58', '0000-00-00 00:00:00', 'CE', 'Visiteur'),
('n59', '0000-00-00 00:00:00', 'PI', 'Visiteur'),
('o26', '0000-00-00 00:00:00', 'LG', 'Visiteur'),
('p32', '0000-00-00 00:00:00', 'IF', 'Visiteur'),
('p40', '0000-00-00 00:00:00', 'BN', 'Responsable'),
('p41', '0000-00-00 00:00:00', 'PC', 'Visiteur'),
('p42', '0000-00-00 00:00:00', 'PI', 'Visiteur'),
('p49', '0000-00-00 00:00:00', 'CE', 'Visiteur'),
('p6', '0000-00-00 00:00:00', 'AQ', 'Visiteur'),
('p7', '0000-00-00 00:00:00', 'RO', 'Visiteur'),
('p8', '0000-00-00 00:00:00', 'BO', 'Visiteur'),
('q17', '0000-00-00 00:00:00', 'BN', 'Visiteur'),
('r24', '0000-00-00 00:00:00', 'BN', 'Responsable'),
('r58', '0000-00-00 00:00:00', 'BG', 'Visiteur'),
('s10', '0000-00-00 00:00:00', 'FC', 'Visiteur'),
('s21', '0000-00-00 00:00:00', 'LI', 'Visiteur'),
('t43', '0000-00-00 00:00:00', 'BO', 'Visiteur'),
('t47', '0000-00-00 00:00:00', 'PI', 'Visiteur'),
('t55', '0000-00-00 00:00:00', 'MP', 'Visiteur'),
('t60', '0000-00-00 00:00:00', 'CE', 'Visiteur');

-- --------------------------------------------------------

--
-- Structure de la table `type_praticien`
--

CREATE TABLE IF NOT EXISTS `type_praticien` (
  `TYP_CODE` char(3) NOT NULL,
  `TYP_LIBELLE` char(25) DEFAULT NULL,
  `TYP_LIEU` char(35) DEFAULT NULL,
  PRIMARY KEY (`TYP_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `type_praticien`
--

INSERT INTO `type_praticien` (`TYP_CODE`, `TYP_LIBELLE`, `TYP_LIEU`) VALUES
('MH', 'Médecin Hospitalier', 'Hopital ou clinique'),
('MV', 'Médecine de ville', 'Cabinet'),
('PH', 'Pharmacien Hospitalier', 'Hopital ou clinique'),
('PO', 'Pharmacien Officine', 'Pharmacie'),
('PS', 'Personnel de sant', 'Centre paramédical');

-- --------------------------------------------------------

--
-- Structure de la table `visiteur`
--

CREATE TABLE IF NOT EXISTS `visiteur` (
  `VIS_MATRICULE` char(10) NOT NULL,
  `VIS_NOM` char(25) DEFAULT NULL,
  `VIS_PRENOM` char(50) DEFAULT NULL,
  `VIS_ADRESSE` char(50) DEFAULT NULL,
  `VIS_CP` char(5) DEFAULT NULL,
  `VIS_VILLE` char(30) DEFAULT NULL,
  `VIS_DATEEMBAUCHE` datetime DEFAULT NULL,
  `SEC_CODE` char(1) DEFAULT NULL,
  PRIMARY KEY (`VIS_MATRICULE`),
  KEY `SEC_CODE` (`SEC_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `visiteur`
--

INSERT INTO `visiteur` (`VIS_MATRICULE`, `VIS_NOM`, `VIS_PRENOM`, `VIS_ADRESSE`, `VIS_CP`, `VIS_VILLE`, `VIS_DATEEMBAUCHE`, `SEC_CODE`) VALUES
('a131', 'Villechalane', 'Louis', '8 cours Lafontaine', '29000', 'BREST', '0000-00-00 00:00:00', ''),
('a17', 'Andre', 'David', '1 r Aimon de Chiss', '38100', 'GRENOBLE', '0000-00-00 00:00:00', ''),
('a55', 'Bedos', 'Christian', '1 r B', '65000', 'TARBES', '0000-00-00 00:00:00', ''),
('a93', 'Tusseau', 'Louis', '22 r Renou', '86000', 'POITIERS', '0000-00-00 00:00:00', ''),
('b13', 'Bentot', 'Pascal', '11 av 6 Juin', '67000', 'STRASBOURG', '0000-00-00 00:00:00', ''),
('b16', 'Bioret', 'Luc', '1 r Linne', '35000', 'RENNES', '0000-00-00 00:00:00', ''),
('b19', 'Bunisset', 'Francis', '10 r Nicolas Chorier', '85000', 'LA ROCHE SUR YON', '0000-00-00 00:00:00', ''),
('b25', 'Bunisset', 'Denise', '1 r Lionne', '49100', 'ANGERS', '0000-00-00 00:00:00', ''),
('b28', 'Cacheux', 'Bernard', '114 r Authie', '34000', 'MONTPELLIER', '0000-00-00 00:00:00', ''),
('b34', 'Cadic', 'Eric', '123 r Caponi', '41000', 'BLOIS', '0000-00-00 00:00:00', 'P'),
('b4', 'Charoze', 'Catherine', '100 pl G', '33000', 'BORDEAUX', '0000-00-00 00:00:00', ''),
('b50', 'Clepkens', 'Christophe', '12 r F', '13000', 'MARSEILLE', '0000-00-00 00:00:00', ''),
('b59', 'Cottin', 'Vincenne', '36 sq Capucins', '5000', 'GAP', '0000-00-00 00:00:00', ''),
('c14', 'Daburon', 'Fran', '13 r Champs Elys', '6000', 'NICE', '0000-00-00 00:00:00', 'S'),
('c3', 'De', 'Philippe', '13 r Charles Peguy', '10000', 'TROYES', '0000-00-00 00:00:00', ''),
('c54', 'Debelle', 'Michel', '181 r Caponi', '88000', 'EPINAL', '0000-00-00 00:00:00', ''),
('d13', 'Debelle', 'Jeanne', '134 r Stalingrad', '44000', 'NANTES', '0000-00-00 00:00:00', ''),
('d51', 'Debroise', 'Michel', '2 av 6 Juin', '70000', 'VESOUL', '0000-00-00 00:00:00', 'E'),
('e22', 'Desmarquest', 'Nathalie', '14 r F', '54000', 'NANCY', '0000-00-00 00:00:00', ''),
('e24', 'Desnost', 'Pierre', '16 r Barral de Montferrat', '55000', 'VERDUN', '0000-00-00 00:00:00', 'E'),
('e39', 'Dudouit', 'Fr', '18 quai Xavier Jouvin', '75000', 'PARIS', '0000-00-00 00:00:00', ''),
('e49', 'Duncombe', 'Claude', '19 av Alsace Lorraine', '9000', 'FOIX', '0000-00-00 00:00:00', ''),
('e5', 'Enault-Pascreau', 'C', '25B r Stalingrad', '40000', 'MONT DE MARSAN', '0000-00-00 00:00:00', 'S'),
('e52', 'Eynde', 'Val', '3 r Henri Moissan', '76000', 'ROUEN', '0000-00-00 00:00:00', ''),
('f21', 'Finck', 'Jacques', 'rte Montreuil Bellay', '74000', 'ANNECY', '0000-00-00 00:00:00', ''),
('f39', 'Fr', 'Fernande', '4 r Jean Giono', '69000', 'LYON', '0000-00-00 00:00:00', ''),
('f4', 'Gest', 'Alain', '30 r Authie', '46000', 'FIGEAC', '0000-00-00 00:00:00', ''),
('g19', 'Gheysen', 'Galassus', '32 bd Mar Foch', '75000', 'PARIS', '0000-00-00 00:00:00', ''),
('g30', 'Girard', 'Yvon', '31 av 6 Juin', '80000', 'AMIENS', '0000-00-00 00:00:00', 'N'),
('g53', 'Gombert', 'Luc', '32 r Emile Gueymard', '56000', 'VANNES', '0000-00-00 00:00:00', ''),
('g7', 'Guindon', 'Caroline', '40 r Mar Montgomery', '87000', 'LIMOGES', '0000-00-00 00:00:00', ''),
('h13', 'Guindon', 'Fran', '44 r Picoti', '19000', 'TULLE', '0000-00-00 00:00:00', ''),
('h30', 'Igigabel', 'Guy', '33 gal Arlequin', '94000', 'CRETEIL', '0000-00-00 00:00:00', ''),
('h35', 'Jourdren', 'Pierre', '34 av Jean Perrot', '15000', 'AURRILLAC', '0000-00-00 00:00:00', ''),
('h40', 'Juttard', 'Pierre-Raoul', '34 cours Jean Jaur', '8000', 'SEDAN', '0000-00-00 00:00:00', ''),
('j45', 'Labour', 'Saout', '38 cours Berriat', '52000', 'CHAUMONT', '0000-00-00 00:00:00', 'N'),
('j50', 'Landr', 'Philippe', '4 av G', '59000', 'LILLE', '0000-00-00 00:00:00', ''),
('j8', 'Langeard', 'Hugues', '39 av Jean Perrot', '93000', 'BAGNOLET', '0000-00-00 00:00:00', 'P'),
('k4', 'Lanne', 'Bernard', '4 r Bayeux', '30000', 'NIMES', '0000-00-00 00:00:00', ''),
('k53', 'Le', 'No', '4 av Beauvert', '68000', 'MULHOUSE', '0000-00-00 00:00:00', ''),
('l14', 'Le', 'Jean', '39 r Raspail', '53000', 'LAVAL', '0000-00-00 00:00:00', ''),
('l23', 'Leclercq', 'Servane', '11 r Quinconce', '18000', 'BOURGES', '0000-00-00 00:00:00', ''),
('l46', 'Lecornu', 'Jean-Bernard', '4 bd Mar Foch', '72000', 'LA FERTE BERNARD', '0000-00-00 00:00:00', ''),
('l56', 'Lecornu', 'Ludovic', '4 r Abel Servien', '25000', 'BESANCON', '0000-00-00 00:00:00', ''),
('m35', 'Lejard', 'Agn', '4 r Anthoard', '82000', 'MONTAUBAN', '0000-00-00 00:00:00', ''),
('m45', 'Lesaulnier', 'Pascal', '47 r Thiers', '57000', 'METZ', '0000-00-00 00:00:00', ''),
('n42', 'Letessier', 'St', '5 chem Capuche', '27000', 'EVREUX', '0000-00-00 00:00:00', ''),
('n58', 'Loirat', 'Didier', 'Les P', '45000', 'ORLEANS', '0000-00-00 00:00:00', ''),
('n59', 'Maffezzoli', 'Thibaud', '5 r Chateaubriand', '2000', 'LAON', '0000-00-00 00:00:00', ''),
('o26', 'Mancini', 'Anne', '5 r D''Agier', '48000', 'MENDE', '0000-00-00 00:00:00', ''),
('p32', 'Marcouiller', 'G', '7 pl St Gilles', '91000', 'ISSY LES MOULINEAUX', '0000-00-00 00:00:00', ''),
('p40', 'Michel', 'Jean-Claude', '5 r Gabriel P', '61000', 'FLERS', '0000-00-00 00:00:00', 'O'),
('p41', 'Montecot', 'Fran', '6 r Paul Val', '17000', 'SAINTES', '0000-00-00 00:00:00', ''),
('p42', 'Notini', 'Veronique', '5 r Lieut Chabal', '60000', 'BEAUVAIS', '0000-00-00 00:00:00', ''),
('p49', 'Onfroy', 'Den', '5 r Sidonie Jacolin', '37000', 'TOURS', '0000-00-00 00:00:00', ''),
('p6', 'Pascreau', 'Charles', '57 bd Mar Foch', '64000', 'PAU', '0000-00-00 00:00:00', ''),
('p7', 'Pernot', 'Claude-No', '6 r Alexandre 1 de Yougoslavie', '11000', 'NARBONNE', '0000-00-00 00:00:00', ''),
('p8', 'Perrier', 'Ma', '6 r Aubert Dubayet', '71000', 'CHALON SUR SAONE', '0000-00-00 00:00:00', ''),
('q17', 'Petit', 'Jean-Louis', '7 r Ernest Renan', '50000', 'SAINT LO', '0000-00-00 00:00:00', ''),
('r24', 'Piquery', 'Patrick', '9 r Vaucelles', '14000', 'CAEN', '0000-00-00 00:00:00', 'O'),
('r58', 'Quiquandon', 'Jo', '7 r Ernest Renan', '29000', 'QUIMPER', '0000-00-00 00:00:00', ''),
('s10', 'Retailleau', 'Josselin', '88Bis r Saumuroise', '39000', 'DOLE', '0000-00-00 00:00:00', ''),
('s21', 'Retailleau', 'Pascal', '32 bd Ayrault', '23000', 'MONTLUCON', '0000-00-00 00:00:00', ''),
('t43', 'Souron', 'Maryse', '7B r Gay Lussac', '21000', 'DIJON', '0000-00-00 00:00:00', ''),
('t47', 'Tiphagne', 'Patrick', '7B r Gay Lussac', '62000', 'ARRAS', '0000-00-00 00:00:00', ''),
('t55', 'Tr', 'Alain', '7D chem Barral', '12000', 'RODEZ', '0000-00-00 00:00:00', ''),
('t60', 'Tusseau', 'Josselin', '63 r Bon Repos', '28000', 'CHARTRES', '0000-00-00 00:00:00', ''),
('zzz', 'swiss', 'bourdin', '', '', '', '0000-00-00 00:00:00', '');

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `medicament`
--
ALTER TABLE `medicament`
  ADD CONSTRAINT `FK_REFERENCE_5` FOREIGN KEY (`FAM_CODE`) REFERENCES `famille` (`FAM_CODE`);

--
-- Contraintes pour la table `offrir`
--
ALTER TABLE `offrir`
  ADD CONSTRAINT `FK_REFERENCE_10` FOREIGN KEY (`MED_DEPOTLEGAL`) REFERENCES `medicament` (`MED_DEPOTLEGAL`),
  ADD CONSTRAINT `FK_REFERENCE_16` FOREIGN KEY (`VIS_MATRICULE`, `RAP_NUM`) REFERENCES `rapport_visite` (`VIS_MATRICULE`, `RAP_NUM`);

--
-- Contraintes pour la table `praticien`
--
ALTER TABLE `praticien`
  ADD CONSTRAINT `FK_REFERENCE_23` FOREIGN KEY (`TYP_CODE`) REFERENCES `type_praticien` (`TYP_CODE`);

--
-- Contraintes pour la table `rapport_visite`
--
ALTER TABLE `rapport_visite`
  ADD CONSTRAINT `FK_REFERENCE_14` FOREIGN KEY (`PRA_NUM`) REFERENCES `praticien` (`PRA_NUM`),
  ADD CONSTRAINT `FK_REFERENCE_25` FOREIGN KEY (`VIS_MATRICULE`) REFERENCES `visiteur` (`VIS_MATRICULE`);

--
-- Contraintes pour la table `region`
--
ALTER TABLE `region`
  ADD CONSTRAINT `FK_REFERENCE_18` FOREIGN KEY (`SEC_CODE`) REFERENCES `secteur` (`SEC_CODE`);

--
-- Contraintes pour la table `travailler`
--
ALTER TABLE `travailler`
  ADD CONSTRAINT `FK_REFERENCE_17` FOREIGN KEY (`REG_CODE`) REFERENCES `region` (`REG_CODE`),
  ADD CONSTRAINT `FK_REFERENCE_27` FOREIGN KEY (`VIS_MATRICULE`) REFERENCES `visiteur` (`VIS_MATRICULE`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
