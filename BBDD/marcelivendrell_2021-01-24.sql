# ************************************************************
# Sequel Pro SQL dump
# Versión 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.7.23)
# Base de datos: marcelivendrell
# Tiempo de Generación: 2021-01-24 21:48:40 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Volcado de tabla wp_commentmeta
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_commentmeta`;

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;



# Volcado de tabla wp_comments
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_comments`;

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

LOCK TABLES `wp_comments` WRITE;
/*!40000 ALTER TABLE `wp_comments` DISABLE KEYS */;

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`)
VALUES
	(1,1,'Un comentarista de WordPress','wapuu@wordpress.example','https://wordpress.org/','','2021-01-08 07:46:48','2021-01-08 07:46:48','Hola, esto es un comentario.\nPara empezar a moderar, editar y borrar comentarios, por favor, visita la pantalla de comentarios en el escritorio.\nLos avatares de los comentaristas provienen de <a href=\"https://gravatar.com\">Gravatar</a>.',0,'1','','comment',0,0);

/*!40000 ALTER TABLE `wp_comments` ENABLE KEYS */;
UNLOCK TABLES;


# Volcado de tabla wp_duplicator_packages
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_duplicator_packages`;

CREATE TABLE `wp_duplicator_packages` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `hash` varchar(50) NOT NULL,
  `status` int(11) NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `owner` varchar(60) NOT NULL,
  `package` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `hash` (`hash`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `wp_duplicator_packages` WRITE;
/*!40000 ALTER TABLE `wp_duplicator_packages` DISABLE KEYS */;

INSERT INTO `wp_duplicator_packages` (`id`, `name`, `hash`, `status`, `created`, `owner`, `package`)
VALUES
	(1,'20210113_fabretall','7a423d505421d8114720_20210113082155',100,'2021-01-13 08:22:10','unknown','O:11:\"DUP_Package\":23:{s:7:\"Created\";s:19:\"2021-01-13 08:21:55\";s:7:\"Version\";s:8:\"1.3.40.1\";s:9:\"VersionWP\";s:3:\"5.6\";s:9:\"VersionDB\";s:6:\"5.7.31\";s:10:\"VersionPHP\";s:5:\"7.4.5\";s:9:\"VersionOS\";s:6:\"Darwin\";s:2:\"ID\";i:1;s:4:\"Name\";s:18:\"20210113_fabretall\";s:4:\"Hash\";s:35:\"7a423d505421d8114720_20210113082155\";s:8:\"NameHash\";s:54:\"20210113_fabretall_7a423d505421d8114720_20210113082155\";s:4:\"Type\";i:0;s:5:\"Notes\";s:0:\"\";s:8:\"ScanFile\";s:64:\"20210113_fabretall_7a423d505421d8114720_20210113082155_scan.json\";s:10:\"TimerStart\";i:-1;s:7:\"Runtime\";s:10:\"68.97 sec.\";s:7:\"ExeSize\";s:7:\"61.29KB\";s:7:\"ZipSize\";s:7:\"61.23MB\";s:6:\"Status\";s:5:\"100.0\";s:6:\"WPUser\";s:7:\"unknown\";s:7:\"Archive\";O:11:\"DUP_Archive\":23:{s:10:\"FilterDirs\";s:0:\"\";s:11:\"FilterFiles\";s:0:\"\";s:10:\"FilterExts\";s:0:\"\";s:13:\"FilterDirsAll\";a:0:{}s:14:\"FilterFilesAll\";a:0:{}s:13:\"FilterExtsAll\";a:0:{}s:8:\"FilterOn\";i:0;s:12:\"ExportOnlyDB\";i:0;s:4:\"File\";s:66:\"20210113_fabretall_7a423d505421d8114720_20210113082155_archive.zip\";s:6:\"Format\";s:3:\"ZIP\";s:7:\"PackDir\";s:42:\"/Users/cyan/Documents/projectes/fabre-tall\";s:4:\"Size\";i:64200302;s:4:\"Dirs\";a:0:{}s:5:\"Files\";a:0:{}s:10:\"FilterInfo\";O:23:\"DUP_Archive_Filter_Info\":8:{s:4:\"Dirs\";O:34:\"DUP_Archive_Filter_Scope_Directory\":5:{s:7:\"Warning\";a:0:{}s:10:\"Unreadable\";a:0:{}s:4:\"Core\";a:0:{}s:6:\"Global\";a:0:{}s:8:\"Instance\";a:0:{}}s:5:\"Files\";O:29:\"DUP_Archive_Filter_Scope_File\":6:{s:4:\"Size\";a:0:{}s:7:\"Warning\";a:0:{}s:10:\"Unreadable\";a:0:{}s:4:\"Core\";a:0:{}s:6:\"Global\";a:0:{}s:8:\"Instance\";a:0:{}}s:4:\"Exts\";O:29:\"DUP_Archive_Filter_Scope_Base\":3:{s:4:\"Core\";a:0:{}s:6:\"Global\";a:0:{}s:8:\"Instance\";a:0:{}}s:9:\"UDirCount\";i:0;s:10:\"UFileCount\";i:0;s:9:\"UExtCount\";i:0;s:8:\"TreeSize\";a:0:{}s:11:\"TreeWarning\";a:0:{}}s:14:\"RecursiveLinks\";a:0:{}s:10:\"file_count\";i:26672;s:10:\"\0*\0Package\";r:1;s:29:\"\0DUP_Archive\0tmpFilterDirsAll\";a:0:{}s:24:\"\0DUP_Archive\0wpCorePaths\";a:5:{i:0;s:51:\"/Users/cyan/Documents/projectes/fabre-tall/wp-admin\";i:1;s:61:\"/Users/cyan/Documents/projectes/fabre-tall/wp-content/uploads\";i:2;s:63:\"/Users/cyan/Documents/projectes/fabre-tall/wp-content/languages\";i:3;s:60:\"/Users/cyan/Documents/projectes/fabre-tall/wp-content/themes\";i:4;s:54:\"/Users/cyan/Documents/projectes/fabre-tall/wp-includes\";}s:29:\"\0DUP_Archive\0wpCoreExactPaths\";a:2:{i:0;s:42:\"/Users/cyan/Documents/projectes/fabre-tall\";i:1;s:53:\"/Users/cyan/Documents/projectes/fabre-tall/wp-content\";}s:19:\"isOuterWPContentDir\";b:0;s:25:\"wpContentDirNormalizePath\";s:54:\"/Users/cyan/Documents/projectes/fabre-tall/wp-content/\";}s:9:\"Installer\";O:13:\"DUP_Installer\":13:{s:4:\"File\";s:68:\"20210113_fabretall_7a423d505421d8114720_20210113082155_installer.php\";s:4:\"Size\";i:62759;s:10:\"OptsDBHost\";s:0:\"\";s:10:\"OptsDBPort\";s:0:\"\";s:10:\"OptsDBName\";s:0:\"\";s:10:\"OptsDBUser\";s:0:\"\";s:13:\"OptsDBCharset\";s:0:\"\";s:15:\"OptsDBCollation\";s:0:\"\";s:12:\"OptsSecureOn\";i:0;s:14:\"OptsSecurePass\";s:0:\"\";s:13:\"numFilesAdded\";i:0;s:12:\"numDirsAdded\";i:0;s:10:\"\0*\0Package\";r:1;}s:8:\"Database\";O:12:\"DUP_Database\":15:{s:4:\"Type\";s:5:\"MySQL\";s:4:\"Size\";i:662862;s:4:\"File\";s:67:\"20210113_fabretall_7a423d505421d8114720_20210113082155_database.sql\";s:4:\"Path\";N;s:12:\"FilterTables\";s:0:\"\";s:8:\"FilterOn\";i:0;s:4:\"Name\";N;s:10:\"Compatible\";s:0:\"\";s:8:\"Comments\";s:8:\"Homebrew\";s:4:\"info\";O:16:\"DUP_DatabaseInfo\":15:{s:9:\"buildMode\";s:3:\"PHP\";s:13:\"collationList\";a:2:{i:0;s:22:\"utf8mb4_unicode_520_ci\";i:1;s:15:\"utf8_general_ci\";}s:17:\"isTablesUpperCase\";i:0;s:15:\"isNameUpperCase\";i:0;s:4:\"name\";s:10:\"fabre-tall\";s:15:\"tablesBaseCount\";i:13;s:16:\"tablesFinalCount\";i:13;s:14:\"tablesRowCount\";s:3:\"247\";s:16:\"tablesSizeOnDisk\";s:6:\"1.72MB\";s:18:\"varLowerCaseTables\";s:1:\"2\";s:7:\"version\";s:6:\"5.7.31\";s:14:\"versionComment\";s:8:\"Homebrew\";s:18:\"tableWiseRowCounts\";a:13:{s:14:\"wp_commentmeta\";s:1:\"0\";s:11:\"wp_comments\";s:1:\"1\";s:22:\"wp_duplicator_packages\";s:1:\"1\";s:8:\"wp_links\";s:1:\"0\";s:10:\"wp_options\";s:3:\"164\";s:11:\"wp_postmeta\";s:2:\"44\";s:8:\"wp_posts\";s:2:\"23\";s:21:\"wp_term_relationships\";s:1:\"1\";s:16:\"wp_term_taxonomy\";s:1:\"1\";s:11:\"wp_termmeta\";s:1:\"0\";s:8:\"wp_terms\";s:1:\"1\";s:11:\"wp_usermeta\";s:2:\"20\";s:8:\"wp_users\";s:1:\"1\";}s:33:\"\0DUP_DatabaseInfo\0intFieldsStruct\";a:0:{}s:42:\"\0DUP_DatabaseInfo\0indexProcessedSchemaSize\";a:0:{}}s:10:\"\0*\0Package\";r:1;s:24:\"\0DUP_Database\0tempDbPath\";s:142:\"/Users/cyan/Documents/projectes/fabre-tall/wp-content/backups-dup-lite/tmp/20210113_fabretall_7a423d505421d8114720_20210113082155_database.sql\";s:23:\"\0DUP_Database\0EOFMarker\";s:0:\"\";s:26:\"\0DUP_Database\0networkFlush\";b:0;s:19:\"sameNameTableExists\";b:0;}s:13:\"BuildProgress\";O:18:\"DUP_Build_Progress\":12:{s:17:\"thread_start_time\";N;s:11:\"initialized\";b:0;s:15:\"installer_built\";b:1;s:15:\"archive_started\";b:0;s:20:\"archive_has_database\";b:0;s:13:\"archive_built\";b:0;s:21:\"database_script_built\";b:0;s:6:\"failed\";b:0;s:7:\"retries\";i:0;s:14:\"build_failures\";a:0:{}s:19:\"validation_failures\";a:0:{}s:27:\"\0DUP_Build_Progress\0package\";O:11:\"DUP_Package\":23:{s:7:\"Created\";s:19:\"2021-01-13 08:21:55\";s:7:\"Version\";s:8:\"1.3.40.1\";s:9:\"VersionWP\";s:3:\"5.6\";s:9:\"VersionDB\";s:6:\"5.7.31\";s:10:\"VersionPHP\";s:5:\"7.4.5\";s:9:\"VersionOS\";s:6:\"Darwin\";s:2:\"ID\";N;s:4:\"Name\";s:18:\"20210113_fabretall\";s:4:\"Hash\";s:35:\"7a423d505421d8114720_20210113082155\";s:8:\"NameHash\";s:54:\"20210113_fabretall_7a423d505421d8114720_20210113082155\";s:4:\"Type\";i:0;s:5:\"Notes\";s:0:\"\";s:8:\"ScanFile\";N;s:10:\"TimerStart\";i:-1;s:7:\"Runtime\";N;s:7:\"ExeSize\";N;s:7:\"ZipSize\";N;s:6:\"Status\";i:0;s:6:\"WPUser\";N;s:7:\"Archive\";r:21;s:9:\"Installer\";r:74;s:8:\"Database\";r:88;s:13:\"BuildProgress\";r:134;}}}'),
	(2,'20210113_fabretall','24bc0042ab35c5679609_20210113082416',100,'2021-01-13 08:25:26','unknown','O:11:\"DUP_Package\":23:{s:7:\"Created\";s:19:\"2021-01-13 08:24:16\";s:7:\"Version\";s:8:\"1.3.40.1\";s:9:\"VersionWP\";s:3:\"5.6\";s:9:\"VersionDB\";s:6:\"5.7.31\";s:10:\"VersionPHP\";s:5:\"7.4.5\";s:9:\"VersionOS\";s:6:\"Darwin\";s:2:\"ID\";i:2;s:4:\"Name\";s:18:\"20210113_fabretall\";s:4:\"Hash\";s:35:\"24bc0042ab35c5679609_20210113082416\";s:8:\"NameHash\";s:54:\"20210113_fabretall_24bc0042ab35c5679609_20210113082416\";s:4:\"Type\";i:0;s:5:\"Notes\";s:0:\"\";s:8:\"ScanFile\";s:64:\"20210113_fabretall_24bc0042ab35c5679609_20210113082416_scan.json\";s:10:\"TimerStart\";i:-1;s:7:\"Runtime\";s:10:\"68.88 sec.\";s:7:\"ExeSize\";s:7:\"61.29KB\";s:7:\"ZipSize\";s:7:\"56.68MB\";s:6:\"Status\";s:5:\"100.0\";s:6:\"WPUser\";s:7:\"unknown\";s:7:\"Archive\";O:11:\"DUP_Archive\":23:{s:10:\"FilterDirs\";s:67:\"/Users/cyan/Documents/projectes/fabre-tall/disseny/disseny-landing;\";s:11:\"FilterFiles\";s:253:\"/Users/cyan/Documents/projectes/fabre-tall/wp-content/themes/_fabre_tall/node_modules/browser-sync-ui/public/js/app.js.map;/Users/cyan/Documents/projectes/fabre-tall/wp-content/themes/_fabre_tall/node_modules/node-sass/vendor/darwin-x64-83/binding.node;\";s:10:\"FilterExts\";s:0:\"\";s:13:\"FilterDirsAll\";a:0:{}s:14:\"FilterFilesAll\";a:0:{}s:13:\"FilterExtsAll\";a:0:{}s:8:\"FilterOn\";i:1;s:12:\"ExportOnlyDB\";i:0;s:4:\"File\";s:66:\"20210113_fabretall_24bc0042ab35c5679609_20210113082416_archive.zip\";s:6:\"Format\";s:3:\"ZIP\";s:7:\"PackDir\";s:42:\"/Users/cyan/Documents/projectes/fabre-tall\";s:4:\"Size\";i:59432228;s:4:\"Dirs\";a:0:{}s:5:\"Files\";a:0:{}s:10:\"FilterInfo\";O:23:\"DUP_Archive_Filter_Info\":8:{s:4:\"Dirs\";O:34:\"DUP_Archive_Filter_Scope_Directory\":5:{s:7:\"Warning\";a:0:{}s:10:\"Unreadable\";a:0:{}s:4:\"Core\";a:0:{}s:6:\"Global\";a:0:{}s:8:\"Instance\";a:0:{}}s:5:\"Files\";O:29:\"DUP_Archive_Filter_Scope_File\":6:{s:4:\"Size\";a:0:{}s:7:\"Warning\";a:0:{}s:10:\"Unreadable\";a:0:{}s:4:\"Core\";a:0:{}s:6:\"Global\";a:0:{}s:8:\"Instance\";a:0:{}}s:4:\"Exts\";O:29:\"DUP_Archive_Filter_Scope_Base\":3:{s:4:\"Core\";a:0:{}s:6:\"Global\";a:0:{}s:8:\"Instance\";a:0:{}}s:9:\"UDirCount\";i:0;s:10:\"UFileCount\";i:0;s:9:\"UExtCount\";i:0;s:8:\"TreeSize\";a:0:{}s:11:\"TreeWarning\";a:0:{}}s:14:\"RecursiveLinks\";a:0:{}s:10:\"file_count\";i:26652;s:10:\"\0*\0Package\";r:1;s:29:\"\0DUP_Archive\0tmpFilterDirsAll\";a:0:{}s:24:\"\0DUP_Archive\0wpCorePaths\";a:5:{i:0;s:51:\"/Users/cyan/Documents/projectes/fabre-tall/wp-admin\";i:1;s:61:\"/Users/cyan/Documents/projectes/fabre-tall/wp-content/uploads\";i:2;s:63:\"/Users/cyan/Documents/projectes/fabre-tall/wp-content/languages\";i:3;s:60:\"/Users/cyan/Documents/projectes/fabre-tall/wp-content/themes\";i:4;s:54:\"/Users/cyan/Documents/projectes/fabre-tall/wp-includes\";}s:29:\"\0DUP_Archive\0wpCoreExactPaths\";a:2:{i:0;s:42:\"/Users/cyan/Documents/projectes/fabre-tall\";i:1;s:53:\"/Users/cyan/Documents/projectes/fabre-tall/wp-content\";}s:19:\"isOuterWPContentDir\";b:0;s:25:\"wpContentDirNormalizePath\";s:54:\"/Users/cyan/Documents/projectes/fabre-tall/wp-content/\";}s:9:\"Installer\";O:13:\"DUP_Installer\":13:{s:4:\"File\";s:68:\"20210113_fabretall_24bc0042ab35c5679609_20210113082416_installer.php\";s:4:\"Size\";i:62759;s:10:\"OptsDBHost\";s:0:\"\";s:10:\"OptsDBPort\";s:0:\"\";s:10:\"OptsDBName\";s:0:\"\";s:10:\"OptsDBUser\";s:0:\"\";s:13:\"OptsDBCharset\";s:0:\"\";s:15:\"OptsDBCollation\";s:0:\"\";s:12:\"OptsSecureOn\";i:0;s:14:\"OptsSecurePass\";s:0:\"\";s:13:\"numFilesAdded\";i:0;s:12:\"numDirsAdded\";i:0;s:10:\"\0*\0Package\";r:1;}s:8:\"Database\";O:12:\"DUP_Database\":15:{s:4:\"Type\";s:5:\"MySQL\";s:4:\"Size\";i:670017;s:4:\"File\";s:67:\"20210113_fabretall_24bc0042ab35c5679609_20210113082416_database.sql\";s:4:\"Path\";N;s:12:\"FilterTables\";s:0:\"\";s:8:\"FilterOn\";i:0;s:4:\"Name\";N;s:10:\"Compatible\";s:0:\"\";s:8:\"Comments\";s:8:\"Homebrew\";s:4:\"info\";O:16:\"DUP_DatabaseInfo\":15:{s:9:\"buildMode\";s:3:\"PHP\";s:13:\"collationList\";a:2:{i:0;s:22:\"utf8mb4_unicode_520_ci\";i:1;s:15:\"utf8_general_ci\";}s:17:\"isTablesUpperCase\";i:0;s:15:\"isNameUpperCase\";i:0;s:4:\"name\";s:10:\"fabre-tall\";s:15:\"tablesBaseCount\";i:13;s:16:\"tablesFinalCount\";i:13;s:14:\"tablesRowCount\";s:3:\"249\";s:16:\"tablesSizeOnDisk\";s:6:\"1.72MB\";s:18:\"varLowerCaseTables\";s:1:\"2\";s:7:\"version\";s:6:\"5.7.31\";s:14:\"versionComment\";s:8:\"Homebrew\";s:18:\"tableWiseRowCounts\";a:13:{s:14:\"wp_commentmeta\";s:1:\"0\";s:11:\"wp_comments\";s:1:\"1\";s:22:\"wp_duplicator_packages\";s:1:\"2\";s:8:\"wp_links\";s:1:\"0\";s:10:\"wp_options\";s:3:\"165\";s:11:\"wp_postmeta\";s:2:\"44\";s:8:\"wp_posts\";s:2:\"23\";s:21:\"wp_term_relationships\";s:1:\"1\";s:16:\"wp_term_taxonomy\";s:1:\"1\";s:11:\"wp_termmeta\";s:1:\"0\";s:8:\"wp_terms\";s:1:\"1\";s:11:\"wp_usermeta\";s:2:\"20\";s:8:\"wp_users\";s:1:\"1\";}s:33:\"\0DUP_DatabaseInfo\0intFieldsStruct\";a:0:{}s:42:\"\0DUP_DatabaseInfo\0indexProcessedSchemaSize\";a:0:{}}s:10:\"\0*\0Package\";r:1;s:24:\"\0DUP_Database\0tempDbPath\";s:142:\"/Users/cyan/Documents/projectes/fabre-tall/wp-content/backups-dup-lite/tmp/20210113_fabretall_24bc0042ab35c5679609_20210113082416_database.sql\";s:23:\"\0DUP_Database\0EOFMarker\";s:0:\"\";s:26:\"\0DUP_Database\0networkFlush\";b:0;s:19:\"sameNameTableExists\";b:0;}s:13:\"BuildProgress\";O:18:\"DUP_Build_Progress\":12:{s:17:\"thread_start_time\";N;s:11:\"initialized\";b:0;s:15:\"installer_built\";b:1;s:15:\"archive_started\";b:0;s:20:\"archive_has_database\";b:0;s:13:\"archive_built\";b:0;s:21:\"database_script_built\";b:0;s:6:\"failed\";b:0;s:7:\"retries\";i:0;s:14:\"build_failures\";a:0:{}s:19:\"validation_failures\";a:0:{}s:27:\"\0DUP_Build_Progress\0package\";O:11:\"DUP_Package\":23:{s:7:\"Created\";s:19:\"2021-01-13 08:24:16\";s:7:\"Version\";s:8:\"1.3.40.1\";s:9:\"VersionWP\";s:3:\"5.6\";s:9:\"VersionDB\";s:6:\"5.7.31\";s:10:\"VersionPHP\";s:5:\"7.4.5\";s:9:\"VersionOS\";s:6:\"Darwin\";s:2:\"ID\";N;s:4:\"Name\";s:18:\"20210113_fabretall\";s:4:\"Hash\";s:35:\"24bc0042ab35c5679609_20210113082416\";s:8:\"NameHash\";s:54:\"20210113_fabretall_24bc0042ab35c5679609_20210113082416\";s:4:\"Type\";i:0;s:5:\"Notes\";s:0:\"\";s:8:\"ScanFile\";N;s:10:\"TimerStart\";i:-1;s:7:\"Runtime\";N;s:7:\"ExeSize\";N;s:7:\"ZipSize\";N;s:6:\"Status\";i:0;s:6:\"WPUser\";N;s:7:\"Archive\";r:21;s:9:\"Installer\";r:74;s:8:\"Database\";r:88;s:13:\"BuildProgress\";r:134;}}}');

/*!40000 ALTER TABLE `wp_duplicator_packages` ENABLE KEYS */;
UNLOCK TABLES;


# Volcado de tabla wp_links
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_links`;

CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;



# Volcado de tabla wp_options
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_options`;

CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

LOCK TABLES `wp_options` WRITE;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`)
VALUES
	(1,'siteurl','http://marcelivendrell.test','yes'),
	(2,'home','http://marcelivendrell.test','yes'),
	(3,'blogname','Marceli Vendrell','yes'),
	(4,'blogdescription','','yes'),
	(5,'users_can_register','0','yes'),
	(6,'admin_email','marcprograma@gmail.com','yes'),
	(7,'start_of_week','1','yes'),
	(8,'use_balanceTags','0','yes'),
	(9,'use_smilies','1','yes'),
	(10,'require_name_email','1','yes'),
	(11,'comments_notify','1','yes'),
	(12,'posts_per_rss','10','yes'),
	(13,'rss_use_excerpt','0','yes'),
	(14,'mailserver_url','mail.example.com','yes'),
	(15,'mailserver_login','login@example.com','yes'),
	(16,'mailserver_pass','password','yes'),
	(17,'mailserver_port','110','yes'),
	(18,'default_category','1','yes'),
	(19,'default_comment_status','open','yes'),
	(20,'default_ping_status','open','yes'),
	(21,'default_pingback_flag','0','yes'),
	(22,'posts_per_page','10','yes'),
	(23,'date_format','j \\d\\e F \\d\\e Y','yes'),
	(24,'time_format','H:i','yes'),
	(25,'links_updated_date_format','j \\d\\e F \\d\\e Y H:i','yes'),
	(26,'comment_moderation','0','yes'),
	(27,'moderation_notify','1','yes'),
	(28,'permalink_structure','/%postname%/','yes'),
	(29,'rewrite_rules','a:94:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=2&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}','yes'),
	(30,'hack_file','0','yes'),
	(31,'blog_charset','UTF-8','yes'),
	(32,'moderation_keys','','no'),
	(33,'active_plugins','a:4:{i:0;s:34:\"advanced-custom-fields-pro/acf.php\";i:1;s:36:\"contact-form-7/wp-contact-form-7.php\";i:2;s:43:\"custom-post-type-ui/custom-post-type-ui.php\";i:3;s:25:\"duplicator/duplicator.php\";}','yes'),
	(34,'category_base','','yes'),
	(35,'ping_sites','http://rpc.pingomatic.com/','yes'),
	(36,'comment_max_links','2','yes'),
	(37,'gmt_offset','0','yes'),
	(38,'default_email_category','1','yes'),
	(39,'recently_edited','','no'),
	(40,'template','marcelivendrell','yes'),
	(41,'stylesheet','marcelivendrell','yes'),
	(42,'comment_registration','0','yes'),
	(43,'html_type','text/html','yes'),
	(44,'use_trackback','0','yes'),
	(45,'default_role','subscriber','yes'),
	(46,'db_version','49752','yes'),
	(47,'uploads_use_yearmonth_folders','1','yes'),
	(48,'upload_path','','yes'),
	(49,'blog_public','0','yes'),
	(50,'default_link_category','2','yes'),
	(51,'show_on_front','page','yes'),
	(52,'tag_base','','yes'),
	(53,'show_avatars','1','yes'),
	(54,'avatar_rating','G','yes'),
	(55,'upload_url_path','','yes'),
	(56,'thumbnail_size_w','150','yes'),
	(57,'thumbnail_size_h','150','yes'),
	(58,'thumbnail_crop','1','yes'),
	(59,'medium_size_w','300','yes'),
	(60,'medium_size_h','300','yes'),
	(61,'avatar_default','mystery','yes'),
	(62,'large_size_w','1024','yes'),
	(63,'large_size_h','1024','yes'),
	(64,'image_default_link_type','none','yes'),
	(65,'image_default_size','','yes'),
	(66,'image_default_align','','yes'),
	(67,'close_comments_for_old_posts','0','yes'),
	(68,'close_comments_days_old','14','yes'),
	(69,'thread_comments','1','yes'),
	(70,'thread_comments_depth','5','yes'),
	(71,'page_comments','0','yes'),
	(72,'comments_per_page','50','yes'),
	(73,'default_comments_page','newest','yes'),
	(74,'comment_order','asc','yes'),
	(75,'sticky_posts','a:0:{}','yes'),
	(76,'widget_categories','a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes'),
	(77,'widget_text','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes'),
	(78,'widget_rss','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes'),
	(79,'uninstall_plugins','a:0:{}','no'),
	(80,'timezone_string','','yes'),
	(81,'page_for_posts','25','yes'),
	(82,'page_on_front','2','yes'),
	(83,'default_post_format','0','yes'),
	(84,'link_manager_enabled','0','yes'),
	(85,'finished_splitting_shared_terms','1','yes'),
	(86,'site_icon','0','yes'),
	(87,'medium_large_size_w','768','yes'),
	(88,'medium_large_size_h','0','yes'),
	(89,'wp_page_for_privacy_policy','3','yes'),
	(90,'show_comments_cookies_opt_in','1','yes'),
	(91,'admin_email_lifespan','1625644008','yes'),
	(92,'disallowed_keys','','no'),
	(93,'comment_previously_approved','1','yes'),
	(94,'auto_plugin_theme_update_emails','a:0:{}','no'),
	(95,'auto_update_core_dev','enabled','yes'),
	(96,'auto_update_core_minor','enabled','yes'),
	(97,'auto_update_core_major','enabled','yes'),
	(98,'initial_db_version','49752','yes'),
	(99,'wp_user_roles','a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}','yes'),
	(100,'fresh_site','0','yes'),
	(101,'WPLANG','es_ES','yes'),
	(102,'widget_search','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes'),
	(103,'widget_recent-posts','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes'),
	(104,'widget_recent-comments','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes'),
	(105,'widget_archives','a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes'),
	(106,'widget_meta','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes'),
	(107,'sidebars_widgets','a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}','yes'),
	(108,'cron','a:6:{i:1611517613;a:4:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1611560813;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1611560821;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1611560824;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1611992813;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}','yes'),
	(109,'widget_pages','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
	(110,'widget_calendar','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
	(111,'widget_media_audio','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
	(112,'widget_media_image','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
	(113,'widget_media_gallery','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
	(114,'widget_media_video','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
	(115,'widget_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
	(116,'widget_nav_menu','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
	(117,'widget_custom_html','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
	(128,'can_compress_scripts','0','no'),
	(141,'theme_mods_twentynineteen','a:2:{s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1611419203;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}s:18:\"nav_menu_locations\";a:0:{}}','yes'),
	(142,'current_theme','Fabre Tall Theme','yes'),
	(143,'theme_mods_fabre-tall','a:5:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:11:\"custom_logo\";i:20;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1611053168;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}','yes'),
	(144,'theme_switched','','yes'),
	(148,'recently_activated','a:0:{}','yes'),
	(151,'cptui_new_install','false','yes'),
	(152,'acf_version','5.9.1','yes'),
	(153,'cptui_post_types','a:1:{s:8:\"landings\";a:30:{s:4:\"name\";s:8:\"landings\";s:5:\"label\";s:8:\"Landings\";s:14:\"singular_label\";s:7:\"Landing\";s:11:\"description\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:4:\"true\";s:7:\"show_ui\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:16:\"delete_with_user\";s:5:\"false\";s:12:\"show_in_rest\";s:4:\"true\";s:9:\"rest_base\";s:0:\"\";s:21:\"rest_controller_class\";s:0:\"\";s:11:\"has_archive\";s:5:\"false\";s:18:\"has_archive_string\";s:0:\"\";s:19:\"exclude_from_search\";s:5:\"false\";s:15:\"capability_type\";s:4:\"post\";s:12:\"hierarchical\";s:5:\"false\";s:7:\"rewrite\";s:5:\"false\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:5:\"false\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:13:\"menu_position\";s:0:\"\";s:12:\"show_in_menu\";s:4:\"true\";s:19:\"show_in_menu_string\";s:0:\"\";s:9:\"menu_icon\";s:0:\"\";s:8:\"supports\";a:3:{i:0;s:5:\"title\";i:1;s:6:\"editor\";i:2;s:9:\"thumbnail\";}s:10:\"taxonomies\";a:0:{}s:6:\"labels\";a:29:{s:9:\"menu_name\";s:0:\"\";s:9:\"all_items\";s:0:\"\";s:7:\"add_new\";s:0:\"\";s:12:\"add_new_item\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:8:\"new_item\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:10:\"view_items\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:9:\"not_found\";s:0:\"\";s:18:\"not_found_in_trash\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:14:\"featured_image\";s:0:\"\";s:18:\"set_featured_image\";s:0:\"\";s:21:\"remove_featured_image\";s:0:\"\";s:18:\"use_featured_image\";s:0:\"\";s:8:\"archives\";s:0:\"\";s:16:\"insert_into_item\";s:0:\"\";s:21:\"uploaded_to_this_item\";s:0:\"\";s:17:\"filter_items_list\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";s:10:\"attributes\";s:0:\"\";s:14:\"name_admin_bar\";s:0:\"\";s:14:\"item_published\";s:0:\"\";s:24:\"item_published_privately\";s:0:\"\";s:22:\"item_reverted_to_draft\";s:0:\"\";s:14:\"item_scheduled\";s:0:\"\";s:12:\"item_updated\";s:0:\"\";}s:15:\"custom_supports\";s:0:\"\";}}','yes'),
	(188,'wpcf7','a:2:{s:7:\"version\";s:5:\"5.3.2\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1610110837;s:7:\"version\";s:5:\"5.3.2\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}','yes'),
	(209,'secret_key','3^rNH}=~v0y{oIjT5I xo-.Nfte1b87cgu=G:MxmxNDW-<T{yM*Oe}p]A?qKWZ$@','no'),
	(214,'recovery_mode_email_last_sent','1610446870','yes'),
	(215,'recovery_keys','a:0:{}','yes'),
	(238,'duplicator_settings','a:17:{s:7:\"version\";s:8:\"1.3.40.1\";s:18:\"uninstall_settings\";b:1;s:15:\"uninstall_files\";b:1;s:16:\"uninstall_tables\";b:1;s:13:\"package_debug\";b:0;s:17:\"package_mysqldump\";b:1;s:22:\"package_mysqldump_path\";s:0:\"\";s:24:\"package_phpdump_qrylimit\";s:3:\"100\";s:17:\"package_zip_flush\";b:0;s:19:\"installer_name_mode\";s:6:\"simple\";s:16:\"storage_position\";s:6:\"wpcont\";s:20:\"storage_htaccess_off\";b:0;s:18:\"archive_build_mode\";i:2;s:17:\"skip_archive_scan\";b:0;s:21:\"unhook_third_party_js\";b:0;s:22:\"unhook_third_party_css\";b:0;s:17:\"active_package_id\";i:2;}','yes'),
	(239,'duplicator_lite_inst_hash_notice','1','yes'),
	(240,'duplicator_version_plugin','1.3.40.1','yes'),
	(241,'duplicator_package_active','O:11:\"DUP_Package\":23:{s:7:\"Created\";s:19:\"2021-01-13 08:24:16\";s:7:\"Version\";s:8:\"1.3.40.1\";s:9:\"VersionWP\";s:3:\"5.6\";s:9:\"VersionDB\";s:6:\"5.7.31\";s:10:\"VersionPHP\";s:5:\"7.4.5\";s:9:\"VersionOS\";s:6:\"Darwin\";s:2:\"ID\";N;s:4:\"Name\";s:18:\"20210113_fabretall\";s:4:\"Hash\";s:35:\"24bc0042ab35c5679609_20210113082416\";s:8:\"NameHash\";s:54:\"20210113_fabretall_24bc0042ab35c5679609_20210113082416\";s:4:\"Type\";i:0;s:5:\"Notes\";s:0:\"\";s:8:\"ScanFile\";s:64:\"20210113_fabretall_24bc0042ab35c5679609_20210113082416_scan.json\";s:10:\"TimerStart\";i:-1;s:7:\"Runtime\";N;s:7:\"ExeSize\";N;s:7:\"ZipSize\";N;s:6:\"Status\";i:0;s:6:\"WPUser\";N;s:7:\"Archive\";O:11:\"DUP_Archive\":21:{s:10:\"FilterDirs\";s:67:\"/Users/cyan/Documents/projectes/fabre-tall/disseny/disseny-landing;\";s:11:\"FilterFiles\";s:253:\"/Users/cyan/Documents/projectes/fabre-tall/wp-content/themes/_fabre_tall/node_modules/browser-sync-ui/public/js/app.js.map;/Users/cyan/Documents/projectes/fabre-tall/wp-content/themes/_fabre_tall/node_modules/node-sass/vendor/darwin-x64-83/binding.node;\";s:10:\"FilterExts\";s:0:\"\";s:13:\"FilterDirsAll\";a:0:{}s:14:\"FilterFilesAll\";a:0:{}s:13:\"FilterExtsAll\";a:0:{}s:8:\"FilterOn\";i:1;s:12:\"ExportOnlyDB\";i:0;s:4:\"File\";N;s:6:\"Format\";s:3:\"ZIP\";s:7:\"PackDir\";s:42:\"/Users/cyan/Documents/projectes/fabre-tall\";s:4:\"Size\";i:0;s:4:\"Dirs\";a:0:{}s:5:\"Files\";a:0:{}s:10:\"FilterInfo\";O:23:\"DUP_Archive_Filter_Info\":8:{s:4:\"Dirs\";O:34:\"DUP_Archive_Filter_Scope_Directory\":5:{s:7:\"Warning\";a:0:{}s:10:\"Unreadable\";a:0:{}s:4:\"Core\";a:0:{}s:6:\"Global\";a:0:{}s:8:\"Instance\";a:0:{}}s:5:\"Files\";O:29:\"DUP_Archive_Filter_Scope_File\":6:{s:4:\"Size\";a:0:{}s:7:\"Warning\";a:0:{}s:10:\"Unreadable\";a:0:{}s:4:\"Core\";a:0:{}s:6:\"Global\";a:0:{}s:8:\"Instance\";a:0:{}}s:4:\"Exts\";O:29:\"DUP_Archive_Filter_Scope_Base\":3:{s:4:\"Core\";a:0:{}s:6:\"Global\";a:0:{}s:8:\"Instance\";a:0:{}}s:9:\"UDirCount\";i:0;s:10:\"UFileCount\";i:0;s:9:\"UExtCount\";i:0;s:8:\"TreeSize\";a:0:{}s:11:\"TreeWarning\";a:0:{}}s:14:\"RecursiveLinks\";a:0:{}s:10:\"file_count\";i:-1;s:10:\"\0*\0Package\";O:11:\"DUP_Package\":23:{s:7:\"Created\";s:19:\"2021-01-13 08:24:16\";s:7:\"Version\";s:8:\"1.3.40.1\";s:9:\"VersionWP\";s:3:\"5.6\";s:9:\"VersionDB\";s:6:\"5.7.31\";s:10:\"VersionPHP\";s:5:\"7.4.5\";s:9:\"VersionOS\";s:6:\"Darwin\";s:2:\"ID\";N;s:4:\"Name\";s:18:\"20210113_fabretall\";s:4:\"Hash\";s:35:\"24bc0042ab35c5679609_20210113082416\";s:8:\"NameHash\";s:54:\"20210113_fabretall_24bc0042ab35c5679609_20210113082416\";s:4:\"Type\";i:0;s:5:\"Notes\";s:0:\"\";s:8:\"ScanFile\";N;s:10:\"TimerStart\";i:-1;s:7:\"Runtime\";N;s:7:\"ExeSize\";N;s:7:\"ZipSize\";N;s:6:\"Status\";i:0;s:6:\"WPUser\";N;s:7:\"Archive\";r:21;s:9:\"Installer\";O:13:\"DUP_Installer\":13:{s:4:\"File\";N;s:4:\"Size\";i:0;s:10:\"OptsDBHost\";s:0:\"\";s:10:\"OptsDBPort\";s:0:\"\";s:10:\"OptsDBName\";s:0:\"\";s:10:\"OptsDBUser\";s:0:\"\";s:13:\"OptsDBCharset\";s:0:\"\";s:15:\"OptsDBCollation\";s:0:\"\";s:12:\"OptsSecureOn\";i:0;s:14:\"OptsSecurePass\";s:0:\"\";s:13:\"numFilesAdded\";i:0;s:12:\"numDirsAdded\";i:0;s:10:\"\0*\0Package\";r:61;}s:8:\"Database\";O:12:\"DUP_Database\":14:{s:4:\"Type\";s:5:\"MySQL\";s:4:\"Size\";N;s:4:\"File\";N;s:4:\"Path\";N;s:12:\"FilterTables\";s:0:\"\";s:8:\"FilterOn\";i:0;s:4:\"Name\";N;s:10:\"Compatible\";s:0:\"\";s:8:\"Comments\";s:8:\"Homebrew\";s:4:\"info\";O:16:\"DUP_DatabaseInfo\":15:{s:9:\"buildMode\";N;s:13:\"collationList\";a:0:{}s:17:\"isTablesUpperCase\";N;s:15:\"isNameUpperCase\";N;s:4:\"name\";N;s:15:\"tablesBaseCount\";N;s:16:\"tablesFinalCount\";N;s:14:\"tablesRowCount\";N;s:16:\"tablesSizeOnDisk\";N;s:18:\"varLowerCaseTables\";i:0;s:7:\"version\";N;s:14:\"versionComment\";N;s:18:\"tableWiseRowCounts\";a:0:{}s:33:\"\0DUP_DatabaseInfo\0intFieldsStruct\";a:0:{}s:42:\"\0DUP_DatabaseInfo\0indexProcessedSchemaSize\";a:0:{}}s:10:\"\0*\0Package\";r:61;s:24:\"\0DUP_Database\0tempDbPath\";N;s:23:\"\0DUP_Database\0EOFMarker\";s:0:\"\";s:26:\"\0DUP_Database\0networkFlush\";b:0;}s:13:\"BuildProgress\";O:18:\"DUP_Build_Progress\":12:{s:17:\"thread_start_time\";N;s:11:\"initialized\";b:0;s:15:\"installer_built\";b:0;s:15:\"archive_started\";b:0;s:20:\"archive_has_database\";b:0;s:13:\"archive_built\";b:0;s:21:\"database_script_built\";b:0;s:6:\"failed\";b:0;s:7:\"retries\";i:0;s:14:\"build_failures\";a:0:{}s:19:\"validation_failures\";a:0:{}s:27:\"\0DUP_Build_Progress\0package\";r:61;}}s:29:\"\0DUP_Archive\0tmpFilterDirsAll\";a:0:{}s:24:\"\0DUP_Archive\0wpCorePaths\";a:5:{i:0;s:51:\"/Users/cyan/Documents/projectes/fabre-tall/wp-admin\";i:1;s:61:\"/Users/cyan/Documents/projectes/fabre-tall/wp-content/uploads\";i:2;s:63:\"/Users/cyan/Documents/projectes/fabre-tall/wp-content/languages\";i:3;s:60:\"/Users/cyan/Documents/projectes/fabre-tall/wp-content/themes\";i:4;s:54:\"/Users/cyan/Documents/projectes/fabre-tall/wp-includes\";}s:29:\"\0DUP_Archive\0wpCoreExactPaths\";a:2:{i:0;s:42:\"/Users/cyan/Documents/projectes/fabre-tall\";i:1;s:53:\"/Users/cyan/Documents/projectes/fabre-tall/wp-content\";}}s:9:\"Installer\";r:82;s:8:\"Database\";r:96;s:13:\"BuildProgress\";r:126;}','yes'),
	(242,'duplicator_ui_view_state','a:5:{s:19:\"dup-pack-build-try1\";s:1:\"1\";s:19:\"dup-pack-build-try2\";s:1:\"1\";s:22:\"dup-pack-storage-panel\";s:1:\"1\";s:22:\"dup-pack-archive-panel\";s:1:\"1\";s:24:\"dup-pack-installer-panel\";s:1:\"1\";}','yes'),
	(247,'_site_transient_timeout_php_check_f9714bbe413cc376a70847d9c1f86fcc','1611650255','no'),
	(248,'_site_transient_php_check_f9714bbe413cc376a70847d9c1f86fcc','a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}','no'),
	(261,'_site_transient_timeout_browser_1e1f07612eaced2755811446fcb552b2','1611656353','no'),
	(262,'_site_transient_browser_1e1f07612eaced2755811446fcb552b2','a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"87.0.4280.141\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}','no'),
	(267,'theme_mods_fabretall','a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1611419198;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}','yes'),
	(269,'_transient_timeout_acf_plugin_updates','1611591838','no'),
	(270,'_transient_acf_plugin_updates','a:4:{s:7:\"plugins\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";a:8:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:5:\"5.9.4\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:3:\"5.6\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}}}s:10:\"expiration\";i:172800;s:6:\"status\";i:1;s:7:\"checked\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";s:5:\"5.9.1\";}}','no'),
	(275,'_site_transient_update_core','O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:63:\"https://downloads.wordpress.org/release/es_ES/wordpress-5.6.zip\";s:6:\"locale\";s:5:\"es_ES\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:63:\"https://downloads.wordpress.org/release/es_ES/wordpress-5.6.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:3:\"5.6\";s:7:\"version\";s:3:\"5.6\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1611509352;s:15:\"version_checked\";s:3:\"5.6\";s:12:\"translations\";a:0:{}}','no'),
	(279,'finished_updating_comment_type','1','yes'),
	(280,'_site_transient_timeout_php_check_e0da9a46ec9b74424e3af84a2a13de68','1612023846','no'),
	(281,'_site_transient_php_check_e0da9a46ec9b74424e3af84a2a13de68','a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}','no'),
	(282,'_transient_health-check-site-status-result','{\"good\":\"15\",\"recommended\":\"5\",\"critical\":\"0\"}','yes'),
	(301,'theme_mods_marcelivendrell','a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:2:{s:13:\"menu-esquerra\";i:2;s:11:\"header-menu\";i:2;}s:18:\"custom_css_post_id\";i:-1;}','yes'),
	(303,'nav_menu_options','a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}','yes'),
	(309,'_site_transient_timeout_theme_roots','1611511177','no'),
	(310,'_site_transient_theme_roots','a:3:{s:16:\"_marcelivendrell\";s:7:\"/themes\";s:15:\"marcelivendrell\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";}','no'),
	(311,'_site_transient_update_themes','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1611509382;s:7:\"checked\";a:3:{s:16:\"_marcelivendrell\";s:0:\"\";s:15:\"marcelivendrell\";s:0:\"\";s:14:\"twentynineteen\";s:3:\"1.8\";}s:8:\"response\";a:1:{s:14:\"twentynineteen\";a:6:{s:5:\"theme\";s:14:\"twentynineteen\";s:11:\"new_version\";s:3:\"1.9\";s:3:\"url\";s:44:\"https://wordpress.org/themes/twentynineteen/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/twentynineteen.1.9.zip\";s:8:\"requires\";s:5:\"4.9.6\";s:12:\"requires_php\";s:5:\"5.2.4\";}}s:9:\"no_update\";a:0:{}s:12:\"translations\";a:0:{}}','no'),
	(312,'_site_transient_update_plugins','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1611509386;s:7:\"checked\";a:6:{s:34:\"advanced-custom-fields-pro/acf.php\";s:5:\"5.9.1\";s:19:\"akismet/akismet.php\";s:5:\"4.1.7\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:5:\"5.3.2\";s:43:\"custom-post-type-ui/custom-post-type-ui.php\";s:5:\"1.8.2\";s:25:\"duplicator/duplicator.php\";s:8:\"1.3.40.1\";s:9:\"hello.php\";s:5:\"1.7.2\";}s:8:\"response\";a:2:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.8\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.8.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:3:\"5.6\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:34:\"advanced-custom-fields-pro/acf.php\";O:8:\"stdClass\":8:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:5:\"5.9.4\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:3:\"5.6\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:4:{s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"5.3.2\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.5.3.2.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:67:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=2279696\";s:2:\"1x\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";s:3:\"svg\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}}s:43:\"custom-post-type-ui/custom-post-type-ui.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:33:\"w.org/plugins/custom-post-type-ui\";s:4:\"slug\";s:19:\"custom-post-type-ui\";s:6:\"plugin\";s:43:\"custom-post-type-ui/custom-post-type-ui.php\";s:11:\"new_version\";s:5:\"1.8.2\";s:3:\"url\";s:50:\"https://wordpress.org/plugins/custom-post-type-ui/\";s:7:\"package\";s:68:\"https://downloads.wordpress.org/plugin/custom-post-type-ui.1.8.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:72:\"https://ps.w.org/custom-post-type-ui/assets/icon-256x256.png?rev=1069557\";s:2:\"1x\";s:72:\"https://ps.w.org/custom-post-type-ui/assets/icon-128x128.png?rev=1069557\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/custom-post-type-ui/assets/banner-1544x500.png?rev=1069557\";s:2:\"1x\";s:74:\"https://ps.w.org/custom-post-type-ui/assets/banner-772x250.png?rev=1069557\";}s:11:\"banners_rtl\";a:0:{}}s:25:\"duplicator/duplicator.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:24:\"w.org/plugins/duplicator\";s:4:\"slug\";s:10:\"duplicator\";s:6:\"plugin\";s:25:\"duplicator/duplicator.php\";s:11:\"new_version\";s:8:\"1.3.40.1\";s:3:\"url\";s:41:\"https://wordpress.org/plugins/duplicator/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/plugin/duplicator.1.3.40.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/duplicator/assets/icon-256x256.png?rev=2083921\";s:2:\"1x\";s:63:\"https://ps.w.org/duplicator/assets/icon-128x128.png?rev=2083921\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:65:\"https://ps.w.org/duplicator/assets/banner-772x250.png?rev=2085472\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}}}}','no');

/*!40000 ALTER TABLE `wp_options` ENABLE KEYS */;
UNLOCK TABLES;


# Volcado de tabla wp_postmeta
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_postmeta`;

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
	(1,2,'_wp_page_template','default'),
	(2,3,'_wp_page_template','default'),
	(5,6,'_edit_lock','1611053595:1'),
	(6,7,'_edit_lock','1610094866:1'),
	(7,7,'_wp_trash_meta_status','publish'),
	(8,7,'_wp_trash_meta_time','1610095011'),
	(9,7,'_wp_desired_post_slug','test'),
	(13,10,'_edit_last','2'),
	(14,10,'_edit_lock','1611512303:2'),
	(17,6,'_edit_last','1'),
	(18,6,'title_content','Soluciones a medida para las granjas artesanas '),
	(19,6,'_title_content','field_5ff83f4359a49'),
	(20,6,'more_info','http://fabre-tall.test/'),
	(21,6,'_more_info','field_5ff83fa359a4a'),
	(22,6,'slide','a:2:{i:0;s:2:\"15\";i:1;s:2:\"17\";}'),
	(23,6,'_slide','field_5ff83fb159a4b'),
	(29,18,'_form','[text* your-nombre class:form-control placeholder \"Nombre *\"]\n\n[email* your-email class:form-control placeholder \"E-mail *\"]\n\n[text* your-telefono class:form-control placeholder \"Teléfono *\"]\n\n[text your-empresa class:form-control placeholder \"Empresa\"]\n\n[textarea your-comentario class:form-control placeholder \"Comentario\"]\n\n<div class=\"form-row justify-content-center\">\n<div class=\"form-group\">\n<label class=\"d-flex align-items-center\" for=\"politica\">[acceptance acceptance-206 class:form-control id:politica] <span class=\"ml-2\">He leído y acepo la <a href=\"/politica-privacidad\" target=\"_blank\">política de privacidad</a></span></label>\n</div>\n<div class=\"form-group\">\n<label class=\"d-flex align-items-center\" for=\"newsletter\">[acceptance acceptance-207 optional class:form-control id:newsletter] <span class=\"ml-2\">Vull subscriure’m a la newsletter</span></label>\n</div>\n</div>\n\n<div class=\"text-center\">\n[submit class:btn class:btn-fabre-tall \"ENVIAR\"]\n</div>'),
	(30,18,'_mail','a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:33:\"[_site_title] - Contacto Landings\";s:6:\"sender\";s:36:\"[_site_title] <info@fabre-tall.test>\";s:9:\"recipient\";s:23:\"mcosta@dadacomunica.com\";s:4:\"body\";s:272:\"De: [your-nombre] <[your-email]>\n\nTeléfono: [your-telefono]\nEmpresa: [your-empresa]\n\nComentario :\n[your-comentario]\n\nURL del formulario: [_url]\n\nAcepta newsletter: [acceptance-207]\n\n-- \nEste e-mail se ha enviado de un formulario de contacto en [_site_title] ([_site_url])\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
	(31,18,'_mail_2','a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:41:\"[_site_title] <wordpress@fabre-tall.test>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:105:\"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\";s:18:\"additional_headers\";s:29:\"Reply-To: [_site_admin_email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
	(32,18,'_messages','a:22:{s:12:\"mail_sent_ok\";s:40:\"Gracias por tu mensaje. Ha sido enviado.\";s:12:\"mail_sent_ng\";s:87:\"Hubo un error al intentar enviar su mensaje. Por favor, inténtelo de nuevo más tarde.\";s:16:\"validation_error\";s:71:\"Uno o más campos tienen un error. Por favor revisa e intenta de nuevo.\";s:4:\"spam\";s:87:\"Hubo un error al intentar enviar su mensaje. Por favor, inténtelo de nuevo más tarde.\";s:12:\"accept_terms\";s:69:\"Debes aceptar los términos y condiciones antes de enviar tu mensaje.\";s:16:\"invalid_required\";s:24:\"El campo es obligatorio.\";s:16:\"invalid_too_long\";s:28:\"El campo es demasiado largo.\";s:17:\"invalid_too_short\";s:28:\"El campo es demasiado corto.\";s:12:\"invalid_date\";s:37:\"El formato de la fecha es incorrecto.\";s:14:\"date_too_early\";s:50:\"La fecha es anterior a la más temprana permitida.\";s:13:\"date_too_late\";s:45:\"La fecha es posterior a la última permitida.\";s:13:\"upload_failed\";s:47:\"Hubo un error desconocido al cargar el archivo.\";s:24:\"upload_file_type_invalid\";s:48:\"No está permitido cargar archivos de este tipo.\";s:21:\"upload_file_too_large\";s:31:\"El archivo es demasiado grande.\";s:23:\"upload_failed_php_error\";s:35:\"Hubo un error al cargar el archivo.\";s:14:\"invalid_number\";s:37:\"El formato del número no es válido.\";s:16:\"number_too_small\";s:45:\"El número es menor que el mínimo permitido.\";s:16:\"number_too_large\";s:45:\"El número es mayor que el máximo permitido.\";s:23:\"quiz_answer_not_correct\";s:43:\"La respuesta al cuestionario es incorrecta.\";s:13:\"invalid_email\";s:61:\"La dirección de correo electrónico ingresada no es válida.\";s:11:\"invalid_url\";s:21:\"La URL no es válida.\";s:11:\"invalid_tel\";s:38:\"El número de teléfono no es válido.\";}'),
	(33,18,'_additional_settings',''),
	(34,18,'_locale','es_ES'),
	(35,2,'_edit_last','2'),
	(36,2,'_edit_lock','1611513636:2'),
	(43,23,'_edit_lock','1610446498:1'),
	(44,23,'_wp_trash_meta_status','publish'),
	(45,23,'_wp_trash_meta_time','1610446511'),
	(46,24,'_wp_trash_meta_status','publish'),
	(47,24,'_wp_trash_meta_time','1610446942'),
	(48,1,'_edit_lock','1610450431:1'),
	(49,25,'_edit_lock','1610450836:1'),
	(50,6,'tipus','fabretall'),
	(51,6,'_tipus','field_60069a64d89c8'),
	(52,30,'_menu_item_type','custom'),
	(53,30,'_menu_item_menu_item_parent','0'),
	(54,30,'_menu_item_object_id','30'),
	(55,30,'_menu_item_object','custom'),
	(56,30,'_menu_item_target',''),
	(57,30,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),
	(58,30,'_menu_item_xfn',''),
	(59,30,'_menu_item_url','#cotxes'),
	(61,31,'_menu_item_type','custom'),
	(62,31,'_menu_item_menu_item_parent','0'),
	(63,31,'_menu_item_object_id','31'),
	(64,31,'_menu_item_object','custom'),
	(65,31,'_menu_item_target',''),
	(66,31,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),
	(67,31,'_menu_item_xfn',''),
	(68,31,'_menu_item_url','#motos'),
	(70,32,'_menu_item_type','custom'),
	(71,32,'_menu_item_menu_item_parent','0'),
	(72,32,'_menu_item_object_id','32'),
	(73,32,'_menu_item_object','custom'),
	(74,32,'_menu_item_target',''),
	(75,32,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),
	(76,32,'_menu_item_xfn',''),
	(77,32,'_menu_item_url','#bicicletes'),
	(79,33,'_menu_item_type','custom'),
	(80,33,'_menu_item_menu_item_parent','0'),
	(81,33,'_menu_item_object_id','33'),
	(82,33,'_menu_item_object','custom'),
	(83,33,'_menu_item_target',''),
	(84,33,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),
	(85,33,'_menu_item_xfn',''),
	(86,33,'_menu_item_url','#industria'),
	(88,34,'_menu_item_type','custom'),
	(89,34,'_menu_item_menu_item_parent','0'),
	(90,34,'_menu_item_object_id','34'),
	(91,34,'_menu_item_object','custom'),
	(92,34,'_menu_item_target',''),
	(93,34,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),
	(94,34,'_menu_item_xfn',''),
	(95,34,'_menu_item_url','#contacte'),
	(97,35,'_wp_attached_file','2021/01/master-collects-rebuilt-motor-for-the-car-scaled.jpg'),
	(98,35,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:2560;s:6:\"height\";i:1804;s:4:\"file\";s:60:\"2021/01/master-collects-rebuilt-motor-for-the-car-scaled.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:53:\"master-collects-rebuilt-motor-for-the-car-300x211.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:211;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:54:\"master-collects-rebuilt-motor-for-the-car-1024x722.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:722;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:53:\"master-collects-rebuilt-motor-for-the-car-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:53:\"master-collects-rebuilt-motor-for-the-car-768x541.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:541;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:55:\"master-collects-rebuilt-motor-for-the-car-1536x1082.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1082;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:55:\"master-collects-rebuilt-motor-for-the-car-2048x1443.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1443;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"2.2\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:21:\"Canon EOS 5D Mark III\";s:7:\"caption\";s:44:\"Master collects a rebuilt motor for the car.\";s:17:\"created_timestamp\";s:10:\"1522250014\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"50\";s:3:\"iso\";s:3:\"500\";s:13:\"shutter_speed\";s:8:\"0.003125\";s:5:\"title\";s:44:\"Master collects a rebuilt motor for the car.\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:50:{i:0;s:6:\"engine\";i:1;s:3:\"car\";i:2;s:4:\"auto\";i:3;s:6:\"repair\";i:4;s:7:\"service\";i:5;s:10:\"automobile\";i:6;s:6:\"garage\";i:7;s:7:\"vehicle\";i:8;s:7:\"station\";i:9;s:10:\"technology\";i:10;s:8:\"industry\";i:11;s:8:\"mechanic\";i:12;s:5:\"block\";i:13;s:8:\"cylinder\";i:14;s:11:\"maintenance\";i:15;s:6:\"diesel\";i:16;s:5:\"motor\";i:17;s:4:\"part\";i:18;s:4:\"open\";i:19;s:10:\"assembling\";i:20;s:3:\"man\";i:21;s:9:\"repairman\";i:22;s:10:\"crankshaft\";i:23;s:9:\"education\";i:24;s:7:\"rebuilt\";i:25;s:10:\"industrial\";i:26;s:7:\"machine\";i:27;s:6:\"stroke\";i:28;s:8:\"gasoline\";i:29;s:10:\"diagnostic\";i:30;s:8:\"assemble\";i:31;s:6:\"fixing\";i:32;s:6:\"piston\";i:33;s:10:\"automotive\";i:34;s:8:\"workshop\";i:35;s:7:\"vintage\";i:36;s:5:\"model\";i:37;s:4:\"head\";i:38;s:6:\"worker\";i:39;s:7:\"control\";i:40;s:7:\"problem\";i:41;s:3:\"fix\";i:42;s:10:\"motorcycle\";i:43;s:10:\"technician\";i:44;s:5:\"metal\";i:45;s:9:\"machinist\";i:46;s:11:\"disassemble\";i:47;s:7:\"recover\";i:48;s:13:\"cranked shaft\";i:49;s:10:\"bent shaft\";}}s:14:\"original_image\";s:45:\"master-collects-rebuilt-motor-for-the-car.jpg\";}'),
	(99,36,'_wp_attached_file','2021/01/master-collects-rebuilt-motor-for-car-scaled.jpg'),
	(100,36,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:2560;s:6:\"height\";i:1707;s:4:\"file\";s:56:\"2021/01/master-collects-rebuilt-motor-for-car-scaled.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:49:\"master-collects-rebuilt-motor-for-car-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:50:\"master-collects-rebuilt-motor-for-car-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:49:\"master-collects-rebuilt-motor-for-car-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:49:\"master-collects-rebuilt-motor-for-car-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:51:\"master-collects-rebuilt-motor-for-car-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:51:\"master-collects-rebuilt-motor-for-car-2048x1365.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1365;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"3.2\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:21:\"Canon EOS 5D Mark III\";s:7:\"caption\";s:44:\"Master collects a rebuilt motor for the car.\";s:17:\"created_timestamp\";s:10:\"1522250488\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"50\";s:3:\"iso\";s:3:\"400\";s:13:\"shutter_speed\";s:5:\"0.005\";s:5:\"title\";s:44:\"Master collects a rebuilt motor for the car.\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:50:{i:0;s:6:\"engine\";i:1;s:3:\"car\";i:2;s:4:\"auto\";i:3;s:6:\"repair\";i:4;s:7:\"service\";i:5;s:10:\"automobile\";i:6;s:6:\"garage\";i:7;s:7:\"vehicle\";i:8;s:7:\"station\";i:9;s:10:\"technology\";i:10;s:8:\"industry\";i:11;s:8:\"mechanic\";i:12;s:5:\"block\";i:13;s:8:\"cylinder\";i:14;s:11:\"maintenance\";i:15;s:6:\"diesel\";i:16;s:5:\"motor\";i:17;s:4:\"part\";i:18;s:4:\"open\";i:19;s:10:\"assembling\";i:20;s:3:\"man\";i:21;s:9:\"repairman\";i:22;s:10:\"crankshaft\";i:23;s:9:\"education\";i:24;s:7:\"rebuilt\";i:25;s:10:\"industrial\";i:26;s:7:\"machine\";i:27;s:6:\"stroke\";i:28;s:8:\"gasoline\";i:29;s:10:\"diagnostic\";i:30;s:8:\"assemble\";i:31;s:6:\"fixing\";i:32;s:6:\"piston\";i:33;s:10:\"automotive\";i:34;s:8:\"workshop\";i:35;s:7:\"vintage\";i:36;s:5:\"model\";i:37;s:4:\"head\";i:38;s:6:\"worker\";i:39;s:7:\"control\";i:40;s:7:\"problem\";i:41;s:3:\"fix\";i:42;s:10:\"motorcycle\";i:43;s:10:\"technician\";i:44;s:5:\"metal\";i:45;s:9:\"machinist\";i:46;s:11:\"disassemble\";i:47;s:7:\"recover\";i:48;s:13:\"cranked shaft\";i:49;s:10:\"bent shaft\";}}s:14:\"original_image\";s:41:\"master-collects-rebuilt-motor-for-car.jpg\";}'),
	(101,2,'title_content',''),
	(102,2,'_title_content','field_5ff83f4359a49'),
	(103,2,'more_info',''),
	(104,2,'_more_info','field_5ff83fa359a4a'),
	(105,2,'slide','2'),
	(106,2,'_slide','field_5ff83fb159a4b'),
	(107,2,'tipus','fabretall'),
	(108,2,'_tipus','field_60069a64d89c8'),
	(109,37,'title_content',''),
	(110,37,'_title_content','field_5ff83f4359a49'),
	(111,37,'more_info',''),
	(112,37,'_more_info','field_5ff83fa359a4a'),
	(113,37,'slide','a:2:{i:0;s:2:\"35\";i:1;s:2:\"36\";}'),
	(114,37,'_slide','field_5ff83fb159a4b'),
	(115,37,'tipus','fabretall'),
	(116,37,'_tipus','field_60069a64d89c8'),
	(117,38,'title_content',''),
	(118,38,'_title_content','field_5ff83f4359a49'),
	(119,38,'more_info',''),
	(120,38,'_more_info','field_5ff83fa359a4a'),
	(121,38,'slide',''),
	(122,38,'_slide','field_5ff83fb159a4b'),
	(123,38,'tipus','fabretall'),
	(124,38,'_tipus','field_60069a64d89c8'),
	(125,2,'slide_0_imatge','43'),
	(126,2,'_slide_0_imatge','field_600db726c80d1'),
	(127,2,'slide_0_text','Amb mñes de 30 anys dedicats al sector\r\nde l\'automoció i la indústria.'),
	(128,2,'_slide_0_text','field_600db6dc39ec4'),
	(129,2,'slide_1_imatge','43'),
	(130,2,'_slide_1_imatge','field_600db726c80d1'),
	(131,2,'slide_1_text','Amb mñes de 30 anys dedicats al sector\r\nde l\'automoció i la indústria.'),
	(132,2,'_slide_1_text','field_600db6dc39ec4'),
	(133,41,'title_content',''),
	(134,41,'_title_content','field_5ff83f4359a49'),
	(135,41,'more_info',''),
	(136,41,'_more_info','field_5ff83fa359a4a'),
	(137,41,'slide','2'),
	(138,41,'_slide','field_5ff83fb159a4b'),
	(139,41,'tipus','fabretall'),
	(140,41,'_tipus','field_60069a64d89c8'),
	(141,41,'slide_0_imatge','35'),
	(142,41,'_slide_0_imatge','field_600db6cd39ec3'),
	(143,41,'slide_0_text','Amb mñes de 30 anys dedicats al sector\r\nde l\'automoció i la indústria.'),
	(144,41,'_slide_0_text','field_600db6dc39ec4'),
	(145,41,'slide_1_imatge','36'),
	(146,41,'_slide_1_imatge','field_600db6cd39ec3'),
	(147,41,'slide_1_text','Amb mñes de 30 anys dedicats al sector\r\nde l\'automoció i la indústria.'),
	(148,41,'_slide_1_text','field_600db6dc39ec4'),
	(149,43,'_wp_attached_file','2021/01/marcelli_logoblanc.png'),
	(150,43,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1800;s:6:\"height\";i:1800;s:4:\"file\";s:30:\"2021/01/marcelli_logoblanc.png\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:30:\"marcelli_logoblanc-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:32:\"marcelli_logoblanc-1024x1024.png\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"marcelli_logoblanc-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:30:\"marcelli_logoblanc-768x768.png\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:32:\"marcelli_logoblanc-1536x1536.png\";s:5:\"width\";i:1536;s:6:\"height\";i:1536;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
	(151,2,'slide_0_Imatge_fons','35'),
	(152,2,'_slide_0_Imatge_fons','field_600db6cd39ec3'),
	(153,2,'slide_1_Imatge_fons','36'),
	(154,2,'_slide_1_Imatge_fons','field_600db6cd39ec3'),
	(155,44,'title_content',''),
	(156,44,'_title_content','field_5ff83f4359a49'),
	(157,44,'more_info',''),
	(158,44,'_more_info','field_5ff83fa359a4a'),
	(159,44,'slide','2'),
	(160,44,'_slide','field_5ff83fb159a4b'),
	(161,44,'tipus','fabretall'),
	(162,44,'_tipus','field_60069a64d89c8'),
	(163,44,'slide_0_imatge','43'),
	(164,44,'_slide_0_imatge','field_600db726c80d1'),
	(165,44,'slide_0_text','Amb mñes de 30 anys dedicats al sector\r\nde l\'automoció i la indústria.'),
	(166,44,'_slide_0_text','field_600db6dc39ec4'),
	(167,44,'slide_1_imatge','43'),
	(168,44,'_slide_1_imatge','field_600db726c80d1'),
	(169,44,'slide_1_text','Amb mñes de 30 anys dedicats al sector\r\nde l\'automoció i la indústria.'),
	(170,44,'_slide_1_text','field_600db6dc39ec4'),
	(171,44,'slide_0_Imatge_fons','35'),
	(172,44,'_slide_0_Imatge_fons','field_600db6cd39ec3'),
	(173,44,'slide_1_Imatge_fons','36'),
	(174,44,'_slide_1_Imatge_fons','field_600db6cd39ec3'),
	(175,45,'title_content',''),
	(176,45,'_title_content','field_5ff83f4359a49'),
	(177,45,'more_info',''),
	(178,45,'_more_info','field_5ff83fa359a4a'),
	(179,45,'slide','2'),
	(180,45,'_slide','field_5ff83fb159a4b'),
	(181,45,'tipus','fabretall'),
	(182,45,'_tipus','field_60069a64d89c8'),
	(183,45,'slide_0_imatge','43'),
	(184,45,'_slide_0_imatge','field_600db726c80d1'),
	(185,45,'slide_0_text','Amb mñes de 30 anys dedicats al sector\r\nde l\'automoció i la indústria.'),
	(186,45,'_slide_0_text','field_600db6dc39ec4'),
	(187,45,'slide_1_imatge','43'),
	(188,45,'_slide_1_imatge','field_600db726c80d1'),
	(189,45,'slide_1_text','Amb mñes de 30 anys dedicats al sector\r\nde l\'automoció i la indústria.'),
	(190,45,'_slide_1_text','field_600db6dc39ec4'),
	(191,45,'slide_0_Imatge_fons','35'),
	(192,45,'_slide_0_Imatge_fons','field_600db6cd39ec3'),
	(193,45,'slide_1_Imatge_fons','36'),
	(194,45,'_slide_1_Imatge_fons','field_600db6cd39ec3'),
	(195,46,'title_content',''),
	(196,46,'_title_content','field_5ff83f4359a49'),
	(197,46,'more_info',''),
	(198,46,'_more_info','field_5ff83fa359a4a'),
	(199,46,'slide','2'),
	(200,46,'_slide','field_5ff83fb159a4b'),
	(201,46,'tipus','fabretall'),
	(202,46,'_tipus','field_60069a64d89c8'),
	(203,46,'slide_0_imatge','43'),
	(204,46,'_slide_0_imatge','field_600db726c80d1'),
	(205,46,'slide_0_text','Amb mñes de 30 anys dedicats al sector\r\nde l\'automoció i la indústria.'),
	(206,46,'_slide_0_text','field_600db6dc39ec4'),
	(207,46,'slide_1_imatge','43'),
	(208,46,'_slide_1_imatge','field_600db726c80d1'),
	(209,46,'slide_1_text','Amb mñes de 30 anys dedicats al sector\r\nde l\'automoció i la indústria.'),
	(210,46,'_slide_1_text','field_600db6dc39ec4'),
	(211,46,'slide_0_Imatge_fons','35'),
	(212,46,'_slide_0_Imatge_fons','field_600db6cd39ec3'),
	(213,46,'slide_1_Imatge_fons','36'),
	(214,46,'_slide_1_Imatge_fons','field_600db6cd39ec3'),
	(215,47,'title_content',''),
	(216,47,'_title_content','field_5ff83f4359a49'),
	(217,47,'more_info',''),
	(218,47,'_more_info','field_5ff83fa359a4a'),
	(219,47,'slide','2'),
	(220,47,'_slide','field_5ff83fb159a4b'),
	(221,47,'tipus','fabretall'),
	(222,47,'_tipus','field_60069a64d89c8'),
	(223,47,'slide_0_imatge','43'),
	(224,47,'_slide_0_imatge','field_600db726c80d1'),
	(225,47,'slide_0_text','Amb mñes de 30 anys dedicats al sector\r\nde l\'automoció i la indústria.'),
	(226,47,'_slide_0_text','field_600db6dc39ec4'),
	(227,47,'slide_1_imatge','43'),
	(228,47,'_slide_1_imatge','field_600db726c80d1'),
	(229,47,'slide_1_text','Amb mñes de 30 anys dedicats al sector\r\nde l\'automoció i la indústria.'),
	(230,47,'_slide_1_text','field_600db6dc39ec4'),
	(231,47,'slide_0_Imatge_fons','35'),
	(232,47,'_slide_0_Imatge_fons','field_600db6cd39ec3'),
	(233,47,'slide_1_Imatge_fons','36'),
	(234,47,'_slide_1_Imatge_fons','field_600db6cd39ec3'),
	(235,2,'slide_0_imatge_background','35'),
	(236,2,'_slide_0_imatge_background','field_600db6cd39ec3'),
	(237,2,'slide_1_imatge_background','36'),
	(238,2,'_slide_1_imatge_background','field_600db6cd39ec3'),
	(239,48,'title_content',''),
	(240,48,'_title_content','field_5ff83f4359a49'),
	(241,48,'more_info',''),
	(242,48,'_more_info','field_5ff83fa359a4a'),
	(243,48,'slide','2'),
	(244,48,'_slide','field_5ff83fb159a4b'),
	(245,48,'tipus','fabretall'),
	(246,48,'_tipus','field_60069a64d89c8'),
	(247,48,'slide_0_imatge','43'),
	(248,48,'_slide_0_imatge','field_600db726c80d1'),
	(249,48,'slide_0_text','Amb mñes de 30 anys dedicats al sector\r\nde l\'automoció i la indústria.'),
	(250,48,'_slide_0_text','field_600db6dc39ec4'),
	(251,48,'slide_1_imatge','43'),
	(252,48,'_slide_1_imatge','field_600db726c80d1'),
	(253,48,'slide_1_text','Amb mñes de 30 anys dedicats al sector\r\nde l\'automoció i la indústria.'),
	(254,48,'_slide_1_text','field_600db6dc39ec4'),
	(255,48,'slide_0_Imatge_fons','35'),
	(256,48,'_slide_0_Imatge_fons','field_600db6cd39ec3'),
	(257,48,'slide_1_Imatge_fons','36'),
	(258,48,'_slide_1_Imatge_fons','field_600db6cd39ec3'),
	(259,48,'slide_0_imatge_background','35'),
	(260,48,'_slide_0_imatge_background','field_600db6cd39ec3'),
	(261,48,'slide_1_imatge_background','36'),
	(262,48,'_slide_1_imatge_background','field_600db6cd39ec3'),
	(263,49,'_wp_attached_file','2021/01/left-arrow.svg'),
	(264,50,'_wp_attached_file','2021/01/right-arrow.svg'),
	(265,49,'_edit_lock','1611515029:2');

/*!40000 ALTER TABLE `wp_postmeta` ENABLE KEYS */;
UNLOCK TABLES;


# Volcado de tabla wp_posts
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_posts`;

CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`)
VALUES
	(1,2,'2021-01-08 07:46:48','2021-01-08 07:46:48','<!-- wp:paragraph -->\n<p>Bienvenido a WordPress. Esta es tu primera entrada. Edítala o bórrala, ¡luego empieza a escribir!</p>\n<!-- /wp:paragraph -->','¡Hola, mundo!','','publish','open','open','','hola-mundo','','','2021-01-08 07:46:48','2021-01-08 07:46:48','',0,'http://fabre-tall.test/?p=1',0,'post','',1),
	(2,2,'2021-01-08 07:46:48','2021-01-08 07:46:48','<!-- wp:paragraph -->\n<p>Esta es una página de ejemplo. Es diferente a una entrada del blog porque permanecerá en un solo lugar y aparecerá en la navegación de tu sitio (en la mayoría de los temas). La mayoría de las personas comienzan con una página «Acerca de» que les presenta a los visitantes potenciales del sitio. Podrías decir algo así:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>¡Bienvenido! Soy camarero de día, aspirante a actor de noche y esta es mi web. Vivo en Mairena del Alcor, tengo un perro que se llama Firulais y me gusta el rebujito. (Y las tardes largas con café).</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>…o algo así:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>La empresa «Mariscos Recio» fue fundada por Antonio Recio Mata. Empezó siendo una pequeña empresa que suministraba marisco a hoteles y restaurantes, pero poco a poco se ha ido transformando en un gran imperio. Mariscos Recio, el mar al mejor precio.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Como nuevo usuario de WordPress, deberías ir a <a href=\"http://fabre-tall.test/wp-admin/\">tu escritorio</a> para borrar esta página y crear nuevas páginas para tu contenido. ¡Pásalo bien!</p>\n<!-- /wp:paragraph -->','Home','','publish','closed','closed','','home','','','2021-01-24 18:15:32','2021-01-24 18:15:32','',0,'http://fabre-tall.test/?page_id=2',0,'page','',0),
	(3,2,'2021-01-08 07:46:48','2021-01-08 07:46:48','<!-- wp:heading --><h2>Quiénes somos</h2><!-- /wp:heading --><!-- wp:paragraph --><p>La dirección de nuestra web es: http://fabre-tall.test.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Qué datos personales recogemos y por qué los recogemos</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comentarios</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Cuando los visitantes dejan comentarios en la web, recopilamos los datos que se muestran en el formulario de comentarios, así como la dirección IP del visitante y la cadena de agentes de usuario del navegador para ayudar a la detección de spam.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Una cadena anónima creada a partir de tu dirección de correo electrónico (también llamada hash) puede ser proporcionada al servicio de Gravatar para ver si la estás usando. La política de privacidad del servicio Gravatar está disponible aquí: https://automattic.com/privacy/. Después de la aprobación de tu comentario, la imagen de tu perfil es visible para el público en el contexto de tu comentario.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Medios</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Si subes imágenes a la web, deberías evitar subir imágenes con datos de ubicación (GPS EXIF) incluidos. Los visitantes de la web pueden descargar y extraer cualquier dato de ubicación de las imágenes de la web.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Formularios de contacto</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Si dejas un comentario en nuestro sitio puedes elegir guardar tu nombre, dirección de correo electrónico y web en cookies. Esto es para tu comodidad, para que no tengas que volver a rellenar tus datos cuando dejes otro comentario. Estas cookies tendrán una duración de un año.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Si tienes una cuenta y te conectas a este sitio, instalaremos una cookie temporal para determinar si tu navegador acepta cookies. Esta cookie no contiene datos personales y se elimina al cerrar el navegador.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Cuando accedas, también instalaremos varias cookies para guardar tu información de acceso y tus opciones de visualización de pantalla. Las cookies de acceso duran dos días, y las cookies de opciones de pantalla duran un año. Si seleccionas «Recuérdarme», tu acceso perdurará durante dos semanas. Si sales de tu cuenta, las cookies de acceso se eliminarán.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Si editas o publicas un artículo se guardará una cookie adicional en tu navegador. Esta cookie no incluye datos personales y simplemente indica el ID del artículo que acabas de editar. Caduca después de 1 día.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contenido incrustado de otros sitios web</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Los artículos de este sitio pueden incluir contenido incrustado (por ejemplo, vídeos, imágenes, artículos, etc.). El contenido incrustado de otras webs se comporta exactamente de la misma manera que si el visitante hubiera visitado la otra web.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Estas web pueden recopilar datos sobre ti, utilizar cookies, incrustar un seguimiento adicional de terceros, y supervisar tu interacción con ese contenido incrustado, incluido el seguimiento de tu interacción con el contenido incrustado si tienes una cuenta y estás conectado a esa web.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analítica</h3><!-- /wp:heading --><!-- wp:heading --><h2>Con quién compartimos tus datos</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Si solicitas un restablecimiento de contraseña, tu dirección IP será incluida en el correo electrónico de restablecimiento.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cuánto tiempo conservamos tus datos</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Si dejas un comentario, el comentario y sus metadatos se conservan indefinidamente. Esto es para que podamos reconocer y aprobar comentarios sucesivos automáticamente, en lugar de mantenerlos en una cola de moderación.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>De los usuarios que se registran en nuestra web (si los hay), también almacenamos la información personal que proporcionan en su perfil de usuario. Todos los usuarios pueden ver, editar o eliminar su información personal en cualquier momento (excepto que no pueden cambiar su nombre de usuario). Los administradores de la web también pueden ver y editar esa información.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Qué derechos tienes sobre tus datos</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Si tienes una cuenta o has dejado comentarios en esta web, puedes solicitar recibir un archivo de exportación de los datos personales que tenemos sobre ti, incluyendo cualquier dato que nos hayas proporcionado. También puedes solicitar que eliminemos cualquier dato personal que tengamos sobre ti. Esto no incluye ningún dato que estemos obligados a conservar con fines administrativos, legales o de seguridad.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Dónde enviamos tus datos</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Los comentarios de los visitantes puede que los revise un servicio de detección automática de spam.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Tu información de contacto</h2><!-- /wp:heading --><!-- wp:heading --><h2>Información adicional</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cómo protegemos tus datos</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Qué procedimientos utilizamos contra las brechas de datos</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>De qué terceros recibimos datos</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Qué tipo de toma de decisiones automatizada y/o perfilado hacemos con los datos del usuario</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Requerimientos regulatorios de revelación de información del sector</h3><!-- /wp:heading -->','Política de privacidad','','draft','closed','open','','politica-privacidad','','','2021-01-08 07:46:48','2021-01-08 07:46:48','',0,'http://fabre-tall.test/?page_id=3',0,'page','',0),
	(6,2,'2021-01-08 08:10:47','2021-01-08 08:10:47','<!-- wp:paragraph -->\n<p>Volum is, conequem, norum si cononsus forei scestre nonsultortem faceponsi publium hoc, Cat a vis consulis ocris inte patiemquam cotis plicae factur que ocurnum in silinum sus cludactanu inatur. Dam ilin Etris ad sena, uremquem ius viderunum intiferi, prides? Ihil hiliusque in vente, nit L. O tempera iam peresce supientem no. Cae intemus. Sentili ciptestius habes uremquem.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Volum is, conequem, norum si cononsus forei scestre nonsultortem faceponsi publium hoc, Cat a vis consulis ocris inte patiemquam cotis plicae factur que ocurnum in silinum sus cludactanu inatur. Dam ilin Etris ad sena, uremquem ius viderunum intiferi, prides?&nbsp;</p>\n<!-- /wp:paragraph -->','INSTALACIONES MODULARES Y MÓVILES PARA EL SECTOR AVÍCOLA','','publish','closed','closed','','test','','','2021-01-19 10:18:23','2021-01-19 10:18:23','',0,'http://fabre-tall.test/?post_type=landings&#038;p=6',0,'landings','',0),
	(7,2,'2021-01-08 08:36:21','2021-01-08 08:36:21','','Test','','trash','closed','closed','','test__trashed','','','2021-01-08 08:36:51','2021-01-08 08:36:51','',0,'http://fabre-tall.test/?page_id=7',0,'page','',0),
	(8,2,'2021-01-08 08:36:21','2021-01-08 08:36:21','','Test','','inherit','closed','closed','','7-revision-v1','','','2021-01-08 08:36:21','2021-01-08 08:36:21','',7,'http://fabre-tall.test/7-revision-v1/',0,'revision','',0),
	(10,2,'2021-01-08 11:19:38','2021-01-08 11:19:38','a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"page_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:10:\"front_page\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}','Home','home','publish','closed','closed','','group_5ff83f3d6e6d8','','','2021-01-24 18:18:54','2021-01-24 18:18:54','',0,'http://fabre-tall.test/?post_type=acf-field-group&#038;p=10',0,'acf-field-group','',0),
	(13,2,'2021-01-08 11:19:38','2021-01-08 11:19:38','a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}','Slider','slide','publish','closed','closed','','field_5ff83fb159a4b','','','2021-01-24 18:05:35','2021-01-24 18:05:35','',10,'http://fabre-tall.test/?post_type=acf-field&#038;p=13',0,'acf-field','',0),
	(18,2,'2021-01-08 13:00:37','2021-01-08 13:00:37','[text* your-nombre class:form-control placeholder \"Nombre *\"]\r\n\r\n[email* your-email class:form-control placeholder \"E-mail *\"]\r\n\r\n[text* your-telefono class:form-control placeholder \"Teléfono *\"]\r\n\r\n[text your-empresa class:form-control placeholder \"Empresa\"]\r\n\r\n[textarea your-comentario class:form-control placeholder \"Comentario\"]\r\n\r\n<div class=\"form-row justify-content-center\">\r\n<div class=\"form-group\">\r\n<label class=\"d-flex align-items-center\" for=\"politica\">[acceptance acceptance-206 class:form-control id:politica] <span class=\"ml-2\">He leído y acepo la <a href=\"/politica-privacidad\" target=\"_blank\" rel=\"noopener\">política de privacidad</a></span></label>\r\n</div>\r\n<div class=\"form-group\">\r\n<label class=\"d-flex align-items-center\" for=\"newsletter\">[acceptance acceptance-207 optional class:form-control id:newsletter] <span class=\"ml-2\">Vull subscriure’m a la newsletter</span></label>\r\n</div>\r\n</div>\r\n\r\n<div class=\"text-center\">\r\n[submit class:btn class:btn-fabre-tall \"ENVIAR\"]\r\n</div>\n1\n[_site_title] - Contacto Landings\n[_site_title] <info@fabre-tall.test>\nmcosta@dadacomunica.com\nDe: [your-nombre] <[your-email]>\r\n\r\nTeléfono: [your-telefono]\r\nEmpresa: [your-empresa]\r\n\r\nComentario :\r\n[your-comentario]\r\n\r\nURL del formulario: [_url]\r\n\r\nAcepta newsletter: [acceptance-207]\r\n\r\n-- \r\nEste e-mail se ha enviado de un formulario de contacto en [_site_title] ([_site_url])\nReply-To: [your-email]\n\n\n\n\n[_site_title] \"[your-subject]\"\n[_site_title] <wordpress@fabre-tall.test>\n[your-email]\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\nReply-To: [_site_admin_email]\n\n\n\nGracias por tu mensaje. Ha sido enviado.\nHubo un error al intentar enviar su mensaje. Por favor, inténtelo de nuevo más tarde.\nUno o más campos tienen un error. Por favor revisa e intenta de nuevo.\nHubo un error al intentar enviar su mensaje. Por favor, inténtelo de nuevo más tarde.\nDebes aceptar los términos y condiciones antes de enviar tu mensaje.\nEl campo es obligatorio.\nEl campo es demasiado largo.\nEl campo es demasiado corto.\nEl formato de la fecha es incorrecto.\nLa fecha es anterior a la más temprana permitida.\nLa fecha es posterior a la última permitida.\nHubo un error desconocido al cargar el archivo.\nNo está permitido cargar archivos de este tipo.\nEl archivo es demasiado grande.\nHubo un error al cargar el archivo.\nEl formato del número no es válido.\nEl número es menor que el mínimo permitido.\nEl número es mayor que el máximo permitido.\nLa respuesta al cuestionario es incorrecta.\nLa dirección de correo electrónico ingresada no es válida.\nLa URL no es válida.\nEl número de teléfono no es válido.','Contacto Landings','','publish','closed','closed','','contact-form-1','','','2021-01-12 10:12:42','2021-01-12 10:12:42','',0,'http://fabre-tall.test/?post_type=wpcf7_contact_form&#038;p=18',0,'wpcf7_contact_form','',0),
	(19,2,'2021-01-12 10:13:25','2021-01-12 10:13:25','<!-- wp:paragraph -->\n<p>Esta es una página de ejemplo. Es diferente a una entrada del blog porque permanecerá en un solo lugar y aparecerá en la navegación de tu sitio (en la mayoría de los temas). La mayoría de las personas comienzan con una página «Acerca de» que les presenta a los visitantes potenciales del sitio. Podrías decir algo así:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>¡Bienvenido! Soy camarero de día, aspirante a actor de noche y esta es mi web. Vivo en Mairena del Alcor, tengo un perro que se llama Firulais y me gusta el rebujito. (Y las tardes largas con café).</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>…o algo así:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>La empresa «Mariscos Recio» fue fundada por Antonio Recio Mata. Empezó siendo una pequeña empresa que suministraba marisco a hoteles y restaurantes, pero poco a poco se ha ido transformando en un gran imperio. Mariscos Recio, el mar al mejor precio.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Como nuevo usuario de WordPress, deberías ir a <a href=\"http://fabre-tall.test/wp-admin/\">tu escritorio</a> para borrar esta página y crear nuevas páginas para tu contenido. ¡Pásalo bien!</p>\n<!-- /wp:paragraph -->','Home','','inherit','closed','closed','','2-revision-v1','','','2021-01-12 10:13:25','2021-01-12 10:13:25','',2,'http://fabre-tall.test/2-revision-v1/',0,'revision','',0),
	(23,2,'2021-01-12 10:15:11','2021-01-12 10:15:11','{\n    \"site_icon\": {\n        \"value\": \"\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-01-12 10:15:11\"\n    },\n    \"fabre-tall::custom_logo\": {\n        \"value\": 20,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-01-12 10:14:58\"\n    },\n    \"blogdescription\": {\n        \"value\": \"\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-01-12 10:15:11\"\n    }\n}','','','trash','closed','closed','','4d45f431-4fa7-408c-82c8-c0dd87fec45a','','','2021-01-12 10:15:11','2021-01-12 10:15:11','',0,'http://fabre-tall.test/?p=23',0,'customize_changeset','',0),
	(24,2,'2021-01-12 10:22:22','2021-01-12 10:22:22','{\n    \"show_on_front\": {\n        \"value\": \"page\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-01-12 10:22:22\"\n    },\n    \"page_on_front\": {\n        \"value\": \"2\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-01-12 10:22:22\"\n    }\n}','','','trash','closed','closed','','e626098d-922b-42ba-b6a2-e813c52b0ab6','','','2021-01-12 10:22:22','2021-01-12 10:22:22','',0,'http://fabre-tall.test/e626098d-922b-42ba-b6a2-e813c52b0ab6/',0,'customize_changeset','',0),
	(25,2,'2021-01-12 11:29:40','2021-01-12 11:29:40','','Blog','','publish','closed','closed','','blog','','','2021-01-12 11:29:40','2021-01-12 11:29:40','',0,'http://fabre-tall.test/?page_id=25',0,'page','',0),
	(26,2,'2021-01-12 11:29:40','2021-01-12 11:29:40','','Blog','','inherit','closed','closed','','25-revision-v1','','','2021-01-12 11:29:40','2021-01-12 11:29:40','',25,'http://fabre-tall.test/25-revision-v1/',0,'revision','',0),
	(28,2,'2021-01-23 16:24:24','0000-00-00 00:00:00','','Borrador automático','','auto-draft','open','open','','','','','2021-01-23 16:24:24','0000-00-00 00:00:00','',0,'http://marcelivendrell.test/?p=28',0,'post','',0),
	(29,2,'2021-01-23 16:25:48','0000-00-00 00:00:00','','Borrador automático','','auto-draft','open','open','','','','','2021-01-23 16:25:48','0000-00-00 00:00:00','',0,'http://marcelivendrell.test/?p=29',0,'post','',0),
	(30,2,'2021-01-23 16:33:55','2021-01-23 16:33:55','','Cotxes','','publish','closed','closed','','cotxes','','','2021-01-23 16:39:03','2021-01-23 16:39:03','',0,'http://marcelivendrell.test/?p=30',1,'nav_menu_item','',0),
	(31,2,'2021-01-23 16:33:55','2021-01-23 16:33:55','','Motos','','publish','closed','closed','','motos','','','2021-01-23 16:39:03','2021-01-23 16:39:03','',0,'http://marcelivendrell.test/?p=31',2,'nav_menu_item','',0),
	(32,2,'2021-01-23 16:33:55','2021-01-23 16:33:55','','Bicicletes','','publish','closed','closed','','bicicletes','','','2021-01-23 16:39:03','2021-01-23 16:39:03','',0,'http://marcelivendrell.test/?p=32',3,'nav_menu_item','',0),
	(33,2,'2021-01-23 16:33:55','2021-01-23 16:33:55','','Industria','','publish','closed','closed','','industria','','','2021-01-23 16:39:03','2021-01-23 16:39:03','',0,'http://marcelivendrell.test/?p=33',4,'nav_menu_item','',0),
	(34,2,'2021-01-23 16:33:55','2021-01-23 16:33:55','','Contacte','','publish','closed','closed','','contacte','','','2021-01-23 16:39:03','2021-01-23 16:39:03','',0,'http://marcelivendrell.test/?p=34',5,'nav_menu_item','',0),
	(35,2,'2021-01-23 17:06:28','2021-01-23 17:06:28','','Master collects a rebuilt motor for the car.','Master collects a rebuilt motor for the car.','inherit','open','closed','','master-collects-a-rebuilt-motor-for-the-car','','','2021-01-23 17:06:28','2021-01-23 17:06:28','',2,'http://marcelivendrell.test/wp-content/uploads/2021/01/master-collects-rebuilt-motor-for-the-car.jpg',0,'attachment','image/jpeg',0),
	(36,2,'2021-01-23 17:06:37','2021-01-23 17:06:37','','Master collects a rebuilt motor for the car.','Master collects a rebuilt motor for the car.','inherit','open','closed','','master-collects-a-rebuilt-motor-for-the-car-2','','','2021-01-23 17:06:53','2021-01-23 17:06:53','',2,'http://marcelivendrell.test/wp-content/uploads/2021/01/master-collects-rebuilt-motor-for-car.jpg',0,'attachment','image/jpeg',0),
	(37,2,'2021-01-23 17:06:55','2021-01-23 17:06:55','<!-- wp:paragraph -->\n<p>Esta es una página de ejemplo. Es diferente a una entrada del blog porque permanecerá en un solo lugar y aparecerá en la navegación de tu sitio (en la mayoría de los temas). La mayoría de las personas comienzan con una página «Acerca de» que les presenta a los visitantes potenciales del sitio. Podrías decir algo así:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>¡Bienvenido! Soy camarero de día, aspirante a actor de noche y esta es mi web. Vivo en Mairena del Alcor, tengo un perro que se llama Firulais y me gusta el rebujito. (Y las tardes largas con café).</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>…o algo así:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>La empresa «Mariscos Recio» fue fundada por Antonio Recio Mata. Empezó siendo una pequeña empresa que suministraba marisco a hoteles y restaurantes, pero poco a poco se ha ido transformando en un gran imperio. Mariscos Recio, el mar al mejor precio.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Como nuevo usuario de WordPress, deberías ir a <a href=\"http://fabre-tall.test/wp-admin/\">tu escritorio</a> para borrar esta página y crear nuevas páginas para tu contenido. ¡Pásalo bien!</p>\n<!-- /wp:paragraph -->','Home','','inherit','closed','closed','','2-revision-v1','','','2021-01-23 17:06:55','2021-01-23 17:06:55','',2,'http://marcelivendrell.test/2-revision-v1/',0,'revision','',0),
	(38,2,'2021-01-24 18:04:49','2021-01-24 18:04:49','<!-- wp:paragraph -->\n<p>Esta es una página de ejemplo. Es diferente a una entrada del blog porque permanecerá en un solo lugar y aparecerá en la navegación de tu sitio (en la mayoría de los temas). La mayoría de las personas comienzan con una página «Acerca de» que les presenta a los visitantes potenciales del sitio. Podrías decir algo así:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>¡Bienvenido! Soy camarero de día, aspirante a actor de noche y esta es mi web. Vivo en Mairena del Alcor, tengo un perro que se llama Firulais y me gusta el rebujito. (Y las tardes largas con café).</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>…o algo así:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>La empresa «Mariscos Recio» fue fundada por Antonio Recio Mata. Empezó siendo una pequeña empresa que suministraba marisco a hoteles y restaurantes, pero poco a poco se ha ido transformando en un gran imperio. Mariscos Recio, el mar al mejor precio.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Como nuevo usuario de WordPress, deberías ir a <a href=\"http://fabre-tall.test/wp-admin/\">tu escritorio</a> para borrar esta página y crear nuevas páginas para tu contenido. ¡Pásalo bien!</p>\n<!-- /wp:paragraph -->','Home','','inherit','closed','closed','','2-revision-v1','','','2021-01-24 18:04:49','2021-01-24 18:04:49','',2,'http://marcelivendrell.test/2-revision-v1/',0,'revision','',0),
	(39,2,'2021-01-24 18:05:35','2021-01-24 18:05:35','a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}','Imatge de fons','imatge_background','publish','closed','closed','','field_600db6cd39ec3','','','2021-01-24 18:15:20','2021-01-24 18:15:20','',13,'http://marcelivendrell.test/?post_type=acf-field&#038;p=39',0,'acf-field','',0),
	(40,2,'2021-01-24 18:05:35','2021-01-24 18:05:35','a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:2:\"br\";}','Text','text','publish','closed','closed','','field_600db6dc39ec4','','','2021-01-24 18:18:54','2021-01-24 18:18:54','',13,'http://marcelivendrell.test/?post_type=acf-field&#038;p=40',2,'acf-field','',0),
	(41,2,'2021-01-24 18:06:17','2021-01-24 18:06:17','<!-- wp:paragraph -->\n<p>Esta es una página de ejemplo. Es diferente a una entrada del blog porque permanecerá en un solo lugar y aparecerá en la navegación de tu sitio (en la mayoría de los temas). La mayoría de las personas comienzan con una página «Acerca de» que les presenta a los visitantes potenciales del sitio. Podrías decir algo así:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>¡Bienvenido! Soy camarero de día, aspirante a actor de noche y esta es mi web. Vivo en Mairena del Alcor, tengo un perro que se llama Firulais y me gusta el rebujito. (Y las tardes largas con café).</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>…o algo así:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>La empresa «Mariscos Recio» fue fundada por Antonio Recio Mata. Empezó siendo una pequeña empresa que suministraba marisco a hoteles y restaurantes, pero poco a poco se ha ido transformando en un gran imperio. Mariscos Recio, el mar al mejor precio.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Como nuevo usuario de WordPress, deberías ir a <a href=\"http://fabre-tall.test/wp-admin/\">tu escritorio</a> para borrar esta página y crear nuevas páginas para tu contenido. ¡Pásalo bien!</p>\n<!-- /wp:paragraph -->','Home','','inherit','closed','closed','','2-revision-v1','','','2021-01-24 18:06:17','2021-01-24 18:06:17','',2,'http://marcelivendrell.test/2-revision-v1/',0,'revision','',0),
	(42,2,'2021-01-24 18:06:51','2021-01-24 18:06:51','a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}','Imatge central','imatge','publish','closed','closed','','field_600db726c80d1','','','2021-01-24 18:14:09','2021-01-24 18:14:09','',13,'http://marcelivendrell.test/?post_type=acf-field&#038;p=42',1,'acf-field','',0),
	(43,2,'2021-01-24 18:08:16','2021-01-24 18:08:16','','marcelli_logoblanc','','inherit','open','closed','','marcelli_logoblanc','','','2021-01-24 18:08:16','2021-01-24 18:08:16','',2,'http://marcelivendrell.test/wp-content/uploads/2021/01/marcelli_logoblanc.png',0,'attachment','image/png',0),
	(44,2,'2021-01-24 18:08:26','2021-01-24 18:08:26','<!-- wp:paragraph -->\n<p>Esta es una página de ejemplo. Es diferente a una entrada del blog porque permanecerá en un solo lugar y aparecerá en la navegación de tu sitio (en la mayoría de los temas). La mayoría de las personas comienzan con una página «Acerca de» que les presenta a los visitantes potenciales del sitio. Podrías decir algo así:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>¡Bienvenido! Soy camarero de día, aspirante a actor de noche y esta es mi web. Vivo en Mairena del Alcor, tengo un perro que se llama Firulais y me gusta el rebujito. (Y las tardes largas con café).</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>…o algo así:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>La empresa «Mariscos Recio» fue fundada por Antonio Recio Mata. Empezó siendo una pequeña empresa que suministraba marisco a hoteles y restaurantes, pero poco a poco se ha ido transformando en un gran imperio. Mariscos Recio, el mar al mejor precio.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Como nuevo usuario de WordPress, deberías ir a <a href=\"http://fabre-tall.test/wp-admin/\">tu escritorio</a> para borrar esta página y crear nuevas páginas para tu contenido. ¡Pásalo bien!</p>\n<!-- /wp:paragraph -->','Home','','inherit','closed','closed','','2-revision-v1','','','2021-01-24 18:08:26','2021-01-24 18:08:26','',2,'http://marcelivendrell.test/2-revision-v1/',0,'revision','',0),
	(45,2,'2021-01-24 18:12:12','2021-01-24 18:12:12','<!-- wp:paragraph -->\n<p>Esta es una página de ejemplo. Es diferente a una entrada del blog porque permanecerá en un solo lugar y aparecerá en la navegación de tu sitio (en la mayoría de los temas). La mayoría de las personas comienzan con una página «Acerca de» que les presenta a los visitantes potenciales del sitio. Podrías decir algo así:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>¡Bienvenido! Soy camarero de día, aspirante a actor de noche y esta es mi web. Vivo en Mairena del Alcor, tengo un perro que se llama Firulais y me gusta el rebujito. (Y las tardes largas con café).</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>…o algo así:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>La empresa «Mariscos Recio» fue fundada por Antonio Recio Mata. Empezó siendo una pequeña empresa que suministraba marisco a hoteles y restaurantes, pero poco a poco se ha ido transformando en un gran imperio. Mariscos Recio, el mar al mejor precio.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Como nuevo usuario de WordPress, deberías ir a <a href=\"http://fabre-tall.test/wp-admin/\">tu escritorio</a> para borrar esta página y crear nuevas páginas para tu contenido. ¡Pásalo bien!</p>\n<!-- /wp:paragraph -->','Home','','inherit','closed','closed','','2-revision-v1','','','2021-01-24 18:12:12','2021-01-24 18:12:12','',2,'http://marcelivendrell.test/2-revision-v1/',0,'revision','',0),
	(46,2,'2021-01-24 18:13:30','2021-01-24 18:13:30','<!-- wp:paragraph -->\n<p>Esta es una página de ejemplo. Es diferente a una entrada del blog porque permanecerá en un solo lugar y aparecerá en la navegación de tu sitio (en la mayoría de los temas). La mayoría de las personas comienzan con una página «Acerca de» que les presenta a los visitantes potenciales del sitio. Podrías decir algo así:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>¡Bienvenido! Soy camarero de día, aspirante a actor de noche y esta es mi web. Vivo en Mairena del Alcor, tengo un perro que se llama Firulais y me gusta el rebujito. (Y las tardes largas con café).</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>…o algo así:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>La empresa «Mariscos Recio» fue fundada por Antonio Recio Mata. Empezó siendo una pequeña empresa que suministraba marisco a hoteles y restaurantes, pero poco a poco se ha ido transformando en un gran imperio. Mariscos Recio, el mar al mejor precio.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Como nuevo usuario de WordPress, deberías ir a <a href=\"http://fabre-tall.test/wp-admin/\">tu escritorio</a> para borrar esta página y crear nuevas páginas para tu contenido. ¡Pásalo bien!</p>\n<!-- /wp:paragraph -->','Home','','inherit','closed','closed','','2-revision-v1','','','2021-01-24 18:13:30','2021-01-24 18:13:30','',2,'http://marcelivendrell.test/2-revision-v1/',0,'revision','',0),
	(47,2,'2021-01-24 18:14:23','2021-01-24 18:14:23','<!-- wp:paragraph -->\n<p>Esta es una página de ejemplo. Es diferente a una entrada del blog porque permanecerá en un solo lugar y aparecerá en la navegación de tu sitio (en la mayoría de los temas). La mayoría de las personas comienzan con una página «Acerca de» que les presenta a los visitantes potenciales del sitio. Podrías decir algo así:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>¡Bienvenido! Soy camarero de día, aspirante a actor de noche y esta es mi web. Vivo en Mairena del Alcor, tengo un perro que se llama Firulais y me gusta el rebujito. (Y las tardes largas con café).</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>…o algo así:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>La empresa «Mariscos Recio» fue fundada por Antonio Recio Mata. Empezó siendo una pequeña empresa que suministraba marisco a hoteles y restaurantes, pero poco a poco se ha ido transformando en un gran imperio. Mariscos Recio, el mar al mejor precio.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Como nuevo usuario de WordPress, deberías ir a <a href=\"http://fabre-tall.test/wp-admin/\">tu escritorio</a> para borrar esta página y crear nuevas páginas para tu contenido. ¡Pásalo bien!</p>\n<!-- /wp:paragraph -->','Home','','inherit','closed','closed','','2-revision-v1','','','2021-01-24 18:14:23','2021-01-24 18:14:23','',2,'http://marcelivendrell.test/2-revision-v1/',0,'revision','',0),
	(48,2,'2021-01-24 18:15:32','2021-01-24 18:15:32','<!-- wp:paragraph -->\n<p>Esta es una página de ejemplo. Es diferente a una entrada del blog porque permanecerá en un solo lugar y aparecerá en la navegación de tu sitio (en la mayoría de los temas). La mayoría de las personas comienzan con una página «Acerca de» que les presenta a los visitantes potenciales del sitio. Podrías decir algo así:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>¡Bienvenido! Soy camarero de día, aspirante a actor de noche y esta es mi web. Vivo en Mairena del Alcor, tengo un perro que se llama Firulais y me gusta el rebujito. (Y las tardes largas con café).</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>…o algo así:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>La empresa «Mariscos Recio» fue fundada por Antonio Recio Mata. Empezó siendo una pequeña empresa que suministraba marisco a hoteles y restaurantes, pero poco a poco se ha ido transformando en un gran imperio. Mariscos Recio, el mar al mejor precio.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Como nuevo usuario de WordPress, deberías ir a <a href=\"http://fabre-tall.test/wp-admin/\">tu escritorio</a> para borrar esta página y crear nuevas páginas para tu contenido. ¡Pásalo bien!</p>\n<!-- /wp:paragraph -->','Home','','inherit','closed','closed','','2-revision-v1','','','2021-01-24 18:15:32','2021-01-24 18:15:32','',2,'http://marcelivendrell.test/2-revision-v1/',0,'revision','',0),
	(49,2,'2021-01-24 19:03:46','2021-01-24 19:03:46','','left-arrow','','inherit','open','closed','','left-arrow','','','2021-01-24 19:03:46','2021-01-24 19:03:46','',0,'http://marcelivendrell.test/wp-content/uploads/2021/01/left-arrow.svg',0,'attachment','image/svg+xml',0),
	(50,2,'2021-01-24 19:03:46','2021-01-24 19:03:46','','right-arrow','','inherit','open','closed','','right-arrow','','','2021-01-24 19:03:46','2021-01-24 19:03:46','',0,'http://marcelivendrell.test/wp-content/uploads/2021/01/right-arrow.svg',0,'attachment','image/svg+xml',0);

/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;
UNLOCK TABLES;


# Volcado de tabla wp_term_relationships
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_term_relationships`;

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

LOCK TABLES `wp_term_relationships` WRITE;
/*!40000 ALTER TABLE `wp_term_relationships` DISABLE KEYS */;

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`)
VALUES
	(1,1,0),
	(30,2,0),
	(31,2,0),
	(32,2,0),
	(33,2,0),
	(34,2,0);

/*!40000 ALTER TABLE `wp_term_relationships` ENABLE KEYS */;
UNLOCK TABLES;


# Volcado de tabla wp_term_taxonomy
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_term_taxonomy`;

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

LOCK TABLES `wp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`)
VALUES
	(1,1,'category','',0,1),
	(2,2,'nav_menu','',0,5);

/*!40000 ALTER TABLE `wp_term_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;


# Volcado de tabla wp_termmeta
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_termmeta`;

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;



# Volcado de tabla wp_terms
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_terms`;

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

LOCK TABLES `wp_terms` WRITE;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`)
VALUES
	(1,'Sin categoría','sin-categoria',0),
	(2,'Menú','menu',0);

/*!40000 ALTER TABLE `wp_terms` ENABLE KEYS */;
UNLOCK TABLES;


# Volcado de tabla wp_usermeta
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_usermeta`;

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

LOCK TABLES `wp_usermeta` WRITE;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`)
VALUES
	(21,2,'nickname','moon'),
	(22,2,'first_name','Marc'),
	(23,2,'last_name',''),
	(24,2,'description',''),
	(25,2,'rich_editing','true'),
	(26,2,'syntax_highlighting','true'),
	(27,2,'comment_shortcuts','false'),
	(28,2,'admin_color','fresh'),
	(29,2,'use_ssl','0'),
	(30,2,'show_admin_bar_front','true'),
	(31,2,'locale',''),
	(32,2,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}'),
	(33,2,'wp_user_level','10'),
	(34,2,'dismissed_wp_pointers',''),
	(35,2,'session_tokens','a:2:{s:64:\"c400a4462c3741811d1c743eaf124151ee8bf59d5a89a7f698dade494e56b90a\";a:4:{s:10:\"expiration\";i:1611591948;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36\";s:5:\"login\";i:1611419148;}s:64:\"62fbc25e22fd07c94b7efd8965e67b701854552cd0f7b7775ed5799c72aca756\";a:4:{s:10:\"expiration\";i:1611591971;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36\";s:5:\"login\";i:1611419171;}}'),
	(36,2,'wp_dashboard_quick_press_last_post_id','29'),
	(37,2,'community-events-location','a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
	(38,2,'managenav-menuscolumnshidden','a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
	(39,2,'metaboxhidden_nav-menus','a:2:{i:0;s:22:\"add-post-type-landings\";i:1;s:12:\"add-post_tag\";}'),
	(40,2,'wp_user-settings','libraryContent=browse'),
	(41,2,'wp_user-settings-time','1611421611');

/*!40000 ALTER TABLE `wp_usermeta` ENABLE KEYS */;
UNLOCK TABLES;


# Volcado de tabla wp_users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_users`;

CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

LOCK TABLES `wp_users` WRITE;
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`)
VALUES
	(2,'moon','$P$BKtUFXNgGF3CqLyxNn/jKMG8NZcupu0','moon','marcprograma@gmail.com','','2021-01-23 16:25:17','1611419118:$P$BwQQnaudobgdRGwFkQVt2/wmGqXxCP0',0,'Marc');

/*!40000 ALTER TABLE `wp_users` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
