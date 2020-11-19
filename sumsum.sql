CREATE DATABASE sumsum;
USE sumsum;
--
-- Structure de la table `painting`
--
CREATE TABLE `painting` (
  `id` int PRIMARY KEY AUTO_INCREMENT NOT NULL,
  `name` varchar(255),
  `url` longtext,
  `artist` varchar(255),
  `nb_vote` int,
  `style` varchar(255),
  `nationality` varchar(255),
  `comments` longtext
);
-- --------------------------------------------------------
--
-- Structure de la table `music`
--
CREATE TABLE `music` (
  `id` int PRIMARY KEY AUTO_INCREMENT NOT NULL,
  `name` varchar(255),
  `url` longtext,
  `artist` varchar(255),
  `nb_vote` int,
  `style` varchar(255),
  `nationality` varchar(255),
  `comments` longtext
);
-- --------------------------------------------------------
--
-- Structure de la table `philosopher`
--
CREATE TABLE `philosopher` (
  `id` int PRIMARY KEY AUTO_INCREMENT NOT NULL,
  `name` varchar(255),
  `url` longtext,
  `quote` longtext,
  `nb_vote` int,
  `movement` varchar(255),
  `nationality` varchar(255),
  `job` varchar(255),
  `comments` longtext
);
-- --------------------------------------------------------
--
-- Structure de la table `fashion`
--
CREATE TABLE `fashion` (
  `id` int PRIMARY KEY AUTO_INCREMENT NOT NULL,
  `name` varchar(255),
  `url` longtext,
  `creator` varchar(255),
  `nb_vote` int,
  `baseline` varchar(255),
  `localisation` varchar(255),
  `comments` longtext
);