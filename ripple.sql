-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 08, 2022 at 01:38 PM
-- Server version: 8.0.27-0ubuntu0.21.04.1
-- PHP Version: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ripple`
--

-- --------------------------------------------------------

--
-- Table structure for table `badges`
--

CREATE TABLE `badges` (
  `id` int NOT NULL,
  `name` varchar(32) NOT NULL,
  `icon` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `badges`
--

INSERT INTO `badges` (`id`, `name`, `icon`) VALUES
(1, 'User', 'fa-user'),
(2, 'None', ' '),
(3, 'Support', 'fa-paper-plane'),
(4, 'Developer', 'fa-code'),
(5, 'Moderator', 'fa-wrench'),
(6, 'Verified', 'fa-check'),
(7, 'Bot', 'fa-android');

-- --------------------------------------------------------

--
-- Table structure for table `bancho_channels`
--

CREATE TABLE `bancho_channels` (
  `id` int NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` varchar(127) NOT NULL,
  `public_read` tinyint NOT NULL,
  `public_write` tinyint NOT NULL,
  `status` tinyint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bancho_channels`
--

INSERT INTO `bancho_channels` (`id`, `name`, `description`, `public_read`, `public_write`, `status`) VALUES
(1, '#osu', 'Main Ripple channel', 1, 1, 1),
(2, '#announce', 'Announce channel', 1, 0, 1),
(3, '#admin', 'Admin only channel', 0, 0, 1),
(4, '#italian', 'Italian community channel', 1, 1, 1),
(5, '#english', 'English speaking channel', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `bancho_messages`
--

CREATE TABLE `bancho_messages` (
  `id` int NOT NULL,
  `msg_from_userid` int NOT NULL,
  `msg_from_username` varchar(30) NOT NULL,
  `msg_to` varchar(32) NOT NULL,
  `msg` varchar(127) NOT NULL,
  `time` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bancho_messages`
--

INSERT INTO `bancho_messages` (`id`, `msg_from_userid`, `msg_from_username`, `msg_to`, `msg`, `time`) VALUES
(1, 999, 'FokaBot', '#announce', 'Minosukoachieved rank #1 on AliA - impulse (SkyFlame) [117\'s Normal]!', 1657252450),
(2, 999, 'FokaBot', '#announce', 'Minosukoachieved rank #1 on AliA - impulse (SkyFlame) [117\'s Normal]!', 1657252472),
(3, 999, 'FokaBot', '#announce', 'Minosuko achieved rank #1 on Hige Driver - Miracle Sugite Yabai (feat. shully) (Milan-) [Easy]!', 1657261155),
(4, 999, 'FokaBot', '#announce', 'Minosuko achieved rank #1 on R3 Music Box - Harumachi Clover (Nao Tomori) [Normal]!', 1657263930),
(5, 999, 'FokaBot', '#announce', 'Minosuko achieved rank #1 on Kuba Oms - All in All (Venix) [Insane]!', 1657264093),
(6, 999, 'FokaBot', '#announce', 'Minosuko achieved rank #1 on R3 Music Box - Harumachi Clover (Nao Tomori) [Hard]!', 1657269395),
(7, 999, 'FokaBot', '#announce', 'Minosuko achieved rank #1 on R3 Music Box - Harumachi Clover (Nao Tomori) [Hard]!', 1657275122),
(8, 999, 'FokaBot', '#announce', 'Minosuko achieved rank #1 on R3 Music Box - Harumachi Clover (Nao Tomori) [Normal]!', 1657275352),
(9, 999, 'FokaBot', '#announce', 'Minosuko achieved rank #1 on James Landino & Kabuki - Birdsong (Mao) [Hard]!', 1657275945),
(10, 999, 'FokaBot', '#announce', 'Minosuko achieved rank #1 on R3 Music Box - Harumachi Clover (Nao Tomori) [Insane]!', 1657276625),
(11, 999, 'FokaBot', '#announce', 'Minosuko achieved rank #1 on R3 Music Box - Harumachi Clover (Nao Tomori) [Insane]!', 1657276633),
(12, 999, 'FokaBot', '#announce', 'Minosuko achieved rank #1 on R3 Music Box - Harumachi Clover (Nao Tomori) [Insane]!', 1657276648),
(13, 999, 'FokaBot', '#announce', 'Minosuko achieved rank #1 on R3 Music Box - Harumachi Clover (Nao Tomori) [Insane]!', 1657276679),
(14, 999, 'FokaBot', '#announce', 'Minosuko achieved rank #1 on R3 Music Box - Harumachi Clover (Nao Tomori) [Insane]!', 1657276739),
(15, 999, 'FokaBot', '#announce', 'Minosuko achieved rank #1 on R3 Music Box - Harumachi Clover (Nao Tomori) [Insane]!', 1657276859),
(16, 999, 'FokaBot', '#announce', 'Minosuko achieved rank #1 on R3 Music Box - Harumachi Clover (Nao Tomori) [Insane]!', 1657277099),
(17, 999, 'FokaBot', '#announce', 'Minosuko achieved rank #1 on R3 Music Box - Harumachi Clover (Nao Tomori) [Hard]!', 1657277308),
(18, 999, 'FokaBot', '#announce', 'Minosuko achieved rank #1 on R3 Music Box - Harumachi Clover (Nao Tomori) [Insane]!', 1657277427),
(19, 999, 'FokaBot', '#announce', 'Minosuko achieved rank #1 on R3 Music Box - Harumachi Clover (Nao Tomori) [Insane]!', 1657278294),
(20, 999, 'FokaBot', '#announce', 'Minosuko achieved rank #1 on R3 Music Box - Harumachi Clover (Nao Tomori) [Insane]!', 1657278927),
(21, 999, 'FokaBot', '#announce', 'Minosuko achieved rank #1 on Kurokotei - Galaxy Collapse (Doomsday is Bad) [Galactic]!', 1657282459),
(22, 999, 'FokaBot', '#announce', 'Minosuko achieved rank #1 on Kurokotei - Galaxy Collapse (Doomsday is Bad) [Galactic]!', 1657284757),
(23, 999, 'FokaBot', '#announce', 'Minosuko achieved rank #1 on Kurokotei - Galaxy Collapse (Doomsday is Bad) [Galactic]!', 1657285024),
(24, 999, 'FokaBot', '#announce', 'Minosuko achieved rank #1 on Kurokotei - Galaxy Collapse (Doomsday is Bad) [Galaxy]!', 1657285542);

-- --------------------------------------------------------

--
-- Table structure for table `bancho_private_messages`
--

CREATE TABLE `bancho_private_messages` (
  `id` int NOT NULL,
  `msg_from_userid` int NOT NULL,
  `msg_from_username` varchar(30) NOT NULL,
  `msg_to` varchar(32) NOT NULL,
  `msg` varchar(127) NOT NULL,
  `time` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bancho_settings`
--

CREATE TABLE `bancho_settings` (
  `id` int NOT NULL,
  `name` varchar(32) NOT NULL,
  `value_int` int NOT NULL DEFAULT '0',
  `value_string` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bancho_settings`
--

INSERT INTO `bancho_settings` (`id`, `name`, `value_int`, `value_string`) VALUES
(1, 'bancho_maintenance', 0, ''),
(2, 'free_direct', 1, ''),
(3, 'menu_icon', 0, 'http://osu.zamaru.ml/owo.png|https://osu.zamaru.ml'),
(4, 'login_messages', 0, ''),
(5, 'restricted_joke', 0, ''),
(6, 'login_notification', 0, 'Welcome to Zamaru Server~'),
(7, 'osu_versions', 0, ''),
(8, 'osu_md5s', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `bancho_tokens`
--

CREATE TABLE `bancho_tokens` (
  `id` int NOT NULL,
  `token` varchar(16) NOT NULL,
  `osu_id` int NOT NULL,
  `latest_message_id` int NOT NULL,
  `latest_private_message_id` int NOT NULL,
  `latest_packet_time` int NOT NULL,
  `latest_heavy_packet_time` int NOT NULL,
  `joined_channels` varchar(512) NOT NULL,
  `game_mode` tinyint NOT NULL,
  `action` int NOT NULL,
  `action_text` varchar(128) NOT NULL,
  `kicked` tinyint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `beatmaps`
--

CREATE TABLE `beatmaps` (
  `id` int NOT NULL,
  `beatmap_id` int NOT NULL DEFAULT '0',
  `beatmapset_id` int NOT NULL DEFAULT '0',
  `beatmap_md5` varchar(32) NOT NULL DEFAULT '',
  `song_name` varchar(128) NOT NULL DEFAULT '',
  `ar` float NOT NULL DEFAULT '0',
  `od` float NOT NULL DEFAULT '0',
  `difficulty` float NOT NULL DEFAULT '0',
  `max_combo` int NOT NULL DEFAULT '0',
  `hit_length` int NOT NULL DEFAULT '0',
  `ranked` tinyint NOT NULL DEFAULT '0',
  `latest_update` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `beatmaps_names`
--

CREATE TABLE `beatmaps_names` (
  `id` int NOT NULL,
  `beatmap_md5` varchar(32) NOT NULL DEFAULT '',
  `beatmap_name` varchar(256) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `beatmaps_names`
--

INSERT INTO `beatmaps_names` (`id`, `beatmap_md5`, `beatmap_name`) VALUES
(1, '1c8acf14e1c409d1a27ff1e08f22ea67', 'Kuba Oms - All in All (Venix) [Easy]'),
(2, '4eaf42e1d7680f796da0bc3514ef1027', 'Kuba Oms - My Love (Redside Remix) (feat. Hatsune Miku) (Noffy) [Collab Insane]'),
(3, '0b9d36a91000245832711205cf9190a0', 'Kuba Oms - My Love (Redside Remix) (feat. Hatsune Miku) (Noffy) [Collab Normal]'),
(4, 'c8cd0dd0f9535d67d5cf38231e336d24', 'Thaehan - Insert Coin (komasy) [Kantan]'),
(5, '6a789dcc6aefaf75f0b971eaa0b58ee8', 'Hige Driver - Miracle Sugite Yabai (feat. shully) (Milan-) [Easy]'),
(6, 'ac1c592671a6f0cc3867dcadeb26b69e', 'Kuba Oms - All in All (Venix) [Insane]'),
(7, '3fbe33fb9526f21364232ff5cc48c7b5', 'Hanasaka Yui (CV M.A.O) - Harumachi Clover (HaziminX) [Easy]'),
(8, '04c0a01d573caeb911058fa161dbc5a3', 'Hanasaka Yui (CV M.A.O) - Harumachi Clover (HaziminX) [Hard]'),
(9, '6e9a28d621723d783cdc3aac074928f5', 'Kurokotei - Galaxy Collapse (Smokahontas) [Galactic Colonization]'),
(10, 'd7b1265f3cdde83c7caed9e4fb083eb3', 'Kurokotei - galaxy collapse (sigg666) [Insane]'),
(11, '4ef522af9810c799db7f862044a3f7da', 'Glaxy - Galaxy Collapse (lxcd) [Nebula]'),
(12, 'fa4a36e6a9c9b8a88a59c17eb5010bf2', 'Kurokotei - Galaxy Collapse (Smokahontas) [Quasi-Stellar Luminosity]'),
(13, '6f519939e2268afde6885cc5b7893b5a', 'AliA - impulse (SkyFlame) [Easy]'),
(14, '06b536749d5a59536983854be90504ee', 'nekodex - new beginnings (pishifat) [tutorial]'),
(15, '892ca955b7705e5b738c96da572745f0', 'James Landino - Reaction feat. Slyleaf (AncuL) [Normal]'),
(16, '9c8eb80f6e245b5b0a0a100bbb3e274c', 'antiPLUR - Runengon (Raveille) [Easy]'),
(17, '9b2ae8e640f4cb9f7c15f40a137a8041', 'tieff - Take Your Swimsuit (PandaHero) [Hinsvar\'s Easy]'),
(18, '38ecf5d406220ee02cc7d4e8b9bb402a', 'Inferi - The Ruin of Mankind (Rhytoly) [Rhyshell\'s Kantan]'),
(19, 'a650a54eb72c49cb027cb95c97076aeb', 'cYsmix - The Ballad of a Mindless Girl (Mir) [Gero\'s Easy]'),
(20, 'ec8c7aded09908a8dbce4611a4ddacd8', 'Camellia feat. Nanahira - Bassdrop Freaks (Long Ver.) (eclessia) [_]'),
(21, '21f22296d14fee6b7e6fb64b8645dd11', 'James Landino & Kabuki - Birdsong (_Kobii) [Leni\'s Easy]'),
(22, 'f1894d1c719016720d110aac687d0da9', 'Kariyu - Freedom Dive Freestyle (prod. chronotrbl) (WeshLaStreet_) [KARIYU DIMENSIONS]'),
(23, '5656de23e7c27e8d1b3d31da9af25404', 'Hige Driver - Miracle Sugite Yabai (feat. shully) (Milan-) [Normal]'),
(24, '45e04d58c906f0fe1ff96f19fe9ee240', 'Thaehan - Insert Coin (komasy) [Futsuu]'),
(25, 'e0b3f8b3d7b4e9db0a5947acd294f629', 'AliA - impulse (SkyFlame) [kotachi\'s Insane]'),
(26, 'ffb8d8ba7e9ea5cf96acdcdb4739682d', 'AliA - impulse (SkyFlame) [117\'s Normal]'),
(27, '8fe0edab9a24f9fa028ac0117f8b9070', 'Home Made Kazoku - Shonen Heart (ZZT the Fifth) [Hard]'),
(28, 'd5f13a7a28107dccb128ac0d099b4dd7', 'Thaehan - Bwa ! (Deif) [ZiRoX\'s Cup]'),
(29, 'e1ee349919359ce600d2742145a613b9', 'Toyama Nao - Flower ([Karcher]) [Hope]'),
(30, 'f26dd7292fe3838d06f7337b540d28d0', 'Fractal Dreamers - Everything for a Dream (JBHyperion) [Cup]'),
(31, '9384205472e0b0165a611a2c8e699a28', 'James Landino & Kabuki - Birdsong (Mao) [Easy]'),
(32, '9993416e8053896a520a26472111a268', 'Nakanojojo - Bittersweet (feat. Kuishinboakachan a.k.a Kiato) (qoot8123) [Nardo\'s Futsuu]'),
(33, '98a6e1699d0aa79fb32104f546389b5b', 'mona (CV Natsukawa Shiina) - Fansa (Cut Ver.) (ML-ysg) [Easy]'),
(34, 'd4e7c090e0e332fe03ce07001e6e9ead', 'R3 Music Box - Harumachi Clover (Nao Tomori) [Hard]'),
(35, 'de1ee289f996324e3ad96b6e9bd643b0', 'R3 Music Box - Harumachi Clover (Nao Tomori) [Normal]'),
(36, '5afdc7afbcac2b042901be7affea9e0c', 'James Landino & Kabuki - Birdsong (Mao) [Normal]'),
(37, '75d096519757c7ab3d4329f9c4746e92', 'onumi - PERSONALITY (Ascendance) [AFB\'s Cup]'),
(38, 'c8dffce4a7bc2335755898c00bf319d1', 'Home Made Kazoku - Shonen Heart (ZZT the Fifth) [Normal]'),
(39, 'fc4448c89fa4922dc62c4a0496d75ced', 'Dictate - Militant (NeilPerry) [Easy]'),
(40, '1aaf72605cc2a3f45a40f2d0a181368d', 'Dictate - Militant (NeilPerry) [Extra]'),
(41, '83097d99bef77d7977c06aca7d850225', 'tieff - Take Your Swimsuit (PandaHero) [Trynna\'s Hard]'),
(42, 'b38fba8a0c06d56fff78724775a180c6', 'Fractal Dreamers - Everything for a Dream (JBHyperion) [Platter]'),
(43, 'a9a0a55423231241fc155a441b2e9afb', 'R3 Music Box - Harumachi Clover (Nao Tomori) [Insane]'),
(44, 'f523eee8ec16932c19864e3e405a9f2c', 'James Landino & Kabuki - Birdsong (Mao) [Hard]'),
(45, 'c555cc19f467eff636a095ab2cf2aa93', 'xi - FREEDOM DiVE (Kaijuoa Bootleg Remix) (-Yubi-) [JACK CiTY]'),
(46, '3daa52513210010b3a58c5f4e4f0a49c', 'cYsmix - The Ballad of a Mindless Girl (Mir) [Chaoz\'s Hard]'),
(47, 'b47b79ae9e1efaa568c8c4c5c6e0b879', 'onumi - PERSONALITY (Ascendance) [IDU5T\'S PLATTER]'),
(48, '6641bb4e0c1334af33eb92b57f25ac10', 'James Landino - Reaction feat. Slyleaf (AncuL) [Hard]'),
(49, 'b3a2c6b611f9423e24a70b92f263a9ff', 'Raphlesia & BilliumMoto - My Love (Mao) [Easy]'),
(50, '07481eb97c4a22691bc492d82e4af3b1', 'K A Z M A S A - Bon Appetit S (Oldskool HappyHardcore Remix) (Short Ver.) (BarkingMadDog) [blend s (260 bpm)]'),
(51, '360624e7220b48406ebe01ff67e2913d', 'Kurokotei - Galaxy Collapse (paz08) [Quasar]'),
(52, '97a47146544c1c2dc95149ddc2a7f6d5', 'The Koxx - A FOOL MOON NIGHT (Astar) [Friendofox\'s Galaxy]'),
(53, 'a3ff853958424202b29f6b4addf0d61b', 'Kurokotei - Galaxy Collapse (Mat) [Cataclysmic Hypernova]'),
(54, '5b6fd7d419cee95aeed9744c5f033640', 'Kurokotei - Galaxy Collapse (Doomsday is Bad) [Galaxy]'),
(55, '743b6117b25b2253cf5f7dbb3d809403', 'Kurokotei - Galaxy Collapse (Doomsday is Bad) [Galactic]');

-- --------------------------------------------------------

--
-- Table structure for table `beta_keys`
--

CREATE TABLE `beta_keys` (
  `id` int NOT NULL,
  `key_md5` varchar(32) NOT NULL DEFAULT '',
  `description` varchar(128) NOT NULL DEFAULT '',
  `allowed` tinyint NOT NULL DEFAULT '0',
  `public` tinyint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `beta_keys`
--

INSERT INTO `beta_keys` (`id`, `key_md5`, `description`, `allowed`, `public`) VALUES
(1, '110fe4a3830966be01d0b513fcdb4f66', 'betakey', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `docs`
--

CREATE TABLE `docs` (
  `id` int UNSIGNED NOT NULL,
  `doc_name` varchar(255) NOT NULL DEFAULT 'New Documentation File',
  `doc_contents` mediumtext NOT NULL,
  `public` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `old_name` varchar(200) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `leaderboard_ctb`
--

CREATE TABLE `leaderboard_ctb` (
  `position` int UNSIGNED NOT NULL,
  `user` int NOT NULL,
  `v` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `leaderboard_ctb`
--

INSERT INTO `leaderboard_ctb` (`position`, `user`, `v`) VALUES
(1, 1000, 0),
(2, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `leaderboard_mania`
--

CREATE TABLE `leaderboard_mania` (
  `position` int UNSIGNED NOT NULL,
  `user` int NOT NULL,
  `v` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `leaderboard_mania`
--

INSERT INTO `leaderboard_mania` (`position`, `user`, `v`) VALUES
(1, 1000, 0),
(2, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `leaderboard_std`
--

CREATE TABLE `leaderboard_std` (
  `position` int UNSIGNED NOT NULL,
  `user` int NOT NULL,
  `v` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `leaderboard_std`
--

INSERT INTO `leaderboard_std` (`position`, `user`, `v`) VALUES
(1, 1000, 40),
(2, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `leaderboard_taiko`
--

CREATE TABLE `leaderboard_taiko` (
  `position` int UNSIGNED NOT NULL,
  `user` int NOT NULL,
  `v` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `leaderboard_taiko`
--

INSERT INTO `leaderboard_taiko` (`position`, `user`, `v`) VALUES
(1, 1000, 0),
(2, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `password_recovery`
--

CREATE TABLE `password_recovery` (
  `id` int NOT NULL,
  `k` varchar(80) NOT NULL,
  `u` varchar(30) NOT NULL,
  `t` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `remember`
--

CREATE TABLE `remember` (
  `id` int NOT NULL,
  `userid` int NOT NULL,
  `series_identifier` int DEFAULT NULL,
  `token_sha` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `remember`
--

INSERT INTO `remember` (`id`, `userid`, `series_identifier`, `token_sha`) VALUES
(3, 1000, 139629359, 'ea5d66ad7a8793685d4cc01ffacdb188df139787de4b1ca54aef944bc6d8da75');

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE `reports` (
  `id` int NOT NULL,
  `name` varchar(128) NOT NULL,
  `from_username` varchar(32) NOT NULL,
  `content` varchar(1024) NOT NULL,
  `type` tinyint NOT NULL,
  `open_time` varchar(18) NOT NULL,
  `update_time` varchar(18) NOT NULL,
  `status` tinyint NOT NULL,
  `response` varchar(1024) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `scores`
--

CREATE TABLE `scores` (
  `id` int NOT NULL,
  `beatmap_md5` varchar(32) NOT NULL DEFAULT '',
  `username` varchar(30) NOT NULL DEFAULT '',
  `score` bigint DEFAULT NULL,
  `max_combo` int NOT NULL DEFAULT '0',
  `full_combo` tinyint(1) NOT NULL DEFAULT '0',
  `mods` int NOT NULL DEFAULT '0',
  `300_count` int NOT NULL DEFAULT '0',
  `100_count` int NOT NULL DEFAULT '0',
  `50_count` int NOT NULL DEFAULT '0',
  `katus_count` int NOT NULL DEFAULT '0',
  `gekis_count` int NOT NULL DEFAULT '0',
  `misses_count` int NOT NULL DEFAULT '0',
  `time` varchar(18) NOT NULL DEFAULT '',
  `play_mode` tinyint NOT NULL DEFAULT '0',
  `completed` tinyint NOT NULL DEFAULT '0',
  `accuracy` float(15,12) DEFAULT NULL,
  `pp` float DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `scores`
--

INSERT INTO `scores` (`id`, `beatmap_md5`, `username`, `score`, `max_combo`, `full_combo`, `mods`, `300_count`, `100_count`, `50_count`, `katus_count`, `gekis_count`, `misses_count`, `time`, `play_mode`, `completed`, `accuracy`, `pp`) VALUES
(1, '6f519939e2268afde6885cc5b7893b5a', 'Minosuko', 1085676, 300, 0, 0, 266, 19, 5, 17, 47, 0, '220708013954', 0, 3, 94.195404052734, 0),
(2, '6f519939e2268afde6885cc5b7893b5a', 'Minosuko', 1085676, 300, 0, 0, 266, 19, 5, 17, 47, 0, '220708013954', 0, 2, 94.195404052734, 0),
(3, '6f519939e2268afde6885cc5b7893b5a', 'Minosuko', 1085676, 300, 0, 0, 266, 19, 5, 17, 47, 0, '220708013954', 0, 2, 94.195404052734, 0),
(4, '6f519939e2268afde6885cc5b7893b5a', 'Minosuko', 1085676, 300, 0, 0, 266, 19, 5, 17, 47, 0, '220708013954', 0, 2, 94.195404052734, 0),
(5, '6f519939e2268afde6885cc5b7893b5a', 'Minosuko', 1085676, 300, 0, 0, 266, 19, 5, 17, 47, 0, '220708013954', 0, 2, 94.195404052734, 0),
(6, '6f519939e2268afde6885cc5b7893b5a', 'Minosuko', 1085676, 300, 0, 0, 266, 19, 5, 17, 47, 0, '220708013954', 0, 2, 94.195404052734, 86.4375),
(7, '6f519939e2268afde6885cc5b7893b5a', 'Minosuko', 1085676, 300, 0, 0, 266, 19, 5, 17, 47, 0, '220708013954', 0, 3, 94.195404052734, 86.4375),
(8, '6f519939e2268afde6885cc5b7893b5a', 'Minosuko', 1085676, 300, 0, 0, 266, 19, 5, 17, 47, 0, '220708013954', 0, 3, 94.195404052734, 86.4375),
(9, '6f519939e2268afde6885cc5b7893b5a', 'Minosuko', 1085676, 300, 0, 0, 266, 19, 5, 17, 47, 0, '220708013954', 0, 3, 94.195404052734, 86.4375),
(10, '6f519939e2268afde6885cc5b7893b5a', 'Minosuko', 1085676, 300, 0, 0, 266, 19, 5, 17, 47, 0, '220708013954', 0, 3, 94.195404052734, 86.4375),
(11, '6f519939e2268afde6885cc5b7893b5a', 'Minosuko', 1085676, 300, 0, 0, 266, 19, 5, 17, 47, 0, '220708013954', 0, 3, 94.195404052734, 86.4375),
(12, '6f519939e2268afde6885cc5b7893b5a', 'Minosuko', 1085676, 300, 0, 0, 266, 19, 5, 17, 47, 0, '220708013954', 0, 3, 94.195404052734, 86.4375),
(13, '6f519939e2268afde6885cc5b7893b5a', 'Minosuko', 1085676, 300, 0, 0, 266, 19, 5, 17, 47, 0, '220708013954', 0, 3, 94.195404052734, 86.4375),
(14, '6f519939e2268afde6885cc5b7893b5a', 'Minosuko', 1085676, 300, 0, 0, 266, 19, 5, 17, 47, 0, '220708013954', 0, 3, 94.195404052734, 86.4375),
(15, '6f519939e2268afde6885cc5b7893b5a', 'Minosuko', 1085676, 300, 0, 0, 266, 19, 5, 17, 47, 0, '220708013954', 0, 3, 94.195404052734, 86.4375),
(16, '6f519939e2268afde6885cc5b7893b5a', 'Minosuko', 1085676, 300, 0, 0, 266, 19, 5, 17, 47, 0, '220708013954', 0, 3, 94.195404052734, 86.4375),
(17, '6f519939e2268afde6885cc5b7893b5a', 'Minosuko', 1085676, 300, 0, 0, 266, 19, 5, 17, 47, 0, '220708013954', 0, 3, 94.195404052734, 86.4375),
(18, 'ffb8d8ba7e9ea5cf96acdcdb4739682d', 'Minosuko', 343876, 108, 0, 0, 174, 42, 8, 23, 16, 12, '220708034653', 0, 3, 80.225990295410, 0.87459),
(19, 'ffb8d8ba7e9ea5cf96acdcdb4739682d', 'Minosuko', 343876, 108, 0, 0, 174, 42, 8, 23, 16, 12, '220708034653', 0, 3, 80.225990295410, 0.87459),
(20, 'ffb8d8ba7e9ea5cf96acdcdb4739682d', 'Minosuko', 1141374, 179, 0, 0, 327, 57, 6, 31, 38, 4, '220708035111', 0, 3, 88.071067810059, 11.5921),
(21, 'ffb8d8ba7e9ea5cf96acdcdb4739682d', 'Minosuko', 1141374, 179, 0, 0, 327, 57, 6, 31, 38, 4, '220708035111', 0, 3, 88.071067810059, 11.5921),
(22, 'ffb8d8ba7e9ea5cf96acdcdb4739682d', 'Minosuko', 1141374, 179, 0, 0, 327, 57, 6, 31, 38, 4, '220708035111', 0, 3, 88.071067810059, 11.5921),
(23, 'ffb8d8ba7e9ea5cf96acdcdb4739682d', 'Minosuko', 1141374, 179, 0, 0, 327, 57, 6, 31, 38, 4, '220708035111', 0, 3, 88.071067810059, 11.5921),
(24, 'ffb8d8ba7e9ea5cf96acdcdb4739682d', 'Minosuko', 1141374, 179, 0, 0, 327, 57, 6, 31, 38, 4, '220708035111', 0, 3, 88.071067810059, 11.5921),
(25, 'ffb8d8ba7e9ea5cf96acdcdb4739682d', 'Minosuko', 1141374, 179, 0, 0, 327, 57, 6, 31, 38, 4, '220708035111', 0, 3, 88.071067810059, 11.5921),
(26, 'ffb8d8ba7e9ea5cf96acdcdb4739682d', 'Minosuko', 1141374, 179, 0, 0, 327, 57, 6, 31, 38, 4, '220708035111', 0, 3, 88.071067810059, 11.5921),
(27, '6a789dcc6aefaf75f0b971eaa0b58ee8', 'Minosuko', 182651, 142, 0, 576, 82, 15, 2, 12, 16, 0, '220708061913', 0, 3, 88.215484619141, 7.34736),
(28, '6a789dcc6aefaf75f0b971eaa0b58ee8', 'Minosuko', 182651, 142, 0, 576, 82, 15, 2, 12, 16, 0, '220708061913', 0, 3, 88.215484619141, 7.34736),
(29, '6a789dcc6aefaf75f0b971eaa0b58ee8', 'Minosuko', 182651, 142, 0, 576, 82, 15, 2, 12, 16, 0, '220708061913', 0, 3, 88.215484619141, 7.34736),
(30, '6a789dcc6aefaf75f0b971eaa0b58ee8', 'Minosuko', 182651, 142, 0, 576, 82, 15, 2, 12, 16, 0, '220708061913', 0, 3, 88.215484619141, 7.34736),
(31, '6a789dcc6aefaf75f0b971eaa0b58ee8', 'Minosuko', 182651, 142, 0, 576, 82, 15, 2, 12, 16, 0, '220708061913', 0, 3, 88.215484619141, 7.34736),
(32, '6a789dcc6aefaf75f0b971eaa0b58ee8', 'Minosuko', 182651, 142, 0, 576, 82, 15, 2, 12, 16, 0, '220708061913', 0, 3, 88.215484619141, 7.34736),
(33, '6a789dcc6aefaf75f0b971eaa0b58ee8', 'Minosuko', 182651, 142, 0, 576, 82, 15, 2, 12, 16, 0, '220708061913', 0, 3, 88.215484619141, 7.34736),
(34, '6a789dcc6aefaf75f0b971eaa0b58ee8', 'Minosuko', 182651, 142, 0, 576, 82, 15, 2, 12, 16, 0, '220708061913', 0, 3, 88.215484619141, 7.34736),
(35, '6a789dcc6aefaf75f0b971eaa0b58ee8', 'Minosuko', 182651, 142, 0, 576, 82, 15, 2, 12, 16, 0, '220708061913', 0, 3, 88.215484619141, 7.34736),
(36, '6a789dcc6aefaf75f0b971eaa0b58ee8', 'Minosuko', 182651, 142, 0, 576, 82, 15, 2, 12, 16, 0, '220708061913', 0, 3, 88.215484619141, 7.34736),
(37, '6a789dcc6aefaf75f0b971eaa0b58ee8', 'Minosuko', 182651, 142, 0, 576, 82, 15, 2, 12, 16, 0, '220708061913', 0, 3, 88.215484619141, 7.34736),
(38, '6a789dcc6aefaf75f0b971eaa0b58ee8', 'Minosuko', 182651, 142, 0, 576, 82, 15, 2, 12, 16, 0, '220708061913', 0, 3, 88.215484619141, 7.34736),
(39, '6a789dcc6aefaf75f0b971eaa0b58ee8', 'Minosuko', 182651, 142, 0, 576, 82, 15, 2, 12, 16, 0, '220708061913', 0, 3, 88.215484619141, 7.34736),
(40, '6a789dcc6aefaf75f0b971eaa0b58ee8', 'Minosuko', 182651, 142, 0, 576, 82, 15, 2, 12, 16, 0, '220708061913', 0, 3, 88.215484619141, 7.34736),
(41, '6a789dcc6aefaf75f0b971eaa0b58ee8', 'Minosuko', 182651, 142, 0, 576, 82, 15, 2, 12, 16, 0, '220708061913', 0, 3, 88.215484619141, 7.34736),
(42, '6a789dcc6aefaf75f0b971eaa0b58ee8', 'Minosuko', 182651, 142, 0, 576, 82, 15, 2, 12, 16, 0, '220708061913', 0, 3, 88.215484619141, 7.34736),
(43, 'de1ee289f996324e3ad96b6e9bd643b0', 'Minosuko', 32319, 28, 0, 584, 42, 25, 2, 5, 3, 5, '220708070528', 0, 2, 68.468467712402, 0.0511199),
(44, 'ac1c592671a6f0cc3867dcadeb26b69e', 'Minosuko', 40026, 49, 0, 0, 28, 8, 9, 2, 6, 7, '220708070811', 0, 3, 61.858974456787, 0.0772799),
(45, '6a789dcc6aefaf75f0b971eaa0b58ee8', 'Minosuko', 182651, 142, 0, 576, 82, 15, 2, 12, 16, 0, '220708061913', 0, 3, 88.215484619141, 7.34736),
(46, '6a789dcc6aefaf75f0b971eaa0b58ee8', 'Minosuko', 182651, 142, 0, 576, 82, 15, 2, 12, 16, 0, '220708061913', 0, 3, 88.215484619141, 7.34736),
(47, '6a789dcc6aefaf75f0b971eaa0b58ee8', 'Minosuko', 182651, 142, 0, 576, 82, 15, 2, 12, 16, 0, '220708061913', 0, 3, 88.215484619141, 7.34736),
(48, '6a789dcc6aefaf75f0b971eaa0b58ee8', 'Minosuko', 182651, 142, 0, 576, 82, 15, 2, 12, 16, 0, '220708061913', 0, 3, 88.215484619141, 7.34736),
(49, '6a789dcc6aefaf75f0b971eaa0b58ee8', 'Minosuko', 182651, 142, 0, 576, 82, 15, 2, 12, 16, 0, '220708061913', 0, 3, 88.215484619141, 7.34736),
(50, '6a789dcc6aefaf75f0b971eaa0b58ee8', 'Minosuko', 182651, 142, 0, 576, 82, 15, 2, 12, 16, 0, '220708061913', 0, 3, 88.215484619141, 7.34736),
(51, '6a789dcc6aefaf75f0b971eaa0b58ee8', 'Minosuko', 182651, 142, 0, 576, 82, 15, 2, 12, 16, 0, '220708061913', 0, 3, 88.215484619141, 7.34736),
(52, '6a789dcc6aefaf75f0b971eaa0b58ee8', 'Minosuko', 182651, 142, 0, 576, 82, 15, 2, 12, 16, 0, '220708061913', 0, 3, 88.215484619141, 7.34736),
(53, '6a789dcc6aefaf75f0b971eaa0b58ee8', 'Minosuko', 182651, 142, 0, 576, 82, 15, 2, 12, 16, 0, '220708061913', 0, 3, 88.215484619141, 7.34736),
(54, '6a789dcc6aefaf75f0b971eaa0b58ee8', 'Minosuko', 182651, 142, 0, 576, 82, 15, 2, 12, 16, 0, '220708061913', 0, 2, 88.215484619141, 7.34736),
(55, 'd4e7c090e0e332fe03ce07001e6e9ead', 'Minosuko', 105566, 66, 0, 72, 50, 22, 5, 8, 3, 3, '220708083413', 0, 2, 72.708335876465, 0.587663),
(56, 'd4e7c090e0e332fe03ce07001e6e9ead', 'Minosuko', 105566, 66, 0, 72, 50, 22, 5, 8, 3, 3, '220708083413', 0, 2, 72.708335876465, 0.587663),
(57, 'd4e7c090e0e332fe03ce07001e6e9ead', 'Minosuko', 105566, 66, 0, 72, 50, 22, 5, 8, 3, 3, '220708083413', 0, 2, 72.708335876465, 0.587663),
(58, 'd4e7c090e0e332fe03ce07001e6e9ead', 'Minosuko', 105566, 66, 0, 72, 50, 22, 5, 8, 3, 3, '220708083413', 0, 2, 72.708335876465, 0.587663),
(59, 'd4e7c090e0e332fe03ce07001e6e9ead', 'Minosuko', 105566, 66, 0, 72, 50, 22, 5, 8, 3, 3, '220708083413', 0, 2, 72.708335876465, 0.587663),
(60, 'd4e7c090e0e332fe03ce07001e6e9ead', 'Minosuko', 105566, 66, 0, 72, 50, 22, 5, 8, 3, 3, '220708083413', 0, 2, 72.708335876465, 0.587663),
(61, 'd4e7c090e0e332fe03ce07001e6e9ead', 'Minosuko', 105566, 66, 0, 72, 50, 22, 5, 8, 3, 3, '220708083413', 0, 2, 72.708335876465, 0.587663),
(62, 'd4e7c090e0e332fe03ce07001e6e9ead', 'Minosuko', 105566, 66, 0, 72, 50, 22, 5, 8, 3, 3, '220708083413', 0, 2, 72.708335876465, 0.587663),
(63, 'd4e7c090e0e332fe03ce07001e6e9ead', 'Minosuko', 105566, 66, 0, 72, 50, 22, 5, 8, 3, 3, '220708083413', 0, 2, 72.708335876465, 0.587663),
(64, 'd4e7c090e0e332fe03ce07001e6e9ead', 'Minosuko', 105566, 66, 0, 72, 50, 22, 5, 8, 3, 3, '220708083413', 0, 2, 72.708335876465, 0.587663),
(65, 'd4e7c090e0e332fe03ce07001e6e9ead', 'Minosuko', 105566, 66, 0, 72, 50, 22, 5, 8, 3, 3, '220708083413', 0, 2, 72.708335876465, 0.587663),
(66, 'd4e7c090e0e332fe03ce07001e6e9ead', 'Minosuko', 105566, 66, 0, 72, 50, 22, 5, 8, 3, 3, '220708083413', 0, 2, 72.708335876465, 0.587663),
(67, 'd4e7c090e0e332fe03ce07001e6e9ead', 'Minosuko', 105566, 66, 0, 72, 50, 22, 5, 8, 3, 3, '220708083413', 0, 2, 72.708335876465, 0.587663),
(68, 'd4e7c090e0e332fe03ce07001e6e9ead', 'Minosuko', 105566, 66, 0, 72, 50, 22, 5, 8, 3, 3, '220708083413', 0, 2, 72.708335876465, 0.587663),
(69, 'd4e7c090e0e332fe03ce07001e6e9ead', 'Minosuko', 105566, 66, 0, 72, 50, 22, 5, 8, 3, 3, '220708083413', 0, 2, 72.708335876465, 0.587663),
(70, 'd4e7c090e0e332fe03ce07001e6e9ead', 'Minosuko', 105566, 66, 0, 72, 50, 22, 5, 8, 3, 3, '220708083413', 0, 2, 72.708335876465, 0.587663),
(71, 'd4e7c090e0e332fe03ce07001e6e9ead', 'Minosuko', 105566, 66, 0, 72, 50, 22, 5, 8, 3, 3, '220708083413', 0, 2, 72.708335876465, 0.587663),
(72, 'd4e7c090e0e332fe03ce07001e6e9ead', 'Minosuko', 105566, 66, 0, 72, 50, 22, 5, 8, 3, 3, '220708083413', 0, 2, 72.708335876465, 0.587663),
(73, 'd4e7c090e0e332fe03ce07001e6e9ead', 'Minosuko', 105566, 66, 0, 72, 50, 22, 5, 8, 3, 3, '220708083413', 0, 2, 72.708335876465, 0.587663),
(74, 'd4e7c090e0e332fe03ce07001e6e9ead', 'Minosuko', 105566, 66, 0, 72, 50, 22, 5, 8, 3, 3, '220708083413', 0, 2, 72.708335876465, 0.587663),
(75, 'd4e7c090e0e332fe03ce07001e6e9ead', 'Minosuko', 105566, 66, 0, 72, 50, 22, 5, 8, 3, 3, '220708083413', 0, 2, 72.708335876465, 0.587663),
(76, 'd4e7c090e0e332fe03ce07001e6e9ead', 'Minosuko', 105566, 66, 0, 72, 50, 22, 5, 8, 3, 3, '220708083413', 0, 2, 72.708335876465, 0.587663),
(77, 'd4e7c090e0e332fe03ce07001e6e9ead', 'Minosuko', 255354, 107, 1, 72, 78, 2, 0, 2, 13, 0, '220708101200', 0, 2, 98.333335876465, 6.94844),
(78, 'de1ee289f996324e3ad96b6e9bd643b0', 'Minosuko', 85317, 47, 0, 72, 72, 2, 0, 2, 13, 0, '220708101550', 0, 3, 98.198196411133, 1.02267),
(79, 'f523eee8ec16932c19864e3e405a9f2c', 'Minosuko', 197311, 61, 0, 72, 107, 6, 0, 2, 26, 12, '220708102542', 0, 3, 87.199996948242, 0.268112),
(80, 'd4e7c090e0e332fe03ce07001e6e9ead', 'Minosuko', 261405, 107, 1, 72, 79, 1, 0, 1, 14, 0, '220708104809', 0, 3, 99.166664123535, 0),
(81, 'a9a0a55423231241fc155a441b2e9afb', 'Minosuko', 106170, 50, 0, 72, 90, 4, 0, 3, 16, 12, '220708105024', 0, 2, 86.163520812988, 0),
(82, 'a9a0a55423231241fc155a441b2e9afb', 'Minosuko', 331889, 106, 1, 72, 101, 5, 0, 4, 22, 0, '220708110354', 0, 2, 96.855346679688, 20.4371),
(83, 'a9a0a55423231241fc155a441b2e9afb', 'Minosuko', 336696, 106, 1, 72, 103, 3, 0, 3, 23, 0, '220708111427', 0, 3, 98.113204956055, 20.4674),
(84, 'a9a0a55423231241fc155a441b2e9afb', 'Minosuko', 336696, 106, 1, 72, 103, 3, 0, 3, 23, 0, '220708111427', 0, 2, 98.113204956055, 20.4674),
(85, 'a9a0a55423231241fc155a441b2e9afb', 'Minosuko', 336696, 106, 1, 72, 103, 3, 0, 3, 23, 0, '220708111427', 0, 2, 98.113204956055, 20.4674),
(86, 'a9a0a55423231241fc155a441b2e9afb', 'Minosuko', 336696, 106, 1, 72, 103, 3, 0, 3, 23, 0, '220708111427', 0, 2, 98.113204956055, 20.4674),
(87, 'a9a0a55423231241fc155a441b2e9afb', 'Minosuko', 336696, 106, 1, 72, 103, 3, 0, 3, 23, 0, '220708111427', 0, 2, 98.113204956055, 20.4674),
(88, 'a9a0a55423231241fc155a441b2e9afb', 'Minosuko', 336696, 106, 1, 72, 103, 3, 0, 3, 23, 0, '220708111427', 0, 2, 98.113204956055, 20.4674),
(89, 'a9a0a55423231241fc155a441b2e9afb', 'Minosuko', 336696, 106, 1, 72, 103, 3, 0, 3, 23, 0, '220708111427', 0, 2, 98.113204956055, 20.4674),
(90, 'a9a0a55423231241fc155a441b2e9afb', 'Minosuko', 336696, 106, 1, 72, 103, 3, 0, 3, 23, 0, '220708111427', 0, 2, 98.113204956055, 20.4674),
(91, 'a9a0a55423231241fc155a441b2e9afb', 'Minosuko', 336696, 106, 1, 72, 103, 3, 0, 3, 23, 0, '220708111427', 0, 2, 98.113204956055, 20.4674),
(92, 'a9a0a55423231241fc155a441b2e9afb', 'Minosuko', 336696, 106, 1, 72, 103, 3, 0, 3, 23, 0, '220708111427', 0, 3, 98.113204956055, 20.4674),
(93, 'a9a0a55423231241fc155a441b2e9afb', 'Minosuko', 336696, 106, 1, 72, 103, 3, 0, 3, 23, 0, '220708111427', 0, 3, 98.113204956055, 20.4674),
(94, 'a9a0a55423231241fc155a441b2e9afb', 'Minosuko', 336696, 106, 1, 72, 103, 3, 0, 3, 23, 0, '220708111427', 0, 3, 98.113204956055, 20.4674),
(95, 'a9a0a55423231241fc155a441b2e9afb', 'Minosuko', 336696, 106, 1, 72, 103, 3, 0, 3, 23, 0, '220708111427', 0, 3, 98.113204956055, 20.4674),
(96, 'a9a0a55423231241fc155a441b2e9afb', 'Minosuko', 336696, 106, 1, 72, 103, 3, 0, 3, 23, 0, '220708111427', 0, 3, 98.113204956055, 20.4674),
(97, 'a9a0a55423231241fc155a441b2e9afb', 'Minosuko', 336696, 106, 1, 72, 103, 3, 0, 3, 23, 0, '220708111427', 0, 3, 98.113204956055, 20.4674),
(98, 'a9a0a55423231241fc155a441b2e9afb', 'Minosuko', 336696, 106, 1, 72, 103, 3, 0, 3, 23, 0, '220708111427', 0, 3, 98.113204956055, 20.4674),
(99, 'a9a0a55423231241fc155a441b2e9afb', 'Minosuko', 336696, 106, 1, 72, 103, 3, 0, 3, 23, 0, '220708111427', 0, 3, 98.113204956055, 20.4674),
(100, 'a9a0a55423231241fc155a441b2e9afb', 'Minosuko', 336696, 106, 1, 72, 103, 3, 0, 3, 23, 0, '220708111427', 0, 3, 98.113204956055, 20.4674),
(101, 'a9a0a55423231241fc155a441b2e9afb', 'Minosuko', 336696, 106, 1, 72, 103, 3, 0, 3, 23, 0, '220708111427', 0, 3, 98.113204956055, 20.4674),
(102, 'a9a0a55423231241fc155a441b2e9afb', 'Minosuko', 336696, 106, 1, 72, 103, 3, 0, 3, 23, 0, '220708111427', 0, 3, 98.113204956055, 20.4674),
(103, '743b6117b25b2253cf5f7dbb3d809403', 'Minosuko', 5485388, 352, 0, 0, 883, 25, 0, 19, 184, 33, '220708121415', 0, 3, 94.721923828125, 15.0107),
(104, '743b6117b25b2253cf5f7dbb3d809403', 'Minosuko', 9836854, 690, 0, 585, 1608, 138, 31, 69, 352, 132, '220708125041', 0, 3, 86.912872314453, 24.7086),
(105, '743b6117b25b2253cf5f7dbb3d809403', 'Minosuko', 11342642, 690, 0, 1609, 1588, 157, 33, 82, 338, 131, '220708125701', 0, 3, 86.214424133301, 36.176),
(106, '5b6fd7d419cee95aeed9744c5f033640', 'Minosuko', 34905334, 1066, 0, 1608, 1615, 169, 1, 86, 350, 54, '220708130539', 0, 3, 90.891792297363, 785.188);

-- --------------------------------------------------------

--
-- Table structure for table `system_settings`
--

CREATE TABLE `system_settings` (
  `id` int NOT NULL,
  `name` varchar(32) NOT NULL,
  `value_int` int NOT NULL DEFAULT '0',
  `value_string` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `system_settings`
--

INSERT INTO `system_settings` (`id`, `name`, `value_int`, `value_string`) VALUES
(1, 'website_maintenance', 0, ''),
(2, 'game_maintenance', 0, ''),
(3, 'website_global_alert', 0, ''),
(4, 'website_home_alert', 0, ''),
(5, 'registrations_enabled', 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `tokens`
--

CREATE TABLE `tokens` (
  `id` int NOT NULL,
  `user` varchar(31) NOT NULL,
  `privileges` int NOT NULL,
  `description` varchar(255) NOT NULL,
  `token` varchar(127) NOT NULL,
  `private` tinyint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `username` varchar(30) NOT NULL,
  `password_md5` varchar(127) NOT NULL,
  `salt` varchar(32) NOT NULL,
  `email` varchar(254) NOT NULL,
  `register_datetime` int NOT NULL,
  `rank` tinyint(1) NOT NULL DEFAULT '1',
  `allowed` tinyint(1) NOT NULL,
  `latest_activity` int NOT NULL DEFAULT '0',
  `silence_end` int NOT NULL,
  `silence_reason` varchar(127) NOT NULL,
  `password_version` tinyint NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password_md5`, `salt`, `email`, `register_datetime`, `rank`, `allowed`, `latest_activity`, `silence_end`, `silence_reason`, `password_version`) VALUES
(999, 'FokaBot', '$2y$10$bqxtIpqL3LxLn.SPSGwopugGncCbqmbcQvoh08USJjtmIVrWRGdma', '', 'fo@kab.ot', 1452544880, 4, 1, 1657275812, 0, '', 2),
(1000, 'Minosuko', '$2y$10$JoIofz744HdrLH17lzcpSejlMGD/6uugju7yr6sy4MyymoAFSlmCe', '', 'catover35390@gmail.com', 1657192301, 4, 1, 1657286556, 0, '', 2);

-- --------------------------------------------------------

--
-- Table structure for table `users_relationships`
--

CREATE TABLE `users_relationships` (
  `id` int NOT NULL,
  `user1` int NOT NULL,
  `user2` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users_stats`
--

CREATE TABLE `users_stats` (
  `id` int NOT NULL,
  `username` varchar(30) NOT NULL,
  `username_aka` varchar(32) NOT NULL,
  `user_color` varchar(16) NOT NULL DEFAULT 'black',
  `user_style` varchar(128) NOT NULL DEFAULT '',
  `ranked_score_std` bigint DEFAULT NULL,
  `playcount_std` int NOT NULL DEFAULT '0',
  `total_score_std` bigint DEFAULT NULL,
  `replays_watched_std` int UNSIGNED NOT NULL DEFAULT '0',
  `ranked_score_taiko` bigint DEFAULT NULL,
  `playcount_taiko` int NOT NULL DEFAULT '0',
  `total_score_taiko` bigint DEFAULT NULL,
  `replays_watched_taiko` int NOT NULL DEFAULT '0',
  `ranked_score_ctb` bigint DEFAULT NULL,
  `playcount_ctb` int NOT NULL DEFAULT '0',
  `total_score_ctb` bigint DEFAULT NULL,
  `replays_watched_ctb` int NOT NULL DEFAULT '0',
  `ranked_score_mania` bigint DEFAULT NULL,
  `playcount_mania` int NOT NULL DEFAULT '0',
  `total_score_mania` bigint DEFAULT NULL,
  `replays_watched_mania` int UNSIGNED NOT NULL DEFAULT '0',
  `total_hits_std` int NOT NULL DEFAULT '0',
  `total_hits_taiko` int NOT NULL DEFAULT '0',
  `total_hits_ctb` int NOT NULL DEFAULT '0',
  `total_hits_mania` int NOT NULL DEFAULT '0',
  `country` char(2) NOT NULL DEFAULT 'XX',
  `show_country` tinyint NOT NULL DEFAULT '1',
  `level_std` int NOT NULL DEFAULT '1',
  `level_taiko` int NOT NULL DEFAULT '1',
  `level_ctb` int NOT NULL DEFAULT '1',
  `level_mania` int NOT NULL DEFAULT '1',
  `avg_accuracy_std` float(15,12) NOT NULL,
  `avg_accuracy_taiko` float(15,12) NOT NULL,
  `avg_accuracy_ctb` float(15,12) NOT NULL,
  `avg_accuracy_mania` float(15,12) NOT NULL,
  `pp_std` float NOT NULL DEFAULT '0',
  `pp_taiko` float NOT NULL DEFAULT '0',
  `pp_ctb` float NOT NULL DEFAULT '0',
  `pp_mania` float NOT NULL DEFAULT '0',
  `badges_shown` varchar(24) NOT NULL DEFAULT '1,0,0,0,0,0',
  `safe_title` tinyint NOT NULL DEFAULT '0',
  `userpage_content` mediumtext NOT NULL,
  `play_style` smallint NOT NULL DEFAULT '0',
  `favourite_mode` tinyint NOT NULL,
  `std_pp` int NOT NULL DEFAULT '0',
  `taiko_pp` int DEFAULT '0',
  `ctb_pp` int NOT NULL DEFAULT '0',
  `mania_pp` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_stats`
--

INSERT INTO `users_stats` (`id`, `username`, `username_aka`, `user_color`, `user_style`, `ranked_score_std`, `playcount_std`, `total_score_std`, `replays_watched_std`, `ranked_score_taiko`, `playcount_taiko`, `total_score_taiko`, `replays_watched_taiko`, `ranked_score_ctb`, `playcount_ctb`, `total_score_ctb`, `replays_watched_ctb`, `ranked_score_mania`, `playcount_mania`, `total_score_mania`, `replays_watched_mania`, `total_hits_std`, `total_hits_taiko`, `total_hits_ctb`, `total_hits_mania`, `country`, `show_country`, `level_std`, `level_taiko`, `level_ctb`, `level_mania`, `avg_accuracy_std`, `avg_accuracy_taiko`, `avg_accuracy_ctb`, `avg_accuracy_mania`, `pp_std`, `pp_taiko`, `pp_ctb`, `pp_mania`, `badges_shown`, `safe_title`, `userpage_content`, `play_style`, `favourite_mode`, `std_pp`, `taiko_pp`, `ctb_pp`, `mania_pp`) VALUES
(999, 'FokaBot', '', 'black', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'VN', 1, 0, 0, 0, 0, 0.000000000000, 0.000000000000, 0.000000000000, 0.000000000000, 0, 0, 0, 0, '3,4,11,0,0,0', 0, '', 0, 0, 0, 0, 0, 0),
(1000, 'Minosuko', '', 'pink', '', 122080533, 156, 133388955, 0, 0, 6, 153912, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'VN', 1, 28, 4, 1, 1, 95.029861450195, 0.000000000000, 0.000000000000, 0.000000000000, 0, 0, 0, 0, '1,3,4,5,6,2', 0, '', 0, 0, 825, 0, 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `badges`
--
ALTER TABLE `badges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bancho_channels`
--
ALTER TABLE `bancho_channels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bancho_messages`
--
ALTER TABLE `bancho_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bancho_private_messages`
--
ALTER TABLE `bancho_private_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bancho_settings`
--
ALTER TABLE `bancho_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bancho_tokens`
--
ALTER TABLE `bancho_tokens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `beatmaps`
--
ALTER TABLE `beatmaps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `beatmaps_names`
--
ALTER TABLE `beatmaps_names`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `beta_keys`
--
ALTER TABLE `beta_keys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `docs`
--
ALTER TABLE `docs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leaderboard_ctb`
--
ALTER TABLE `leaderboard_ctb`
  ADD PRIMARY KEY (`position`);

--
-- Indexes for table `leaderboard_mania`
--
ALTER TABLE `leaderboard_mania`
  ADD PRIMARY KEY (`position`);

--
-- Indexes for table `leaderboard_std`
--
ALTER TABLE `leaderboard_std`
  ADD PRIMARY KEY (`position`);

--
-- Indexes for table `leaderboard_taiko`
--
ALTER TABLE `leaderboard_taiko`
  ADD PRIMARY KEY (`position`);

--
-- Indexes for table `password_recovery`
--
ALTER TABLE `password_recovery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `remember`
--
ALTER TABLE `remember`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `scores`
--
ALTER TABLE `scores`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_settings`
--
ALTER TABLE `system_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tokens`
--
ALTER TABLE `tokens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_relationships`
--
ALTER TABLE `users_relationships`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_stats`
--
ALTER TABLE `users_stats`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `badges`
--
ALTER TABLE `badges`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `bancho_channels`
--
ALTER TABLE `bancho_channels`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `bancho_messages`
--
ALTER TABLE `bancho_messages`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `bancho_private_messages`
--
ALTER TABLE `bancho_private_messages`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bancho_settings`
--
ALTER TABLE `bancho_settings`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `bancho_tokens`
--
ALTER TABLE `bancho_tokens`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `beatmaps`
--
ALTER TABLE `beatmaps`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `beatmaps_names`
--
ALTER TABLE `beatmaps_names`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `beta_keys`
--
ALTER TABLE `beta_keys`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `docs`
--
ALTER TABLE `docs`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `password_recovery`
--
ALTER TABLE `password_recovery`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `remember`
--
ALTER TABLE `remember`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `reports`
--
ALTER TABLE `reports`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `scores`
--
ALTER TABLE `scores`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT for table `system_settings`
--
ALTER TABLE `system_settings`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tokens`
--
ALTER TABLE `tokens`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1001;

--
-- AUTO_INCREMENT for table `users_relationships`
--
ALTER TABLE `users_relationships`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users_stats`
--
ALTER TABLE `users_stats`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1003;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
