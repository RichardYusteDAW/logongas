DROP DATABASE IF EXISTS `movies`;
CREATE DATABASE `movies` CHARACTER SET `utf8` COLLATE `utf8_general_ci`;
USE `movies`;

-- Tables
CREATE TABLE `Director` (
    `id` INT PRIMARY KEY AUTO_INCREMENT,
    `name` VARCHAR(100) NOT NULL
);
CREATE TABLE `Actor` (
    `id` INT PRIMARY KEY AUTO_INCREMENT,
    `name` VARCHAR(100) NOT NULL
);
CREATE TABLE `Movie` (
    `id` INT PRIMARY KEY AUTO_INCREMENT,
    `title_en` VARCHAR(100) NOT NULL,
    `title_es` VARCHAR(100) NOT NULL,
    `description_en` TEXT NOT NULL,
    `description_es` TEXT NOT NULL,
    `director_id` INT NOT NULL,
    FOREIGN KEY (`director_id`) REFERENCES `Director`(`id`)
);

-- Many-to-many relationship between Movie and Actor
CREATE TABLE `Movie_Actor` (
    `movie_id` INT,
    `actor_id` INT,
    PRIMARY KEY (`movie_id`, `Actor_Id`),
    FOREIGN KEY (`movie_id`) REFERENCES `Movie`(`id`) ON DELETE CASCADE,
    FOREIGN KEY (`actor_id`) REFERENCES `Actor`(`id`) 
);


-- Insertions
INSERT INTO Director (id, name) VALUES 
(1, 'Frank Darabont'), 
(2, 'Francis Ford Coppola'),
(3, 'Christopher Nolan'),
(4, 'Sidney Lumet'),
(5, 'Steven Spielberg'),
(6, 'Peter Jackson'),
(7, 'Quentin Tarantino'),
(8, 'Sergio Leone'),
(9, 'David Fincher'),
(10, 'Robert Zemeckis'),
(11, 'Irvin Kershner'),
(12, 'Lana Wachowski'),
(13, 'Lilly Wachowski'),
(14, 'Martin Scorsese'),
(15, 'Milos Forman'),
(16, 'Akira Kurosawa'),
(17, 'Fernando Meirelles'),
(18, 'Kátia Lund'),
(19, 'Jonathan Demme');

INSERT INTO Actor (id, name) VALUES 
(1, 'Tim Robbins'),
(2, 'Morgan Freeman'),
(3, 'William Sadler'),
(4, 'Clancy Brown'),
(5, 'Gil Bellows'),
(6, 'Marlon Brando'),
(7, 'Al Pacino'),
(8, 'James Caan'),
(9, 'Richard S. Castellano'),
(10, 'Robert Duvall'),
(11, 'Christian Bale'),
(12, 'Heath Ledger'),
(13, 'Aaron Eckhart'),
(14, 'Michael Caine'),
(15, 'Gary Oldman'),
(16, 'Tom Hanks'),
(17, 'Robin Wright'),
(18, 'Gary Sinise'),
(19, 'Mykelti Williamson'),
(20, 'Sally Field'),
(21, 'John Travolta'),
(22, 'Uma Thurman'),
(23, 'Samuel L. Jackson'),
(24, 'Bruce Willis'),
(25, 'Ving Rhames'),
(26, 'Liam Neeson'),
(27, 'Ben Kingsley'),
(28, 'Ralph Fiennes'),
(29, 'Caroline Goodall'),
(30, 'Jonathan Sagall'),
(31, 'Elijah Wood'),
(32, 'Viggo Mortensen'),
(33, 'Ian McKellen'),
(34, 'Sean Astin'),
(35, 'Andy Serkis'),
(36, 'Edward Norton'),
(37, 'Brad Pitt'),
(38, 'Helena Bonham Carter'),
(39, 'Meat Loaf'),
(40, 'Jared Leto'),
(41, 'Leonardo DiCaprio'),
(42, 'Joseph Gordon-Levitt'),
(43, 'Ellen Page'),
(44, 'Tom Hardy'),
(45, 'Ken Watanabe'),
(46, 'Keanu Reeves'),
(47, 'Laurence Fishburne'),
(48, 'Carrie-Anne Moss'),
(49, 'Hugo Weaving'),
(50, 'Joe Pantoliano'),
(51, 'Robert De Niro'),
(52, 'Ray Liotta'),
(53, 'Joe Pesci'),
(54, 'Lorraine Bracco'),
(55, 'Paul Sorvino'),
(56, 'Jack Nicholson'),
(57, 'Louise Fletcher'),
(58, 'Will Sampson'),
(59, 'William Redfield'),
(60, 'Brad Dourif'),
(61, 'Jodie Foster'),
(62, 'Anthony Hopkins'),
(63, 'Scott Glenn'),
(64, 'Ted Levine'),
(65, 'Anthony Heald'),
(66, 'Diane Keaton'),
(67, 'John Cazale'),
(68, 'Mark Hamill'),
(69, 'Harrison Ford'),
(70, 'Carrie Fisher'),
(71, 'Billy Dee Williams'),
(72, 'Anthony Daniels'),
(73, 'Clint Eastwood'),
(74, 'Eli Wallach'),
(75, 'Lee Van Cleef'),
(76, 'Aldo Giuffrè'),
(77, 'Luigi Pistilli'),
(78, 'Frank Capra');

INSERT INTO `Movie` (`id`, `title_en`, `title_es`, `description_en`, `description_es`, `director_id`) VALUES
(1, 'The Shawshank Redemption', 'Cadena perpetua', 'Two imprisoned men bond over a number of years, finding solace and eventual redemption through acts of common decency.', 'Dos hombres encarcelados fortalecen una amistad a lo largo de los años, encontrando consuelo y eventualmente la redención a través de actos de decencia común.', 1),
(2, 'The Godfather', 'El Padrino', 'The aging patriarch of an organized crime dynasty transfers control of his clandestine empire to his reluctant son.', 'El patriarca envejecido de una dinastía de crimen organizado transfiere el control de su imperio clandestino a su reticente hijo.', 2),
(3, 'The Dark Knight', 'El Caballero Oscuro', 'When the menace known as the Joker emerges from his mysterious past, he wreaks havoc and chaos on the people of Gotham.', 'Cuando la amenaza conocida como el Joker emerge de su misterioso pasado, él causa estragos y caos en la gente de Gotham.', 3),
(4, '12 Angry Men', 'Doce hombres sin piedad', 'A jury holdout attempts to prevent a miscarriage of justice by forcing his colleagues to reconsider the evidence.', 'Un miembro del jurado intenta evitar un fallo judicial erróneo al obligar a sus colegas a reconsiderar las pruebas.', 4),
(5, 'Schindler\'s List', 'La lista de Schindler', 'In German-occupied Poland during World War II, industrialist Oskar Schindler gradually becomes concerned for his Jewish workforce after witnessing their persecution by the Nazis.', 'En la Polonia ocupada por los alemanes durante la Segunda Guerra Mundial, el industrial Oskar Schindler se va preocupando gradualmente por sus empleados judíos después de ser testigo de la persecución nazi.', 5),
(6, 'The Lord of the Rings: The Return of the King', 'El Señor de los Anillos: El Retorno del Rey', 'Gandalf and Aragorn lead the World of Men against Sauron\'s army to draw his gaze from Frodo and Sam as they approach Mount Doom with the One Ring.', 'Gandalf y Aragorn lideran al mundo de los hombres contra el ejército de Sauron para desviar su mirada de Frodo y Sam mientras se acercan al Monte del Destino con el Anillo Único.', 6),
(7, 'Pulp Fiction', 'Tiempos violentos', 'The lives of two mob hitmen, a boxer, a gangster\'s wife, and a pair of diner bandits intertwine in four tales of violence and redemption.', 'Las vidas de dos asesinos a sueldo, un boxeador, la esposa de un gánster y una pareja de bandidos de diner se entrelazan en cuatro relatos de violencia y redención.', 7),
(8, 'The Good, the Bad and the Ugly', 'El bueno, el malo y el feo', 'A bounty hunting scam joins two men in an uneasy alliance against a third in a race to find a fortune in gold buried in a remote cemetery.', 'Una estafa de caza recompensas une a dos hombres en una incómoda alianza contra un tercero en una carrera para encontrar una fortuna en oro enterrada en un remoto cementerio.', 8),
(9, 'Fight Club', 'El Club de la Lucha', 'An insomniac office worker and a devil-may-care soapmaker form an underground fight club that evolves into something much, much more.', 'Un oficinista insomne y un fabricante de jabón imprudente forman un club de lucha clandestino que evoluciona en algo mucho, mucho más.', 9),
(10, 'Forrest Gump', 'Forrest Gump', 'The presidencies of Kennedy and Johnson, the Vietnam War, the Watergate scandal and other historical events unfold from the perspective of an Alabama man with an IQ of 75.', 'Las presidencias de Kennedy y Johnson, la guerra de Vietnam, el escándalo de Watergate y otros eventos históricos se desarrollan desde la perspectiva de un hombre de Alabama con un CI de 75.', 10),
(11, 'The Empire Strikes Back', 'El Imperio Contraataca', 'After the rebels are brutally overpowered by the Empire on the ice planet Hoth, Luke Skywalker begins Jedi training with Yoda.', 'Después de que los rebeldes son brutalmente superados por el Imperio en el planeta helado Hoth, Luke Skywalker comienza su entrenamiento Jedi con Yoda.', 11),
(12, 'The Matrix', 'La Matriz', 'A computer hacker learns from mysterious rebels about the true nature of his reality and his role in the war against its controllers.', 'Un hacker informático aprende de unos rebeldes misteriosos sobre la verdadera naturaleza de su realidad y su papel en la guerra contra sus controladores.', 12),
(13, 'Goodfellas', 'Buenos muchachos', 'The story of Henry Hill and his life in the mob, covering his relationship with his wife Karen Hill and his mob partners.', 'La historia de Henry Hill y su vida en la mafia, cubriendo su relación con su esposa Karen Hill y sus socios mafiosos.', 13),
(14, 'One Flew Over the Cuckoo\'s Nest', 'Atrapado sin salida', 'A criminal pleads insanity and is admitted to a mental institution, where he rebels against the oppressive nurse and rallies up the scared patients.', 'Un criminal se declara demente y es admitido en un instituto mental, donde se rebela contra la enfermera opresiva y alienta a los pacientes asustados.', 14),
(15, 'Seven Samurai', 'Los siete samuráis', 'A poor village under attack by bandits recruits seven unemployed samurai to help them defend themselves.', 'Un pueblo pobre atacado por bandidos recluta a siete samuráis desempleados para ayudar a defenderse.', 15),
(16, 'City of God', 'Ciudad de Dios', 'In the slums of Rio, two kids\' paths diverge as one struggles to become a photographer and the other a kingpin.', 'En las favelas de Río, los caminos de dos niños divergen mientras uno lucha por convertirse en fotógrafo y el otro en un capo.', 16),
(17, 'The Silence of the Lambs', 'El silencio de los corderos', 'A young F.B.I. cadet must receive the help of an incarcerated and manipulative cannibal killer to help catch another serial killer.', 'Un joven cadete del F.B.I. debe recibir la ayuda de un asesino caníbal encarcelado y manipulador para atrapar a otro asesino en serie.', 17),
(18, 'Inception', 'Origen', 'A thief who steals corporate secrets through the use of dream-sharing technology is given the inverse task of planting an idea into the mind of a C.E.O.', 'Un ladrón que roba secretos corporativos mediante el uso de la tecnología de compartir sueños recibe la tarea inversa de implantar una idea en la mente de un C.E.O.', 3),
(19, 'The Godfather: Part II', 'El Padrino: Parte II', 'The early life and career of Vito Corleone in 1920s New York City is portrayed, while his son, Michael, expands and tightens his grip on the family crime syndicate.', 'Se retrata la vida temprana y carrera de Vito Corleone en la ciudad de Nueva York de los años 20, mientras su hijo, Michael, expande y aprieta su control sobre el sindicato del crimen familiar.', 2);


INSERT INTO Movie_Actor (movie_id, actor_id) VALUES 
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(2, 6),
(2, 7),
(2, 8),
(2, 9),
(2, 10),
(3, 11),
(3, 12),
(3, 13),
(3, 14),
(3, 15),
(4, 16),
(4, 17),
(4, 18),
(4, 19),
(4, 20),
(5, 22),
(5, 23),
(5, 24),
(5, 25),
(6, 26),
(6, 27),
(6, 28),
(6, 29),
(6, 30),
(7, 31),
(7, 32),
(7, 33),
(7, 34),
(7, 35),
(8, 36),
(8, 37),
(8, 38),
(8, 39),
(8, 40),
(9, 41),
(9, 42),
(9, 43),
(9, 44),
(9, 45),
(10, 46),
(10, 47),
(10, 48),
(10, 49),
(10, 50),
(11, 51),
(11, 52),
(11, 53),
(11, 54),
(11, 55),
(12, 56),
(12, 57),
(12, 58),
(12, 59),
(12, 60),
(13, 61),
(13, 62),
(13, 63),
(13, 64),
(13, 65),
(14, 66),
(14, 67),
(14, 68),
(14, 69),
(14, 70),
(15, 71),
(15, 72),
(15, 73),
(15, 74),
(15, 75),
(16, 76),
(16, 77),
(16, 78),
(17, 61),
(17, 62),
(17, 63),
(17, 64),
(17, 65),
(18, 41),
(18, 42),
(18, 43),
(18, 44),
(18, 45),
(19, 73),
(19, 74),
(19, 75),
(19, 76),
(19, 77);