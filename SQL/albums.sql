# ************************************************************
# Sequel Pro SQL dump
# Version 4499
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.7.17)
# Database: albums
# Generation Time: 2017-10-12 10:13:08 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table album_genre
# ------------------------------------------------------------

DROP TABLE IF EXISTS `album_genre`;

CREATE TABLE `album_genre` (
  `album_id` int(10) unsigned NOT NULL,
  `genre_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`album_id`,`genre_id`),
  KEY `album_genre_genre_id_foreign` (`genre_id`),
  CONSTRAINT `album_genre_album_id_foreign` FOREIGN KEY (`album_id`) REFERENCES `albums` (`id`) ON DELETE CASCADE,
  CONSTRAINT `album_genre_genre_id_foreign` FOREIGN KEY (`genre_id`) REFERENCES `genres` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `album_genre` WRITE;
/*!40000 ALTER TABLE `album_genre` DISABLE KEYS */;

INSERT INTO `album_genre` (`album_id`, `genre_id`)
VALUES
	(1,1),
	(2,1),
	(3,1),
	(4,1),
	(5,1),
	(6,1),
	(7,1),
	(9,1),
	(23,1),
	(27,1),
	(28,1),
	(36,1),
	(42,1),
	(45,1),
	(53,1),
	(61,1),
	(64,1),
	(69,1),
	(71,1),
	(73,1),
	(79,1),
	(88,1),
	(95,1),
	(98,1),
	(1,2),
	(2,2),
	(8,2),
	(10,2),
	(11,2),
	(14,2),
	(30,2),
	(35,2),
	(51,2),
	(54,2),
	(55,2),
	(59,2),
	(60,2),
	(62,2),
	(63,2),
	(72,2),
	(74,2),
	(77,2),
	(78,2),
	(87,2),
	(89,2),
	(1,3),
	(2,3),
	(12,3),
	(13,3),
	(24,3),
	(25,3),
	(26,3),
	(32,3),
	(33,3),
	(37,3),
	(39,3),
	(47,3),
	(50,3),
	(52,3),
	(58,3),
	(65,3),
	(75,3),
	(82,3),
	(83,3),
	(84,3),
	(1,4),
	(3,4),
	(4,4),
	(15,4),
	(17,4),
	(18,4),
	(19,4),
	(21,4),
	(31,4),
	(38,4),
	(40,4),
	(41,4),
	(44,4),
	(46,4),
	(48,4),
	(56,4),
	(66,4),
	(70,4),
	(76,4),
	(92,4),
	(94,4),
	(96,4),
	(1,5),
	(2,5),
	(5,5),
	(16,5),
	(20,5),
	(22,5),
	(29,5),
	(34,5),
	(43,5),
	(49,5),
	(57,5),
	(67,5),
	(68,5),
	(80,5),
	(81,5),
	(85,5),
	(86,5),
	(90,5),
	(91,5),
	(93,5),
	(97,5),
	(99,5),
	(100,5);

/*!40000 ALTER TABLE `album_genre` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table album_person
# ------------------------------------------------------------

DROP TABLE IF EXISTS `album_person`;

CREATE TABLE `album_person` (
  `album_id` int(10) unsigned NOT NULL,
  `person_id` int(10) unsigned NOT NULL,
  `amount` int(11) NOT NULL,
  `purchased_at` datetime NOT NULL,
  PRIMARY KEY (`album_id`,`person_id`),
  KEY `album_person_person_id_foreign` (`person_id`),
  CONSTRAINT `album_person_album_id_foreign` FOREIGN KEY (`album_id`) REFERENCES `albums` (`id`) ON DELETE CASCADE,
  CONSTRAINT `album_person_person_id_foreign` FOREIGN KEY (`person_id`) REFERENCES `people` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `album_person` WRITE;
/*!40000 ALTER TABLE `album_person` DISABLE KEYS */;

INSERT INTO `album_person` (`album_id`, `person_id`, `amount`, `purchased_at`)
VALUES
	(1,5,1000,'2010-05-05 14:30:30'),
	(2,2,1500,'2005-08-03 16:42:46'),
	(3,4,1000,'1991-12-29 04:57:53'),
	(5,4,1500,'1996-03-06 14:27:04'),
	(6,4,500,'1992-08-30 16:38:31'),
	(8,2,1500,'1977-05-03 01:44:45'),
	(9,5,1500,'1997-05-08 19:10:27'),
	(10,4,1000,'1999-08-04 21:47:44'),
	(12,2,1000,'2000-07-02 12:06:59'),
	(13,1,1000,'1985-02-13 09:42:45'),
	(15,1,1500,'2002-08-14 23:34:39'),
	(15,4,1500,'1981-02-25 13:22:36'),
	(17,1,1500,'2009-01-27 05:33:50'),
	(17,3,500,'1975-06-15 20:28:55'),
	(21,1,1000,'2002-09-22 13:50:20'),
	(23,3,1500,'1999-01-13 03:27:38'),
	(25,3,1500,'1996-03-02 14:02:54'),
	(25,5,500,'1995-10-17 18:39:59'),
	(27,3,1500,'1976-11-16 23:26:47'),
	(28,1,1500,'2008-04-27 18:16:07'),
	(29,2,1500,'1987-08-28 12:53:50'),
	(29,4,1500,'1975-06-22 13:14:56'),
	(31,1,1500,'1995-03-06 01:23:57'),
	(32,2,500,'2006-09-08 20:49:45'),
	(33,3,1500,'1973-09-28 22:27:34'),
	(34,4,1500,'1991-01-08 09:18:07'),
	(35,1,1500,'2009-06-23 20:23:40'),
	(36,1,500,'1977-04-27 10:20:30'),
	(40,1,1500,'1998-09-18 08:59:59'),
	(40,4,1000,'1999-07-14 20:52:23'),
	(40,5,1500,'2014-09-20 18:17:38'),
	(41,2,1500,'1988-10-05 14:24:36'),
	(42,4,1000,'1979-02-07 12:42:36'),
	(43,3,1500,'1985-12-01 19:32:57'),
	(43,4,1500,'1973-05-12 01:57:04'),
	(50,1,1000,'1978-02-28 04:12:25'),
	(51,3,1000,'1991-02-18 19:00:20'),
	(54,2,500,'1981-12-28 04:48:33'),
	(54,3,500,'1978-07-16 19:17:34'),
	(57,3,500,'1981-12-11 22:00:14'),
	(57,5,1500,'1988-02-04 20:33:32'),
	(59,5,500,'2009-01-06 16:36:16'),
	(60,1,1000,'2014-01-14 14:13:54'),
	(61,5,1500,'2013-08-02 17:08:41'),
	(68,2,1000,'1980-07-12 02:07:41'),
	(74,1,500,'1972-04-02 15:53:47'),
	(77,2,1500,'1973-07-14 17:10:12'),
	(80,2,500,'1975-09-05 02:06:13'),
	(80,3,500,'1976-01-29 02:43:34'),
	(80,4,1500,'1990-06-28 02:55:39'),
	(81,5,1500,'1975-03-16 23:42:03'),
	(82,4,1000,'1971-07-21 04:24:29'),
	(82,5,1000,'2016-02-09 03:11:42'),
	(83,1,1000,'1973-01-09 14:58:33'),
	(83,2,1500,'2013-04-25 06:17:21'),
	(83,3,1000,'1986-11-21 02:01:25'),
	(85,5,1000,'1988-05-19 07:47:28'),
	(86,4,1500,'2010-01-23 12:43:48'),
	(87,3,1500,'2013-02-06 01:28:40'),
	(90,5,500,'1998-08-08 23:11:33'),
	(91,2,1500,'1987-08-28 10:03:30'),
	(94,2,1500,'1976-06-26 22:30:02'),
	(94,3,1500,'2016-04-29 11:10:31'),
	(94,5,500,'1998-03-21 01:13:10');

/*!40000 ALTER TABLE `album_person` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table albums
# ------------------------------------------------------------

DROP TABLE IF EXISTS `albums`;

CREATE TABLE `albums` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `artist` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `track_count` smallint(5) unsigned DEFAULT NULL,
  `release_year` year(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `albums` WRITE;
/*!40000 ALTER TABLE `albums` DISABLE KEYS */;

INSERT INTO `albums` (`id`, `title`, `artist`, `track_count`, `release_year`)
VALUES
	(1,'Veniam totam repellendus in.','Newton Jacobs',14,'2001'),
	(2,'Corrupti laborum in libero.','Prof. Reese Cole',9,'2003'),
	(3,'Et voluptas sunt labore qui harum cum.','Mrs. Margaret Dickinson Sr.',10,'1977'),
	(4,'Et enim modi nemo repellat atque.','Theresia Schuppe',11,'2011'),
	(5,'Saepe nostrum quia tenetur.','Eliezer Douglas',13,'1991'),
	(6,'Sint fugit consectetur nesciunt molestias dolorem.','Claude Gibson',10,'2010'),
	(7,'Nostrum modi est in inventore.','Winona Ortiz',8,'2004'),
	(8,'Sit nemo illum enim dolor.','Dale McLaughlin',12,'1994'),
	(9,'Vel ullam qui doloremque.','Mr. Jaylen Toy',13,'1979'),
	(10,'Vero harum rerum dolorum qui saepe.','Ms. Berenice Beier',15,'1993'),
	(11,'A saepe nesciunt quasi placeat.','Brycen Fadel',15,'1971'),
	(12,'Aspernatur earum commodi et et sapiente.','Myrl Connelly',11,'2015'),
	(13,'Et voluptatum distinctio dolor esse consequuntur.','Mr. Constantin Kutch MD',15,'2013'),
	(14,'Molestiae ea corrupti excepturi numquam veritatis.','Miss Adelia Batz PhD',15,'1984'),
	(15,'Qui corrupti quae distinctio aut eos quae.','Colleen Grant',11,'1985'),
	(16,'Corporis deleniti nam consequatur et accusantium nobis.','Garry Strosin',11,'2002'),
	(17,'Iste eius et quidem ex doloremque.','Nathen Considine Jr.',14,'1975'),
	(18,'Omnis excepturi odit quod.','Dr. Rodrick Considine I',15,'2008'),
	(19,'Quos accusamus architecto ratione voluptatem quas odio.','Keanu Hane',11,'2010'),
	(20,'Sint et sed veniam est.','Lue Marvin',13,'1988'),
	(21,'Vel perferendis sed magnam ut ut.','Levi Ruecker',9,'2007'),
	(22,'Quae eum omnis at dignissimos eos.','Janis Marquardt',13,'1994'),
	(23,'Consequatur eius quo ullam soluta.','Shaina Ortiz',10,'1989'),
	(24,'Dolor sint aut alias repellat maxime molestiae.','Gerry Williamson',8,'1986'),
	(25,'Omnis aut ea numquam.','Bridgette Will',15,'1976'),
	(26,'Et eaque ea dolor at.','Margarette Nienow',13,'2008'),
	(27,'Sequi dolorem quo facere nostrum voluptas cupiditate.','Concepcion Hilpert',12,'2000'),
	(28,'Quisquam dolor sapiente ea vel.','Jasmin Howell Jr.',8,'2004'),
	(29,'Quos consequatur quas neque qui.','Josiane Spencer',12,'2007'),
	(30,'Molestiae autem ad minima est voluptatibus aliquam.','Lonie Stroman IV',12,'1999'),
	(31,'Sunt facere placeat quia officia aut necessitatibus.','Chase Marvin PhD',8,'1989'),
	(32,'Vel eveniet nihil sit.','Breanna Kuhic',9,'1980'),
	(33,'Ipsa aut et unde omnis pariatur autem.','Margot Walsh',12,'2010'),
	(34,'Qui aut est ex similique.','Dr. Francesca Bartoletti IV',11,'1991'),
	(35,'Voluptatem iste est sunt ad nisi dignissimos.','Kade Kessler',8,'1984'),
	(36,'Praesentium perferendis earum fugit.','Bulah Streich',12,'1993'),
	(37,'Ea laboriosam maxime ipsum suscipit et.','Carol Fay',12,'2015'),
	(38,'Accusantium exercitationem impedit reiciendis.','Lesley Nolan',10,'1999'),
	(39,'Odio est fugit est minima eligendi.','Aida Renner',13,'1999'),
	(40,'Voluptatem excepturi ut eveniet.','Edyth Reichel',11,'2013'),
	(41,'Voluptatem deserunt omnis optio.','Leatha Will',13,'1971'),
	(42,'Eum quam ratione dolor.','Prof. Carroll Prosacco',13,'1986'),
	(43,'Id nostrum sit unde aperiam consequatur molestiae.','Mae Sporer',8,'1973'),
	(44,'Sunt et recusandae unde voluptate aut.','Prof. Clarabelle Dare I',14,'1971'),
	(45,'Molestiae et tempora voluptatibus architecto laudantium rerum.','Dr. Jadyn Smitham',8,'1987'),
	(46,'Culpa rem ipsam quaerat vitae suscipit nemo.','Mr. Gianni Graham II',8,'2002'),
	(47,'Adipisci maxime placeat eligendi dolores.','Broderick Ebert',8,'1994'),
	(48,'Consectetur est repellendus aut assumenda laborum deleniti.','Miss Rhianna Johnson MD',15,'1981'),
	(49,'Expedita rerum inventore nihil tempora sed voluptatem.','Prof. Brennan O\'Keefe',15,'1990'),
	(50,'Exercitationem voluptatem voluptate illum.','Brisa Morar',13,'1976'),
	(51,'Repellendus alias consectetur ut et quisquam quaerat.','Yasmine Cole',10,'1994'),
	(52,'Et aliquam vero illum.','Bella Bogan',15,'1974'),
	(53,'Natus minima ea saepe.','Kariane Streich',12,'1994'),
	(54,'Quam dolor voluptatem nisi at enim.','Jayce Oberbrunner',9,'1987'),
	(55,'Qui tempore reiciendis hic rerum dignissimos in.','Kendra Stoltenberg',14,'2005'),
	(56,'Nemo et tempora et sapiente ut.','Ewell Murphy',8,'2014'),
	(57,'Hic asperiores dolorum soluta.','Lorenza Bosco',9,'1993'),
	(58,'Dignissimos enim error optio quis.','Haley Kautzer',10,'1990'),
	(59,'Accusamus quaerat dicta voluptates ipsam qui.','Mr. Kraig Green',11,'2003'),
	(60,'Laudantium cum ex odit.','Augusta Weissnat DVM',15,'1987'),
	(61,'Expedita corporis quo laborum nulla.','Mr. Jeffery Ullrich Sr.',15,'2000'),
	(62,'Quos et nam eum.','Joanny Paucek',11,'2009'),
	(63,'Non ut dolores consequatur eaque ut.','Garland Mante',9,'1984'),
	(64,'Ipsam adipisci fuga voluptate architecto consectetur.','Dallas Stroman III',15,'1994'),
	(65,'Modi alias dolor veniam sunt fuga.','Trent Renner',11,'2008'),
	(66,'Non ea nulla occaecati aut.','Anne Cummings',12,'1998'),
	(67,'Repudiandae enim voluptas eaque dolor ut.','Ahmad Bernier',13,'1995'),
	(68,'Occaecati animi fugiat repellendus illum.','Wayne Trantow',9,'1982'),
	(69,'Sint ut facilis tempore.','Hassan Zboncak',10,'1975'),
	(70,'Sequi repellendus minus ut fuga aut.','Jayce Kunde I',9,'1970'),
	(71,'Soluta iusto et eos doloribus laboriosam.','Waylon Franecki',11,'2016'),
	(72,'Aperiam hic aut debitis.','Mrs. Liliana Doyle Sr.',12,'1982'),
	(73,'Doloribus et occaecati temporibus fuga sit.','Athena Bailey',9,'1992'),
	(74,'Placeat autem ut sit.','Raven Herzog',8,'1975'),
	(75,'Molestiae quod sint aut.','Joaquin Lesch',8,'2010'),
	(76,'Rerum modi ipsum dolor modi et reiciendis saepe.','Miss Santina O\'Conner',9,'2002'),
	(77,'Et nisi delectus molestiae laudantium.','Tyson Kreiger',12,'2005'),
	(78,'Mollitia qui consequatur nostrum ullam ipsa suscipit.','Dr. Nakia Stoltenberg DVM',14,'1983'),
	(79,'Enim qui quia nesciunt.','Delfina Wisoky',11,'1973'),
	(80,'Consequatur esse commodi excepturi.','Dr. Dudley Raynor II',8,'1979'),
	(81,'Voluptas et et possimus sed debitis.','Dimitri Stamm',12,'2010'),
	(82,'Illo mollitia rerum impedit numquam voluptatem qui.','Jamarcus Huel',12,'1997'),
	(83,'Quod dolores est sint.','Jett Larkin',11,'1979'),
	(84,'Officiis pariatur doloribus aperiam accusamus.','Miss Jailyn Kihn',12,'2001'),
	(85,'Est in at aliquam quo repudiandae possimus molestiae.','Cristal Von',11,'1974'),
	(86,'Amet distinctio eveniet qui optio velit.','Monty Trantow',9,'1981'),
	(87,'Et libero doloribus in nisi.','Dr. Sallie Mills III',10,'1984'),
	(88,'Aliquid dolorem dolor enim tenetur.','Mrs. Guadalupe Wehner I',10,'1999'),
	(89,'Et voluptas ipsa laboriosam aliquam.','Miss Destini Witting',15,'1993'),
	(90,'Veritatis laboriosam modi tempore.','Guiseppe Gleichner',9,'2006'),
	(91,'Molestiae in ad quia occaecati.','Alicia Ferry',10,'1983'),
	(92,'Doloribus et dolores et placeat ipsam.','Jovany Jerde',15,'1990'),
	(93,'Nam similique et optio.','Alvina Gulgowski',11,'1992'),
	(94,'Incidunt blanditiis temporibus iste deserunt.','Viola Rolfson I',13,'1995'),
	(95,'Numquam quis itaque quasi nulla illo.','Lester Rutherford',9,'1975'),
	(96,'Optio omnis temporibus cupiditate optio odit.','Prof. Arlo Von MD',9,'1988'),
	(97,'Ea iste quo quam.','Ernie Rodriguez',15,'1996'),
	(98,'Quas delectus veniam veritatis.','Lindsey Ryan',8,'2005'),
	(99,'Illum perspiciatis molestiae nihil eligendi libero.','Nia Balistreri',12,'2004'),
	(100,'Et illum eius voluptates et enim quaerat.','Carey Funk',15,'1973');

/*!40000 ALTER TABLE `albums` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table genres
# ------------------------------------------------------------

DROP TABLE IF EXISTS `genres`;

CREATE TABLE `genres` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `genres` WRITE;
/*!40000 ALTER TABLE `genres` DISABLE KEYS */;

INSERT INTO `genres` (`id`, `name`)
VALUES
	(1,'Pop'),
	(2,'Rock'),
	(3,'Country'),
	(4,'Classical'),
	(5,'Jazz');

/*!40000 ALTER TABLE `genres` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table migrations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;

INSERT INTO `migrations` (`id`, `migration`, `batch`)
VALUES
	(4,'2017_10_12_075754_create_albums_table',1),
	(5,'2017_10_12_080058_create_people_table',1),
	(6,'2017_10_12_080201_create_genres_table',1),
	(7,'2017_10_12_082822_create_album_person_table',2),
	(8,'2017_10_12_100828_create_album_genre_table',3);

/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table people
# ------------------------------------------------------------

DROP TABLE IF EXISTS `people`;

CREATE TABLE `people` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `relationship` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `people` WRITE;
/*!40000 ALTER TABLE `people` DISABLE KEYS */;

INSERT INTO `people` (`id`, `relationship`)
VALUES
	(1,'mother'),
	(2,'father'),
	(3,'sister'),
	(4,'brother'),
	(5,'self');

/*!40000 ALTER TABLE `people` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
