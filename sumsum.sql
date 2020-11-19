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

INSERT INTO `philosopher` (`id`, `name`, `url`, `artist`, `nb_vote`, `style`, `nationality`, `job`, `comments`) VALUES (NULL, 'Jean-Jacques Rousseau', 'https://i.postimg.cc/7PBgqZRL/9.png', 'Freedom is the power to choose our own chains.', '2743', 'The fight against injustice and ignorance.', 'French', 'Musician, philosopher', 'Rousseau is a great philosopher working for freedom.'), (NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `philosopher` (`id`, `name`, `url`, `artist`, `nb_vote`, `style`, `nationality`, `job`, `comments`) VALUES (NULL, 'Voltaire', 'https://i.postimg.cc/fyWjB3gG/2.png', 'The time is long enough for whoever takes advantage.', '2754', 'The denunciation of intolerance and religious fanaticism.', 'French', 'Writer and philosopher', 'Voltaire is a wonderful philosopher.');

INSERT INTO `philosopher` (`id`, `name`, `url`, `artist`, `nb_vote`, `style`, `nationality`, `job`, `comments`) VALUES (NULL, 'Denis Diderot', 'https://i.postimg.cc/FKgL8rcN/6.png', 'The things that are talked about most among men are quite usually the things that we know the least.\"advantage.', '1860', 'The fight against injustice and ignorance.', 'French', 'Writer and philosopher', 'Diderot is a great writer.');

INSERT INTO `philosopher` (`id`, `name`, `url`, `artist`, `nb_vote`, `style`, `nationality`, `job`, `comments`) VALUES (NULL, 'Montesqieu', 'https://i.postimg.cc/28sL5b7C/4.png', 'A thing is not right because it is law; but it must be law because it is just.', '2780', 'Social and political protest.', 'French', 'Mathematician, physicist, philosopher. ', 'Montesquieu is a great mathematician.');

INSERT INTO `philosopher` (`id`, `name`, `url`, `artist`, `nb_vote`, `style`, `nationality`, `job`, `comments`) VALUES (NULL, 'Jean Le Rond D’alembert', NULL, 'https://i.postimg.cc/8zLJfpZM/7.png', '860', 'Hostility to slavery.', 'French', 'Political thinker.', 'Jean Le Rond D’alembert is a great political thinker.');

INSERT INTO `philosopher` (`id`, `name`, `url`, `artist`, `nb_vote`, `style`, `nationality`, `job`, `comments`) VALUES (NULL, 'René Descartes', 'https://i.postimg.cc/Vv50JXhk/8.png', 'I think so I am.. ', '3965', 'The fight against injustice and ignorance.', 'French', 'Mathematician, physicist and philosopher.', 'René Descartes is a great physicist.');

INSERT INTO `philosopher` (`id`, `name`, `url`, `artist`, `nb_vote`, `style`, `nationality`, `job`, `comments`) VALUES (NULL, 'Nicolas Machiavel', 'https://i.postimg.cc/15fDXZxr/10.png', 'Where the will is great, the difficulties diminish.', '2754', 'The fight against injustice and ignorance.', 'Italian', 'Writer and politician.', 'Nicolas Machiavel is a great speaker.');

INSERT INTO `philosopher` (`id`, `name`, `url`, `artist`, `nb_vote`, `style`, `nationality`, `job`, `comments`) VALUES (NULL, 'Thomas Hobbes', 'https://i.postimg.cc/TP9KQkMP/11.png', 'The privilege of absurdity is reserved for the only human creature..', '1396', 'The fight against injustice and ignorance.', 'English', 'Writer and philosopher.', 'Thomas Hobbesl is a great writer.');

INSERT INTO `philosopher` (`id`, `name`, `url`, `artist`, `nb_vote`, `style`, `nationality`, `job`, `comments`) VALUES (NULL, 'Nicolas de Condorcet', 'https://i.postimg.cc/j2jPypDK/5.png', 'Friends of the truth are those who seek it, not those who boast of having found it.', '1854', 'The fight against injustice and ignorance.', 'French', 'Mathematician, philosopher, politician.', 'Nicolas de Condorcet is  a great politician.');

INSERT INTO `philosopher` (`id`, `name`, `url`, `artist`, `nb_vote`, `style`, `nationality`, `job`, `comments`) VALUES (NULL, 'Cesare Beccaria', 'https://i.postimg.cc/0ySmGdy6/3.png', 'The death penalty has never turned away men determined to outrage society.', '1395', 'The fight against injustice and ignorance.', 'Italian', 'Jurist, criminal lawyer, philosopher, economist', 'Nicolas de Condorcet is  a great jurist, criminal lawyer.');

INSERT INTO `philosopher` (`id`, `name`, `url`, `artist`, `nb_vote`, `style`, `nationality`, `job`, `comments`) VALUES (NULL, 'John Locke', 'https://i.postimg.cc/L8XqvcB0/12.png', 'A tax loosely established offers a great deal of fraud lure.', '1858', 'The denunciation of intolerance and religious fanaticism.', 'Scotish', 'Philosopher, economist', 'John Locke is a great Scotish economist.');

INSERT INTO `philosopher` (`id`, `name`, `url`, `artist`, `nb_vote`, `style`, `nationality`, `job`, `comments`) VALUES (NULL, 'John Locke', 'https://i.postimg.cc/sXHvCv2d/Sans-titre-1-R-cup-r.png', 'Rarely do we listen to the most obvious reasons..', '1127', 'The denunciation of intolerance and religious fanaticism.', 'English', 'philosopher', 'John Locke is a great English philosopher.');