-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Client :  localhost:3306
-- Généré le :  Mer 25 Mars 2020 à 20:01
-- Version du serveur :  5.7.29-0ubuntu0.18.04.1
-- Version de PHP :  7.2.24-0ubuntu0.18.04.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `karnett`
--

-- --------------------------------------------------------

--
-- Structure de la table `auth_assignment`
--

CREATE TABLE `auth_assignment` (
  `item_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `auth_assignment`
--

INSERT INTO `auth_assignment` (`item_name`, `user_id`, `created_at`) VALUES
('admin', '1', 1581607004);

-- --------------------------------------------------------

--
-- Structure de la table `auth_item`
--

CREATE TABLE `auth_item` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `type` smallint(6) NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `rule_name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data` blob,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `auth_item`
--

INSERT INTO `auth_item` (`name`, `type`, `description`, `rule_name`, `data`, `created_at`, `updated_at`) VALUES
('/*', 2, NULL, NULL, NULL, 1581605556, 1581605556),
('/admin/*', 2, NULL, NULL, NULL, 1581605552, 1581605552),
('/admin/assignment/*', 2, NULL, NULL, NULL, 1581605550, 1581605550),
('/admin/assignment/assign', 2, NULL, NULL, NULL, 1581605549, 1581605549),
('/admin/assignment/index', 2, NULL, NULL, NULL, 1581605549, 1581605549),
('/admin/assignment/revoke', 2, NULL, NULL, NULL, 1581605549, 1581605549),
('/admin/assignment/view', 2, NULL, NULL, NULL, 1581605549, 1581605549),
('/admin/default/*', 2, NULL, NULL, NULL, 1581605550, 1581605550),
('/admin/default/index', 2, NULL, NULL, NULL, 1581605550, 1581605550),
('/admin/menu/*', 2, NULL, NULL, NULL, 1581605550, 1581605550),
('/admin/menu/create', 2, NULL, NULL, NULL, 1581605550, 1581605550),
('/admin/menu/delete', 2, NULL, NULL, NULL, 1581605550, 1581605550),
('/admin/menu/index', 2, NULL, NULL, NULL, 1581605550, 1581605550),
('/admin/menu/update', 2, NULL, NULL, NULL, 1581605550, 1581605550),
('/admin/menu/view', 2, NULL, NULL, NULL, 1581605550, 1581605550),
('/admin/permission/*', 2, NULL, NULL, NULL, 1581605550, 1581605550),
('/admin/permission/assign', 2, NULL, NULL, NULL, 1581605550, 1581605550),
('/admin/permission/create', 2, NULL, NULL, NULL, 1581605550, 1581605550),
('/admin/permission/delete', 2, NULL, NULL, NULL, 1581605550, 1581605550),
('/admin/permission/index', 2, NULL, NULL, NULL, 1581605550, 1581605550),
('/admin/permission/remove', 2, NULL, NULL, NULL, 1581605550, 1581605550),
('/admin/permission/update', 2, NULL, NULL, NULL, 1581605550, 1581605550),
('/admin/permission/view', 2, NULL, NULL, NULL, 1581605550, 1581605550),
('/admin/role/*', 2, NULL, NULL, NULL, 1581605551, 1581605551),
('/admin/role/assign', 2, NULL, NULL, NULL, 1581605551, 1581605551),
('/admin/role/create', 2, NULL, NULL, NULL, 1581605550, 1581605550),
('/admin/role/delete', 2, NULL, NULL, NULL, 1581605551, 1581605551),
('/admin/role/index', 2, NULL, NULL, NULL, 1581605550, 1581605550),
('/admin/role/remove', 2, NULL, NULL, NULL, 1581605551, 1581605551),
('/admin/role/update', 2, NULL, NULL, NULL, 1581605550, 1581605550),
('/admin/role/view', 2, NULL, NULL, NULL, 1581605550, 1581605550),
('/admin/route/*', 2, NULL, NULL, NULL, 1581605551, 1581605551),
('/admin/route/assign', 2, NULL, NULL, NULL, 1581605551, 1581605551),
('/admin/route/create', 2, NULL, NULL, NULL, 1581605551, 1581605551),
('/admin/route/index', 2, NULL, NULL, NULL, 1581605551, 1581605551),
('/admin/route/refresh', 2, NULL, NULL, NULL, 1581605551, 1581605551),
('/admin/route/remove', 2, NULL, NULL, NULL, 1581605551, 1581605551),
('/admin/rule/*', 2, NULL, NULL, NULL, 1581605551, 1581605551),
('/admin/rule/create', 2, NULL, NULL, NULL, 1581605551, 1581605551),
('/admin/rule/delete', 2, NULL, NULL, NULL, 1581605551, 1581605551),
('/admin/rule/index', 2, NULL, NULL, NULL, 1581605551, 1581605551),
('/admin/rule/update', 2, NULL, NULL, NULL, 1581605551, 1581605551),
('/admin/rule/view', 2, NULL, NULL, NULL, 1581605551, 1581605551),
('/admin/user/*', 2, NULL, NULL, NULL, 1581605552, 1581605552),
('/admin/user/activate', 2, NULL, NULL, NULL, 1581605552, 1581605552),
('/admin/user/change-password', 2, NULL, NULL, NULL, 1581605552, 1581605552),
('/admin/user/delete', 2, NULL, NULL, NULL, 1581605551, 1581605551),
('/admin/user/index', 2, NULL, NULL, NULL, 1581605551, 1581605551),
('/admin/user/login', 2, NULL, NULL, NULL, 1581605551, 1581605551),
('/admin/user/logout', 2, NULL, NULL, NULL, 1581605551, 1581605551),
('/admin/user/request-password-reset', 2, NULL, NULL, NULL, 1581605551, 1581605551),
('/admin/user/reset-password', 2, NULL, NULL, NULL, 1581605552, 1581605552),
('/admin/user/signup', 2, NULL, NULL, NULL, 1581605551, 1581605551),
('/admin/user/view', 2, NULL, NULL, NULL, 1581605551, 1581605551),
('/consultation/*', 2, NULL, NULL, NULL, 1581605553, 1581605553),
('/consultation/create', 2, NULL, NULL, NULL, 1581605553, 1581605553),
('/consultation/delete', 2, NULL, NULL, NULL, 1581605553, 1581605553),
('/consultation/index', 2, NULL, NULL, NULL, 1581605553, 1581605553),
('/consultation/update', 2, NULL, NULL, NULL, 1581605553, 1581605553),
('/consultation/view', 2, NULL, NULL, NULL, 1581605553, 1581605553),
('/debug/*', 2, NULL, NULL, NULL, 1581605552, 1581605552),
('/debug/default/*', 2, NULL, NULL, NULL, 1581605552, 1581605552),
('/debug/default/db-explain', 2, NULL, NULL, NULL, 1581605552, 1581605552),
('/debug/default/download-mail', 2, NULL, NULL, NULL, 1581605552, 1581605552),
('/debug/default/index', 2, NULL, NULL, NULL, 1581605552, 1581605552),
('/debug/default/toolbar', 2, NULL, NULL, NULL, 1581605552, 1581605552),
('/debug/default/view', 2, NULL, NULL, NULL, 1581605552, 1581605552),
('/debug/user/*', 2, NULL, NULL, NULL, 1581605552, 1581605552),
('/debug/user/reset-identity', 2, NULL, NULL, NULL, 1581605552, 1581605552),
('/debug/user/set-identity', 2, NULL, NULL, NULL, 1581605552, 1581605552),
('/gii/*', 2, NULL, NULL, NULL, 1581605552, 1581605552),
('/gii/default/*', 2, NULL, NULL, NULL, 1581605552, 1581605552),
('/gii/default/action', 2, NULL, NULL, NULL, 1581605552, 1581605552),
('/gii/default/diff', 2, NULL, NULL, NULL, 1581605552, 1581605552),
('/gii/default/index', 2, NULL, NULL, NULL, 1581605552, 1581605552),
('/gii/default/preview', 2, NULL, NULL, NULL, 1581605552, 1581605552),
('/gii/default/view', 2, NULL, NULL, NULL, 1581605552, 1581605552),
('/hopital/*', 2, NULL, NULL, NULL, 1581605553, 1581605553),
('/hopital/create', 2, NULL, NULL, NULL, 1581605553, 1581605553),
('/hopital/delete', 2, NULL, NULL, NULL, 1581605553, 1581605553),
('/hopital/index', 2, NULL, NULL, NULL, 1581605553, 1581605553),
('/hopital/update', 2, NULL, NULL, NULL, 1581605553, 1581605553),
('/hopital/view', 2, NULL, NULL, NULL, 1581605553, 1581605553),
('/personne/*', 2, NULL, NULL, NULL, 1581605553, 1581605553),
('/personne/create', 2, NULL, NULL, NULL, 1581605553, 1581605553),
('/personne/delete', 2, NULL, NULL, NULL, 1581605553, 1581605553),
('/personne/index', 2, NULL, NULL, NULL, 1581605553, 1581605553),
('/personne/update', 2, NULL, NULL, NULL, 1581605553, 1581605553),
('/personne/view', 2, NULL, NULL, NULL, 1581605553, 1581605553),
('/prescription/*', 2, NULL, NULL, NULL, 1581605554, 1581605554),
('/prescription/create', 2, NULL, NULL, NULL, 1581605553, 1581605553),
('/prescription/delete', 2, NULL, NULL, NULL, 1581605554, 1581605554),
('/prescription/index', 2, NULL, NULL, NULL, 1581605553, 1581605553),
('/prescription/update', 2, NULL, NULL, NULL, 1581605553, 1581605553),
('/prescription/view', 2, NULL, NULL, NULL, 1581605553, 1581605553),
('/prescrition/*', 2, NULL, NULL, NULL, 1581605554, 1581605554),
('/prescrition/create', 2, NULL, NULL, NULL, 1581605554, 1581605554),
('/prescrition/delete', 2, NULL, NULL, NULL, 1581605554, 1581605554),
('/prescrition/index', 2, NULL, NULL, NULL, 1581605554, 1581605554),
('/prescrition/update', 2, NULL, NULL, NULL, 1581605554, 1581605554),
('/prescrition/view', 2, NULL, NULL, NULL, 1581605554, 1581605554),
('/rdv/*', 2, NULL, NULL, NULL, 1581605554, 1581605554),
('/rdv/create', 2, NULL, NULL, NULL, 1581605554, 1581605554),
('/rdv/delete', 2, NULL, NULL, NULL, 1581605554, 1581605554),
('/rdv/index', 2, NULL, NULL, NULL, 1581605554, 1581605554),
('/rdv/update', 2, NULL, NULL, NULL, 1581605554, 1581605554),
('/rdv/view', 2, NULL, NULL, NULL, 1581605554, 1581605554),
('/service/*', 2, NULL, NULL, NULL, 1581605554, 1581605554),
('/service/create', 2, NULL, NULL, NULL, 1581605554, 1581605554),
('/service/delete', 2, NULL, NULL, NULL, 1581605554, 1581605554),
('/service/index', 2, NULL, NULL, NULL, 1581605554, 1581605554),
('/service/update', 2, NULL, NULL, NULL, 1581605554, 1581605554),
('/service/view', 2, NULL, NULL, NULL, 1581605554, 1581605554),
('/site/*', 2, NULL, NULL, NULL, 1581605555, 1581605555),
('/site/error', 2, NULL, NULL, NULL, 1581605554, 1581605554),
('/site/index', 2, NULL, NULL, NULL, 1581605554, 1581605554),
('/site/login', 2, NULL, NULL, NULL, 1581605554, 1581605554),
('/site/logout', 2, NULL, NULL, NULL, 1581605555, 1581605555),
('/statutpersonne/*', 2, NULL, NULL, NULL, 1581605555, 1581605555),
('/statutpersonne/create', 2, NULL, NULL, NULL, 1581605555, 1581605555),
('/statutpersonne/delete', 2, NULL, NULL, NULL, 1581605555, 1581605555),
('/statutpersonne/index', 2, NULL, NULL, NULL, 1581605555, 1581605555),
('/statutpersonne/update', 2, NULL, NULL, NULL, 1581605555, 1581605555),
('/statutpersonne/view', 2, NULL, NULL, NULL, 1581605555, 1581605555),
('/type-prescrition/*', 2, NULL, NULL, NULL, 1581605555, 1581605555),
('/type-prescrition/create', 2, NULL, NULL, NULL, 1581605555, 1581605555),
('/type-prescrition/delete', 2, NULL, NULL, NULL, 1581605555, 1581605555),
('/type-prescrition/index', 2, NULL, NULL, NULL, 1581605555, 1581605555),
('/type-prescrition/update', 2, NULL, NULL, NULL, 1581605555, 1581605555),
('/type-prescrition/view', 2, NULL, NULL, NULL, 1581605555, 1581605555),
('/typepersonne/*', 2, NULL, NULL, NULL, 1581605555, 1581605555),
('/typepersonne/create', 2, NULL, NULL, NULL, 1581605555, 1581605555),
('/typepersonne/delete', 2, NULL, NULL, NULL, 1581605555, 1581605555),
('/typepersonne/index', 2, NULL, NULL, NULL, 1581605555, 1581605555),
('/typepersonne/update', 2, NULL, NULL, NULL, 1581605555, 1581605555),
('/typepersonne/view', 2, NULL, NULL, NULL, 1581605555, 1581605555),
('/user/*', 2, NULL, NULL, NULL, 1581605556, 1581605556),
('/user/create', 2, NULL, NULL, NULL, 1581605556, 1581605556),
('/user/delete', 2, NULL, NULL, NULL, 1581605556, 1581605556),
('/user/index', 2, NULL, NULL, NULL, 1581605555, 1581605555),
('/user/update', 2, NULL, NULL, NULL, 1581605556, 1581605556),
('/user/view', 2, NULL, NULL, NULL, 1581605556, 1581605556),
('admin', 1, 'administrateur de la plateforme', NULL, NULL, 1581342911, 1581350902),
('sousadmin', 1, 'Administrateur des hôpitaux', NULL, NULL, 1581341920, 1581350943);

-- --------------------------------------------------------

--
-- Structure de la table `auth_item_child`
--

CREATE TABLE `auth_item_child` (
  `parent` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `child` varchar(64) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `auth_item_child`
--

INSERT INTO `auth_item_child` (`parent`, `child`) VALUES
('admin', '/*'),
('admin', '/admin/*'),
('admin', '/admin/assignment/*'),
('admin', '/admin/assignment/assign'),
('admin', '/admin/assignment/index'),
('admin', '/admin/assignment/revoke'),
('admin', '/admin/assignment/view'),
('admin', '/admin/default/*'),
('admin', '/admin/default/index'),
('admin', '/admin/menu/*'),
('admin', '/admin/menu/create'),
('admin', '/admin/menu/delete'),
('admin', '/admin/menu/index'),
('admin', '/admin/menu/update'),
('admin', '/admin/menu/view'),
('admin', '/admin/permission/*'),
('admin', '/admin/permission/assign'),
('admin', '/admin/permission/create'),
('admin', '/admin/permission/delete'),
('admin', '/admin/permission/index'),
('admin', '/admin/permission/remove'),
('admin', '/admin/permission/update'),
('admin', '/admin/permission/view'),
('admin', '/admin/role/*'),
('admin', '/admin/role/assign'),
('admin', '/admin/role/create'),
('admin', '/admin/role/delete'),
('admin', '/admin/role/index'),
('admin', '/admin/role/remove'),
('admin', '/admin/role/update'),
('admin', '/admin/role/view'),
('admin', '/admin/route/*'),
('admin', '/admin/route/assign'),
('admin', '/admin/route/create'),
('admin', '/admin/route/index'),
('admin', '/admin/route/refresh'),
('admin', '/admin/route/remove'),
('admin', '/admin/rule/*'),
('admin', '/admin/rule/create'),
('admin', '/admin/rule/delete'),
('admin', '/admin/rule/index'),
('admin', '/admin/rule/update'),
('admin', '/admin/rule/view'),
('admin', '/admin/user/*'),
('admin', '/admin/user/activate'),
('admin', '/admin/user/change-password'),
('admin', '/admin/user/delete'),
('admin', '/admin/user/index'),
('admin', '/admin/user/login'),
('admin', '/admin/user/logout'),
('admin', '/admin/user/request-password-reset'),
('admin', '/admin/user/reset-password'),
('admin', '/admin/user/signup'),
('admin', '/admin/user/view'),
('admin', '/consultation/*'),
('admin', '/consultation/create'),
('admin', '/consultation/delete'),
('admin', '/consultation/index'),
('admin', '/consultation/update'),
('admin', '/consultation/view'),
('admin', '/debug/*'),
('admin', '/debug/default/*'),
('admin', '/debug/default/db-explain'),
('admin', '/debug/default/download-mail'),
('admin', '/debug/default/index'),
('admin', '/debug/default/toolbar'),
('admin', '/debug/default/view'),
('admin', '/debug/user/*'),
('admin', '/debug/user/reset-identity'),
('admin', '/debug/user/set-identity'),
('admin', '/gii/*'),
('admin', '/gii/default/*'),
('admin', '/gii/default/action'),
('admin', '/gii/default/diff'),
('admin', '/gii/default/index'),
('admin', '/gii/default/preview'),
('admin', '/gii/default/view'),
('admin', '/hopital/*'),
('admin', '/hopital/create'),
('admin', '/hopital/delete'),
('admin', '/hopital/index'),
('admin', '/hopital/update'),
('admin', '/hopital/view'),
('admin', '/personne/*'),
('admin', '/personne/create'),
('admin', '/personne/delete'),
('admin', '/personne/index'),
('admin', '/personne/update'),
('admin', '/personne/view'),
('admin', '/prescription/*'),
('admin', '/prescription/create'),
('admin', '/prescription/delete'),
('admin', '/prescription/index'),
('admin', '/prescription/update'),
('admin', '/prescription/view'),
('admin', '/prescrition/*'),
('admin', '/prescrition/create'),
('admin', '/prescrition/delete'),
('admin', '/prescrition/index'),
('admin', '/prescrition/update'),
('admin', '/prescrition/view'),
('admin', '/rdv/*'),
('admin', '/rdv/create'),
('admin', '/rdv/delete'),
('admin', '/rdv/index'),
('admin', '/rdv/update'),
('admin', '/rdv/view'),
('admin', '/service/*'),
('admin', '/service/create'),
('admin', '/service/delete'),
('admin', '/service/index'),
('admin', '/service/update'),
('admin', '/service/view'),
('admin', '/site/*'),
('admin', '/site/error'),
('admin', '/site/index'),
('admin', '/site/login'),
('admin', '/site/logout'),
('admin', '/statutpersonne/*'),
('admin', '/statutpersonne/create'),
('admin', '/statutpersonne/delete'),
('admin', '/statutpersonne/index'),
('admin', '/statutpersonne/update'),
('admin', '/statutpersonne/view'),
('admin', '/type-prescrition/*'),
('admin', '/type-prescrition/create'),
('admin', '/type-prescrition/delete'),
('admin', '/type-prescrition/index'),
('admin', '/type-prescrition/update'),
('admin', '/type-prescrition/view'),
('admin', '/typepersonne/*'),
('admin', '/typepersonne/create'),
('admin', '/typepersonne/delete'),
('admin', '/typepersonne/index'),
('admin', '/typepersonne/update'),
('admin', '/typepersonne/view'),
('admin', '/user/*'),
('admin', '/user/create'),
('admin', '/user/delete'),
('admin', '/user/index'),
('admin', '/user/update'),
('admin', '/user/view');

-- --------------------------------------------------------

--
-- Structure de la table `auth_rule`
--

CREATE TABLE `auth_rule` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `data` blob,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `consultation`
--

CREATE TABLE `consultation` (
  `id` int(11) NOT NULL,
  `intitule` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `heure` time NOT NULL,
  `diagnostic` text NOT NULL,
  `personne` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `hopital`
--

CREATE TABLE `hopital` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `adresse` varchar(255) NOT NULL,
  `contact` varchar(255) NOT NULL,
  `mail` varchar(255) NOT NULL,
  `BoitePostal` varchar(25) NOT NULL,
  `Fax` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `statut` enum('active','inactive') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `hopital`
--

INSERT INTO `hopital` (`id`, `nom`, `adresse`, `contact`, `mail`, `BoitePostal`, `Fax`, `logo`, `statut`) VALUES
(2, 'DENTEC', 'Dakar', '338258787', 'dentec@mail.com', '360', '1', 'logo', 'active'),
(3, 'madelein hopital', 'centre ville', '22222525127410', 'madelein@gmail.com', '1235', 'g hjlkm4255520', 'jhnvn;ldk', 'active'),
(4, 'DENTEC', 'pikine', '784654637', 'dentec@gmail.fr', '985', '252', 'admin/assets/img/logo/DENTEC.png', 'active');

-- --------------------------------------------------------

--
-- Structure de la table `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `parent` int(11) DEFAULT NULL,
  `route` varchar(255) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `data` blob
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `menu`
--

INSERT INTO `menu` (`id`, `name`, `parent`, `route`, `order`, `data`) VALUES
(1, 'Accueil', NULL, '/site/index', NULL, NULL),
(3, 'Usagers', NULL, '/site/index', NULL, NULL),
(4, 'Personnels', NULL, '/site/index', NULL, NULL),
(5, 'Finances', NULL, '/site/index', NULL, NULL),
(6, 'Parametres', NULL, '/site/index', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `migration`
--

CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1567825870),
('m130524_201442_init', 1567825879),
('m140506_102106_rbac_init', 1581341769),
('m140602_111327_create_menu_table', 1581428829),
('m160312_050000_create_user', 1581428829),
('m170907_052038_rbac_add_index_on_auth_assignment_user_id', 1581341769),
('m180523_151638_rbac_updates_indexes_without_prefix', 1581341770),
('m190124_110200_add_verification_token_column_to_user_table', 1567825879);

-- --------------------------------------------------------

--
-- Structure de la table `personne`
--

CREATE TABLE `personne` (
  `id` int(11) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `prenom` varchar(255) NOT NULL,
  `sexe` enum('M','F') NOT NULL,
  `groupesanguin` enum('O+','O-','A+','A−','B+','B-','AB+','AB-') NOT NULL,
  `naissance` date NOT NULL,
  `matrimoniale` varchar(255) NOT NULL,
  `profession` varchar(255) NOT NULL,
  `specialite` varchar(255) NOT NULL,
  `telephone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `adresses` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `TypePersonne` int(11) NOT NULL,
  `service` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `prescription`
--

CREATE TABLE `prescription` (
  `id` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `description` text NOT NULL,
  `Observation` text NOT NULL,
  `typeprescription` int(11) NOT NULL,
  `consultation` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `rdv`
--

CREATE TABLE `rdv` (
  `id` int(11) NOT NULL,
  `intitule` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `heure` time NOT NULL,
  `message` text NOT NULL,
  `hopital` int(11) NOT NULL,
  `personne` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `libelle` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `service`
--

CREATE TABLE `service` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `hopital` int(11) NOT NULL,
  `statut` enum('active','inactive') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `service`
--

INSERT INTO `service` (`id`, `nom`, `hopital`, `statut`) VALUES
(2, 'Dialyse', 2, 'active'),
(3, 'P\"diatrie', 2, 'active');

-- --------------------------------------------------------

--
-- Structure de la table `typepersonne`
--

CREATE TABLE `typepersonne` (
  `id` int(11) NOT NULL,
  `libelle` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `typepersonne`
--

INSERT INTO `typepersonne` (`id`, `libelle`) VALUES
(1, 'Admin');

-- --------------------------------------------------------

--
-- Structure de la table `typeprescrition`
--

CREATE TABLE `typeprescrition` (
  `id` int(11) NOT NULL,
  `libelle` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT '10',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `verification_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `profil` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `user`
--

INSERT INTO `user` (`id`, `username`, `auth_key`, `password_hash`, `password_reset_token`, `email`, `status`, `created_at`, `updated_at`, `verification_token`, `profil`) VALUES
(1, 'rajerr', 'O1r46Ac3lhcf54Y48K2QbTJ0LJS8-BFG', '$2y$13$pjX4Y6DVrKLacOp51Zeb8uvWLJMBlL87SJeiYeccD7gKz35FRmBAy', '7O96Bes9qz54KuNtX0tItPhQb5XyC5An_1572089206', 'rajerr2013@gmail.com', 10, 1567826024, 1572089206, 'Or08vKZXarAZVrrzH_7HwHdhPtHN-deL_1567826024', 1);

--
-- Index pour les tables exportées
--

--
-- Index pour la table `auth_assignment`
--
ALTER TABLE `auth_assignment`
  ADD PRIMARY KEY (`item_name`,`user_id`),
  ADD KEY `idx-auth_assignment-user_id` (`user_id`);

--
-- Index pour la table `auth_item`
--
ALTER TABLE `auth_item`
  ADD PRIMARY KEY (`name`),
  ADD KEY `rule_name` (`rule_name`),
  ADD KEY `idx-auth_item-type` (`type`);

--
-- Index pour la table `auth_item_child`
--
ALTER TABLE `auth_item_child`
  ADD PRIMARY KEY (`parent`,`child`),
  ADD KEY `child` (`child`);

--
-- Index pour la table `auth_rule`
--
ALTER TABLE `auth_rule`
  ADD PRIMARY KEY (`name`);

--
-- Index pour la table `consultation`
--
ALTER TABLE `consultation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `personne` (`personne`);

--
-- Index pour la table `hopital`
--
ALTER TABLE `hopital`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parent` (`parent`);

--
-- Index pour la table `migration`
--
ALTER TABLE `migration`
  ADD PRIMARY KEY (`version`);

--
-- Index pour la table `personne`
--
ALTER TABLE `personne`
  ADD PRIMARY KEY (`id`),
  ADD KEY `service` (`service`),
  ADD KEY `TypePersonne` (`TypePersonne`);

--
-- Index pour la table `prescription`
--
ALTER TABLE `prescription`
  ADD PRIMARY KEY (`id`),
  ADD KEY `typeprescription` (`typeprescription`),
  ADD KEY `consultation` (`consultation`);

--
-- Index pour la table `rdv`
--
ALTER TABLE `rdv`
  ADD PRIMARY KEY (`id`),
  ADD KEY `service` (`hopital`),
  ADD KEY `personne` (`personne`);

--
-- Index pour la table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`id`),
  ADD KEY `code_hopital` (`hopital`);

--
-- Index pour la table `typepersonne`
--
ALTER TABLE `typepersonne`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `typeprescrition`
--
ALTER TABLE `typeprescrition`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `password_reset_token` (`password_reset_token`),
  ADD KEY `personne` (`profil`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `consultation`
--
ALTER TABLE `consultation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `hopital`
--
ALTER TABLE `hopital`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT pour la table `personne`
--
ALTER TABLE `personne`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `prescription`
--
ALTER TABLE `prescription`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `rdv`
--
ALTER TABLE `rdv`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `service`
--
ALTER TABLE `service`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `typepersonne`
--
ALTER TABLE `typepersonne`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `typeprescrition`
--
ALTER TABLE `typeprescrition`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `auth_assignment`
--
ALTER TABLE `auth_assignment`
  ADD CONSTRAINT `auth_assignment_ibfk_1` FOREIGN KEY (`item_name`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `auth_item`
--
ALTER TABLE `auth_item`
  ADD CONSTRAINT `auth_item_ibfk_1` FOREIGN KEY (`rule_name`) REFERENCES `auth_rule` (`name`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Contraintes pour la table `auth_item_child`
--
ALTER TABLE `auth_item_child`
  ADD CONSTRAINT `auth_item_child_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `auth_item_child_ibfk_2` FOREIGN KEY (`child`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `consultation`
--
ALTER TABLE `consultation`
  ADD CONSTRAINT `consultation_ibfk_1` FOREIGN KEY (`personne`) REFERENCES `personne` (`id`);

--
-- Contraintes pour la table `menu`
--
ALTER TABLE `menu`
  ADD CONSTRAINT `menu_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `menu` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Contraintes pour la table `personne`
--
ALTER TABLE `personne`
  ADD CONSTRAINT `personne_ibfk_1` FOREIGN KEY (`service`) REFERENCES `service` (`id`),
  ADD CONSTRAINT `personne_ibfk_2` FOREIGN KEY (`TypePersonne`) REFERENCES `typepersonne` (`id`);

--
-- Contraintes pour la table `prescription`
--
ALTER TABLE `prescription`
  ADD CONSTRAINT `prescription_ibfk_1` FOREIGN KEY (`consultation`) REFERENCES `consultation` (`id`),
  ADD CONSTRAINT `prescription_ibfk_2` FOREIGN KEY (`typeprescription`) REFERENCES `typeprescrition` (`id`);

--
-- Contraintes pour la table `rdv`
--
ALTER TABLE `rdv`
  ADD CONSTRAINT `rdv_ibfk_2` FOREIGN KEY (`personne`) REFERENCES `personne` (`id`),
  ADD CONSTRAINT `rdv_ibfk_3` FOREIGN KEY (`hopital`) REFERENCES `hopital` (`id`);

--
-- Contraintes pour la table `service`
--
ALTER TABLE `service`
  ADD CONSTRAINT `service_ibfk_1` FOREIGN KEY (`hopital`) REFERENCES `hopital` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
