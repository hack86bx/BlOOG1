-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jul 07, 2024 at 09:29 PM
-- Server version: 8.2.0
-- PHP Version: 8.2.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bioog_lee`
--
CREATE DATABASE IF NOT EXISTS `bioog_lee` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `bioog_lee`;

-- --------------------------------------------------------

--
-- Table structure for table `article`
--

DROP TABLE IF EXISTS `article`;
CREATE TABLE IF NOT EXISTS `article` (
  `article_id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `article_title` varchar(160) COLLATE utf8mb4_general_ci NOT NULL,
  `article_slug` varchar(162) COLLATE utf8mb4_general_ci NOT NULL,
  `article_text` text COLLATE utf8mb4_general_ci NOT NULL,
  `article_date_create` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `article_date_update` timestamp NULL DEFAULT NULL,
  `article_date_publish` timestamp NULL DEFAULT NULL,
  `article_is_published` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `user_user_id` int UNSIGNED DEFAULT NULL,
  PRIMARY KEY (`article_id`),
  UNIQUE KEY `article_slug_UNIQUE` (`article_slug`),
  KEY `fk_article_user1_idx` (`user_user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `article`
--

INSERT INTO `article` (`article_id`, `article_title`, `article_slug`, `article_text`, `article_date_create`, `article_date_update`, `article_date_publish`, `article_is_published`, `user_user_id`) VALUES
(1, 'Hébergement mutualisé | Wikipédia', 'hebergement-mutualise-wikipedia', 'L\'hébergement mutualisé est un mode d\'hébergement Internet destiné principalement aux sites web, dans un environnement technique dont la caractéristique principale est d\'être partagé par plusieurs utilisateurs. \r\n\r\nCette architecture est adaptée pour des sites d\'importance et d\'audience faibles ou moyennes, ne sollicitant que ponctuellement les ressources du ou des serveurs informatiques assurant l\'hébergement (processeur, mémoire vive, espace disque, débit). \r\n\r\nL\'administration de ces derniers est assurée par un intervenant tiers (et non par le titulaire de l\'hébergement).\r\n\r\n\r\n<a href=\"https://fr.wikipedia.org/wiki/H%C3%A9bergement_mutualis%C3%A9\" target=\"_blank\">https://fr.wikipedia.org/wiki/H%C3%A9bergement_mutualis%C3%A9</a>', '2024-06-25 08:58:07', NULL, '2024-06-25 09:55:46', 1, 3),
(2, 'Serveur dédié virtuel | Wikipédia', 'serveur-dedie-virtuel-wikipedia', 'Un serveur dédié virtuel (également appelé serveur virtuel), en anglais l\'appellation commerciale est virtual private server (VPS) ou virtual dedicated server (VDS) est une méthode de partitionnement d\'un serveur en plusieurs serveurs virtuels indépendants qui ont chacun les caractéristiques d\'un serveur dédié, en utilisant des techniques de virtualisation. \r\n\r\nChaque serveur peut fonctionner avec un système d\'exploitation différent et redémarrer indépendamment. Dans le domaine de l\'hébergement web, plusieurs dénominations recoupent le même type d\'offres et donc de services. \r\n\r\nLes acronymes VPS (Virtual Private Server) et VDS (Virtual Dedicated Server) désignent le même concept, et leur usage est parfois confus.\r\n\r\n<a href=\"https://fr.wikipedia.org/wiki/Serveur_d%C3%A9di%C3%A9_virtuel\" target=\"_blank\">https://fr.wikipedia.org/wiki/Serveur_d%C3%A9di%C3%A9_virtuel</a>', '2024-06-25 09:11:26', NULL, '2024-06-25 09:11:34', 1, 2),
(3, 'Les avantages de l\'hébergement mutualisé', 'avantages-hebergement-mutualise', 'Découvrez les avantages de l\'hébergement mutualisé pour votre site web, y compris les coûts réduits et la gestion simplifiée.', '2024-07-05 23:00:00', NULL, '2024-07-03 18:08:54', 1, 4),
(4, 'Qu\'est-ce qu\'un VPS ?', 'quest-ce-qu-un-vps', 'Un guide complet sur les serveurs privés virtuels (VPS), leur fonctionnement et leurs avantages pour les sites à fort trafic.', '2024-07-05 23:00:00', NULL, '2024-07-02 08:08:54', 1, 4),
(5, 'Pourquoi choisir un hébergement dédié ?', 'pourquoi-choisir-hebergement-dedie', 'Les raisons pour lesquelles un hébergement dédié peut être la meilleure solution pour les grandes entreprises et les sites à hautes performances.', '2024-07-05 23:00:00', NULL, '2024-07-06 18:08:54', 1, 1),
(6, 'Les bénéfices de l\'hébergement cloud', 'benefices-hebergement-cloud', 'Comment l\'hébergement cloud peut améliorer la flexibilité, la scalabilité et la fiabilité de votre infrastructure web.', '2024-07-05 23:00:00', NULL, '2024-07-06 18:08:54', 1, 1),
(7, 'Optimiser votre site avec un hébergement WordPress', 'optimiser-site-hebergement-wordpress', 'Découvrez comment un hébergement spécialisé WordPress peut améliorer les performances et la sécurité de votre site.', '2024-07-05 23:00:00', NULL, '2024-07-03 18:08:54', 1, 4),
(8, 'L\'hébergement élastique expliqué', 'hebergement-elastique-explique', 'Tout ce que vous devez savoir sur l\'hébergement élastique et comment il peut s\'adapter aux besoins changeants de votre site web.', '2024-07-05 23:00:00', NULL, '2024-06-27 18:08:54', 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `article_has_category`
--

DROP TABLE IF EXISTS `article_has_category`;
CREATE TABLE IF NOT EXISTS `article_has_category` (
  `article_article_id` int UNSIGNED NOT NULL,
  `category_category_id` int UNSIGNED NOT NULL,
  PRIMARY KEY (`article_article_id`,`category_category_id`),
  KEY `fk_article_has_category_category1_idx` (`category_category_id`),
  KEY `fk_article_has_category_article1_idx` (`article_article_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `article_has_category`
--

INSERT INTO `article_has_category` (`article_article_id`, `category_category_id`) VALUES
(1, 1),
(4, 1),
(1, 2),
(2, 2),
(1, 3),
(6, 3),
(1, 4),
(5, 4),
(7, 4),
(8, 4),
(3, 5),
(8, 5),
(3, 7),
(5, 7),
(6, 8),
(5, 9),
(4, 10),
(7, 10);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `category_id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `category_name` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `category_slug` varchar(102) COLLATE utf8mb4_general_ci NOT NULL,
  `category_description` varchar(300) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `category_parent` int UNSIGNED DEFAULT '0',
  PRIMARY KEY (`category_id`),
  UNIQUE KEY `category_slug_UNIQUE` (`category_slug`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`, `category_slug`, `category_description`, `category_parent`) VALUES
(1, 'Hébergement mutualisé', 'hebergement-mutualise', 'Un hébergement mutualisé (ou partagé) est une solution d\'hébergement web où plusieurs sites web partagent les ressources d\'un même serveur physique.', 0),
(2, 'Hébergement VPS', 'virtual-private-server', 'Un serveur physique est divisé en plusieurs serveurs virtuels, chacun avec ses propres ressources dédiées.', 0),
(3, 'Hébergement Dédié', 'hebergement-dedie', 'L’hébergement dédié fournit un serveur entièrement dédié à un seul client ou à une seule organisation.', 0),
(4, 'Hébergement Cloud', 'hebergement-cloud', 'L\'hébergement cloud est une méthode d\'hébergement de sites web et d\'applications en utilisant les ressources de plusieurs serveurs interconnectés.', 0),
(5, 'Hébergement WordPress', 'hebergement-wordpress', 'Une solution d\'hébergement spécialement optimisée pour les sites web utilisant le système de gestion de contenu WordPress.', 0),
(6, 'Hébergement Élastique', 'hebergement-elastique', 'L\'hébergement élastique permet de s\'adapter dynamiquement aux variations de trafic en allouant automatiquement les ressources nécessaires.', 0),
(7, 'Hébergement Colocation', 'hebergement-colocation', 'L\'hébergement en colocation implique de louer de l\'espace dans un centre de données pour y placer son propre matériel serveur.', 0),
(8, 'Hébergement Green', 'hebergement-green', 'Un hébergement écologique qui utilise des sources d\'énergie renouvelable et des pratiques durables pour minimiser l\'impact environnemental.', 0),
(9, 'Hébergement Réparti', 'hebergement-reparti', 'L\'hébergement réparti utilise plusieurs serveurs situés à différents endroits géographiques pour améliorer la performance et la redondance.', 0),
(10, 'Hébergement Géré', 'hebergement-gere', 'Une solution d\'hébergement où le fournisseur prend en charge la gestion, la maintenance et la sécurité du serveur.', 0);

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
CREATE TABLE IF NOT EXISTS `comment` (
  `comment_id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `comment_text` varchar(500) COLLATE utf8mb4_general_ci NOT NULL,
  `comment_parent` int UNSIGNED DEFAULT '0',
  `comment_date_create` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `comment_date_update` timestamp NULL DEFAULT NULL,
  `comment_date_publish` timestamp NULL DEFAULT NULL,
  `comment_is_published` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `user_user_id` int UNSIGNED NOT NULL,
  `article_article_id` int UNSIGNED NOT NULL,
  PRIMARY KEY (`comment_id`),
  KEY `fk_comment_user1_idx` (`user_user_id`),
  KEY `fk_comment_article1_idx` (`article_article_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`comment_id`, `comment_text`, `comment_parent`, `comment_date_create`, `comment_date_update`, `comment_date_publish`, `comment_is_published`, `user_user_id`, `article_article_id`) VALUES
(4, 'message de test de l\'article 1 avec l\'auteur 1\r\n\r\n Youpie', 0, '2024-06-25 09:46:12', '2024-06-25 09:46:22', NULL, 0, 1, 1),
(5, 'Un autre message', 0, '2024-06-25 09:46:47', NULL, NULL, 0, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `file`
--

DROP TABLE IF EXISTS `file`;
CREATE TABLE IF NOT EXISTS `file` (
  `file_id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `file_url` varchar(120) COLLATE utf8mb4_general_ci NOT NULL,
  `file_description` varchar(200) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `file_type` varchar(12) COLLATE utf8mb4_general_ci NOT NULL,
  `article_article_id` int UNSIGNED DEFAULT NULL,
  PRIMARY KEY (`file_id`),
  KEY `fk_file_article1_idx` (`article_article_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `file`
--

INSERT INTO `file` (`file_id`, `file_url`, `file_description`, `file_type`, `article_article_id`) VALUES
(1, 'https://scrumguides.org/docs/scrumguide/v2020/2020-Scrum-Guide-US.pdf', 'guide Scrum', 'pdf', 1);

-- --------------------------------------------------------

--
-- Table structure for table `image`
--

DROP TABLE IF EXISTS `image`;
CREATE TABLE IF NOT EXISTS `image` (
  `image_id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `image_url` varchar(120) COLLATE utf8mb4_general_ci NOT NULL,
  `image_description` varchar(180) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `image_type` varchar(12) COLLATE utf8mb4_general_ci NOT NULL,
  `article_article_id` int UNSIGNED DEFAULT NULL,
  PRIMARY KEY (`image_id`),
  KEY `fk_image_article1_idx` (`article_article_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `image`
--

INSERT INTO `image` (`image_id`, `image_url`, `image_description`, `image_type`, `article_article_id`) VALUES
(1, 'https://upload.wikimedia.org/wikipedia/commons/d/d5/Noun_Scroll_308110.svg', 'petite image libre', 'svg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `permission`
--

DROP TABLE IF EXISTS `permission`;
CREATE TABLE IF NOT EXISTS `permission` (
  `permission_id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `permission_name` varchar(45) COLLATE utf8mb4_general_ci NOT NULL,
  `permission_description` varchar(300) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`permission_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `permission`
--

INSERT INTO `permission` (`permission_id`, `permission_name`, `permission_description`) VALUES
(1, 'Administrateur', 'Administrateur du site\r\n- droits complets '),
(2, 'Modérateur', 'Modérateur du site\r\nPeut :\r\n- écrire un article (visibilité au choix)\r\n- modifier ses propres articles et la visibilité de ceux des autres auteurs\r\n- modérer tous les commentaires\r\n- écrire des commentaires'),
(3, 'Auteur', 'Auteur du site\r\nPeut :\r\n- écrire un article en attente de validation\r\n- modifier un article (remis en attente de validation)\r\n- écrire des commentaires'),
(4, 'Abonné', 'Abonné du site\r\nPeut :\r\n- écrire des commentaires (en attente de validation)');

-- --------------------------------------------------------

--
-- Table structure for table `tag`
--

DROP TABLE IF EXISTS `tag`;
CREATE TABLE IF NOT EXISTS `tag` (
  `tag_id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `tag_slug` varchar(65) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`tag_id`),
  UNIQUE KEY `tag_slug_UNIQUE` (`tag_slug`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tag`
--

INSERT INTO `tag` (`tag_id`, `tag_slug`) VALUES
(5, 'cloud'),
(6, 'cms'),
(2, 'hebergement'),
(4, 'informatique'),
(3, 'internet'),
(1, 'vps');

-- --------------------------------------------------------

--
-- Table structure for table `tag_has_article`
--

DROP TABLE IF EXISTS `tag_has_article`;
CREATE TABLE IF NOT EXISTS `tag_has_article` (
  `tag_tag_id` int UNSIGNED NOT NULL,
  `article_article_id` int UNSIGNED NOT NULL,
  PRIMARY KEY (`tag_tag_id`,`article_article_id`),
  KEY `fk_tag_has_article_article1_idx` (`article_article_id`),
  KEY `fk_tag_has_article_tag1_idx` (`tag_tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tag_has_article`
--

INSERT INTO `tag_has_article` (`tag_tag_id`, `article_article_id`) VALUES
(2, 1),
(3, 1),
(1, 2),
(2, 2),
(3, 2),
(4, 2),
(3, 3),
(6, 3),
(4, 4),
(5, 5),
(3, 6),
(6, 6),
(3, 7),
(5, 7),
(6, 8);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `user_id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'case sensitive',
  `user_password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'case sensitive',
  `user_full_name` varchar(160) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `user_mail` varchar(180) COLLATE utf8mb4_general_ci NOT NULL,
  `user_status` tinyint UNSIGNED NOT NULL DEFAULT '0' COMMENT '0 pas actif\n1 actif\n2 banni',
  `user_secret_key` varchar(80) COLLATE utf8mb4_general_ci NOT NULL,
  `permission_permission_id` int UNSIGNED DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `user_login_UNIQUE` (`user_login`),
  UNIQUE KEY `user_mail_UNIQUE` (`user_mail`),
  KEY `fk_user_permission_idx` (`permission_permission_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `user_login`, `user_password`, `user_full_name`, `user_mail`, `user_status`, `user_secret_key`, `permission_permission_id`) VALUES
(1, 'admin', '$2y$10$4Y3Jpbuj2P67Ck1iEZNVi.USW/WE/JIWVEynZk8sQJpLTxwpU/1jW', 'Mr. Tea', 'admin@cf2m.be', 1, '667a7f5bb21d58.35518569', 1),
(2, 'modo', '$2y$10$4RH/XOjt185cK5Ot8yyxyeZqiGXnffK8ZEZF01OVCRkDdeO.gYPWa', 'Sophie van Adil', 'van.adil@cf2m.be', 1, '667a7fc5aa27b9.52545730', 2),
(3, 'hugove', '$2y$10$GvP5xDBlBBJgVa0yq/uyJODdJaOW791vbWQ94BTpoBJw.mnQ8MmFa', 'Victorin Hugo', 'v.hugo@cf2m.be', 1, '667a804fdeae33.14386812', 3),
(4, 'abonne1', '$2y$10$mS./H3GLZ26TC5q7n8u5EutcvywL0hCuecqluLLyB8OObNcPKuOXa', 'Pierre Sanron', 'pierre@cf2m.be', 1, '667a80ccc0c180.54826014', 4),
(5, 'abonne2', '$2y$10$gue31XQqFtVBKAZrPYDlcugQrof3zNWQD.6o35KuwOCMhbdZRMrNa', 'Magib Sall', 'magib.s@cf2m.be', 1, '667a80fdf403a2.60796020', 4);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `article`
--
ALTER TABLE `article`
  ADD CONSTRAINT `fk_article_user1` FOREIGN KEY (`user_user_id`) REFERENCES `user` (`user_id`) ON DELETE SET NULL;

--
-- Constraints for table `article_has_category`
--
ALTER TABLE `article_has_category`
  ADD CONSTRAINT `fk_article_has_category_article1` FOREIGN KEY (`article_article_id`) REFERENCES `article` (`article_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_article_has_category_category1` FOREIGN KEY (`category_category_id`) REFERENCES `category` (`category_id`) ON DELETE CASCADE;

--
-- Constraints for table `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `fk_comment_article1` FOREIGN KEY (`article_article_id`) REFERENCES `article` (`article_id`),
  ADD CONSTRAINT `fk_comment_user1` FOREIGN KEY (`user_user_id`) REFERENCES `user` (`user_id`);

--
-- Constraints for table `file`
--
ALTER TABLE `file`
  ADD CONSTRAINT `fk_file_article1` FOREIGN KEY (`article_article_id`) REFERENCES `article` (`article_id`) ON DELETE SET NULL;

--
-- Constraints for table `image`
--
ALTER TABLE `image`
  ADD CONSTRAINT `fk_image_article1` FOREIGN KEY (`article_article_id`) REFERENCES `article` (`article_id`) ON DELETE SET NULL;

--
-- Constraints for table `tag_has_article`
--
ALTER TABLE `tag_has_article`
  ADD CONSTRAINT `fk_tag_has_article_article1` FOREIGN KEY (`article_article_id`) REFERENCES `article` (`article_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_tag_has_article_tag1` FOREIGN KEY (`tag_tag_id`) REFERENCES `tag` (`tag_id`) ON DELETE CASCADE;

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `fk_user_permission` FOREIGN KEY (`permission_permission_id`) REFERENCES `permission` (`permission_id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
