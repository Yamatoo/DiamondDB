-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.5.27-log - MySQL Community Server (GPL)
-- Server OS:                    Win32
-- HeidiSQL version:             7.0.0.4053
-- Date/time:                    2013-01-27 12:39:32
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET FOREIGN_KEY_CHECKS=0 */;

-- Dumping structure for table characters.account
CREATE TABLE IF NOT EXISTS `account` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Identifier',
  `username` varchar(32) NOT NULL DEFAULT '',
  `sha_pass_hash` varchar(40) NOT NULL DEFAULT '',
  `sessionkey` varchar(80) NOT NULL DEFAULT '',
  `v` varchar(64) NOT NULL DEFAULT '',
  `s` varchar(64) NOT NULL DEFAULT '',
  `email` varchar(254) NOT NULL DEFAULT '',
  `joindate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_ip` varchar(15) NOT NULL DEFAULT '127.0.0.1',
  `failed_logins` int(10) unsigned NOT NULL DEFAULT '0',
  `locked` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `last_login` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `online` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `expansion` tinyint(3) unsigned NOT NULL DEFAULT '3',
  `mutetime` bigint(20) NOT NULL DEFAULT '0',
  `locale` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `os` varchar(3) NOT NULL DEFAULT '',
  `recruiter` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Account System';

-- Dumping data for table characters.account: ~0 rows (approximately)
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
/*!40000 ALTER TABLE `account` ENABLE KEYS */;


-- Dumping structure for table characters.account_access
CREATE TABLE IF NOT EXISTS `account_access` (
  `id` int(10) unsigned NOT NULL,
  `gmlevel` tinyint(3) unsigned NOT NULL,
  `RealmID` int(11) NOT NULL DEFAULT '-1',
  PRIMARY KEY (`id`,`RealmID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table characters.account_access: ~0 rows (approximately)
/*!40000 ALTER TABLE `account_access` DISABLE KEYS */;
/*!40000 ALTER TABLE `account_access` ENABLE KEYS */;


-- Dumping structure for table characters.account_banned
CREATE TABLE IF NOT EXISTS `account_banned` (
  `id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Account id',
  `bandate` int(10) unsigned NOT NULL DEFAULT '0',
  `unbandate` int(10) unsigned NOT NULL DEFAULT '0',
  `bannedby` varchar(50) NOT NULL,
  `banreason` varchar(255) NOT NULL,
  `active` tinyint(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`,`bandate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Ban List';

-- Dumping data for table characters.account_banned: ~0 rows (approximately)
/*!40000 ALTER TABLE `account_banned` DISABLE KEYS */;
/*!40000 ALTER TABLE `account_banned` ENABLE KEYS */;


-- Dumping structure for table characters.account_data
CREATE TABLE IF NOT EXISTS `account_data` (
  `accountId` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Account Identifier',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `time` int(10) unsigned NOT NULL DEFAULT '0',
  `data` blob NOT NULL,
  PRIMARY KEY (`accountId`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table characters.account_data: ~0 rows (approximately)
/*!40000 ALTER TABLE `account_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `account_data` ENABLE KEYS */;


-- Dumping structure for table characters.account_instance_times
CREATE TABLE IF NOT EXISTS `account_instance_times` (
  `accountId` int(10) unsigned NOT NULL,
  `instanceId` int(10) unsigned NOT NULL DEFAULT '0',
  `releaseTime` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`accountId`,`instanceId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table characters.account_instance_times: ~0 rows (approximately)
/*!40000 ALTER TABLE `account_instance_times` DISABLE KEYS */;
/*!40000 ALTER TABLE `account_instance_times` ENABLE KEYS */;


-- Dumping structure for table characters.account_tutorial
CREATE TABLE IF NOT EXISTS `account_tutorial` (
  `accountId` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Account Identifier',
  `tut0` int(10) unsigned NOT NULL DEFAULT '0',
  `tut1` int(10) unsigned NOT NULL DEFAULT '0',
  `tut2` int(10) unsigned NOT NULL DEFAULT '0',
  `tut3` int(10) unsigned NOT NULL DEFAULT '0',
  `tut4` int(10) unsigned NOT NULL DEFAULT '0',
  `tut5` int(10) unsigned NOT NULL DEFAULT '0',
  `tut6` int(10) unsigned NOT NULL DEFAULT '0',
  `tut7` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`accountId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table characters.account_tutorial: ~0 rows (approximately)
/*!40000 ALTER TABLE `account_tutorial` DISABLE KEYS */;
/*!40000 ALTER TABLE `account_tutorial` ENABLE KEYS */;


-- Dumping structure for table characters.addons
CREATE TABLE IF NOT EXISTS `addons` (
  `name` varchar(120) NOT NULL DEFAULT '',
  `crc` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Addons';

-- Dumping data for table characters.addons: ~0 rows (approximately)
/*!40000 ALTER TABLE `addons` DISABLE KEYS */;
/*!40000 ALTER TABLE `addons` ENABLE KEYS */;


-- Dumping structure for table characters.arena_team
CREATE TABLE IF NOT EXISTS `arena_team` (
  `arenaTeamId` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(24) NOT NULL,
  `captainGuid` int(10) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `rating` smallint(5) unsigned NOT NULL DEFAULT '0',
  `seasonGames` smallint(5) unsigned NOT NULL DEFAULT '0',
  `seasonWins` smallint(5) unsigned NOT NULL DEFAULT '0',
  `weekGames` smallint(5) unsigned NOT NULL DEFAULT '0',
  `weekWins` smallint(5) unsigned NOT NULL DEFAULT '0',
  `rank` int(10) unsigned NOT NULL DEFAULT '0',
  `backgroundColor` int(10) unsigned NOT NULL DEFAULT '0',
  `emblemStyle` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `emblemColor` int(10) unsigned NOT NULL DEFAULT '0',
  `borderStyle` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `borderColor` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`arenaTeamId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table characters.arena_team: ~0 rows (approximately)
/*!40000 ALTER TABLE `arena_team` DISABLE KEYS */;
/*!40000 ALTER TABLE `arena_team` ENABLE KEYS */;


-- Dumping structure for table characters.arena_team_member
CREATE TABLE IF NOT EXISTS `arena_team_member` (
  `arenaTeamId` int(10) unsigned NOT NULL DEFAULT '0',
  `guid` int(10) unsigned NOT NULL DEFAULT '0',
  `weekGames` smallint(5) unsigned NOT NULL DEFAULT '0',
  `weekWins` smallint(5) unsigned NOT NULL DEFAULT '0',
  `seasonGames` smallint(5) unsigned NOT NULL DEFAULT '0',
  `seasonWins` smallint(5) unsigned NOT NULL DEFAULT '0',
  `personalRating` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`arenaTeamId`,`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table characters.arena_team_member: ~0 rows (approximately)
/*!40000 ALTER TABLE `arena_team_member` DISABLE KEYS */;
/*!40000 ALTER TABLE `arena_team_member` ENABLE KEYS */;


-- Dumping structure for table characters.auctionhouse
CREATE TABLE IF NOT EXISTS `auctionhouse` (
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `auctioneerguid` int(10) unsigned NOT NULL DEFAULT '0',
  `itemguid` int(10) unsigned NOT NULL DEFAULT '0',
  `itemowner` int(10) unsigned NOT NULL DEFAULT '0',
  `buyoutprice` int(10) unsigned NOT NULL DEFAULT '0',
  `time` int(10) unsigned NOT NULL DEFAULT '0',
  `buyguid` int(10) unsigned NOT NULL DEFAULT '0',
  `lastbid` int(10) unsigned NOT NULL DEFAULT '0',
  `startbid` int(10) unsigned NOT NULL DEFAULT '0',
  `deposit` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `item_guid` (`itemguid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table characters.auctionhouse: ~0 rows (approximately)
/*!40000 ALTER TABLE `auctionhouse` DISABLE KEYS */;
/*!40000 ALTER TABLE `auctionhouse` ENABLE KEYS */;


-- Dumping structure for table characters.bugreport
CREATE TABLE IF NOT EXISTS `bugreport` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Identifier',
  `type` longtext NOT NULL,
  `content` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Debug System';

-- Dumping data for table characters.bugreport: ~0 rows (approximately)
/*!40000 ALTER TABLE `bugreport` DISABLE KEYS */;
/*!40000 ALTER TABLE `bugreport` ENABLE KEYS */;


-- Dumping structure for table characters.calendar_events
CREATE TABLE IF NOT EXISTS `calendar_events` (
  `id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `creator` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '4',
  `dungeon` int(10) NOT NULL DEFAULT '-1',
  `eventtime` int(10) unsigned NOT NULL DEFAULT '0',
  `flags` int(10) unsigned NOT NULL DEFAULT '0',
  `time2` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table characters.calendar_events: ~0 rows (approximately)
/*!40000 ALTER TABLE `calendar_events` DISABLE KEYS */;
/*!40000 ALTER TABLE `calendar_events` ENABLE KEYS */;


-- Dumping structure for table characters.calendar_invites
CREATE TABLE IF NOT EXISTS `calendar_invites` (
  `id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `event` bigint(20) unsigned NOT NULL DEFAULT '0',
  `invitee` int(10) unsigned NOT NULL DEFAULT '0',
  `sender` int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `statustime` int(10) unsigned NOT NULL DEFAULT '0',
  `rank` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `text` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table characters.calendar_invites: ~0 rows (approximately)
/*!40000 ALTER TABLE `calendar_invites` DISABLE KEYS */;
/*!40000 ALTER TABLE `calendar_invites` ENABLE KEYS */;


-- Dumping structure for table characters.channels
CREATE TABLE IF NOT EXISTS `channels` (
  `name` varchar(128) NOT NULL,
  `team` int(10) unsigned NOT NULL,
  `announce` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `ownership` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `password` varchar(32) DEFAULT NULL,
  `bannedList` text,
  `lastUsed` int(10) unsigned NOT NULL,
  PRIMARY KEY (`name`,`team`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Channel System';

-- Dumping data for table characters.channels: ~0 rows (approximately)
/*!40000 ALTER TABLE `channels` DISABLE KEYS */;
/*!40000 ALTER TABLE `channels` ENABLE KEYS */;


-- Dumping structure for table characters.characters
CREATE TABLE IF NOT EXISTS `characters` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `account` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Account Identifier',
  `name` varchar(12) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `slot` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `race` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `class` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `gender` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `level` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `xp` int(10) unsigned NOT NULL DEFAULT '0',
  `money` bigint(20) unsigned NOT NULL DEFAULT '0',
  `playerBytes` int(10) unsigned NOT NULL DEFAULT '0',
  `playerBytes2` int(10) unsigned NOT NULL DEFAULT '0',
  `playerFlags` int(10) unsigned NOT NULL DEFAULT '0',
  `position_x` float NOT NULL DEFAULT '0',
  `position_y` float NOT NULL DEFAULT '0',
  `position_z` float NOT NULL DEFAULT '0',
  `map` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Map Identifier',
  `instance_id` int(10) unsigned NOT NULL DEFAULT '0',
  `instance_mode_mask` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `orientation` float NOT NULL DEFAULT '0',
  `taximask` text NOT NULL,
  `online` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `cinematic` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `totaltime` int(10) unsigned NOT NULL DEFAULT '0',
  `leveltime` int(10) unsigned NOT NULL DEFAULT '0',
  `logout_time` int(10) unsigned NOT NULL DEFAULT '0',
  `is_logout_resting` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `rest_bonus` float NOT NULL DEFAULT '0',
  `resettalents_cost` int(10) unsigned NOT NULL DEFAULT '0',
  `resettalents_time` int(10) unsigned NOT NULL DEFAULT '0',
  `talentTree` varchar(10) NOT NULL DEFAULT '0 0',
  `trans_x` float NOT NULL DEFAULT '0',
  `trans_y` float NOT NULL DEFAULT '0',
  `trans_z` float NOT NULL DEFAULT '0',
  `trans_o` float NOT NULL DEFAULT '0',
  `transguid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `extra_flags` smallint(5) unsigned NOT NULL DEFAULT '0',
  `stable_slots` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `at_login` smallint(5) unsigned NOT NULL DEFAULT '0',
  `zone` smallint(5) unsigned NOT NULL DEFAULT '0',
  `death_expire_time` int(10) unsigned NOT NULL DEFAULT '0',
  `taxi_path` text,
  `totalKills` int(10) unsigned NOT NULL DEFAULT '0',
  `todayKills` smallint(5) unsigned NOT NULL DEFAULT '0',
  `yesterdayKills` smallint(5) unsigned NOT NULL DEFAULT '0',
  `chosenTitle` int(10) unsigned NOT NULL DEFAULT '0',
  `watchedFaction` int(10) unsigned NOT NULL DEFAULT '0',
  `drunk` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `health` int(10) unsigned NOT NULL DEFAULT '0',
  `power1` int(10) unsigned NOT NULL DEFAULT '0',
  `power2` int(10) unsigned NOT NULL DEFAULT '0',
  `power3` int(10) unsigned NOT NULL DEFAULT '0',
  `power4` int(10) unsigned NOT NULL DEFAULT '0',
  `power5` int(10) unsigned NOT NULL DEFAULT '0',
  `latency` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `speccount` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `activespec` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `exploredZones` longtext,
  `equipmentCache` longtext,
  `knownTitles` longtext,
  `actionBars` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `grantableLevels` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `guildId` int(10) unsigned NOT NULL DEFAULT '0',
  `deleteInfos_Account` int(10) unsigned DEFAULT NULL,
  `deleteInfos_Name` varchar(12) DEFAULT NULL,
  `deleteDate` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`guid`),
  KEY `idx_account` (`account`),
  KEY `idx_online` (`online`),
  KEY `idx_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player System';

-- Dumping data for table characters.characters: ~1 rows (approximately)
/*!40000 ALTER TABLE `characters` DISABLE KEYS */;
INSERT INTO `characters` (`guid`, `account`, `name`, `slot`, `race`, `class`, `gender`, `level`, `xp`, `money`, `playerBytes`, `playerBytes2`, `playerFlags`, `position_x`, `position_y`, `position_z`, `map`, `instance_id`, `instance_mode_mask`, `orientation`, `taximask`, `online`, `cinematic`, `totaltime`, `leveltime`, `logout_time`, `is_logout_resting`, `rest_bonus`, `resettalents_cost`, `resettalents_time`, `talentTree`, `trans_x`, `trans_y`, `trans_z`, `trans_o`, `transguid`, `extra_flags`, `stable_slots`, `at_login`, `zone`, `death_expire_time`, `taxi_path`, `totalKills`, `todayKills`, `yesterdayKills`, `chosenTitle`, `watchedFaction`, `drunk`, `health`, `power1`, `power2`, `power3`, `power4`, `power5`, `latency`, `speccount`, `activespec`, `exploredZones`, `equipmentCache`, `knownTitles`, `actionBars`, `grantableLevels`, `guildId`, `deleteInfos_Account`, `deleteInfos_Name`, `deleteDate`) VALUES
	(1, 1, 'Hei', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, '0 0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL);
/*!40000 ALTER TABLE `characters` ENABLE KEYS */;


-- Dumping structure for table characters.character_account_data
CREATE TABLE IF NOT EXISTS `character_account_data` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `time` int(10) unsigned NOT NULL DEFAULT '0',
  `data` blob NOT NULL,
  PRIMARY KEY (`guid`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table characters.character_account_data: ~0 rows (approximately)
/*!40000 ALTER TABLE `character_account_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_account_data` ENABLE KEYS */;


-- Dumping structure for table characters.character_achievement
CREATE TABLE IF NOT EXISTS `character_achievement` (
  `guid` int(10) unsigned NOT NULL,
  `achievement` smallint(5) unsigned NOT NULL,
  `date` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`achievement`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table characters.character_achievement: ~0 rows (approximately)
/*!40000 ALTER TABLE `character_achievement` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_achievement` ENABLE KEYS */;


-- Dumping structure for table characters.character_achievement_progress
CREATE TABLE IF NOT EXISTS `character_achievement_progress` (
  `guid` int(10) unsigned NOT NULL,
  `criteria` smallint(5) unsigned NOT NULL,
  `counter` int(10) unsigned NOT NULL,
  `date` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`criteria`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table characters.character_achievement_progress: ~0 rows (approximately)
/*!40000 ALTER TABLE `character_achievement_progress` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_achievement_progress` ENABLE KEYS */;


-- Dumping structure for table characters.character_action
CREATE TABLE IF NOT EXISTS `character_action` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0',
  `spec` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `button` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `action` int(10) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`spec`,`button`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table characters.character_action: ~0 rows (approximately)
/*!40000 ALTER TABLE `character_action` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_action` ENABLE KEYS */;


-- Dumping structure for table characters.character_arena_stats
CREATE TABLE IF NOT EXISTS `character_arena_stats` (
  `guid` int(10) NOT NULL,
  `slot` tinyint(3) NOT NULL,
  `matchMakerRating` smallint(5) NOT NULL,
  PRIMARY KEY (`guid`,`slot`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table characters.character_arena_stats: ~0 rows (approximately)
/*!40000 ALTER TABLE `character_arena_stats` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_arena_stats` ENABLE KEYS */;


-- Dumping structure for table characters.character_aura
CREATE TABLE IF NOT EXISTS `character_aura` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `caster_guid` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'Full Global Unique Identifier',
  `item_guid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `spell` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `effect_mask` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `recalculate_mask` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `stackcount` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `amount0` int(11) NOT NULL DEFAULT '0',
  `amount1` int(11) NOT NULL DEFAULT '0',
  `amount2` int(11) NOT NULL DEFAULT '0',
  `base_amount0` int(11) NOT NULL DEFAULT '0',
  `base_amount1` int(11) NOT NULL DEFAULT '0',
  `base_amount2` int(11) NOT NULL DEFAULT '0',
  `maxduration` int(11) NOT NULL DEFAULT '0',
  `remaintime` int(11) NOT NULL DEFAULT '0',
  `remaincharges` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`caster_guid`,`item_guid`,`spell`,`effect_mask`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player System';

-- Dumping data for table characters.character_aura: ~0 rows (approximately)
/*!40000 ALTER TABLE `character_aura` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_aura` ENABLE KEYS */;


-- Dumping structure for table characters.character_banned
CREATE TABLE IF NOT EXISTS `character_banned` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `bandate` int(10) unsigned NOT NULL DEFAULT '0',
  `unbandate` int(10) unsigned NOT NULL DEFAULT '0',
  `bannedby` varchar(50) NOT NULL,
  `banreason` varchar(255) NOT NULL,
  `active` tinyint(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`guid`,`bandate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Ban List';

-- Dumping data for table characters.character_banned: ~0 rows (approximately)
/*!40000 ALTER TABLE `character_banned` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_banned` ENABLE KEYS */;


-- Dumping structure for table characters.character_battleground_data
CREATE TABLE IF NOT EXISTS `character_battleground_data` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `instanceId` int(10) unsigned NOT NULL COMMENT 'Instance Identifier',
  `team` smallint(5) unsigned NOT NULL,
  `joinX` float NOT NULL DEFAULT '0',
  `joinY` float NOT NULL DEFAULT '0',
  `joinZ` float NOT NULL DEFAULT '0',
  `joinO` float NOT NULL DEFAULT '0',
  `joinMapId` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Map Identifier',
  `taxiStart` int(10) unsigned NOT NULL DEFAULT '0',
  `taxiEnd` int(10) unsigned NOT NULL DEFAULT '0',
  `mountSpell` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player System';

-- Dumping data for table characters.character_battleground_data: ~0 rows (approximately)
/*!40000 ALTER TABLE `character_battleground_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_battleground_data` ENABLE KEYS */;


-- Dumping structure for table characters.character_battleground_random
CREATE TABLE IF NOT EXISTS `character_battleground_random` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table characters.character_battleground_random: ~0 rows (approximately)
/*!40000 ALTER TABLE `character_battleground_random` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_battleground_random` ENABLE KEYS */;


-- Dumping structure for table characters.character_cuf_profiles
CREATE TABLE IF NOT EXISTS `character_cuf_profiles` (
  `guid` int(10) unsigned NOT NULL COMMENT 'Character Guid',
  `id` tinyint(3) unsigned NOT NULL COMMENT 'Profile Id (0-4)',
  `name` varchar(12) NOT NULL COMMENT 'Profile Name',
  `frameHeight` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Profile Frame Height',
  `frameWidth` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Profile Frame Width',
  `sortBy` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Frame Sort By',
  `healthText` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Frame Health Text',
  `boolOptions` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Many Configurable Bool Options',
  `unk146` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Profile Unk Int8',
  `unk147` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Profile Unk Int8',
  `unk148` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Profile Unk Int8',
  `unk150` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Profile Unk Int16',
  `unk152` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Profile Unk Int16',
  `unk154` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Profile Unk Int16',
  PRIMARY KEY (`guid`,`id`),
  KEY `index` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table characters.character_cuf_profiles: ~0 rows (approximately)
/*!40000 ALTER TABLE `character_cuf_profiles` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_cuf_profiles` ENABLE KEYS */;


-- Dumping structure for table characters.character_currency
CREATE TABLE IF NOT EXISTS `character_currency` (
  `guid` int(10) unsigned NOT NULL,
  `currency` smallint(5) unsigned NOT NULL,
  `total_count` int(10) unsigned NOT NULL,
  `week_count` int(10) unsigned NOT NULL,
  PRIMARY KEY (`guid`,`currency`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table characters.character_currency: ~0 rows (approximately)
/*!40000 ALTER TABLE `character_currency` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_currency` ENABLE KEYS */;


-- Dumping structure for table characters.character_declinedname
CREATE TABLE IF NOT EXISTS `character_declinedname` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `genitive` varchar(15) NOT NULL DEFAULT '',
  `dative` varchar(15) NOT NULL DEFAULT '',
  `accusative` varchar(15) NOT NULL DEFAULT '',
  `instrumental` varchar(15) NOT NULL DEFAULT '',
  `prepositional` varchar(15) NOT NULL DEFAULT '',
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table characters.character_declinedname: ~0 rows (approximately)
/*!40000 ALTER TABLE `character_declinedname` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_declinedname` ENABLE KEYS */;


-- Dumping structure for table characters.character_equipmentsets
CREATE TABLE IF NOT EXISTS `character_equipmentsets` (
  `guid` int(10) NOT NULL DEFAULT '0',
  `setguid` bigint(20) NOT NULL AUTO_INCREMENT,
  `setindex` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `name` varchar(31) NOT NULL,
  `iconname` varchar(100) NOT NULL,
  `ignore_mask` int(11) unsigned NOT NULL DEFAULT '0',
  `item0` int(11) unsigned NOT NULL DEFAULT '0',
  `item1` int(11) unsigned NOT NULL DEFAULT '0',
  `item2` int(11) unsigned NOT NULL DEFAULT '0',
  `item3` int(11) unsigned NOT NULL DEFAULT '0',
  `item4` int(11) unsigned NOT NULL DEFAULT '0',
  `item5` int(11) unsigned NOT NULL DEFAULT '0',
  `item6` int(11) unsigned NOT NULL DEFAULT '0',
  `item7` int(11) unsigned NOT NULL DEFAULT '0',
  `item8` int(11) unsigned NOT NULL DEFAULT '0',
  `item9` int(11) unsigned NOT NULL DEFAULT '0',
  `item10` int(11) unsigned NOT NULL DEFAULT '0',
  `item11` int(11) unsigned NOT NULL DEFAULT '0',
  `item12` int(11) unsigned NOT NULL DEFAULT '0',
  `item13` int(11) unsigned NOT NULL DEFAULT '0',
  `item14` int(11) unsigned NOT NULL DEFAULT '0',
  `item15` int(11) unsigned NOT NULL DEFAULT '0',
  `item16` int(11) unsigned NOT NULL DEFAULT '0',
  `item17` int(11) unsigned NOT NULL DEFAULT '0',
  `item18` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`setguid`),
  UNIQUE KEY `idx_set` (`guid`,`setguid`,`setindex`),
  KEY `Idx_setindex` (`setindex`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table characters.character_equipmentsets: ~0 rows (approximately)
/*!40000 ALTER TABLE `character_equipmentsets` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_equipmentsets` ENABLE KEYS */;


-- Dumping structure for table characters.character_gifts
CREATE TABLE IF NOT EXISTS `character_gifts` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0',
  `item_guid` int(10) unsigned NOT NULL DEFAULT '0',
  `entry` int(10) unsigned NOT NULL DEFAULT '0',
  `flags` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`item_guid`),
  KEY `idx_guid` (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table characters.character_gifts: ~0 rows (approximately)
/*!40000 ALTER TABLE `character_gifts` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_gifts` ENABLE KEYS */;


-- Dumping structure for table characters.character_glyphs
CREATE TABLE IF NOT EXISTS `character_glyphs` (
  `guid` int(10) unsigned NOT NULL,
  `spec` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `glyph1` smallint(5) unsigned DEFAULT '0',
  `glyph2` smallint(5) unsigned DEFAULT '0',
  `glyph3` smallint(5) unsigned DEFAULT '0',
  `glyph4` smallint(5) unsigned DEFAULT '0',
  `glyph5` smallint(5) unsigned DEFAULT '0',
  `glyph6` smallint(5) unsigned DEFAULT '0',
  `glyph7` smallint(5) unsigned DEFAULT '0',
  `glyph8` smallint(5) unsigned DEFAULT '0',
  `glyph9` smallint(5) unsigned DEFAULT '0',
  PRIMARY KEY (`guid`,`spec`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table characters.character_glyphs: ~0 rows (approximately)
/*!40000 ALTER TABLE `character_glyphs` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_glyphs` ENABLE KEYS */;


-- Dumping structure for table characters.character_homebind
CREATE TABLE IF NOT EXISTS `character_homebind` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `mapId` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Map Identifier',
  `zoneId` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Zone Identifier',
  `posX` float NOT NULL DEFAULT '0',
  `posY` float NOT NULL DEFAULT '0',
  `posZ` float NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player System';

-- Dumping data for table characters.character_homebind: ~0 rows (approximately)
/*!40000 ALTER TABLE `character_homebind` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_homebind` ENABLE KEYS */;


-- Dumping structure for table characters.character_instance
CREATE TABLE IF NOT EXISTS `character_instance` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0',
  `instance` int(10) unsigned NOT NULL DEFAULT '0',
  `permanent` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`instance`),
  KEY `instance` (`instance`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table characters.character_instance: ~0 rows (approximately)
/*!40000 ALTER TABLE `character_instance` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_instance` ENABLE KEYS */;


-- Dumping structure for table characters.character_inventory
CREATE TABLE IF NOT EXISTS `character_inventory` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `bag` int(10) unsigned NOT NULL DEFAULT '0',
  `slot` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `item` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Item Global Unique Identifier',
  PRIMARY KEY (`item`),
  UNIQUE KEY `guid` (`guid`,`bag`,`slot`),
  KEY `idx_guid` (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player System';

-- Dumping data for table characters.character_inventory: ~0 rows (approximately)
/*!40000 ALTER TABLE `character_inventory` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_inventory` ENABLE KEYS */;


-- Dumping structure for table characters.character_pet
CREATE TABLE IF NOT EXISTS `character_pet` (
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `entry` int(10) unsigned NOT NULL DEFAULT '0',
  `owner` int(10) unsigned NOT NULL DEFAULT '0',
  `modelid` int(10) unsigned DEFAULT '0',
  `CreatedBySpell` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `PetType` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `level` smallint(5) unsigned NOT NULL DEFAULT '1',
  `exp` int(10) unsigned NOT NULL DEFAULT '0',
  `Reactstate` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `name` varchar(21) NOT NULL DEFAULT 'Pet',
  `renamed` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `slot` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `curhealth` int(10) unsigned NOT NULL DEFAULT '1',
  `curmana` int(10) unsigned NOT NULL DEFAULT '0',
  `savetime` int(10) unsigned NOT NULL DEFAULT '0',
  `abdata` text,
  PRIMARY KEY (`id`),
  KEY `owner` (`owner`),
  KEY `idx_slot` (`slot`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Pet System';

-- Dumping data for table characters.character_pet: ~0 rows (approximately)
/*!40000 ALTER TABLE `character_pet` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_pet` ENABLE KEYS */;


-- Dumping structure for table characters.character_pet_declinedname
CREATE TABLE IF NOT EXISTS `character_pet_declinedname` (
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `owner` int(10) unsigned NOT NULL DEFAULT '0',
  `genitive` varchar(12) NOT NULL DEFAULT '',
  `dative` varchar(12) NOT NULL DEFAULT '',
  `accusative` varchar(12) NOT NULL DEFAULT '',
  `instrumental` varchar(12) NOT NULL DEFAULT '',
  `prepositional` varchar(12) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `owner_key` (`owner`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table characters.character_pet_declinedname: ~0 rows (approximately)
/*!40000 ALTER TABLE `character_pet_declinedname` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_pet_declinedname` ENABLE KEYS */;


-- Dumping structure for table characters.character_queststatus
CREATE TABLE IF NOT EXISTS `character_queststatus` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `quest` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Quest Identifier',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `explored` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `timer` int(10) unsigned NOT NULL DEFAULT '0',
  `mobcount1` smallint(5) unsigned NOT NULL DEFAULT '0',
  `mobcount2` smallint(5) unsigned NOT NULL DEFAULT '0',
  `mobcount3` smallint(5) unsigned NOT NULL DEFAULT '0',
  `mobcount4` smallint(5) unsigned NOT NULL DEFAULT '0',
  `itemcount1` smallint(5) unsigned NOT NULL DEFAULT '0',
  `itemcount2` smallint(5) unsigned NOT NULL DEFAULT '0',
  `itemcount3` smallint(5) unsigned NOT NULL DEFAULT '0',
  `itemcount4` smallint(5) unsigned NOT NULL DEFAULT '0',
  `playercount` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`quest`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player System';

-- Dumping data for table characters.character_queststatus: ~0 rows (approximately)
/*!40000 ALTER TABLE `character_queststatus` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_queststatus` ENABLE KEYS */;


-- Dumping structure for table characters.character_queststatus_daily
CREATE TABLE IF NOT EXISTS `character_queststatus_daily` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `quest` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Quest Identifier',
  `time` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`quest`),
  KEY `idx_guid` (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player System';

-- Dumping data for table characters.character_queststatus_daily: ~0 rows (approximately)
/*!40000 ALTER TABLE `character_queststatus_daily` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_queststatus_daily` ENABLE KEYS */;


-- Dumping structure for table characters.character_queststatus_monthly
CREATE TABLE IF NOT EXISTS `character_queststatus_monthly` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `quest` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Quest Identifier',
  PRIMARY KEY (`guid`,`quest`),
  KEY `idx_guid` (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player System';

-- Dumping data for table characters.character_queststatus_monthly: ~0 rows (approximately)
/*!40000 ALTER TABLE `character_queststatus_monthly` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_queststatus_monthly` ENABLE KEYS */;


-- Dumping structure for table characters.character_queststatus_rewarded
CREATE TABLE IF NOT EXISTS `character_queststatus_rewarded` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `quest` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Quest Identifier',
  PRIMARY KEY (`guid`,`quest`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player System';

-- Dumping data for table characters.character_queststatus_rewarded: ~0 rows (approximately)
/*!40000 ALTER TABLE `character_queststatus_rewarded` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_queststatus_rewarded` ENABLE KEYS */;


-- Dumping structure for table characters.character_queststatus_seasonal
CREATE TABLE IF NOT EXISTS `character_queststatus_seasonal` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `quest` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Quest Identifier',
  `event` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Event Identifier',
  PRIMARY KEY (`guid`,`quest`),
  KEY `idx_guid` (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player System';

-- Dumping data for table characters.character_queststatus_seasonal: ~0 rows (approximately)
/*!40000 ALTER TABLE `character_queststatus_seasonal` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_queststatus_seasonal` ENABLE KEYS */;


-- Dumping structure for table characters.character_queststatus_weekly
CREATE TABLE IF NOT EXISTS `character_queststatus_weekly` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `quest` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Quest Identifier',
  PRIMARY KEY (`guid`,`quest`),
  KEY `idx_guid` (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player System';

-- Dumping data for table characters.character_queststatus_weekly: ~0 rows (approximately)
/*!40000 ALTER TABLE `character_queststatus_weekly` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_queststatus_weekly` ENABLE KEYS */;


-- Dumping structure for table characters.character_reputation
CREATE TABLE IF NOT EXISTS `character_reputation` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `faction` smallint(5) unsigned NOT NULL DEFAULT '0',
  `standing` int(11) NOT NULL DEFAULT '0',
  `flags` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`faction`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player System';

-- Dumping data for table characters.character_reputation: ~0 rows (approximately)
/*!40000 ALTER TABLE `character_reputation` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_reputation` ENABLE KEYS */;


-- Dumping structure for table characters.character_skills
CREATE TABLE IF NOT EXISTS `character_skills` (
  `guid` int(10) unsigned NOT NULL COMMENT 'Global Unique Identifier',
  `skill` smallint(5) unsigned NOT NULL,
  `value` smallint(5) unsigned NOT NULL,
  `max` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`guid`,`skill`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player System';

-- Dumping data for table characters.character_skills: ~0 rows (approximately)
/*!40000 ALTER TABLE `character_skills` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_skills` ENABLE KEYS */;


-- Dumping structure for table characters.character_social
CREATE TABLE IF NOT EXISTS `character_social` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Character Global Unique Identifier',
  `friend` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Friend Global Unique Identifier',
  `flags` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Friend Flags',
  `note` varchar(48) NOT NULL DEFAULT '' COMMENT 'Friend Note',
  PRIMARY KEY (`guid`,`friend`,`flags`),
  KEY `friend` (`friend`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player System';

-- Dumping data for table characters.character_social: ~0 rows (approximately)
/*!40000 ALTER TABLE `character_social` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_social` ENABLE KEYS */;


-- Dumping structure for table characters.character_spell
CREATE TABLE IF NOT EXISTS `character_spell` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `spell` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT 'Spell Identifier',
  `active` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `disabled` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`spell`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player System';

-- Dumping data for table characters.character_spell: ~0 rows (approximately)
/*!40000 ALTER TABLE `character_spell` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_spell` ENABLE KEYS */;


-- Dumping structure for table characters.character_spell_cooldown
CREATE TABLE IF NOT EXISTS `character_spell_cooldown` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier, Low part',
  `spell` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT 'Spell Identifier',
  `item` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Item Identifier',
  `time` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`spell`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table characters.character_spell_cooldown: ~0 rows (approximately)
/*!40000 ALTER TABLE `character_spell_cooldown` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_spell_cooldown` ENABLE KEYS */;


-- Dumping structure for table characters.character_stats
CREATE TABLE IF NOT EXISTS `character_stats` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier, Low part',
  `maxhealth` int(10) unsigned NOT NULL DEFAULT '0',
  `maxpower1` int(10) unsigned NOT NULL DEFAULT '0',
  `maxpower2` int(10) unsigned NOT NULL DEFAULT '0',
  `maxpower3` int(10) unsigned NOT NULL DEFAULT '0',
  `maxpower4` int(10) unsigned NOT NULL DEFAULT '0',
  `maxpower5` int(10) unsigned NOT NULL DEFAULT '0',
  `strength` int(10) unsigned NOT NULL DEFAULT '0',
  `agility` int(10) unsigned NOT NULL DEFAULT '0',
  `stamina` int(10) unsigned NOT NULL DEFAULT '0',
  `intellect` int(10) unsigned NOT NULL DEFAULT '0',
  `spirit` int(10) unsigned NOT NULL DEFAULT '0',
  `armor` int(10) unsigned NOT NULL DEFAULT '0',
  `resHoly` int(10) unsigned NOT NULL DEFAULT '0',
  `resFire` int(10) unsigned NOT NULL DEFAULT '0',
  `resNature` int(10) unsigned NOT NULL DEFAULT '0',
  `resFrost` int(10) unsigned NOT NULL DEFAULT '0',
  `resShadow` int(10) unsigned NOT NULL DEFAULT '0',
  `resArcane` int(10) unsigned NOT NULL DEFAULT '0',
  `blockPct` float unsigned NOT NULL DEFAULT '0',
  `dodgePct` float unsigned NOT NULL DEFAULT '0',
  `parryPct` float unsigned NOT NULL DEFAULT '0',
  `critPct` float unsigned NOT NULL DEFAULT '0',
  `rangedCritPct` float unsigned NOT NULL DEFAULT '0',
  `spellCritPct` float unsigned NOT NULL DEFAULT '0',
  `attackPower` int(10) unsigned NOT NULL DEFAULT '0',
  `rangedAttackPower` int(10) unsigned NOT NULL DEFAULT '0',
  `spellPower` int(10) unsigned NOT NULL DEFAULT '0',
  `resilience` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table characters.character_stats: ~0 rows (approximately)
/*!40000 ALTER TABLE `character_stats` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_stats` ENABLE KEYS */;


-- Dumping structure for table characters.character_talent
CREATE TABLE IF NOT EXISTS `character_talent` (
  `guid` int(10) unsigned NOT NULL,
  `spell` mediumint(8) unsigned NOT NULL,
  `spec` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`spell`,`spec`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table characters.character_talent: ~0 rows (approximately)
/*!40000 ALTER TABLE `character_talent` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_talent` ENABLE KEYS */;


-- Dumping structure for table characters.character_void_storage
CREATE TABLE IF NOT EXISTS `character_void_storage` (
  `itemId` bigint(20) unsigned NOT NULL,
  `playerGuid` int(10) unsigned NOT NULL,
  `itemEntry` mediumint(8) unsigned NOT NULL,
  `slot` tinyint(3) unsigned NOT NULL,
  `creatorGuid` int(10) unsigned NOT NULL DEFAULT '0',
  `randomProperty` int(10) unsigned NOT NULL DEFAULT '0',
  `suffixFactor` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`itemId`),
  UNIQUE KEY `idx_player_slot` (`playerGuid`,`slot`),
  KEY `idx_player` (`playerGuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table characters.character_void_storage: ~0 rows (approximately)
/*!40000 ALTER TABLE `character_void_storage` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_void_storage` ENABLE KEYS */;


-- Dumping structure for table characters.corpse
CREATE TABLE IF NOT EXISTS `corpse` (
  `corpseGuid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Character Global Unique Identifier',
  `posX` float NOT NULL DEFAULT '0',
  `posY` float NOT NULL DEFAULT '0',
  `posZ` float NOT NULL DEFAULT '0',
  `orientation` float NOT NULL DEFAULT '0',
  `mapId` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Map Identifier',
  `phaseMask` smallint(5) unsigned NOT NULL DEFAULT '1',
  `displayId` int(10) unsigned NOT NULL DEFAULT '0',
  `itemCache` text NOT NULL,
  `bytes1` int(10) unsigned NOT NULL DEFAULT '0',
  `bytes2` int(10) unsigned NOT NULL DEFAULT '0',
  `flags` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `dynFlags` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `time` int(10) unsigned NOT NULL DEFAULT '0',
  `corpseType` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `instanceId` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Instance Identifier',
  PRIMARY KEY (`corpseGuid`),
  KEY `idx_type` (`corpseType`),
  KEY `idx_instance` (`instanceId`),
  KEY `idx_player` (`guid`),
  KEY `idx_time` (`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Death System';

-- Dumping data for table characters.corpse: ~0 rows (approximately)
/*!40000 ALTER TABLE `corpse` DISABLE KEYS */;
/*!40000 ALTER TABLE `corpse` ENABLE KEYS */;


-- Dumping structure for table characters.creature_respawn
CREATE TABLE IF NOT EXISTS `creature_respawn` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `respawnTime` int(10) unsigned NOT NULL DEFAULT '0',
  `mapId` smallint(10) unsigned NOT NULL DEFAULT '0',
  `instanceId` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Instance Identifier',
  PRIMARY KEY (`guid`,`instanceId`),
  KEY `idx_instance` (`instanceId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Grid Loading System';

-- Dumping data for table characters.creature_respawn: ~0 rows (approximately)
/*!40000 ALTER TABLE `creature_respawn` DISABLE KEYS */;
/*!40000 ALTER TABLE `creature_respawn` ENABLE KEYS */;


-- Dumping structure for table characters.gameobject_respawn
CREATE TABLE IF NOT EXISTS `gameobject_respawn` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `respawnTime` int(10) unsigned NOT NULL DEFAULT '0',
  `mapId` smallint(10) unsigned NOT NULL DEFAULT '0',
  `instanceId` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Instance Identifier',
  PRIMARY KEY (`guid`,`instanceId`),
  KEY `idx_instance` (`instanceId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Grid Loading System';

-- Dumping data for table characters.gameobject_respawn: ~0 rows (approximately)
/*!40000 ALTER TABLE `gameobject_respawn` DISABLE KEYS */;
/*!40000 ALTER TABLE `gameobject_respawn` ENABLE KEYS */;


-- Dumping structure for table characters.game_event_condition_save
CREATE TABLE IF NOT EXISTS `game_event_condition_save` (
  `eventEntry` tinyint(3) unsigned NOT NULL,
  `condition_id` int(10) unsigned NOT NULL DEFAULT '0',
  `done` float DEFAULT '0',
  PRIMARY KEY (`eventEntry`,`condition_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table characters.game_event_condition_save: ~0 rows (approximately)
/*!40000 ALTER TABLE `game_event_condition_save` DISABLE KEYS */;
/*!40000 ALTER TABLE `game_event_condition_save` ENABLE KEYS */;


-- Dumping structure for table characters.game_event_save
CREATE TABLE IF NOT EXISTS `game_event_save` (
  `eventEntry` tinyint(3) unsigned NOT NULL,
  `state` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `next_start` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`eventEntry`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table characters.game_event_save: ~15 rows (approximately)
/*!40000 ALTER TABLE `game_event_save` DISABLE KEYS */;
INSERT INTO `game_event_save` (`eventEntry`, `state`, `next_start`) VALUES
	(33, 2, 0),
	(34, 2, 0),
	(35, 2, 0),
	(36, 2, 0),
	(37, 2, 0),
	(38, 2, 0),
	(39, 2, 0),
	(40, 2, 0),
	(41, 2, 0),
	(42, 2, 0),
	(43, 2, 0),
	(44, 2, 0),
	(45, 2, 0),
	(46, 2, 0),
	(47, 2, 0);
/*!40000 ALTER TABLE `game_event_save` ENABLE KEYS */;


-- Dumping structure for table characters.gm_subsurveys
CREATE TABLE IF NOT EXISTS `gm_subsurveys` (
  `surveyId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `subsurveyId` int(10) unsigned NOT NULL DEFAULT '0',
  `rank` int(10) unsigned NOT NULL DEFAULT '0',
  `comment` text NOT NULL,
  PRIMARY KEY (`surveyId`,`subsurveyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player System';

-- Dumping data for table characters.gm_subsurveys: ~0 rows (approximately)
/*!40000 ALTER TABLE `gm_subsurveys` DISABLE KEYS */;
/*!40000 ALTER TABLE `gm_subsurveys` ENABLE KEYS */;


-- Dumping structure for table characters.gm_surveys
CREATE TABLE IF NOT EXISTS `gm_surveys` (
  `surveyId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `guid` int(10) unsigned NOT NULL DEFAULT '0',
  `mainSurvey` int(10) unsigned NOT NULL DEFAULT '0',
  `overallComment` longtext NOT NULL,
  `createTime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`surveyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player System';

-- Dumping data for table characters.gm_surveys: ~0 rows (approximately)
/*!40000 ALTER TABLE `gm_surveys` DISABLE KEYS */;
/*!40000 ALTER TABLE `gm_surveys` ENABLE KEYS */;


-- Dumping structure for table characters.gm_tickets
CREATE TABLE IF NOT EXISTS `gm_tickets` (
  `ticketId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier of ticket creator',
  `name` varchar(12) NOT NULL COMMENT 'Name of ticket creator',
  `message` text NOT NULL,
  `createTime` int(10) unsigned NOT NULL DEFAULT '0',
  `mapId` smallint(5) unsigned NOT NULL DEFAULT '0',
  `posX` float NOT NULL DEFAULT '0',
  `posY` float NOT NULL DEFAULT '0',
  `posZ` float NOT NULL DEFAULT '0',
  `lastModifiedTime` int(10) unsigned NOT NULL DEFAULT '0',
  `closedBy` int(10) NOT NULL DEFAULT '0',
  `assignedTo` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'GUID of admin to whom ticket is assigned',
  `comment` text NOT NULL,
  `response` text NOT NULL,
  `completed` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `escalated` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `viewed` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `haveTicket` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ticketId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player System';

-- Dumping data for table characters.gm_tickets: ~0 rows (approximately)
/*!40000 ALTER TABLE `gm_tickets` DISABLE KEYS */;
/*!40000 ALTER TABLE `gm_tickets` ENABLE KEYS */;


-- Dumping structure for table characters.groups
CREATE TABLE IF NOT EXISTS `groups` (
  `guid` int(10) unsigned NOT NULL,
  `leaderGuid` int(10) unsigned NOT NULL,
  `lootMethod` tinyint(3) unsigned NOT NULL,
  `looterGuid` int(10) unsigned NOT NULL,
  `lootThreshold` tinyint(3) unsigned NOT NULL,
  `icon1` int(10) unsigned NOT NULL,
  `icon2` int(10) unsigned NOT NULL,
  `icon3` int(10) unsigned NOT NULL,
  `icon4` int(10) unsigned NOT NULL,
  `icon5` int(10) unsigned NOT NULL,
  `icon6` int(10) unsigned NOT NULL,
  `icon7` int(10) unsigned NOT NULL,
  `icon8` int(10) unsigned NOT NULL,
  `groupType` tinyint(3) unsigned NOT NULL,
  `difficulty` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `raiddifficulty` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`),
  KEY `leaderGuid` (`leaderGuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Groups';

-- Dumping data for table characters.groups: ~0 rows (approximately)
/*!40000 ALTER TABLE `groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `groups` ENABLE KEYS */;


-- Dumping structure for table characters.group_instance
CREATE TABLE IF NOT EXISTS `group_instance` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0',
  `instance` int(10) unsigned NOT NULL DEFAULT '0',
  `permanent` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`instance`),
  KEY `instance` (`instance`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table characters.group_instance: ~0 rows (approximately)
/*!40000 ALTER TABLE `group_instance` DISABLE KEYS */;
/*!40000 ALTER TABLE `group_instance` ENABLE KEYS */;


-- Dumping structure for table characters.group_member
CREATE TABLE IF NOT EXISTS `group_member` (
  `guid` int(10) unsigned NOT NULL,
  `memberGuid` int(10) unsigned NOT NULL,
  `memberFlags` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `subgroup` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `roles` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`memberGuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Groups';

-- Dumping data for table characters.group_member: ~0 rows (approximately)
/*!40000 ALTER TABLE `group_member` DISABLE KEYS */;
/*!40000 ALTER TABLE `group_member` ENABLE KEYS */;


-- Dumping structure for table characters.guild
CREATE TABLE IF NOT EXISTS `guild` (
  `guildid` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(24) NOT NULL DEFAULT '',
  `leaderguid` int(10) unsigned NOT NULL DEFAULT '0',
  `EmblemStyle` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `EmblemColor` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `BorderStyle` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `BorderColor` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `BackgroundColor` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `info` text NOT NULL,
  `motd` varchar(128) NOT NULL DEFAULT '',
  `createdate` int(10) unsigned NOT NULL DEFAULT '0',
  `BankMoney` bigint(20) unsigned NOT NULL DEFAULT '0',
  `level` int(10) unsigned DEFAULT '1',
  `experience` bigint(20) unsigned DEFAULT '0',
  `todayExperience` bigint(20) unsigned DEFAULT '0',
  PRIMARY KEY (`guildid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Guild System';

-- Dumping data for table characters.guild: ~0 rows (approximately)
/*!40000 ALTER TABLE `guild` DISABLE KEYS */;
/*!40000 ALTER TABLE `guild` ENABLE KEYS */;


-- Dumping structure for table characters.guild_achievement
CREATE TABLE IF NOT EXISTS `guild_achievement` (
  `guildId` int(10) unsigned NOT NULL,
  `achievement` smallint(5) unsigned NOT NULL,
  `date` int(10) unsigned NOT NULL DEFAULT '0',
  `guids` text NOT NULL,
  PRIMARY KEY (`guildId`,`achievement`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table characters.guild_achievement: ~0 rows (approximately)
/*!40000 ALTER TABLE `guild_achievement` DISABLE KEYS */;
/*!40000 ALTER TABLE `guild_achievement` ENABLE KEYS */;


-- Dumping structure for table characters.guild_achievement_progress
CREATE TABLE IF NOT EXISTS `guild_achievement_progress` (
  `guildId` int(10) unsigned NOT NULL,
  `criteria` smallint(5) unsigned NOT NULL,
  `counter` int(10) unsigned NOT NULL,
  `date` int(10) unsigned NOT NULL DEFAULT '0',
  `completedGuid` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guildId`,`criteria`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table characters.guild_achievement_progress: ~0 rows (approximately)
/*!40000 ALTER TABLE `guild_achievement_progress` DISABLE KEYS */;
/*!40000 ALTER TABLE `guild_achievement_progress` ENABLE KEYS */;


-- Dumping structure for table characters.guild_bank_eventlog
CREATE TABLE IF NOT EXISTS `guild_bank_eventlog` (
  `guildid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Guild Identificator',
  `LogGuid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Log record identificator - auxiliary column',
  `TabId` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Guild bank TabId',
  `EventType` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Event type',
  `PlayerGuid` int(10) unsigned NOT NULL DEFAULT '0',
  `ItemOrMoney` int(10) unsigned NOT NULL DEFAULT '0',
  `ItemStackCount` smallint(5) unsigned NOT NULL DEFAULT '0',
  `DestTabId` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Destination Tab Id',
  `TimeStamp` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Event UNIX time',
  PRIMARY KEY (`guildid`,`LogGuid`,`TabId`),
  KEY `guildid_key` (`guildid`),
  KEY `Idx_PlayerGuid` (`PlayerGuid`),
  KEY `Idx_LogGuid` (`LogGuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table characters.guild_bank_eventlog: ~0 rows (approximately)
/*!40000 ALTER TABLE `guild_bank_eventlog` DISABLE KEYS */;
/*!40000 ALTER TABLE `guild_bank_eventlog` ENABLE KEYS */;


-- Dumping structure for table characters.guild_bank_item
CREATE TABLE IF NOT EXISTS `guild_bank_item` (
  `guildid` int(10) unsigned NOT NULL DEFAULT '0',
  `TabId` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `SlotId` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `item_guid` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guildid`,`TabId`,`SlotId`),
  KEY `guildid_key` (`guildid`),
  KEY `Idx_item_guid` (`item_guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table characters.guild_bank_item: ~0 rows (approximately)
/*!40000 ALTER TABLE `guild_bank_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `guild_bank_item` ENABLE KEYS */;


-- Dumping structure for table characters.guild_bank_right
CREATE TABLE IF NOT EXISTS `guild_bank_right` (
  `guildid` int(10) unsigned NOT NULL DEFAULT '0',
  `TabId` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `rid` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `gbright` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `SlotPerDay` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guildid`,`TabId`,`rid`),
  KEY `guildid_key` (`guildid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table characters.guild_bank_right: ~0 rows (approximately)
/*!40000 ALTER TABLE `guild_bank_right` DISABLE KEYS */;
/*!40000 ALTER TABLE `guild_bank_right` ENABLE KEYS */;


-- Dumping structure for table characters.guild_bank_tab
CREATE TABLE IF NOT EXISTS `guild_bank_tab` (
  `guildid` int(10) unsigned NOT NULL DEFAULT '0',
  `TabId` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `TabName` varchar(16) NOT NULL DEFAULT '',
  `TabIcon` varchar(100) NOT NULL DEFAULT '',
  `TabText` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`guildid`,`TabId`),
  KEY `guildid_key` (`guildid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table characters.guild_bank_tab: ~0 rows (approximately)
/*!40000 ALTER TABLE `guild_bank_tab` DISABLE KEYS */;
/*!40000 ALTER TABLE `guild_bank_tab` ENABLE KEYS */;


-- Dumping structure for table characters.guild_eventlog
CREATE TABLE IF NOT EXISTS `guild_eventlog` (
  `guildid` int(10) unsigned NOT NULL COMMENT 'Guild Identificator',
  `LogGuid` int(10) unsigned NOT NULL COMMENT 'Log record identificator - auxiliary column',
  `EventType` tinyint(3) unsigned NOT NULL COMMENT 'Event type',
  `PlayerGuid1` int(10) unsigned NOT NULL COMMENT 'Player 1',
  `PlayerGuid2` int(10) unsigned NOT NULL COMMENT 'Player 2',
  `NewRank` tinyint(3) unsigned NOT NULL COMMENT 'New rank(in case promotion/demotion)',
  `TimeStamp` int(10) unsigned NOT NULL COMMENT 'Event UNIX time',
  PRIMARY KEY (`guildid`,`LogGuid`),
  KEY `Idx_PlayerGuid1` (`PlayerGuid1`),
  KEY `Idx_PlayerGuid2` (`PlayerGuid2`),
  KEY `Idx_LogGuid` (`LogGuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Guild Eventlog';

-- Dumping data for table characters.guild_eventlog: ~0 rows (approximately)
/*!40000 ALTER TABLE `guild_eventlog` DISABLE KEYS */;
/*!40000 ALTER TABLE `guild_eventlog` ENABLE KEYS */;


-- Dumping structure for table characters.guild_finder_applicant
CREATE TABLE IF NOT EXISTS `guild_finder_applicant` (
  `guildId` int(10) unsigned DEFAULT NULL,
  `playerGuid` int(10) unsigned DEFAULT NULL,
  `availability` tinyint(3) unsigned DEFAULT '0',
  `classRole` tinyint(3) unsigned DEFAULT '0',
  `interests` tinyint(3) unsigned DEFAULT '0',
  `comment` varchar(255) DEFAULT NULL,
  `submitTime` int(10) unsigned DEFAULT NULL,
  UNIQUE KEY `guildId` (`guildId`,`playerGuid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table characters.guild_finder_applicant: ~0 rows (approximately)
/*!40000 ALTER TABLE `guild_finder_applicant` DISABLE KEYS */;
/*!40000 ALTER TABLE `guild_finder_applicant` ENABLE KEYS */;


-- Dumping structure for table characters.guild_finder_guild_settings
CREATE TABLE IF NOT EXISTS `guild_finder_guild_settings` (
  `guildId` int(10) unsigned NOT NULL,
  `availability` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `classRoles` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `interests` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `level` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `listed` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `comment` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`guildId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table characters.guild_finder_guild_settings: ~0 rows (approximately)
/*!40000 ALTER TABLE `guild_finder_guild_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `guild_finder_guild_settings` ENABLE KEYS */;


-- Dumping structure for table characters.guild_member
CREATE TABLE IF NOT EXISTS `guild_member` (
  `guildid` int(10) unsigned NOT NULL COMMENT 'Guild Identificator',
  `guid` int(10) unsigned NOT NULL,
  `rank` tinyint(3) unsigned NOT NULL,
  `pnote` varchar(31) NOT NULL DEFAULT '',
  `offnote` varchar(31) NOT NULL DEFAULT '',
  UNIQUE KEY `guid_key` (`guid`),
  KEY `guildid_key` (`guildid`),
  KEY `guildid_rank_key` (`guildid`,`rank`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Guild System';

-- Dumping data for table characters.guild_member: ~0 rows (approximately)
/*!40000 ALTER TABLE `guild_member` DISABLE KEYS */;
/*!40000 ALTER TABLE `guild_member` ENABLE KEYS */;


-- Dumping structure for table characters.guild_member_withdraw
CREATE TABLE IF NOT EXISTS `guild_member_withdraw` (
  `guid` int(10) unsigned NOT NULL,
  `tab0` int(10) unsigned NOT NULL DEFAULT '0',
  `tab1` int(10) unsigned NOT NULL DEFAULT '0',
  `tab2` int(10) unsigned NOT NULL DEFAULT '0',
  `tab3` int(10) unsigned NOT NULL DEFAULT '0',
  `tab4` int(10) unsigned NOT NULL DEFAULT '0',
  `tab5` int(10) unsigned NOT NULL DEFAULT '0',
  `tab6` int(10) unsigned NOT NULL DEFAULT '0',
  `tab7` int(10) unsigned NOT NULL DEFAULT '0',
  `money` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Guild Member Daily Withdraws';

-- Dumping data for table characters.guild_member_withdraw: ~0 rows (approximately)
/*!40000 ALTER TABLE `guild_member_withdraw` DISABLE KEYS */;
/*!40000 ALTER TABLE `guild_member_withdraw` ENABLE KEYS */;


-- Dumping structure for table characters.guild_newslog
CREATE TABLE IF NOT EXISTS `guild_newslog` (
  `guildid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Guild Identificator',
  `LogGuid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Log record identificator - auxiliary column',
  `EventType` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Event type',
  `PlayerGuid` int(10) unsigned NOT NULL DEFAULT '0',
  `Flags` int(10) unsigned NOT NULL DEFAULT '0',
  `Value` int(10) unsigned NOT NULL DEFAULT '0',
  `TimeStamp` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Event UNIX time',
  PRIMARY KEY (`guildid`,`LogGuid`),
  KEY `guildid_key` (`guildid`),
  KEY `Idx_PlayerGuid` (`PlayerGuid`),
  KEY `Idx_LogGuid` (`LogGuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table characters.guild_newslog: ~0 rows (approximately)
/*!40000 ALTER TABLE `guild_newslog` DISABLE KEYS */;
/*!40000 ALTER TABLE `guild_newslog` ENABLE KEYS */;


-- Dumping structure for table characters.guild_rank
CREATE TABLE IF NOT EXISTS `guild_rank` (
  `guildid` int(10) unsigned NOT NULL DEFAULT '0',
  `rid` tinyint(3) unsigned NOT NULL,
  `rname` varchar(20) NOT NULL DEFAULT '',
  `rights` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `BankMoneyPerDay` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guildid`,`rid`),
  KEY `Idx_rid` (`rid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Guild System';

-- Dumping data for table characters.guild_rank: ~0 rows (approximately)
/*!40000 ALTER TABLE `guild_rank` DISABLE KEYS */;
/*!40000 ALTER TABLE `guild_rank` ENABLE KEYS */;


-- Dumping structure for table characters.instance
CREATE TABLE IF NOT EXISTS `instance` (
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `map` smallint(5) unsigned NOT NULL DEFAULT '0',
  `resettime` int(10) unsigned NOT NULL DEFAULT '0',
  `difficulty` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `completedEncounters` int(10) unsigned NOT NULL DEFAULT '0',
  `data` tinytext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `map` (`map`),
  KEY `resettime` (`resettime`),
  KEY `difficulty` (`difficulty`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table characters.instance: ~0 rows (approximately)
/*!40000 ALTER TABLE `instance` DISABLE KEYS */;
/*!40000 ALTER TABLE `instance` ENABLE KEYS */;


-- Dumping structure for table characters.instance_reset
CREATE TABLE IF NOT EXISTS `instance_reset` (
  `mapid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `difficulty` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `resettime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`mapid`,`difficulty`),
  KEY `difficulty` (`difficulty`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table characters.instance_reset: ~105 rows (approximately)
/*!40000 ALTER TABLE `instance_reset` DISABLE KEYS */;
INSERT INTO `instance_reset` (`mapid`, `difficulty`, `resettime`) VALUES
	(33, 1, 1359259200),
	(36, 1, 1359259200),
	(249, 0, 1359259200),
	(249, 1, 1359259200),
	(269, 1, 1359259200),
	(409, 0, 1359259200),
	(469, 0, 1359259200),
	(509, 0, 1359432000),
	(531, 0, 1359259200),
	(532, 0, 1359259200),
	(533, 0, 1359259200),
	(533, 1, 1359259200),
	(534, 0, 1359259200),
	(540, 1, 1359259200),
	(542, 1, 1359259200),
	(543, 1, 1359259200),
	(544, 0, 1359259200),
	(545, 1, 1359259200),
	(546, 1, 1359259200),
	(547, 1, 1359259200),
	(548, 0, 1359259200),
	(550, 0, 1359259200),
	(552, 1, 1359259200),
	(553, 1, 1359259200),
	(554, 1, 1359259200),
	(555, 1, 1359259200),
	(556, 1, 1359259200),
	(557, 1, 1359259200),
	(558, 1, 1359259200),
	(560, 1, 1359259200),
	(564, 0, 1359259200),
	(565, 0, 1359259200),
	(568, 1, 1359259200),
	(574, 1, 1359259200),
	(575, 1, 1359259200),
	(576, 1, 1359259200),
	(578, 1, 1359259200),
	(580, 0, 1359259200),
	(585, 1, 1359259200),
	(595, 1, 1359259200),
	(598, 1, 1359259200),
	(599, 1, 1359259200),
	(600, 1, 1359259200),
	(601, 1, 1359259200),
	(602, 1, 1359259200),
	(603, 0, 1359259200),
	(603, 1, 1359259200),
	(604, 1, 1359259200),
	(608, 1, 1359259200),
	(615, 0, 1359259200),
	(615, 1, 1359259200),
	(616, 0, 1359259200),
	(616, 1, 1359259200),
	(619, 1, 1359259200),
	(624, 0, 1359259200),
	(624, 1, 1359259200),
	(631, 0, 1359259200),
	(631, 1, 1359259200),
	(631, 2, 1359259200),
	(631, 3, 1359259200),
	(632, 1, 1359259200),
	(643, 1, 1359259200),
	(644, 1, 1359259200),
	(645, 1, 1359259200),
	(649, 0, 1359259200),
	(649, 1, 1359259200),
	(649, 2, 1359259200),
	(649, 3, 1359259200),
	(650, 1, 1359259200),
	(657, 1, 1359259200),
	(658, 1, 1359259200),
	(668, 1, 1359259200),
	(669, 0, 1359259200),
	(669, 1, 1359259200),
	(669, 2, 1359259200),
	(669, 3, 1359259200),
	(670, 1, 1359259200),
	(671, 0, 1359259200),
	(671, 1, 1359259200),
	(671, 2, 1359259200),
	(671, 3, 1359259200),
	(720, 0, 1359259200),
	(720, 1, 1359259200),
	(720, 2, 1359259200),
	(720, 3, 1359259200),
	(724, 0, 1359259200),
	(724, 1, 1359259200),
	(724, 2, 1359259200),
	(724, 3, 1359259200),
	(725, 1, 1359259200),
	(754, 0, 1359259200),
	(754, 1, 1359259200),
	(754, 2, 1359259200),
	(754, 3, 1359259200),
	(755, 1, 1359259200),
	(757, 0, 1359259200),
	(757, 1, 1359259200),
	(859, 1, 1359259200),
	(938, 1, 1359259200),
	(939, 1, 1359259200),
	(940, 1, 1359259200),
	(967, 0, 1359259200),
	(967, 1, 1359259200),
	(967, 2, 1359259200),
	(967, 3, 1359259200);
/*!40000 ALTER TABLE `instance_reset` ENABLE KEYS */;


-- Dumping structure for table characters.ip_banned
CREATE TABLE IF NOT EXISTS `ip_banned` (
  `ip` varchar(15) NOT NULL DEFAULT '127.0.0.1',
  `bandate` int(10) unsigned NOT NULL,
  `unbandate` int(10) unsigned NOT NULL,
  `bannedby` varchar(50) NOT NULL DEFAULT '[Console]',
  `banreason` varchar(255) NOT NULL DEFAULT 'no reason',
  PRIMARY KEY (`ip`,`bandate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Banned IPs';

-- Dumping data for table characters.ip_banned: ~0 rows (approximately)
/*!40000 ALTER TABLE `ip_banned` DISABLE KEYS */;
/*!40000 ALTER TABLE `ip_banned` ENABLE KEYS */;


-- Dumping structure for table characters.item_instance
CREATE TABLE IF NOT EXISTS `item_instance` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0',
  `itemEntry` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `owner_guid` int(10) unsigned NOT NULL DEFAULT '0',
  `creatorGuid` int(10) unsigned NOT NULL DEFAULT '0',
  `giftCreatorGuid` int(10) unsigned NOT NULL DEFAULT '0',
  `count` int(10) unsigned NOT NULL DEFAULT '1',
  `duration` int(10) NOT NULL DEFAULT '0',
  `charges` tinytext,
  `flags` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `enchantments` text NOT NULL,
  `randomPropertyId` smallint(5) NOT NULL DEFAULT '0',
  `durability` smallint(5) unsigned NOT NULL DEFAULT '0',
  `playedTime` int(10) unsigned NOT NULL DEFAULT '0',
  `text` text,
  PRIMARY KEY (`guid`),
  KEY `idx_owner_guid` (`owner_guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Item System';

-- Dumping data for table characters.item_instance: ~0 rows (approximately)
/*!40000 ALTER TABLE `item_instance` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_instance` ENABLE KEYS */;


-- Dumping structure for table characters.item_loot_items
CREATE TABLE IF NOT EXISTS `item_loot_items` (
  `container_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'guid of container (item_instance.guid)',
  `item_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'loot item entry (item_instance.itemEntry)',
  `item_count` int(10) NOT NULL DEFAULT '0' COMMENT 'stack size',
  `follow_rules` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'follow loot rules',
  `ffa` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'free-for-all',
  `blocked` tinyint(1) NOT NULL DEFAULT '0',
  `counted` tinyint(1) NOT NULL DEFAULT '0',
  `under_threshold` tinyint(1) NOT NULL DEFAULT '0',
  `needs_quest` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'quest drop',
  `rnd_prop` int(10) NOT NULL DEFAULT '0' COMMENT 'random enchantment added when originally rolled',
  `rnd_suffix` int(10) NOT NULL DEFAULT '0' COMMENT 'random suffix added when originally rolled'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table characters.item_loot_items: ~0 rows (approximately)
/*!40000 ALTER TABLE `item_loot_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_loot_items` ENABLE KEYS */;


-- Dumping structure for table characters.item_loot_money
CREATE TABLE IF NOT EXISTS `item_loot_money` (
  `container_id` int(10) NOT NULL DEFAULT '0' COMMENT 'guid of container (item_instance.guid)',
  `money` int(10) NOT NULL DEFAULT '0' COMMENT 'money loot (in copper)'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table characters.item_loot_money: ~0 rows (approximately)
/*!40000 ALTER TABLE `item_loot_money` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_loot_money` ENABLE KEYS */;


-- Dumping structure for table characters.item_refund_instance
CREATE TABLE IF NOT EXISTS `item_refund_instance` (
  `item_guid` int(10) unsigned NOT NULL COMMENT 'Item GUID',
  `player_guid` int(10) unsigned NOT NULL COMMENT 'Player GUID',
  `paidMoney` int(10) unsigned NOT NULL DEFAULT '0',
  `paidExtendedCost` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`item_guid`,`player_guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Item Refund System';

-- Dumping data for table characters.item_refund_instance: ~0 rows (approximately)
/*!40000 ALTER TABLE `item_refund_instance` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_refund_instance` ENABLE KEYS */;


-- Dumping structure for table characters.item_soulbound_trade_data
CREATE TABLE IF NOT EXISTS `item_soulbound_trade_data` (
  `itemGuid` int(10) unsigned NOT NULL COMMENT 'Item GUID',
  `allowedPlayers` text NOT NULL COMMENT 'Space separated GUID list of players who can receive this item in trade',
  PRIMARY KEY (`itemGuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Item Refund System';

-- Dumping data for table characters.item_soulbound_trade_data: ~0 rows (approximately)
/*!40000 ALTER TABLE `item_soulbound_trade_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_soulbound_trade_data` ENABLE KEYS */;


-- Dumping structure for table characters.lag_reports
CREATE TABLE IF NOT EXISTS `lag_reports` (
  `reportId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `guid` int(10) unsigned NOT NULL DEFAULT '0',
  `lagType` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `mapId` smallint(5) unsigned NOT NULL DEFAULT '0',
  `posX` float NOT NULL DEFAULT '0',
  `posY` float NOT NULL DEFAULT '0',
  `posZ` float NOT NULL DEFAULT '0',
  `latency` int(10) unsigned NOT NULL DEFAULT '0',
  `createTime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`reportId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player System';

-- Dumping data for table characters.lag_reports: ~0 rows (approximately)
/*!40000 ALTER TABLE `lag_reports` DISABLE KEYS */;
/*!40000 ALTER TABLE `lag_reports` ENABLE KEYS */;


-- Dumping structure for table characters.lfg_data
CREATE TABLE IF NOT EXISTS `lfg_data` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `dungeon` int(10) unsigned NOT NULL DEFAULT '0',
  `state` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='LFG Data';

-- Dumping data for table characters.lfg_data: ~0 rows (approximately)
/*!40000 ALTER TABLE `lfg_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `lfg_data` ENABLE KEYS */;


-- Dumping structure for table characters.logs
CREATE TABLE IF NOT EXISTS `logs` (
  `time` int(10) unsigned NOT NULL,
  `realm` int(10) unsigned NOT NULL,
  `type` tinyint(3) unsigned NOT NULL,
  `level` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `string` text CHARACTER SET latin1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table characters.logs: ~0 rows (approximately)
/*!40000 ALTER TABLE `logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `logs` ENABLE KEYS */;


-- Dumping structure for table characters.mail
CREATE TABLE IF NOT EXISTS `mail` (
  `id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Identifier',
  `messageType` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `stationery` tinyint(3) NOT NULL DEFAULT '41',
  `mailTemplateId` smallint(5) unsigned NOT NULL DEFAULT '0',
  `sender` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Character Global Unique Identifier',
  `receiver` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Character Global Unique Identifier',
  `subject` longtext,
  `body` longtext,
  `has_items` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `expire_time` int(10) unsigned NOT NULL DEFAULT '0',
  `deliver_time` int(10) unsigned NOT NULL DEFAULT '0',
  `money` bigint(20) unsigned NOT NULL DEFAULT '0',
  `cod` bigint(20) unsigned NOT NULL DEFAULT '0',
  `checked` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_receiver` (`receiver`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Mail System';

-- Dumping data for table characters.mail: ~0 rows (approximately)
/*!40000 ALTER TABLE `mail` DISABLE KEYS */;
/*!40000 ALTER TABLE `mail` ENABLE KEYS */;


-- Dumping structure for table characters.mail_items
CREATE TABLE IF NOT EXISTS `mail_items` (
  `mail_id` int(10) unsigned NOT NULL DEFAULT '0',
  `item_guid` int(10) unsigned NOT NULL DEFAULT '0',
  `receiver` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Character Global Unique Identifier',
  PRIMARY KEY (`item_guid`),
  KEY `idx_receiver` (`receiver`),
  KEY `idx_mail_id` (`mail_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- Dumping data for table characters.mail_items: ~0 rows (approximately)
/*!40000 ALTER TABLE `mail_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `mail_items` ENABLE KEYS */;


-- Dumping structure for table characters.petition
CREATE TABLE IF NOT EXISTS `petition` (
  `ownerguid` int(10) unsigned NOT NULL,
  `petitionguid` int(10) unsigned DEFAULT '0',
  `name` varchar(24) NOT NULL,
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ownerguid`,`type`),
  UNIQUE KEY `index_ownerguid_petitionguid` (`ownerguid`,`petitionguid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Guild System';

-- Dumping data for table characters.petition: ~0 rows (approximately)
/*!40000 ALTER TABLE `petition` DISABLE KEYS */;
/*!40000 ALTER TABLE `petition` ENABLE KEYS */;


-- Dumping structure for table characters.petition_sign
CREATE TABLE IF NOT EXISTS `petition_sign` (
  `ownerguid` int(10) unsigned NOT NULL,
  `petitionguid` int(10) unsigned NOT NULL DEFAULT '0',
  `playerguid` int(10) unsigned NOT NULL DEFAULT '0',
  `player_account` int(10) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`petitionguid`,`playerguid`),
  KEY `Idx_playerguid` (`playerguid`),
  KEY `Idx_ownerguid` (`ownerguid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Guild System';

-- Dumping data for table characters.petition_sign: ~0 rows (approximately)
/*!40000 ALTER TABLE `petition_sign` DISABLE KEYS */;
/*!40000 ALTER TABLE `petition_sign` ENABLE KEYS */;


-- Dumping structure for table characters.pet_aura
CREATE TABLE IF NOT EXISTS `pet_aura` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `caster_guid` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'Full Global Unique Identifier',
  `spell` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `effect_mask` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `recalculate_mask` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `stackcount` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `amount0` mediumint(8) NOT NULL,
  `amount1` mediumint(8) NOT NULL,
  `amount2` mediumint(8) NOT NULL,
  `base_amount0` mediumint(8) NOT NULL,
  `base_amount1` mediumint(8) NOT NULL,
  `base_amount2` mediumint(8) NOT NULL,
  `maxduration` int(11) NOT NULL DEFAULT '0',
  `remaintime` int(11) NOT NULL DEFAULT '0',
  `remaincharges` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`spell`,`effect_mask`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Pet System';

-- Dumping data for table characters.pet_aura: ~0 rows (approximately)
/*!40000 ALTER TABLE `pet_aura` DISABLE KEYS */;
/*!40000 ALTER TABLE `pet_aura` ENABLE KEYS */;


-- Dumping structure for table characters.pet_spell
CREATE TABLE IF NOT EXISTS `pet_spell` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `spell` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT 'Spell Identifier',
  `active` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`spell`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Pet System';

-- Dumping data for table characters.pet_spell: ~0 rows (approximately)
/*!40000 ALTER TABLE `pet_spell` DISABLE KEYS */;
/*!40000 ALTER TABLE `pet_spell` ENABLE KEYS */;


-- Dumping structure for table characters.pet_spell_cooldown
CREATE TABLE IF NOT EXISTS `pet_spell_cooldown` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier, Low part',
  `spell` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT 'Spell Identifier',
  `time` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`spell`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table characters.pet_spell_cooldown: ~0 rows (approximately)
/*!40000 ALTER TABLE `pet_spell_cooldown` DISABLE KEYS */;
/*!40000 ALTER TABLE `pet_spell_cooldown` ENABLE KEYS */;


-- Dumping structure for table characters.pool_quest_save
CREATE TABLE IF NOT EXISTS `pool_quest_save` (
  `pool_id` int(10) unsigned NOT NULL DEFAULT '0',
  `quest_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pool_id`,`quest_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table characters.pool_quest_save: ~25 rows (approximately)
/*!40000 ALTER TABLE `pool_quest_save` DISABLE KEYS */;
INSERT INTO `pool_quest_save` (`pool_id`, `quest_id`) VALUES
	(349, 14102),
	(350, 13905),
	(351, 13916),
	(352, 11377),
	(353, 11668),
	(354, 13425),
	(356, 11362),
	(357, 11385),
	(5662, 13675),
	(5663, 13763),
	(5664, 13770),
	(5665, 13775),
	(5666, 13779),
	(5667, 13783),
	(5668, 13670),
	(5669, 13616),
	(5670, 13743),
	(5671, 13747),
	(5672, 13759),
	(5673, 13754),
	(5674, 13107),
	(5675, 13116),
	(5676, 13832),
	(5677, 12959),
	(5678, 24585);
/*!40000 ALTER TABLE `pool_quest_save` ENABLE KEYS */;


-- Dumping structure for table characters.realmcharacters
CREATE TABLE IF NOT EXISTS `realmcharacters` (
  `realmid` int(10) unsigned NOT NULL DEFAULT '0',
  `acctid` int(10) unsigned NOT NULL,
  `numchars` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`realmid`,`acctid`),
  KEY `acctid` (`acctid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Realm Character Tracker';

-- Dumping data for table characters.realmcharacters: ~0 rows (approximately)
/*!40000 ALTER TABLE `realmcharacters` DISABLE KEYS */;
/*!40000 ALTER TABLE `realmcharacters` ENABLE KEYS */;


-- Dumping structure for table characters.realmlist
CREATE TABLE IF NOT EXISTS `realmlist` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL DEFAULT '',
  `address` varchar(255) NOT NULL DEFAULT '127.0.0.1',
  `port` smallint(5) unsigned NOT NULL DEFAULT '8085',
  `icon` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `flag` tinyint(3) unsigned NOT NULL DEFAULT '2',
  `timezone` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `allowedSecurityLevel` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `population` float unsigned NOT NULL DEFAULT '0',
  `gamebuild` int(10) unsigned NOT NULL DEFAULT '15595',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Realm System';

-- Dumping data for table characters.realmlist: ~1 rows (approximately)
/*!40000 ALTER TABLE `realmlist` DISABLE KEYS */;
INSERT INTO `realmlist` (`id`, `name`, `address`, `port`, `icon`, `flag`, `timezone`, `allowedSecurityLevel`, `population`, `gamebuild`) VALUES
	(1, 'Trinity', '127.0.0.1', 8085, 1, 0, 1, 0, 0, 15595);
/*!40000 ALTER TABLE `realmlist` ENABLE KEYS */;


-- Dumping structure for table characters.reserved_name
CREATE TABLE IF NOT EXISTS `reserved_name` (
  `name` varchar(12) NOT NULL DEFAULT '',
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player Reserved Names';

-- Dumping data for table characters.reserved_name: ~0 rows (approximately)
/*!40000 ALTER TABLE `reserved_name` DISABLE KEYS */;
/*!40000 ALTER TABLE `reserved_name` ENABLE KEYS */;


-- Dumping structure for table characters.uptime
CREATE TABLE IF NOT EXISTS `uptime` (
  `realmid` int(10) unsigned NOT NULL,
  `starttime` int(10) unsigned NOT NULL DEFAULT '0',
  `uptime` int(10) unsigned NOT NULL DEFAULT '0',
  `maxplayers` smallint(5) unsigned NOT NULL DEFAULT '0',
  `revision` varchar(255) NOT NULL DEFAULT 'Trinitycore',
  PRIMARY KEY (`realmid`,`starttime`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Uptime system';

-- Dumping data for table characters.uptime: ~0 rows (approximately)
/*!40000 ALTER TABLE `uptime` DISABLE KEYS */;
/*!40000 ALTER TABLE `uptime` ENABLE KEYS */;


-- Dumping structure for table characters.warden_action
CREATE TABLE IF NOT EXISTS `warden_action` (
  `wardenId` smallint(5) unsigned NOT NULL,
  `action` tinyint(3) unsigned DEFAULT NULL,
  PRIMARY KEY (`wardenId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table characters.warden_action: ~0 rows (approximately)
/*!40000 ALTER TABLE `warden_action` DISABLE KEYS */;
/*!40000 ALTER TABLE `warden_action` ENABLE KEYS */;


-- Dumping structure for table characters.worldstates
CREATE TABLE IF NOT EXISTS `worldstates` (
  `entry` int(10) unsigned NOT NULL DEFAULT '0',
  `value` int(10) unsigned NOT NULL DEFAULT '0',
  `comment` tinytext,
  PRIMARY KEY (`entry`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Variable Saves';

-- Dumping data for table characters.worldstates: ~10 rows (approximately)
/*!40000 ALTER TABLE `worldstates` DISABLE KEYS */;
INSERT INTO `worldstates` (`entry`, `value`, `comment`) VALUES
	(3781, 9000000, NULL),
	(3801, 0, NULL),
	(3802, 0, NULL),
	(20001, 1359259200, 'NextArenaPointDistributionTime'),
	(20002, 1359296291, 'NextWeeklyQuestResetTime'),
	(20003, 1359259200, 'NextBGRandomDailyResetTime'),
	(20004, 0, 'cleaning_flags'),
	(20006, 1359259200, NULL),
	(20007, 1359669600, NULL),
	(20050, 3, NULL);
/*!40000 ALTER TABLE `worldstates` ENABLE KEYS */;
/*!40014 SET FOREIGN_KEY_CHECKS=1 */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;