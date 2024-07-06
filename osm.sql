-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : database
-- Généré le : sam. 06 juil. 2024 à 11:38
-- Version du serveur : 8.0.37
-- Version de PHP : 8.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `osm`
--

-- --------------------------------------------------------

--
-- Structure de la table `agences`
--

CREATE TABLE `agences` (
  `id` int NOT NULL,
  `name` varchar(50) NOT NULL,
  `lat` decimal(10,2) NOT NULL,
  `lon` decimal(10,2) NOT NULL,
  `description` varchar(1500) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `agences`
--

INSERT INTO `agences` (`id`, `name`, `lat`, `lon`, `description`, `image`) VALUES
(1, 'Paris', 48.85, 2.35, 'Paris est la capitale de la France et une collectivité à statut particulier. Divisée en vingt arrondissements, elle est le chef-lieu de la région Île-de-France et le siège de la métropole du Grand Paris.', 'paris.webp'),
(2, 'Brest', 48.38, -4.50, 'Brest est une commune française, chef-lieu d’arrondissement du département du Finistère dans la région Bretagne. C\'est un port important, deuxième port militaire en France après Toulon, situé à l\'extrémité ouest de la Bretagne.', 'brest.webp'),
(3, 'Quimper', 48.00, -4.10, 'Quimper est une commune française de la région Bretagne située dans le nord-ouest de la France. Préfecture du département du Finistère et siège du Conseil départemental, elle est composée de deux cantons. Elle est également la capitale traditionnelle de la Cornouaille, du Pays Glazik et du Pays de Cornouaille (331 300 habitants en 2009), le siège de l\'intercommunalité de Quimper Bretagne occidentale (100 187 habitants en 2014), le siège de l\'arrondissement de Quimper et enfin le siège du diocèse de Quimper et Léon. Ses habitants sont appelés les Quimpérois.', 'quimper.webp'),
(4, 'Bayonne', 43.50, -1.47, 'Bayonne, Baiona en basque et en gascon, est une commune française et l’une des deux sous-préfectures du département des Pyrénées-Atlantiques, en région Nouvelle-Aquitaine.', 'bayonne.webp'),
(5, 'Clermont-Ferrand', 45.78, 3.08, 'Clermont-Ferrand  est une ville du centre de la France, située dans le Massif central en région Auvergne-Rhône-Alpes. C\'est la capitale historique de l\'Auvergne et le chef-lieu du département du Puy-de-Dôme.', 'clermontferrand.webp');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `agences`
--
ALTER TABLE `agences`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `agences`
--
ALTER TABLE `agences`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
