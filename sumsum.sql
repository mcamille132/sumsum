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

INSERT INTO music (id, name, url, artist, nb_vote, style, nationality, comments) VALUES ('1', 'Mozart Symphony #40 in G Minor, K 550 - 1. Molto Allegro', 'https://youtu.be/-hJf4ZffkoI', 'Mozart', '5422', 'classique', 'Autrichien', 'WAAAAw amaaaazing !!!');
INSERT INTO fashion (id, name, url, creator, nb_vote, baseline, localisation, comments) VALUES (1, 'Cap-hat', 'https://image.jimcdn.com/app/cms/image/transf/dimension=268x1024:format=jpg/path/s85ed2da234f54b1a/image/id10096d2b6c92248/version/1524331236/portrait-of-a-young-woman-with-luxurious-jewellery-and-a-beautiful-hairnet-flickr-picturen-by-ergsap-renaissance-fashion-dress-jewellery-necklace.jpg', 'Cunegonde de Villia', '2006', 'To feel in the city as well as in the countryside', 'France', 'The explosive mix of Franco-Italian elegance');
INSERT INTO philosopher (id, name, url, quote, nb_vote, movement, nationality, job, comments) VALUES (NULL, 'Jean-Jacques Rousseau', '476013_poster_l.jpg', 'Freedom is the power to choose our own chains.', '1367', 'movement of light', 'French', 'musician, philosopher', 'Rousseau is a great philosopher working for freedom');
INSERT INTO painting (name, url, artist, nb_vote, style, nationality, comments) VALUES ('La Velata', 'https://i.ibb.co/Rvj4D0h/Raphae-l-1-Velata-800x800.jpg', 'Raphaël', '23400' , 'painting' , 'Italian' , 'It so wonderful!!!');