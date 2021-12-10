-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : ven. 10 déc. 2021 à 01:00
-- Version du serveur :  10.4.18-MariaDB
-- Version de PHP : 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `atelier1db`
--

-- --------------------------------------------------------

--
-- Structure de la table `commande`
--

CREATE TABLE `commande` (
  `idCmd` int(11) NOT NULL,
  `dateCmd` date DEFAULT NULL,
  `idUtil` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `commande`
--

INSERT INTO `commande` (`idCmd`, `dateCmd`, `idUtil`) VALUES
(21, '2021-12-09', 37),
(22, '2021-12-09', 37),
(23, '2021-12-09', 37),
(24, '2021-12-09', 37),
(27, '2021-12-09', 40),
(29, '2021-12-10', 40);

-- --------------------------------------------------------

--
-- Structure de la table `lignedecommande`
--

CREATE TABLE `lignedecommande` (
  `idLigneCmd` int(11) NOT NULL,
  `quantite` int(11) NOT NULL,
  `idCmd` int(11) NOT NULL,
  `idProd` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `lignedecommande`
--

INSERT INTO `lignedecommande` (`idLigneCmd`, `quantite`, `idCmd`, `idProd`) VALUES
(14, 4, 21, 7),
(17, 10, 27, 1),
(18, 13, 27, 1);

-- --------------------------------------------------------

--
-- Structure de la table `produit`
--

CREATE TABLE `produit` (
  `idProd` int(11) NOT NULL,
  `nomProd` varchar(255) DEFAULT NULL,
  `prixProd` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `produit`
--

INSERT INTO `produit` (`idProd`, `nomProd`, `prixProd`) VALUES
(1, 'LapTop Lenovo T450s', 3000),
(4, 'SmartPhon Samsung Galaxy S10', 6999),
(7, 'Souris', 299);

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

CREATE TABLE `utilisateur` (
  `idUtil` int(11) NOT NULL,
  `nomUtil` varchar(255) DEFAULT NULL,
  `passwordUtil` varchar(255) DEFAULT NULL,
  `adresseUtil` varchar(255) DEFAULT NULL,
  `emailUtil` varchar(255) DEFAULT NULL,
  `typeUtil` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `utilisateur`
--

INSERT INTO `utilisateur` (`idUtil`, `nomUtil`, `passwordUtil`, `adresseUtil`, `emailUtil`, `typeUtil`) VALUES
(34, 'Admin', '1234', 'Tanger', 'admin.admin@gmail.com', 1),
(37, 'Younes', '1234', 'essalam -Tanger-', 'younes.abc@gmail.com', 2),
(40, 'Youssef', '1234', 'essalam -Tanger-', 'adnane.12@gmail.com', 2),
(41, 'adnane', '4321', 'essalam -Tanger-', 'adnane.13@gmail.com', 2);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `commande`
--
ALTER TABLE `commande`
  ADD PRIMARY KEY (`idCmd`),
  ADD KEY `idUtil` (`idUtil`);

--
-- Index pour la table `lignedecommande`
--
ALTER TABLE `lignedecommande`
  ADD PRIMARY KEY (`idLigneCmd`),
  ADD KEY `idCmd` (`idCmd`),
  ADD KEY `idProd` (`idProd`);

--
-- Index pour la table `produit`
--
ALTER TABLE `produit`
  ADD PRIMARY KEY (`idProd`);

--
-- Index pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD PRIMARY KEY (`idUtil`),
  ADD UNIQUE KEY `emailUtil` (`emailUtil`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `commande`
--
ALTER TABLE `commande`
  MODIFY `idCmd` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT pour la table `lignedecommande`
--
ALTER TABLE `lignedecommande`
  MODIFY `idLigneCmd` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT pour la table `produit`
--
ALTER TABLE `produit`
  MODIFY `idProd` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  MODIFY `idUtil` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `commande`
--
ALTER TABLE `commande`
  ADD CONSTRAINT `commande_ibfk_1` FOREIGN KEY (`idUtil`) REFERENCES `utilisateur` (`idUtil`) ON DELETE CASCADE;

--
-- Contraintes pour la table `lignedecommande`
--
ALTER TABLE `lignedecommande`
  ADD CONSTRAINT `lignedecommande_ibfk_1` FOREIGN KEY (`idCmd`) REFERENCES `commande` (`idCmd`) ON DELETE CASCADE,
  ADD CONSTRAINT `lignedecommande_ibfk_2` FOREIGN KEY (`idProd`) REFERENCES `produit` (`idProd`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
