CREATE DATABASE sumsum;
USE sumsum;


CREATE TABLE `fashion` (
  `id` int(11) NOT NULL,
  `artist` varchar(255) DEFAULT NULL,
  `url` longtext,
  `name` varchar(255) DEFAULT NULL,
  `nb_vote` int(11) DEFAULT NULL,
  `style` varchar(255) DEFAULT NULL,
  `nationality` varchar(255) DEFAULT NULL,
  `comments` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fashion`
--

INSERT INTO `fashion` (`id`, `artist`, `url`, `name`, `nb_vote`, `style`, `nationality`, `comments`) VALUES
(1, 'Cap-hat', 'https://i.postimg.cc/15F6Zr19/hats.png', 'Cunegonde de Villia', 200, 'To feel in the city as well as in the countryside', 'France', 'The explosive mix of Franco-Italian elegance'),
(2, 'Italian Headdress', 'https://i.postimg.cc/wTR5jdLY/depressif.png', 'Angelina Bottecina', 100, 'The must have to be the star of your event', 'Italia', 'Even better than the ruffle collar'),
(3, 'English Headdress', 'https://i.postimg.cc/mgNHPZrJ/englishdress.png', 'Roxane of Wessex', 390, 'Old fashioned style for classic fashion outfit', 'England', 'So old-fashioned! '),
(4, 'German Headdress', 'https://i.postimg.cc/sxhBss8n/germanhairdress.png', 'Franziska Van Grünt', 600, 'Wide brimmed hats, for wild events', 'German', 'Special effect for special events! Love it!'),
(5, 'Ruff Colar', 'https://i.postimg.cc/FRnchPKK/ruffcolar.png', 'Elizabeth ', 400, 'For everyone, anytime', 'England', 'I nurture a special love that borders on obsession for ruffles, just because they are so feminine and splendid. '),
(6, 'Full Jewelry', 'https://i.postimg.cc/kDP25LP7/jewelry.png', 'Margaret of Austria', 605, 'Wear jewelry only on days ending with « y »', 'Austria', 'Brilliant, a must have!!'),
(7, 'Feathers fans', 'https://i.postimg.cc/NF9XF1yk/feather.png', 'Robert Henz', 799, 'Elegance and presence in deutch', 'German', 'So fancy! I\'ve had nothing but compliments since the feather fans became my must have.'),
(8, 'Beret pearl feather', 'https://i.postimg.cc/0NYc2qgy/1.png', 'Enrico Manchol', 127, 'Extraordinary people definitely wears beret', 'Spanish', 'Love it!'),
(9, 'Renaissance bustier', 'https://i.postimg.cc/kGzxvjrH/bustier.png', 'Charlotte de la Trémoille', 100, 'Beauty for all ', 'French', 'A must... but suffocating! Looking forward to a change!'),
(10, 'Pantyhose and Tights', 'https://i.postimg.cc/QNwnXDVc/pantyhorse.png', 'Juan de Austriano', 378, 'Verility in its purest form', 'Austria', 'I LOVE IT! Thank you for this fashion innovation'),
(11, 'Italian Headwear', 'https://i.postimg.cc/w3KL0wvb/italianheadwater.png', 'Dona Tella', 360, 'The shiny head ornament', 'Italian', 'I feel like a horse...'),
(12, 'Duster-hat', 'https://i.postimg.cc/K8Prsht7/dutchart.png', 'Natalia Kolovky', 150, 'Aerial and soft style', 'Polish', 'My friends and I love it. Its so unusual.'),
(13, 'Chain of rebirth', 'https://i.postimg.cc/SsvWzSp4/chainy.png', 'Anastasia Salvina', 450, 'Golden perlinpin powder', 'Czech Republic', 'A little daring all the same.'),
(14, 'Heady band', 'https://i.postimg.cc/L4JWQh5z/pngsimpleband.png', 'Mary of Hasburg', 698, 'Sobriety and purity', 'Hungary', 'Perfect for the church!'),
(15, 'Hair clip', 'https://i.postimg.cc/90wyd6W7/hairclip.png', 'Francesco Lorenzo', 458, 'Stars in your hair', 'Italian', 'Yeah... bof... a little too simple'),
(16, 'Golden cage ', 'https://i.postimg.cc/bJJxJGWL/goldencage.png', 'Anya Trediakovkaya', 180, 'For the half-fuzzy life', 'Russia', 'An incredible effect!'),
(17, 'Patchwork cape', 'https://i.postimg.cc/QCFJ6BqV/cape.png', 'Ingrid of Sussex', 789, 'Details of fabric wings', 'England', 'I do not really like the material.'),
(18, 'Hip pouch', 'https://i.postimg.cc/43XvD21D/hipouch.png', 'Clotilde di Savoia', 379, 'Your pomander at your fingertips', 'Switzerland', 'Practical and discreet, perfect for walks in the countryside.'),
(19, 'Pomander', 'https://i.postimg.cc/8CwdNdKj/pomander.png', 'Frederic de Andalousia', 470, 'The power of fragrance, everywhere and in every circumstance', 'Spain', 'A must in society, I feel much stronger with.'),
(20, 'Umbrella stick', 'https://i.postimg.cc/1RbjkPVb/umbrellaelastik.png', 'Maria Manuella', 235, 'For all ages, all horizons', 'Portuguese', 'Appreciable on rainy days. However cumbersome'),
(21, 'Flowered wreath', 'https://i.postimg.cc/BvDT19nP/flowered.png', 'Güttberg Zéphryne', 238, 'Drive out the natural, it comes back into your hair', 'Denmark', 'ADO-RA-BLE'),
(22, 'Veiled necklace', 'https://i.postimg.cc/2S1FrBpw/cruz.png', 'Antonio of Austria', 124, 'You dont mess around with veiled necklaces', 'Austria', 'Lovely, but very fragile nevertheless'),
(23, 'Signet ring', 'https://i.postimg.cc/0QspYWzW/signetring.png', 'Henri Louis de Mont', 389, 'Normandy fashion chic', 'French', 'Very nice.');

-- --------------------------------------------------------

--
-- Table structure for table `music`
--

CREATE TABLE `music` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `url` longtext,
  `artist` varchar(255) DEFAULT NULL,
  `nb_vote` int(11) DEFAULT NULL,
  `style` varchar(255) DEFAULT NULL,
  `nationality` varchar(255) DEFAULT NULL,
  `comments` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `music`
--

INSERT INTO `music` (`id`, `name`, `url`, `artist`, `nb_vote`, `style`, `nationality`, `comments`) VALUES
(1, 'Mozart Symphony #40 in G Minor, K 550 - 1. Molto Allegro', 'https://i.postimg.cc/RZMyWBxh/1.png', 'Mozart', 542, 'classique', 'Autrichien', 'WAAAAw amaaaazing !!!'),
(2, 'Le chant des oiseaux', 'https://i.postimg.cc/Pqv4x3JN/2.png', 'Clément Janequin', 245, 'virelai', 'French', 'so paceful !'),
(3, 'La Guerre - La bataille de Marignan', 'https://i.postimg.cc/63RYHjxF/3.png', 'Clément Janequin', 145, 'polyphonique', 'French', 'I love you Clement !'),
(4, 'Nuper ', 'https://i.postimg.cc/ZY8wpMcd/4.png', 'Nuper Rosarum Flores', 234, 'motet', 'French', 'I think its a great music, i rraly love this guy ! I just want to say thank you bro !'),
(5, 'Solo e pensoso i piú deserti campi', 'https://i.postimg.cc/Bb4cmJg1/5.png', 'Luca Marenzio', 564, 'baroque', 'Italian', 'Magnifico!'),
(6, 'Du beau tétin', 'https://i.postimg.cc/D0T5Rr20/6.png', 'sermisy', 145, 'coubertin', 'French', 'lalallaa this my song yeahhh !'),
(7, 'A La Volette (Mon Petit Oiseau)', 'https://i.postimg.cc/dVsCpWrg/kaamelott.png', 'King Arthur', 100, 'chorale', 'Britania', 'Faut pas respirer la compote, ça fait tousser.'),
(8, '5th Symphony', 'https://i.postimg.cc/PJybc03V/7.png', 'Ludwig Van Beethoven\'s ', 895, 'classic', 'Autrichian', 'A real rockstar'),
(9, 'Four Seasons', 'https://i.postimg.cc/XJwkKrwb/8.png', 'Vivaldi', 945, 'classic', 'Venician', 'Venician song are the best !'),
(10, 'Agnus Dei\r\n', 'https://i.postimg.cc/FHBph592/9.png', 'Palestrina', 235, 'gotik', 'spanish', 'Great song, great man!'),
(11, 'Canzon primi toni', 'https://i.postimg.cc/ZYxLCybP/10.png', 'Gabrieli', 478, 'classic', 'Portuguese', 'Good job'),
(12, 'Bagatella N25', 'https://i.postimg.cc/sD4bj8Wm/mozart.png', 'Bethoven', 789, 'classic', 'Autrichian', 'Bethoven is a rockstar !!!!'),
(13, 'CanzonXI', 'https://i.postimg.cc/DZGYtYFq/giovani-gabrielli.png', 'Gabrieli', 468, 'Classic', 'Venisian', 'So fun i love it!'),
(14, 'psalmus 109', 'https://i.postimg.cc/VLmHVRhC/montverdi.png', 'Claudio Monteverdi', 236, 'Religious', 'Italian', 'Wonderful song'),
(15, 'Ave verum', 'https://i.postimg.cc/3R2nL4C1/voice-of-ascencion.png', 'Chorus', 654, 'Chorus', 'European', 'Great talents, great group'),
(16, 'Nata lux', 'https://i.postimg.cc/sgn8ShwZ/lux.png', 'Thomas Tallis', 458, 'Gotik', 'Belgian', 'Show me the light .'),
(17, 'A new heaven', 'https://i.postimg.cc/xdJszFXW/new-heaven.png', 'Andrew fletcher', 459, 'Religious', 'Germany', 'Good job!'),
(18, 'spem in alium', 'https://i.postimg.cc/L80ChM8t/thomas-tailli.png', 'Thomas Tallis', 789, 'Classic', 'Belgian', 'Bouyakaaaaaaa !'),
(19, 'Salve regina', 'https://i.postimg.cc/02nHRSgH/harry.png', 'Pierluigi', 325, 'Religious', 'Italian', 'A revelation !'),
(20, 'El grillo', 'https://i.postimg.cc/xdcZP14p/josquin-2.png', 'Joaquin des prez', 789, 'Gotik', 'Spanish', 'My favourite Song'),
(21, 'Obsecro te', 'https://i.postimg.cc/9f6LttTz/josquin.png', 'Ariel Abramovich', 632, 'classic', 'spanish', 'Best artist ever ! '),
(22, 'Mon souverin desirs', 'https://i.postimg.cc/y8V40BK2/gille-benichoi.png', 'Gilles binchois', 456, 'Barok', 'French', 'This song is so amazing'),
(23, 'Ave maris stella ', 'https://i.postimg.cc/Xqwmy1zV/guillaumedufaye.png', 'Guillaume Dufay', 365, 'Religious', 'Italian', 'This is not my favourite song ...');

-- --------------------------------------------------------

--
-- Table structure for table `painting`
--

CREATE TABLE `painting` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `url` longtext,
  `artist` varchar(255) DEFAULT NULL,
  `nb_vote` int(11) DEFAULT NULL,
  `style` varchar(255) DEFAULT NULL,
  `nationality` varchar(255) DEFAULT NULL,
  `comments` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `painting`
--

INSERT INTO `painting` (`id`, `name`, `url`, `artist`, `nb_vote`, `style`, `nationality`, `comments`) VALUES
(1, 'La Velata', 'https://i.postimg.cc/wjc9zSG6/raphael-velata.png', 'Raphaël', 234, 'painting', 'Italian', 'It\'s so wonderful!!'),
(2, 'The spindle Madonna', 'https://i.postimg.cc/VvyqjrBB/la-madonne.png', 'Léonard de Vinci', 797, 'High Renaissance', 'Italian', 'Oooh this kid is so cute , so lovely !!'),
(3, 'The birth of Venus', 'https://i.postimg.cc/Kz4bn4vz/venus.png', 'Sandro Botticelli', 764, 'First renaissance', 'Italian', 'This woman is so classy, ​​I like her style'),
(4, 'The portrait of a young woman', 'https://i.postimg.cc/J4sy14NR/portraitdunejeunefemme.png', 'Titien', 243, 'Venitian School', 'Italian', 'The play of shadow and light is really interesting'),
(5, 'Virgin Mary', 'https://i.postimg.cc/3RbK6mbm/viergemarie.png', 'Tommaso di Giovanni Cassai', 441, 'Religious painting', 'Italian', 'The golden color reinforces the power of this paint'),
(6, 'The Annunciation of the Convent of San Marco', 'https://i.postimg.cc/0jdwDtNP/lanonciation.png', 'Fra Angelico', 887, 'Religious Painting', 'Italian', 'The perspective of this painting is truly extraordinary'),
(7, 'The Arnolfini couple', 'https://i.postimg.cc/bvm8D1PW/lespouxa.png', 'Jan Van Eyck', 322, 'Flemish primitive', 'Belgian', 'It is the most beautiful painting that I have seen in the world'),
(8, 'Persée and Andromède', 'https://i.pixxxels.cc/3JGKSyj0/persee.png', 'Giogino Vasari', 675, 'Renaissance', 'Italian', 'Oh it\'s georgous'),
(9, 'The vocation of Saint-Marthe', 'https://i.postimg.cc/BZYL911h/lavocation.png', 'Michelangelo Merisi da Caravaggio', 735, 'Baroque', 'Italian', 'The scene is interesting'),
(10, 'The creation of Adam', 'https://i.postimg.cc/8CNPr16J/michelange-la-creation.png\r\n', 'Michel-Ange', 567, 'High Renaissance', 'Italian', 'The details are splendid'),
(11, 'The garden of delights\r\n', 'https://i.postimg.cc/4xy6nLyV/Lejardindesdelices.jpg', 'Jêrome Bosch', 745, 'Flemish primitive', 'Dutch', 'It\'s so funny !'),
(12, 'Saint-Marc', 'https://i.postimg.cc/VLdvC39f/saintmarc.jpg', 'Andrea Mantegna', 870, 'Italian school', 'Italian', 'Interest!'),
(13, 'The Lover', 'https://i.postimg.cc/1tG6bb7h/lesamoureux.jpg', 'Lucas Granach l\'Ancien', 712, 'High Renaissance', 'German', 'Dark but intense color'),
(14, 'The wedding feast of Cana', 'https://i.postimg.cc/xCDMx9R3/lesnocesdecana.jpg', 'Paul Véronèse', 980, 'Mannerism', 'Italian', 'This painting makes me want to feast with them!'),
(15, 'The Virgin and Child', 'https://i.postimg.cc/90Nfkp2H/viergealenfant.jpg', 'Albrecht Dürer', 125, 'Religious Painting', 'German', 'The red is really sublime'),
(16, 'Retable de Fano', 'https://i.postimg.cc/yNFkNcm0/retabledefano.jpg', 'Le Pérugin', 444, 'Religious Painting', 'Italian', 'The prospect is grandiose'),
(17, 'Madone de Stuppach', 'https://i.postimg.cc/bN30ycyq/laviergedesstuppach.jpg', 'Matthias Grünewald', 229, 'Religious Painting', 'German', 'Too much color mixing'),
(18, 'Flemish Proverbs', 'https://i.postimg.cc/tJD64WHB/lesproverbesflamand.jpg', 'Pieter Brueghel l\'Ancien', 655, 'Nordic Renaissance', 'Belgian', 'Lots of detail in this painting, it makes it intriguing'),
(19, 'The portrait of François the first', 'https://i.postimg.cc/MTmM9VXz/portraitdefrancois1er.jpg', 'Jean Clouet', 209, 'Flemish realism', 'Netherlands', 'It makes me want to have a portrait of myself in the same spirit'),
(20, 'Portrait Of Thomas More', 'https://i.postimg.cc/x8dCgZWP/portraitdunhomme.jpg', 'Hans Holbein le Jeune\r\n', 752, 'Portrait', 'German', 'He\'s a little scary'),
(21, 'Portrait Of A Lady', 'https://i.postimg.cc/wTvyktzd/portraitdunedame.jpg', 'Rogier van der Weyden', 937, 'Flemish Primitif', 'Belgian', 'The proportions are not really respected'),
(22, 'The miracle of the slave', 'https://i.postimg.cc/DyjsVr6Z/miracledelesclave.jpg', 'Tintoret', 553, 'Sacred art', 'French', 'hmm what can happen in this scene?'),
(23, 'Saint George slaying the dragon', 'https://i.postimg.cc/bJpdSrgW/saintgeorgeterrassantledragon.jpg', 'Paolo Uccello', 998, 'Sacred Art', 'Italian', 'I Love Dragon'),
(24, 'Laura', 'https://i.postimg.cc/V6nBmJ6h/Laura.jpg', 'Giorgione', 264, 'High Renaissance', 'Italian', 'The black background perfectly brings out the pale complexion of the girl\r\n'),
(25, 'The Flagellation of Christ', 'https://i.postimg.cc/3xxBmrSy/laflagellationduchrist.jpg', 'Piero della Francesca', 129, 'First Renaissance', 'Italian', 'Pretty color'),
(26, 'Madone Alzano', 'https://i.postimg.cc/BZhttqK7/viergealenfant-GB.jpg', ' Giovanni Bellini', 666, 'Sacred Art', 'Italian', 'Another virgin and child?'),
(27, 'Virgin and Child', 'https://i.postimg.cc/NfSM7pb1/viergealenfant-V.jpg', 'Andrea del Verrocchio', 453, 'Sacred Art', 'Italian', 'The mischievous-looking child'),
(28, 'Saint Jean Baptiste', 'https://i.postimg.cc/JzHs99t6/saintjeanbaptiste.jpg', 'Andrea del Sarto', 886, 'Sacred Art', 'Italian', 'Oh what a handsome man'),
(29, 'The Virgin and Child', 'https://i.postimg.cc/ZRHn8mDR/Thevirginandthechildwithstgeorge.jpg', 'Pisanello', 560, 'Basse Renaissance\r\n', 'Italian', 'Pretty golden color'),
(30, 'The Dance of Salome', 'https://i.postimg.cc/ZnzHdr2Z/ladansedesalome.jpg', 'Benozzo Gozzoli', 486, 'Frist Renaissane', 'Italian', 'I Love the movement'),
(58, 'The Dance of Salome', 'https://i.postimg.cc/ZnzHdr2Z/ladansedesalome.jpg', 'Benozzo Gozzoli', 486, 'Frist Renaissane', 'Italian', 'I Love the movement');

-- --------------------------------------------------------

--
-- Table structure for table `philosopher`
--

CREATE TABLE `philosopher` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `url` longtext,
  `artist` longtext,
  `nb_vote` int(11) DEFAULT NULL,
  `style` varchar(255) DEFAULT NULL,
  `nationality` varchar(255) DEFAULT NULL,
  `job` varchar(255) DEFAULT NULL,
  `comments` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `philosopher`
--

INSERT INTO `philosopher` (`id`, `name`, `url`, `artist`, `nb_vote`, `style`, `nationality`, `job`, `comments`) VALUES
(1, 'George Berkeley', 'https://i.postimg.cc/fW6FZdbw/georgeberkeley.jpg', 'What we say about the absolute existence of non-thinking things, unrelated to a perception we might have of them, seems to me perfectly unintelligible. Their esse is percipi it is impossible that they have an existence outside the intelligences or thinking things which perceive them.', 891, 'The denunciation of intolerance and religious fanaticism.', 'Irish', 'Priest, philosopher, politician, writer, theorist and practitioner of education.', 'George Berkeley is a great Irish philosopher.'),
(2, 'Hugo Kollataj', 'https://i.postimg.cc/Pf836qQ0/kollataj-hugo.jpg', 'We must shake up life otherwise it eats away at us. Lorem, ipsum dolor sit amet consectetur adipisicing elit. Officiis iste numquam, expedita perferendis, reprehenderit ullam velit laudantium sapiente illo aliquam cupiditate? Quas quis facere ut esse aliquam culpa accusantium neque?', 690, 'The denunciation of intolerance and religious fanaticism', 'Ukrainian', 'Priest, philosopher, politician, writer, theorist and practitioner of education.', 'Francis Hutcheson is a great Ukrainian philosopher.'),
(3, 'Jean-Jacques Rousseau', 'https://i.postimg.cc/7PBgqZRL/9.png', 'Freedom is the power to choose our own chains. Lorem, ipsum dolor sit amet consectetur adipisicing elit. Officiis iste numquam, expedita perferendis, reprehenderit ullam velit laudantium sapiente illo aliquam cupiditate? Quas quis facere ut esse aliquam culpa accusantium neque?', 274, 'The fight against injustice and ignorance.', 'French', 'Musician, philosopher', 'Rousseau is a great philosopher working for freedom.'),
(4, 'Francis Hutcheson', 'https://i.postimg.cc/Z5mMvh32/Hutcheson.jpg', 'Wisdom is to seek the best results by using the best means. Lorem, ipsum dolor sit amet consectetur adipisicing elit. Officiis iste numquam, expedita perferendis, reprehenderit ullam velit laudantium sapiente illo aliquam cupiditate? Quas quis facere ut esse aliquam culpa accusantium neque?', 129, 'The fight against injustice and ignorance.', 'Irish', 'Professor of moral philosophy.', 'Francis Hutcheson is a great Irish philosopher.'),
(5, 'Voltaire', 'https://i.postimg.cc/fyWjB3gG/2.png', 'The time is long enough for whoever takes advantage. Lorem, ipsum dolor sit amet consectetur adipisicing elit. Officiis iste numquam, expedita perferendis, reprehenderit ullam velit laudantium sapiente illo aliquam cupiditate? Quas quis facere ut esse aliquam culpa accusantium neque?', 275, 'The denunciation of intolerance and religious fanaticism.', 'French', 'Writer and philosopher', 'Voltaire is a wonderful philosopher.'),
(6, 'Denis Diderot', 'https://i.postimg.cc/FKgL8rcN/6.png', 'The things that are talked about most among men are quite usually the things that we know the least. Lorem, ipsum dolor sit amet consectetur adipisicing elit. Officiis iste numquam, expedita perferendis, reprehenderit ullam velit laudantium sapiente illo aliquam cupiditate? Quas quis facere ut esse aliquam culpa accusantium neque?', 186, 'The fight against injustice and ignorance.', 'French', 'Writer and philosopher', 'Diderot is a great writer.'),
(7, 'Montesqieu', 'https://i.postimg.cc/28sL5b7C/4.png', 'A thing is not right because it is law but it must be law because it is just. Lorem, ipsum dolor sit amet consectetur adipisicing elit. Officiis iste numquam, expedita perferendis, reprehenderit ullam velit laudantium sapiente illo aliquam cupiditate? Quas quis facere ut esse aliquam culpa accusantium neque?', 278, 'Social and political protest.', 'French', 'Mathematician, physicist, philosopher. ', 'Montesquieu is a great mathematician.'),
(8, 'Francesco Mario Pagano', 'https://i.postimg.cc/Vk4DS0z0/mariopagano.jpg', 'The laws in the period of cultured society should be written in immutable codes and not only included in uncertain habits and customs, with arbitrary interpretation. Laws must also be clear, general, brief, precise and not subject to interpretation by fussy magistrates. ', 176, 'The fight against injustice and ignorance.', 'Italian', 'Jurist, philosopher, historian, playwright and politician.', 'Francesco Mario Pagano is a great Italian philosopher.'),
(9, 'René Descartes', 'https://i.postimg.cc/Vv50JXhk/8.png', 'I think so I am... Lorem, ipsum dolor sit amet consectetur adipisicing elit. Officiis iste numquam, expedita perferendis, reprehenderit ullam velit laudantium sapiente illo aliquam cupiditate? Quas quis facere ut esse aliquam culpa accusantium neque?', 396, 'The fight against injustice and ignorance.', 'French', 'Mathematician, physicist and philosopher.', 'René Descartes is a great physicist.'),
(10, 'Nicolas Machiavel', 'https://i.postimg.cc/15fDXZxr/10.png', 'Where the will is great, the difficulties diminish. Lorem, ipsum dolor sit amet consectetur adipisicing elit. Officiis iste numquam, expedita perferendis, reprehenderit ullam velit laudantium sapiente illo aliquam cupiditate? Quas quis facere ut esse aliquam culpa accusantium neque?', 275, 'The fight against injustice and ignorance.', 'Italian', 'Writer and politician.', 'Nicolas Machiavel is a great speaker.'),
(11, 'Thomas Hobbes', 'https://i.postimg.cc/TP9KQkMP/11.png', 'The privilege of absurdity is reserved for the only human creature.. Lorem, ipsum dolor sit amet consectetur adipisicing elit. Officiis iste numquam, expedita perferendis, reprehenderit ullam velit laudantium sapiente illo aliquam cupiditate? Quas quis facere ut esse aliquam culpa accusantium neque?', 139, 'The fight against injustice and ignorance.', 'English', 'Writer and philosopher.', 'Thomas Hobbesl is a great writer.'),
(12, 'Nicolas de Condorcet', 'https://i.postimg.cc/j2jPypDK/5.png', 'Friends of the truth are those who seek it, not those who boast of having found it. Lorem, ipsum dolor sit amet consectetur adipisicing elit. Officiis iste numquam, expedita perferendis, reprehenderit ullam velit laudantium sapiente illo aliquam cupiditate? Quas quis facere ut esse aliquam culpa accusantium neque?', 854, 'The fight against injustice and ignorance.', 'French', 'Mathematician, philosopher, politician.', 'Nicolas de Condorcet is  a great politician.'),
(13, 'Cesare Beccaria', 'https://i.postimg.cc/0ySmGdy6/3.png', 'The death penalty has never turned away men determined to outrage society. Lorem, ipsum dolor sit amet consectetur adipisicing elit. Officiis iste numquam, expedita perferendis, reprehenderit ullam velit laudantium sapiente illo aliquam cupiditate? Quas quis facere ut esse aliquam culpa accusantium neque?', 139, 'The fight against injustice and ignorance.', 'Italian', 'Jurist, criminal lawyer, philosopher, economist', 'Nicolas de Condorcet is  a great jurist, criminal lawyer.'),
(14, 'John Locke', 'https://i.postimg.cc/sXHvCv2d/Sans-titre-1-R-cup-r.png', 'Rarely do we listen to the most obvious reasons..Lorem, ipsum dolor sit amet consectetur adipisicing elit. Officiis iste numquam, expedita perferendis, reprehenderit ullam velit laudantium sapiente illo aliquam cupiditate? Quas quis facere ut esse aliquam culpa accusantium neque?', 112, 'The denunciation of intolerance and religious fanaticism.', 'English', 'philosopher', 'John Locke is a great English philosopher.'),
(15, 'Adam Smith', 'https://i.postimg.cc/L8XqvcB0/12.png', 'A tax loosely established offers a great deal of fraud lure.Lorem, ipsum dolor sit amet consectetur adipisicing elit. Officiis iste numquam, expedita perferendis, reprehenderit ullam velit laudantium sapiente illo aliquam cupiditate? Quas quis facere ut esse aliquam culpa accusantium neque?', 185, 'The denunciation of intolerance and religious fanaticism.', 'Scotish', 'Philosopher, economist', 'John Locke is a great Scotish economist.'),
(16, 'Pierre Bayle', 'https://i.postimg.cc/BQ9hRGhb/pierrebayle.jpg', 'To believe that the religion in which one was brought up is very good and to practice all the vices which it defends are things extremely compatible, as well in the big world as by the people.', 742, 'The denunciation of intolerance and religious fanaticism.', 'French', 'Philosopher, writer', 'Pierre Bayle is a great French philosopher.'),
(17, 'Claude Adrien Helvétius', 'https://i.postimg.cc/65nPQQ7C/helvetius.jpg', 'Courage is often the effect of a blurred view of the danger one faces or of a complete ignorance of the same danger. Lorem, ipsum dolor sit amet consectetur adipisicing elit. Officiis iste numquam, expedita perferendis, reprehenderit ullam velit laudantium sapiente illo aliquam cupiditate? Quas quis facere ut esse aliquam culpa accusantium neque?', 890, 'The fight against injustice and ignorance.', 'French', 'Writer and philosopher', 'Claude Adrien Helvétius is a great French philosopher.'),
(18, 'Baruch Spinoza', '', 'If you want life to smile on you, bring your good humor to it first. Lorem, ipsum dolor sit amet consectetur adipisicing elit. Officiis iste numquam, expedita perferendis, reprehenderit ullam velit laudantium sapiente illo aliquam cupiditate? Quas quis facere ut esse aliquam culpa accusantium neque?', 183, 'Social and political protest.', 'French', 'Writer and philosopher', 'Baruch Spinoza is a great French philosopher. Lorem, ipsum dolor sit amet consectetur adipisicing elit. Officiis iste numquam, expedita perferendis, reprehenderit ullam velit laudantium sapiente illo aliquam cupiditate? Quas quis facere ut esse aliquam culpa accusantium neque?'),
(19, 'Pierre-Augustin Caron de Beaumarchais', 'https://i.postimg.cc/d1gWsMwW/jeanmarcnattier.jpg', 'The most adventurous woman feels a voice within her that tells her: Be beautiful if you can, wise if you want, but be considered, you have to. Lorem, ipsum dolor sit amet consectetur adipisicing elit. Officiis iste numquam, expedita perferendis, reprehenderit ullam velit laudantium sapiente illo aliquam cupiditate? Quas quis facere ut esse aliquam culpa accusantium neque?', 536, 'Social and political protest', 'Dutch', 'Philosopher, spy and arms dealer.', 'Pierre Bayle is a great Dutch philosopher.'),
(20, 'David Hume', 'https://i.postimg.cc/QM44z9PZ/Allanramsey.jpg', 'The beauty of things exists in the mind of the beholder. Lorem, ipsum dolor sit amet consectetur adipisicing elit. Officiis iste numquam, expedita perferendis, reprehenderit ullam velit laudantium sapiente illo aliquam cupiditate? Quas quis facere ut esse aliquam culpa accusantium neque?', 129, 'Social and political protest.', 'Scottish', 'Philosopher, economist and historian.', 'David Hume is a great Scottish philosopher.'),
(21, 'Étienne Bonnot de Condillac', 'https://i.postimg.cc/MpYryrmT/condillacetienne.jpg', 'When a man wants to become lovable, there is nothing he does not try to correct his faults.. Lorem, ipsum dolor sit amet consectetur adipisicing elit. Officiis iste numquam, expedita perferendis, reprehenderit ullam velit laudantium sapiente illo aliquam cupiditate? Quas quis facere ut esse aliquam culpa accusantium neque?', 153, 'Social and political protest.', 'French', 'Philosopher and priest.', 'David Hume is a great French philosopher.'),
(22, 'Émilie du Châtelet', 'https://i.postimg.cc/cHv9G1yg/emiliechatelet.jpg', 'We are happy only by satisfied tastes and passions. Lorem, ipsum dolor sit amet consectetur adipisicing elit. Officiis iste numquam, expedita perferendis, reprehenderit ullam velit laudantium sapiente illo aliquam cupiditate? Quas quis facere ut esse aliquam culpa accusantium neque?', 290, 'The fight against injustice and ignorance.', 'French', 'Philosopher mathematician and physicist.', 'Émilie du Châtelet is a great French women philosopher.'),
(23, 'Averroès', 'https://i.postimg.cc/Dzyp5dxc/123.jpg', 'Ignorance leads to fear, fear leads to hatred, hatred leads to violence, that is the equation. Lorem, ipsum dolor sit amet consectetur adipisicing elit. Officiis iste numquam, expedita perferendis, reprehenderit ullam velit laudantium sapiente illo aliquam cupiditate? Quas quis facere ut esse aliquam culpa accusantium neque?', 213, 'The fight against injustice and ignorance.', 'Morroco', 'Philosopher, theologian, jurist and physician.', 'Averroès is a great Morroc philosopher.'),
(24, 'De Vinci ', 'https://i.postimg.cc/gcw5fsmS/1-2.jpg', 'You have defined man as the King of Animals. I on the other hand, I will say that the man is the king of the ferocious beasts among which you are the greatest. Did you not actually kill and eat the animals to satisfy the pleasures of your palate, turning yourself into a grave for all these animals? Does not nature produce enough plant food to keep you full ?', 613, 'The fight against injustice and ignorance.', 'Italian', 'Scientist, engineer, inventor, anatomist, painter, sculptor, architect, town planner, botanist, musician, poet, philosopher and writer.', 'De Vinci is a great Italian philosopher.'),
(25, 'Louis de Jaucourt', 'https://i.postimg.cc/02YtsH3f/unamed.jpg', 'It is the purchase of negroes that the Europeans make on the coasts of Africa, to employ these unfortunate people in their colonies as slaves. This purchase of negroes, to reduce them to slavery, is a trade that violates religion, morals, natural laws, and all the rights of human nature.', 362, 'Hostility to slavery.', 'French', 'Philosopher, scholarly collaborator.', 'Louis de Jaucourt is a great French philosopher.'),
(26, 'Julien Offray de La Mettrie', 'https://i.postimg.cc/SR8gjZKm/lamettrie.jpg', 'Write as if you are alone in the Universe and have nothing to fear from human prejudices. Lorem, ipsum dolor sit amet consectetur adipisicing elit. Officiis iste numquam, expedita perferendis, reprehenderit ullam velit laudantium sapiente illo aliquam cupiditate? Quas quis facere ut esse aliquam culpa accusantium neque?', 148, 'The fight against injustice and ignorance', 'French', 'Materialist and empiricist physician and philosopher.', 'Julien Offray de La Mettrie is a great French philosopher.');


--
-- Indexes for dumped tables
--

--
-- Indexes for table `fashion`
--
ALTER TABLE `fashion`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `music`
--
ALTER TABLE `music`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `painting`
--
ALTER TABLE `painting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `philosopher`
--
ALTER TABLE `philosopher`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `fashion`
--
ALTER TABLE `fashion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `music`
--
ALTER TABLE `music`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `painting`
--
ALTER TABLE `painting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `philosopher`
--
ALTER TABLE `philosopher`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
