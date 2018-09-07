-- phpMyAdmin SQL Dump
-- http://www.phpmyadmin.net
--
-- Host Connection Info: localhost via TCP/IP
-- Generation Time: August 29, 2018 at 18:03 PM ( UTC )
-- Server version: 5.5.5-10.1.21-MariaDB
-- PHP Version: 7.1.2
--

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;


-- ---------------------------------------------------------
--
-- Table structure for table : `wo_activities`
--
-- ---------------------------------------------------------

CREATE TABLE `wo_activities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(255) NOT NULL DEFAULT '0',
  `post_id` int(255) NOT NULL DEFAULT '0',
  `activity_type` varchar(32) NOT NULL DEFAULT '',
  `time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `post_id` (`post_id`),
  KEY `activity_type` (`activity_type`),
  KEY `order1` (`user_id`,`id`),
  KEY `order2` (`post_id`,`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wo_activities`
--

INSERT INTO wo_activities VALUES
("2","2","1","liked_post","1530599659"),
("3","2","2","liked_post","1530599685"),
("5","2","7","liked_post","1530610112"),
("6","1","8","liked_post","1530613146"),
("8","2","11","liked_post","1530618719"),
("9","2","9","liked_post","1530626439"),
("10","2","12","commented_post","1530626652"),
("11","3","3","liked_post","1530627792"),
("12","3","8","liked_post","1530627812"),
("13","3","5","liked_post","1530627885"),
("14","2","18","liked_post","1530630833"),
("15","1","20","liked_post","1530631726"),
("16","3","20","liked_post","1530632508"),
("17","3","18","liked_post","1530632512"),
("18","3","11","liked_post","1530632526"),
("20","3","7","liked_post","1530632556"),
("22","3","11","commented_post","1530636531"),
("23","1","21","liked_post","1530639966"),
("24","1","19","liked_post","1530645583"),
("25","5","3","liked_post","1530674419"),
("26","1","3","liked_post","1530677475"),
("27","5","28","liked_post","1530680650"),
("28","6","26","liked_post","1530691261"),
("29","6","19","liked_post","1530691318"),
("30","6","23","liked_post","1530691321"),
("31","6","24","liked_post","1530691830"),
("32","2","28","liked_post","1530701161"),
("33","2","26","liked_post","1530701163"),
("34","2","25","liked_post","1530701168"),
("35","2","24","liked_post","1530701172"),
("36","2","23","liked_post","1530701177"),
("37","2","21","liked_post","1530701181"),
("38","3","29","liked_post","1530702968"),
("39","3","28","liked_post","1530702997"),
("40","3","26","liked_post","1530703008"),
("41","3","25","liked_post","1530703014"),
("42","3","23","liked_post","1530703022"),
("43","3","24","liked_post","1530703029"),
("44","3","19","liked_post","1530703051"),
("45","2","31","liked_post","1530709116"),
("46","2","29","liked_post","1530709446"),
("47","1","33","liked_post","1530718560"),
("48","3","34","liked_post","1530726012"),
("49","3","33","liked_post","1530726281"),
("50","3","31","liked_post","1530726285"),
("51","3","38","liked_post","1530766987"),
("52","3","39","liked_post","1530767303"),
("53","3","40","liked_post","1530767516"),
("54","3","36","liked_post","1530767544"),
("55","3","35","liked_post","1530767569"),
("56","6","38","liked_post","1530852500"),
("57","6","39","liked_post","1530852502"),
("58","1","34","liked_post","1531494021"),
("59","1","40","liked_post","1531494031"),
("60","1","39","liked_post","1532851676"),
("61","1","36","liked_post","1532851784"),
("62","1","38","liked_post","1532853029"),
("63","3","41","liked_post","1533116361"),
("64","1","48","liked_post","1535550052"),
("65","1","44","liked_post","1535550281"),
("66","1","47","liked_post","1535565687");

-- ---------------------------------------------------------
--
-- Table structure for table : `wo_admininvitations`
--
-- ---------------------------------------------------------

CREATE TABLE `wo_admininvitations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(300) NOT NULL DEFAULT '0',
  `posted` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `code` (`code`(255))
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wo_admininvitations`
--

INSERT INTO wo_admininvitations VALUES
("1","15806671935b3b1f0f23a5a2.29044647","1530601231"),
("2","19590574795b3b1f179000a8.36210951","1530601239"),
("3","4536038865b3b1f18b68b22.27283136","1530601240"),
("4","7255061345b3b1f199ff584.38028540","1530601241"),
("5","19152427925b3b1f1a523a83.38207253","1530601242"),
("6","13950293635b3b1f1b182e48.07648515","1530601243");

-- ---------------------------------------------------------
--
-- Table structure for table : `wo_ads`
--
-- ---------------------------------------------------------

CREATE TABLE `wo_ads` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(32) NOT NULL DEFAULT '',
  `code` text,
  `active` enum('0','1') NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `active` (`active`),
  KEY `type` (`type`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wo_ads`
--

INSERT INTO wo_ads VALUES
("1","header","","0"),
("2","sidebar","","0"),
("4","footer","","0"),
("5","post_first","<iframe width=\"640\" height=\"480\" style=\"max-width: 100%;max-height: 100%;\" src=\"http://192.168.43.181/i-watch/videoEmbeded/five-nights-at-freddy-s-pizzeria-simulator-part-4\" frameborder=\"0\" allowfullscreen=\"allowfullscreen\" class=\"YouPHPTubeIframe\"></iframe>","1"),
("6","post_second","","0"),
("7","post_third","","0");

-- ---------------------------------------------------------
--
-- Table structure for table : `wo_affiliates_requests`
--
-- ---------------------------------------------------------

CREATE TABLE `wo_affiliates_requests` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `amount` varchar(100) NOT NULL DEFAULT '0',
  `full_amount` varchar(100) NOT NULL DEFAULT '',
  `status` int(11) NOT NULL DEFAULT '0',
  `time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `time` (`time`),
  KEY `status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ---------------------------------------------------------
--
-- Table structure for table : `wo_albums_media`
--
-- ---------------------------------------------------------

CREATE TABLE `wo_albums_media` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `post_id` int(11) NOT NULL DEFAULT '0',
  `image` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `post_id` (`post_id`),
  KEY `order1` (`post_id`,`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wo_albums_media`
--

INSERT INTO wo_albums_media VALUES
("1","20","upload/photos/2018/07/5b4uzDMQaEyoe9zmNzoM_03_b2ae582ab81b19650b9f982cba2d6e22_image.jpg"),
("2","20","upload/photos/2018/07/klezUdc1UfXSY8wlAkBd_03_b2ae582ab81b19650b9f982cba2d6e22_image.jpg"),
("3","20","upload/photos/2018/07/Hm766OIKwriJmkVIF8My_03_149c3e09beb5d050bb79a8cea786297d_image.jpg"),
("4","20","upload/photos/2018/07/4hsRrX5nqbNHjuemjlKo_03_149c3e09beb5d050bb79a8cea786297d_image.jpg"),
("5","20","upload/photos/2018/07/gb2lngejEOBj7nQCCapE_03_149c3e09beb5d050bb79a8cea786297d_image.jpg"),
("6","20","upload/photos/2018/07/HHkLgO26NOG6f9w79G45_03_fe91335275bf941c7b199db9d76b40a8_image.jpg"),
("7","20","upload/photos/2018/07/rPBbkm5jHPHMu8C8AFd3_03_fe91335275bf941c7b199db9d76b40a8_image.jpg"),
("8","20","upload/photos/2018/07/SYojSZRlCRMSVi1RcNVE_03_fe91335275bf941c7b199db9d76b40a8_image.jpg"),
("9","20","upload/photos/2018/07/s2YPcysenGPQMOL8KSlZ_03_fe91335275bf941c7b199db9d76b40a8_image.jpg"),
("10","20","upload/photos/2018/07/9SJYcTLgJKq62tTdLidB_03_fe91335275bf941c7b199db9d76b40a8_image.jpg"),
("11","20","upload/photos/2018/07/tie7y3eVZBogujMoy2ab_03_fe91335275bf941c7b199db9d76b40a8_image.png"),
("12","20","upload/photos/2018/07/F3QqhMAm8XYBiQvEIxyt_03_6eadd321c477581c101d15d1de78e0e5_image.jpg"),
("13","20","upload/photos/2018/07/wqu1aD2ch3cBbuedmc6e_03_6eadd321c477581c101d15d1de78e0e5_image.jpg"),
("14","20","upload/photos/2018/07/fKGfmYFlFRJCQLC3EpKr_03_6eadd321c477581c101d15d1de78e0e5_image.png"),
("15","20","upload/photos/2018/07/Ft5IvvyXXz5nl8eURUEn_03_6eadd321c477581c101d15d1de78e0e5_image.jpg"),
("16","20","upload/photos/2018/07/58boFBJ8cq7UOljjPmg7_03_6eadd321c477581c101d15d1de78e0e5_image.jpg"),
("17","20","upload/photos/2018/07/R7l2MAEn3821npcWxFPW_03_6eadd321c477581c101d15d1de78e0e5_image.jpg"),
("18","20","upload/photos/2018/07/UP9DENPTuPHrbCLMHEme_03_8c0052f75674d4241a88ddbafca59ef9_image.jpg"),
("19","20","upload/photos/2018/07/tOkcuhAu5UKQaueIo74M_03_525738eb5c7ab06c4614f829561205d3_image.png"),
("20","20","upload/photos/2018/07/OLys7AdX8MsY1TKTAWab_03_d4fb2b41a366db88869a306ed6d01c67_image.png"),
("21","20","upload/photos/2018/07/1EwdTyKs46XWR4i9QzPz_03_d4fb2b41a366db88869a306ed6d01c67_image.jpg"),
("22","20","upload/photos/2018/07/HArWL5UtZVlcOzKekmFi_03_d4fb2b41a366db88869a306ed6d01c67_image.jpg");

-- ---------------------------------------------------------
--
-- Table structure for table : `wo_announcement`
--
-- ---------------------------------------------------------

CREATE TABLE `wo_announcement` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `text` text,
  `time` int(32) NOT NULL DEFAULT '0',
  `active` enum('0','1') NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `active` (`active`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ---------------------------------------------------------
--
-- Table structure for table : `wo_announcement_views`
--
-- ---------------------------------------------------------

CREATE TABLE `wo_announcement_views` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `announcement_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `announcement_id` (`announcement_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ---------------------------------------------------------
--
-- Table structure for table : `wo_apps`
--
-- ---------------------------------------------------------

CREATE TABLE `wo_apps` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_user_id` int(11) NOT NULL DEFAULT '0',
  `app_name` varchar(32) NOT NULL,
  `app_website_url` varchar(55) NOT NULL,
  `app_description` text NOT NULL,
  `app_avatar` varchar(100) NOT NULL DEFAULT 'upload/photos/app-default-icon.png',
  `app_callback_url` varchar(255) NOT NULL,
  `app_id` varchar(32) NOT NULL,
  `app_secret` varchar(55) NOT NULL,
  `active` enum('0','1') NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ---------------------------------------------------------
--
-- Table structure for table : `wo_apps_hash`
--
-- ---------------------------------------------------------

CREATE TABLE `wo_apps_hash` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hash_id` varchar(200) NOT NULL DEFAULT '',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `active` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `hash_id` (`hash_id`),
  KEY `active` (`active`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ---------------------------------------------------------
--
-- Table structure for table : `wo_apps_permission`
--
-- ---------------------------------------------------------

CREATE TABLE `wo_apps_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `app_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`,`app_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ---------------------------------------------------------
--
-- Table structure for table : `wo_appssessions`
--
-- ---------------------------------------------------------

CREATE TABLE `wo_appssessions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `session_id` varchar(120) NOT NULL DEFAULT '',
  `platform` varchar(32) NOT NULL DEFAULT '',
  `time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `session_id` (`session_id`),
  KEY `user_id` (`user_id`),
  KEY `platform` (`platform`)
) ENGINE=InnoDB AUTO_INCREMENT=134 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wo_appssessions`
--

INSERT INTO wo_appssessions VALUES
("6","2","478291a3e670aa3de367552b36224fa36058fc547e4469117fc3a9bc6f3cf3bb11791b8a44432727e2a89271adb634edc3e692846f9e0675","web","1535564226"),
("7","3","8e6d48b455eebc7902a4d7a17d085259ad2e68180ed3d6b55ba1794a8420c81d7c81c236874498008ab70731b1553f17c11a3bbc87e0b605","web","1535553267"),
("8","4","d1d694d86fba7f8cd4cae35eb63d2c66acc9a96c687d32bdbbaff899ed5627968c0b22b351815391b154e7b21b2ff0a14d96affa6d3fb958","web","1530626624"),
("9","3","eae27cc20c249e00b7532b3f68ce38d30e321db9200461341100e55ce24f2477c8efe95869829623ad62cfd33e3870262d6bf5331c1f13b0","web","1535553267"),
("12","1","762973cc621d7223207fd18f3022020e6f67fd75205841165e238461710b8619375c5e13398298220602940f23884f782058efac46f64b0f","web","1535565794"),
("14","1","5103e6cc940d182bda7396eeebd4f0c52ea3bf005f61c2a87da4ecdf57061792c2287e4e35004150b0bf8b3daf61246d13276dc8dcdfb87d","web","1535565794"),
("18","5","584f36a6c4c092741632b870d594f86f94ff551a8857ff78862827dc43f8bde5f16078bf60761653eca336bc46296c1aced239fbfb803b5c","web","1530681796"),
("19","3","2c8913abdf0b63d7624f10b72d469badd4a8cf9468580e7e47383a34bd56607610e452c4614699914e8eaf897c638d519710b1691121f8cb","web","1535553267"),
("20","3","8150d175f22de0e7a941662d8c854e7f2593a09643a3d5484c34087514bd9de46c5871ab54299307a70dab11c90d06b809d0be230731762a","web","1535553267"),
("21","3","49d7156792bb77196d7b07e907e005084e141bbf2a87c4d0397fb5d4678008ff660820cf66206588ae3f4c649fb55c2ee3ef4d1abdb79ce5","web","1535553267"),
("22","3","dc668d8d5b334be377e408a0d20dbf146d48c72dcdeb48d1ff294c340aac1a664db9d85493254857374939012129c174e451f0f64be3bfea","web","1535553267"),
("23","3","f5d19efa66cb323ea00658025fc5c3138eac25c29cbb3bd78d09b4451be33747d0712f7f18818057fb6c4e0b4b90ebfb5a35ca7a9cbf1d16","web","1535553267"),
("24","3","a149ed0b6090af12d0dde20437936fc75d11f0210c84fa3c9b772dc1cbda62fa3a15ce847186430071d2d6ccac82f8a334937ff0fcdc0d8a","web","1535553267"),
("25","3","3ec5875ee7f825b2beafa6b613086b6a1673141114e288e4d43daf1b327ed11532217b5439709454e10534dd65cf727692c0f9c44ba613f8","web","1535553267"),
("29","5","ac29e850f20dedd495448e18ae3c41ea4ae6a57a1b5c435891d96797991ddc2960f1b47796666027142536b9b535b78e681c11b0195d962f","web","1530683660"),
("30","5","1bf5e73e57a70a62d247bdbf935b14f511fc34e9357d720533c13192dff15978e31c102442633641b4d6f2b565ca0eef1f9245403aac366a","web","1530683678"),
("31","1","4ad11b3e911bbdfe7e2f5731ec43bb89d218a10c7a50a630359646d1c335e9a0cdb7497593178272f1f485b532be392dd7964f94dbd0562a","web","1535565794"),
("32","5","c9f58b0e20d4f3e9739694b3e03036d971048a4ffbc24455c2c45eaddc323f0d04ba1ddc20600924cfc5d9422f0c8f8ad796711102dbe32b","web","1530683780"),
("33","5","cfa8f4c996ea35100156e8865128db58b3ade31fd3fe3125a09e7dba176bc5dcc339f4d787249555abceedf5017915685f379075f00a5ccd","web","1530683955"),
("34","1","abc067bd59d9e5901216e50bc0c62eef5faeefcefd1618540d4a4e1290a54930d80fedc43003308084fec9a8e45846340fdf5c7c9f7ed66c","web","1535565794"),
("36","1","42b506aa7ca710790af99b22b02121fe25ad833800049bee1a2c3cb0bab8b46e60be929a668937638aa903e40952a84bd7177ad2daeb5962","web","1535565794"),
("37","6","fdc309c7d336c188d6fce8dfcf299cfee958270987aac052ff6cf68680c4405c35f64e9d36435212ae2a2db40a12ec0131d48acc1218d2ef","web","1532946464"),
("38","6","23d3afb8c703ec09d2b54ae59b1a3720f263b958825d3502721899e38e2be9f741ebce1b760030721ef03ed0cd5863c550128836b28ec3e9","web","1532946464"),
("39","6","a5d2da5bb4c4ed99482caff95ba16f8e518251ac734de85585d8ed34023db72ddcb39908438324837a06ad497a8fb70ea0a3cf08543fb1e4","web","1532946464"),
("40","6","cdb521cb7e11ff1ababd7b45f5786c5b8dd7b9541e14fa75f85970bd9fb457d5ef21e0191532995897ea3cfb64eeaa1edba65501d0bb3c86","web","1532946464"),
("41","6","475a3775108b9f255c5191ce9274cee9dceee0a72b330be1200f4cbda5fc0359b49debd079087338da52dbdb51e5c9b3fcacdc228065d5e0","web","1532946464"),
("42","6","96bfbe66472d8c98b13b0a63ea36ea5cdb257ee5a32bd2b7adecfd0af10caf5f11d9f148389143972639c6bd2a42e714227b06646829d6ea","web","1532946464"),
("43","6","4188b6cb96bc820ac1ddff1637f48c0ebd04455fecabc7f59486eafd363236f264221a21918183611b89a2e980724cb8997459fadb907712","web","1532946464"),
("44","6","17247b698c65f3bdfa137fc226e260ca036385999d32b32294d50be33df2916ed569d538440570578cc0225cb9ed2421038a1325a46c562a","web","1532946464"),
("45","6","adff9befe941160dcb7294bc52a74c589557519b64d0a20d80b55e9e85121bf5e932a59321446314d97d404b6119214e4a7018391195240a","web","1532946464"),
("46","2","3b922b6b1a8711ffb2a31c5d0840121b8d9518a621e6d57ff31fae3d34eb513ad2120bf7342046486c1e55ec7c43dc51a37472ddcbd756fb","web","1535564226"),
("47","2","b0c817262d65cfcda7c288be2059cd8cc856230ca551a8ce7771fe23741e1a8282d1eb0a2983254495cc7ef498e141173576365264fc5fba","web","1535564226"),
("48","2","c38d194443ef3172317a03911b4513a5366d63e5b0281738d8815f8219a4ae7270f43cc35949631173f9ddba165b5c59c61dd64960ba8b2d","web","1535564226"),
("50","2","85eda2a0c1a990dd24ae3455b4a7d1789d51347507376702bb718d412514c874b81e6a78604594217f9d88fe83d3e7fce3136e510b0a9a38","web","1535564226"),
("51","2","a6c04bc027069e2e93dd55821c21c02848de6ba10348cd71c54cce38c19840aaf1b7168a61526269b93f11867481fc6d77908aea58ba6198","web","1535564226"),
("53","2","ca3bf82680935fee83de3861f38e7a81cf9bf29f64de8efcdf9f01f8b45d1d3acbb6148862919422991d912445bd396599bbb31f697005bc","web","1535564226"),
("54","2","4d0079ea78a59d30ac080df02730ddd7a45b52001de063c89218414f063c11fc8f3eba1f78835856d0cffa36e832b65fe145a6e9360bda83","web","1535564226"),
("55","2","417569ef18aad38b135cb499e6b2aad69493b3bfaab22a2a109f42d950c83c21ccdbe91b69467635f1507aba9fc82ffa7cc7373c58f8a613","web","1535564226"),
("56","2","9ad5f77f22606475312f40792bb58968e9f49417043976f452f24d0d67f43ec67a29025e45894925a1d2b0ef5b72772ee48ce14b993e225c","web","1535564226"),
("57","2","2ba3fb65de3c2712e51046bea541c03383a802a89866892f258c9007e3be03ba3bf457ba7404639501b36d0eae3771391455661b45834805","web","1535564226"),
("58","2","f86ab543a3351e0210543469ddc2859d4ad983db8d78f659c333a3245feedc6716d60ce156998748685217557383cd194b4f10ae4b39eebf","web","1535564226"),
("61","1","4df133a77681c5c22c764c3ec46c1c25232b91676168fdf36c9f77103d7a5caedc05541e57209325d02e9bdc27a894e882fa0c9055c99722","web","1535565794"),
("62","2","96c0cd9a127407140780496c409dcf05db1aef3bfc4e2177a6faca08936548cf7704fd8398525812d4ca950da1d6fd954520c45ab19fef1c","web","1535564226"),
("63","2","15260db9f8a620e1bd7f7935af517b366e21be75b4829631f4420074864422dc7d42a0f8509594602109737282d2c2de4fc5534be26c9bb6","web","1535564226"),
("67","3","febaf95ff4606466a6a7eaffb34f6789efe60795311066791973412964a7f1b6696eb4f979545942cb93980bc94a17e36d6de5da28b99785","web","1535553267"),
("68","3","39e4be155d88d00c386633d9d4ffb8521f8952fd2dcfe23299e01af01ef91b94c0243d3c863513155e18f86fad006a5846541997511989d5","web","1535553267"),
("69","3","5f6cd28304f67bbe68724b1b39fca5a7d33742b0b5b7ef00057e86ac7854bcc5ed6747bb18145461367147f1755502d9bc6189f8e2c3005d","web","1535553267"),
("70","6","5b6c7a4f9b7e848eec16df9dee68441662959c765b65ae1cf1518ebf81955686e18e638b7730124219702ce80aa823cd508f85c0034a7e97","web","1532946464"),
("72","3","d4135d55039b5c92a8dc54b2c627e5135521bccca6cbb01935d005e48c9111303723fa4f82291655d846e38f1196eb61a7b71e1cd7a913e4","web","1535553267"),
("73","3","a129cf1bda38d42072dfb388982d19ae363381906ebef7d55931afbbb6a0fa090361f7cd397483856a80e309f1922a25cb00ebcbabc017ae","web","1535553267"),
("74","3","f5b91b61ea21ff539b4c5ffdfc9bb84c400aa78eeaabd073b7a56ba4c83963119eb09c8e165463707beadac50e1ce55dc31343cc1a89ac5c","web","1535553267"),
("75","6","46fc08854d5a534710275366fb04eac6a100e869e27672a6c6418db481c56eb8b0aac9e69635317818fe8ebf5d52c8992581f439ba783aa3","web","1532946464"),
("76","6","74f7909b76186e7d5a42c6949f4de0c2d0699a50b1152c573fda5a329bde49b291a107d151042628f8548d450d3c2e5f6c847a3de0748b8d","web","1532946464"),
("77","6","dc89c1c17fe2ccbc6f92b92d369cf24995650f8ada63e2caef72178036a427488433d9c4400478228d4112ce0aabe7aeef422c136a222624","web","1532946464"),
("78","6","ee462f57dea8d37879b6948091112a5d8b10ae6fac268cec8914a06890d1dd25ba2a7bb14487077845017f6511f91be700fda3d118034994","web","1532946464"),
("79","6","a9cb6b3afa9dd4120ba6d5d990cda4ca32cd3e47efe77295004143697d6c8da30219f870741491668336041a6899d0bce657dcd29409cf7e","web","1532946464"),
("80","6","1a35afee79e26971f6bdada86160832314c6487cdf6d3caa6dcc4af5e0d820dd7037e5cd57743466967edfdcdfbcc3b2d253fac24326e5b5","web","1532946464"),
("81","6","6a1e0fb4038a6d7c8d714497c763188e20e2a8a92b0b8027f1e15a85c755bdb2a1dd829c431913170801a457294fafbd8fe3116176252636","web","1532946464"),
("82","6","c603a53f52cd9535763573931eeed7caf436240cc2f65ebe86c0b068f6d9ba948986acf8440171983dcf44c3136a27a28b3bb27586fd5fc5","web","1532946464"),
("83","6","035586af9529de35523c2c22479420d27e3b6f71503ed2c91178e07498dc7d1addf13254500168213e98410c45ea98addec555019bbae8eb","web","1532946464"),
("84","6","7c0db51e9480ba56bdee38ce9012a976c0773892e33ba47e185ef8774bd9b532a5f50f28968788438f187f643090a53e52550571a8e92ad8","web","1532946464"),
("85","6","7c3c0b5f4572910ab5d246f343f914b70c25e7902e47633023bdecea458b53e8606b8b42778004819559fc73b13fa721a816958488a5b449","web","1532946464"),
("86","6","77800380d4c1b86cc749f64f378c43a3fa2ace08f9971c9acb487a23697f8a6891cbeda199937053b154e7b21b2ff0a14d96affa6d3fb958","web","1532946464"),
("87","6","2d05ff4286a7e71f696c4dd9dd49721222d56d135eb958698314beae534453c8d307665c47211145f4661398cb1a3abd3ffe58600bf11322","web","1532946464"),
("88","6","bc9f4705268dde676a722c2a7857a9c8a7a66f90e30da2e8b726adb88f5bff5e39a9a517601426598f4d94fa779cb6b74225a9e26c700a39","web","1532946464"),
("89","6","66138a7abfaad0c7f5f20e2fd9a9d23b639300cccf0247840e4d899edfb55f3511edb2b47279498364f173a41d2ffa62f98c0cfec53b43c5","web","1532946464"),
("90","6","1e6207e507bdaff2414647f806e926b94c617d675ab953800f70dc8b5124e40c23234de01734050473f715c6cc2b110fc67503ba813f7f0e","web","1532946464"),
("91","6","6dcda8622cfe67402a289cfbb207e510a6bbecde7d299a282b9ecf7d4c117b5ceeeb373c446348779d63484abb477c97640154d40595a3bb","web","1532946464"),
("92","6","20f67ebb4c45126e1ee6942bed0ed6a1a6d01684ca61ca352e05467abb69ecebb2f3a1a290474139d1588e685562af341ff2448de4b674d1","web","1532946464"),
("93","6","d05c7e2eeee3b54555bd847c40e7abd0181fea15e5a2caca99f7ed615b37d832eff0489446828019873be0705c80679f2c71fbf4d872df59","web","1532946464"),
("94","6","d02526cd4be5110d8b688e8b90c79a69a8b3ab9e09e9ca09b49a9459808eb523597d50da83791037168efc366c449fab9c2843e9b54e2a18","web","1532946464"),
("95","6","fe71c0e905e58ef7f1c43ce2a7b109b0de233e0e8b53c707c345295ec5cb62e6f39f40ea795405530912d0f15f1394268c66639e39b26215","web","1532946464"),
("96","6","ace881cdf911115b125ecf36aee9bb489591bad134ae3cba55f2ad896976a6d5a11bd66811690623eefc7bfe8fd6e2c8c01aa6ca7b1aab1a","web","1532946464"),
("97","6","a6451ba090b7044110ccd9e5d4839c780289967f5eaccd408353ead910e2e63d2b37afc38398524985ef8e895264ae2dcab7bcd0f04d9bea","web","1532946464"),
("98","6","a803ae485a78fe44defc3684bfa4d51a027dad4fc7368cbef66a27cf8c11498fea7705a3568120929b1c93a6864c39e48417ee486b83c387","web","1532946464"),
("99","6","70af3b559b2cdeb40488042619170cc2c2256f3e3672b1669911add3a40dd420614e601925393425b02d46e8a3d8d9fd6028f3f2c2495864","web","1532946464"),
("100","6","c7403733336b70132a88b7ef299f9bf29ae5bf86484fcf482d519c512548e344e06e355c48845994d6539d3b57159babf6a72e106beb45bd","web","1532946464"),
("101","6","9671e67bf3d3461f488d585b743a55ef9d1fdf05e4911e7517358db237184e5e6152e54f646593010993b7960f34c29b1fdb6516be27046f","web","1532946464"),
("102","6","92868ee5f8533d536d180f5516f49f0c0531a825a21299f36c3a180beb7ef89a63cdc60265957614dc116c922217ede2210c57237bd1c1ee","web","1532946464"),
("103","6","30e48367f9e658c3f6b4d8e3235f88f76d48e24e5c27a7274bbc99f6a49e0c2d71fa172522427460713fd63d76c8a57b16fc433fb4ae718a","web","1532946464"),
("104","6","6a1c6866aefd40358aa9ddef34f165a60f75ee5adff430d15b38e1b90ef139051e0c41ae2525968397c8dd44858d3568fdf9537c4b8743b2","web","1532946464"),
("105","6","7cc843bee35a265da90df84c346b62d6b078fefc6d9d7cb14e307278c16e8e86dd0e6ed1929125808ab7f718012c87aad3887a7d136cdf53","web","1532946464"),
("106","6","d256b91cb072faa7851c72439a3b01a06ed420cb6c611527b10e94d2df83348e9435229d75984442b4189d9de0fb2b9cce090bd1a15e3420","web","1532946464"),
("107","6","fe9e90ec9807d6c284e85138ecd6f7311632d0e371b2143b6b9681d5128e7b7dd1c4b77c31771946405075699f065e43581f27d67bb68478","web","1532946464"),
("108","6","460eb347bc6a41a1a7e02e5ca27406cea318f813af615da33c59f52ae1eb8923f2fbb9d78577780574961657ae02e93fc17be9d9fc864620","web","1532946464"),
("109","6","3dcf288cca9046901d4190fd85307ce1990aa47edaac4cf9014935e60f6aa8c57da8a61b932119130224cd598e48c5041c7947fd5cb20d53","web","1532946464"),
("112","3","0e84ab70a66dd87d741339c06a1806ae25a5ee465b3cce107720c182893f5e7ed5100cda257292895ecf33fd9caf42c3bd39a3d9ee5f9ca3","web","1535553267"),
("113","2","99afba76d4950fd9996139694fa87710a5e79496a4effb97d9223d432db247376866865824067788b8cfbf77a3d250a4523ba67a65a7d031","web","1535564226"),
("115","7","8cfafc71e46ab9b0b7b82d002f4b759bbca612205af174e9968dd8678800222651e6e2ae635847030f541eccc4dc49cc19da7ca4594fad27","web","1533205750"),
("116","2","632291c2a30af78fe0cfa8d9aad7bc0e06f5eb28747f6feee3dc1fb7e4258c943e71b24b81998248da60b579faebe684e2a2bf90d4e50c82","web","1535564226"),
("119","2","125e52d567c86d1ce5c712f0d52843c734ce5a34ab88d35e7e4b19a3ab333b10ca746720369799460b3f44d9054402de39441e165a4bdfe0","web","1535564226"),
("120","1","02c674e12341147d2145475995a7e068d41bfbb2062bb5b79b9d71a2d97659b86f83253186063421154ff8944e6eac05d0675c95b5b8889d","web","1535565794"),
("121","2","179d0b0e6e223ce39cb8638cf64e689d13178521d0a7a116acbb427dd9333778551ca484264733380e16366727185813f59d4a9467878901","web","1535564226"),
("122","2","a1ccf8558248a4069252626f72ffa4c499ac0b969551a8dbc0aaa6acdd3cfa97f2bc897e698697215e18f86fad006a5846541997511989d5","web","1535564226"),
("123","2","a56be9e63acb053690ac137e206f9cd43a2d037d7a390aa54c692d743a7b4bb31da2134e205074015c6287be4de9ff5afeaec72d54436fcf","web","1535564226"),
("124","1","93872417cc77730972304da942ebc9a88bd0fa2cb8c7802c1d596171e08f7273dc41248776260150a1b63b36ba67b15d2f47da55cdb8018d","web","1535565794"),
("125","6","774d80e2835acc10eb5032c1b3c0cb463406e999a4179a2b76d9f22fd57ce7dfa8750010291549664d6da0c32dd563fea116da78ca1ffd39","web","1535547457"),
("126","6","6aa7208e61b01b3b2e65cd7615edc4c08967d31e599ca0e55bd2f4b6c0f1a482ea4217769515551458ec998e5f04921d22afdd67759db6e4","web","1535547482"),
("127","5","b9150a4eac91effe42f85521a793d0b45c9610ef04598fb7ab0d1794d31b6f58694f4e8c34775781deee9fe5195586bf4545518a76aff2f7","web","1535547570"),
("128","5","64052c709c5d9e1eb3824fbc68f65064251b0237b32e95ac5f15d64418f91b9a59429532400097137867d6557b82ed3b5d61e6591a2a2fd3","web","1535547598");

--
-- Dumping data for table `wo_appssessions`
--

INSERT INTO wo_appssessions VALUES
("129","2","7b0b64baf06cc6679d76fd1368b25496cd08ab778b5db1bc0e268fc9cc3e888ec6b849ec61656473b8f36d2dffddf18ae2ff15d71c9eb62d","web","1535564226"),
("130","2","0cfcd67dfa62923f24399dd4f579aee03bff420ec64cdbccb6a242771f41cadeb5385fce562770323a01fc0853ebeba94fde4d1cc6fb842a","web","1535564226"),
("131","2","5b863037a44ebea825e9dabe5c3846ccd9bd8e50e540090f3dbed2750aa61ada9d6f49b9511260013001ef257407d5a371a96dcd947c7d93","web","1535564226"),
("132","6","35b32598ab96c584a850346c28940f27580aba4530ec978f531e4aa5fc3ae95bacb01eeb33530238c57daa0bc9c4d8e35a21e9a2801aecb2","web","1535564409"),
("133","1","a4a15b57650d577c092d7fda354298b8f05115dbd8de11c1382321ec61b027d51449e24749932188adad9e1c91a7e0f63a139458941b1c66","web","1535565794");

-- ---------------------------------------------------------
--
-- Table structure for table : `wo_audiocalls`
--
-- ---------------------------------------------------------

CREATE TABLE `wo_audiocalls` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `call_id` varchar(30) NOT NULL DEFAULT '0',
  `access_token` text,
  `call_id_2` varchar(30) NOT NULL DEFAULT '',
  `access_token_2` text,
  `from_id` int(11) NOT NULL DEFAULT '0',
  `to_id` int(11) NOT NULL DEFAULT '0',
  `active` int(11) NOT NULL DEFAULT '0',
  `called` int(11) NOT NULL DEFAULT '0',
  `time` int(11) NOT NULL DEFAULT '0',
  `declined` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `to_id` (`to_id`),
  KEY `from_id` (`from_id`),
  KEY `call_id` (`call_id`),
  KEY `called` (`called`),
  KEY `declined` (`declined`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ---------------------------------------------------------
--
-- Table structure for table : `wo_banned_ip`
--
-- ---------------------------------------------------------

CREATE TABLE `wo_banned_ip` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(32) NOT NULL DEFAULT '',
  `time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ip_address` (`ip_address`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ---------------------------------------------------------
--
-- Table structure for table : `wo_blocks`
--
-- ---------------------------------------------------------

CREATE TABLE `wo_blocks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `blocker` int(11) NOT NULL DEFAULT '0',
  `blocked` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `blocker` (`blocker`),
  KEY `blocked` (`blocked`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ---------------------------------------------------------
--
-- Table structure for table : `wo_blog`
--
-- ---------------------------------------------------------

CREATE TABLE `wo_blog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` int(11) NOT NULL DEFAULT '0',
  `title` varchar(120) NOT NULL DEFAULT '',
  `content` text,
  `description` text,
  `posted` varchar(300) DEFAULT '0',
  `category` int(255) DEFAULT '0',
  `thumbnail` varchar(100) DEFAULT 'upload/photos/d-blog.jpg',
  `view` int(11) DEFAULT '0',
  `shared` int(11) DEFAULT '0',
  `tags` varchar(300) DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `user` (`user`),
  KEY `title` (`title`),
  KEY `category` (`category`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wo_blog`
--

INSERT INTO wo_blog VALUES
("1","2","Easter Egg GTA V PC dan Console","&lt;div style=&quot;box-sizing: border-box; color: #2c2f35; font-family: gotham, Arial, Helvetica, sans-serif; font-size: 15px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial; margin-top: -15px;&quot;&gt;&lt;h1 class=&quot;ptitle&quot; style=&quot;box-sizing: border-box; margin: 25px 0px 20px; font-family: inherit; font-weight: bold; line-height: 49px; color: #2c2f35; font-size: 47px !important;&quot;&gt;&lt;span class=&quot;notranslate&quot; style=&quot;box-sizing: border-box;&quot;&gt;&#039;Grand Theft Auto 5&#039; Panduan Easter Eggs&lt;/span&gt;&lt;span id=&quot;ezoic-pub-ad-placeholder-138&quot; class=&quot;ezoic-adpicker-ad&quot; style=&quot;box-sizing: border-box;&quot;&gt;&lt;/span&gt;&lt;span id=&quot;ezoic-pub-ad-placeholder-145&quot; class=&quot;ezoic-adpicker-ad&quot; style=&quot;box-sizing: border-box;&quot;&gt;&lt;/span&gt;&lt;/h1&gt;&lt;/div&gt;&lt;div class=&quot;banner&quot; style=&quot;box-sizing: border-box; position: relative; height: 600px; margin: 0px -10px; z-index: 1; color: #2c2f35; font-family: gotham, Arial, Helvetica, sans-serif; font-size: 15px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial; max-height: 600px;&quot;&gt;&lt;div class=&quot;bg-stretch&quot; style=&quot;box-sizing: border-box; position: absolute; left: 0px; right: 0px; top: 0px; max-height: 888px; bottom: 0px; overflow: hidden; z-index: -1;&quot;&gt;&lt;img style=&quot;box-sizing: border-box; border: 0px; vertical-align: middle; width: 1140.64px; height: 600px; margin-top: 0px; margin-left: -30.3209px;&quot; src=&quot;https://cdn.gamerant.com/wp-content/uploads/Grand-Theft-Auto-5-Easter-Egg-Underwater-Spaceship.jpg.optimal.jpg&quot; srcset=&quot;https://cdn.gamerant.com/wp-content/uploads/Grand-Theft-Auto-5-Easter-Egg-Underwater-Spaceship.jpg.optimal.jpg 1024w, https://cdn.gamerant.com/wp-content/uploads/Grand-Theft-Auto-5-Easter-Egg-Underwater-Spaceship.jpg.optimal.jpg 640w, https://cdn.gamerant.com/wp-content/uploads/Grand-Theft-Auto-5-Easter-Egg-Underwater-Spaceship-325x171.jpg.optimal.jpg 320w&quot; alt=&quot;&amp;lsquo;Grand Theft Auto 5&amp;rsquo; Panduan Easter Eggs&quot; width=&quot;1080&quot; height=&quot;600&quot; /&gt;&lt;/div&gt;&lt;/div&gt;&lt;p&gt;&lt;span class=&quot;notranslate&quot; style=&quot;box-sizing: border-box; color: #2c2f35; font-family: gotham, Arial, Helvetica, sans-serif; font-size: 15px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;&quot;&gt;&lt;span class=&quot;published single-date&quot; style=&quot;box-sizing: border-box; font-size: 17px; line-height: 21px; font-weight: 300; display: block; margin: 20px 8px 0px; position: relative;&quot;&gt;Oleh&amp;nbsp;&lt;strong style=&quot;box-sizing: border-box; font-weight: bold;&quot;&gt;&lt;a style=&quot;box-sizing: border-box; background-color: transparent; color: #2c2f35; text-decoration: none; transition: opacity 0.3s, color 0.3s ease;&quot; title=&quot;Tulisan dari Andrew Dyce&quot; href=&quot;https://translate.googleusercontent.com/translate_c?depth=1&amp;amp;hl=id&amp;amp;prev=search&amp;amp;rurl=translate.google.co.id&amp;amp;sl=en&amp;amp;sp=nmt4&amp;amp;u=https://gamerant.com/author/dyce/&amp;amp;xid=17259,15700021,15700124,15700149,15700168,15700186,15700191,15700201,15700208&amp;amp;usg=ALkJrhg594BOrSwLwNSqfiBpzX3ZLqTiAw&quot; rel=&quot;author&quot;&gt;Andrew Dyce&lt;/a&gt;&lt;/strong&gt;&amp;nbsp;|&lt;/span&gt;&lt;/span&gt;&lt;span class=&quot;notranslate&quot; style=&quot;box-sizing: border-box; color: #2c2f35; font-family: gotham, Arial, Helvetica, sans-serif; font-size: 15px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;&quot;&gt;&lt;span class=&quot;published single-date&quot; style=&quot;box-sizing: border-box; font-size: 17px; line-height: 21px; font-weight: 300; display: block; margin: 20px 8px 0px; position: relative;&quot;&gt;5 tahun lalu&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;&lt;section class=&quot;description-section&quot; style=&quot;box-sizing: border-box; display: block; margin: -8px 0px 0px; position: relative; z-index: 10;&quot;&gt;&lt;div class=&quot;container-fluid&quot; style=&quot;box-sizing: border-box; margin-right: auto; margin-left: auto; padding-left: 10px; padding-right: 10px; max-width: none;&quot;&gt;&lt;div class=&quot;row&quot; style=&quot;box-sizing: border-box; margin-left: -10px; margin-right: -10px;&quot;&gt;&lt;div class=&quot;col-md-10 col-md-offset-1&quot; style=&quot;box-sizing: border-box; position: relative; min-height: 1px; padding-left: 10px; padding-right: 10px; float: left; width: 1060px; margin-left: 0px;&quot;&gt;&lt;div class=&quot;description-holder&quot; style=&quot;box-sizing: border-box; background: #ffffff; padding: 20px 0px 0px;&quot; title=&quot;&amp;lsquo;Grand Theft Auto 5&amp;rsquo; Panduan Easter Eggs&quot;&gt;&lt;div id=&quot;main-content&quot; style=&quot;box-sizing: border-box;&quot;&gt;&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 34px; font-family: Georgia, Times, &#039;times new roman&#039;, serif; font-size: 21px; line-height: 1.55em; width: 710px;&quot;&gt;&amp;nbsp;&lt;/p&gt;&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 34px; font-family: Georgia, Times, &#039;times new roman&#039;, serif; font-size: 21px; line-height: 1.55em; width: 710px;&quot;&gt;&lt;span id=&quot;ezoic-pub-ad-placeholder-140&quot; class=&quot;ezoic-adpicker-ad&quot; style=&quot;box-sizing: border-box;&quot;&gt;&lt;/span&gt;&lt;span class=&quot;notranslate&quot; style=&quot;box-sizing: border-box;&quot;&gt;Pengembang di&amp;nbsp;&lt;a style=&quot;box-sizing: border-box; background-color: transparent; color: #ff7200; text-decoration: none; transition: opacity 0.3s, color 0.3s ease;&quot; href=&quot;https://translate.googleusercontent.com/translate_c?depth=1&amp;amp;hl=id&amp;amp;prev=search&amp;amp;rurl=translate.google.co.id&amp;amp;sl=en&amp;amp;sp=nmt4&amp;amp;u=https://gamerant.com/tag/rockstar-games/&amp;amp;xid=17259,15700021,15700124,15700149,15700168,15700186,15700191,15700201,15700208&amp;amp;usg=ALkJrhgoEKI4utQ9fMWgi2eowMOwHdIExg&quot;&gt;Rockstar Games&lt;/a&gt;&amp;nbsp;belum mendapatkan reputasi mereka sebagai&amp;nbsp;&lt;a style=&quot;box-sizing: border-box; background-color: transparent; color: #ff7200; text-decoration: none; transition: opacity 0.3s, color 0.3s ease;&quot; href=&quot;https://translate.googleusercontent.com/translate_c?depth=1&amp;amp;hl=id&amp;amp;prev=search&amp;amp;rurl=translate.google.co.id&amp;amp;sl=en&amp;amp;sp=nmt4&amp;amp;u=https://gamerant.com/grand-theft-auto-5-future-sequels-series/&amp;amp;xid=17259,15700021,15700124,15700149,15700168,15700186,15700191,15700201,15700208&amp;amp;usg=ALkJrhijj_gKzXwgrkNvjNcX6g0J0F4DMw&quot;&gt;master referensi budaya pop&lt;/a&gt;&amp;nbsp;secara tidak sengaja.&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;notranslate&quot; style=&quot;box-sizing: border-box;&quot;&gt;Beralih ke film, TV, musik, dan budaya internet untuk menambahkan rasa dan lelucon jika memungkinkan,&amp;nbsp;&lt;strong style=&quot;box-sizing: border-box; font-weight: bold;&quot;&gt;&lt;em style=&quot;box-sizing: border-box;&quot;&gt;Grand Theft Auto V&lt;/em&gt;&lt;/strong&gt;&amp;nbsp;tanpa diragukan lagi&amp;nbsp;&lt;a style=&quot;box-sizing: border-box; background-color: transparent; color: #ff7200; text-decoration: none; transition: opacity 0.3s, color 0.3s ease;&quot; href=&quot;https://translate.googleusercontent.com/translate_c?depth=1&amp;amp;hl=id&amp;amp;prev=search&amp;amp;rurl=translate.google.co.id&amp;amp;sl=en&amp;amp;sp=nmt4&amp;amp;u=https://gamerant.com/grand-theft-auto-5-map-comparisons/&amp;amp;xid=17259,15700021,15700124,15700149,15700168,15700186,15700191,15700201,15700208&amp;amp;usg=ALkJrhgEYOl_KjcQjs5doOb7nwk6TqYVDA&quot;&gt;adalah dunia permainan terbesar dan paling komprehensif yang dirancang&lt;/a&gt;&amp;nbsp;dalam sejarah perusahaan.&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;notranslate&quot; style=&quot;box-sizing: border-box;&quot;&gt;Akibatnya, telur paskah hampir terlalu banyak untuk disebutkan namanya.&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 34px; font-family: Georgia, Times, &#039;times new roman&#039;, serif; font-size: 21px; line-height: 1.55em; width: 710px;&quot;&gt;&lt;span class=&quot;notranslate&quot; style=&quot;box-sizing: border-box;&quot;&gt;Mulai dari referensi film, penghormatan ke permainan masa lalu dalam sejarah Rockstar, atau petunjuk yang sepenuhnya tidak jelas dan misterius untuk konspirasi yang menyeluruh, kami telah mengumpulkan sebanyak mungkin yang bisa kami temukan.&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;notranslate&quot; style=&quot;box-sizing: border-box;&quot;&gt;Ada yang pasti akan lebih banyak permukaan saat minggu-minggu berlalu, tetapi untuk saat ini, ini adalah hal-hal yang setiap pemain&amp;nbsp;&lt;a style=&quot;box-sizing: border-box; background-color: transparent; color: #ff7200; text-decoration: none; transition: opacity 0.3s, color 0.3s ease;&quot; href=&quot;https://translate.googleusercontent.com/translate_c?depth=1&amp;amp;hl=id&amp;amp;prev=search&amp;amp;rurl=translate.google.co.id&amp;amp;sl=en&amp;amp;sp=nmt4&amp;amp;u=https://gamerant.com/tag/grand-theft-auto-5/&amp;amp;xid=17259,15700021,15700124,15700149,15700168,15700186,15700191,15700201,15700208&amp;amp;usg=ALkJrhgkdv_q3OAtjVX1lTjFJVba4DF43w&quot;&gt;&lt;em style=&quot;box-sizing: border-box;&quot;&gt;GTAV&lt;/em&gt;&lt;/a&gt;&amp;nbsp;harus mencoba untuk menyaksikan langsung.&lt;/span&gt;&lt;span id=&quot;more-202460&quot; style=&quot;box-sizing: border-box;&quot;&gt;&lt;/span&gt;&lt;/p&gt;&lt;span id=&quot;ezoic-pub-ad-placeholder-127&quot; class=&quot;ezoic-adpicker-ad&quot; style=&quot;box-sizing: border-box;&quot;&gt;&lt;/span&gt;&lt;div id=&quot;top-id&quot; style=&quot;box-sizing: border-box;&quot;&gt;&amp;nbsp;&lt;/div&gt;&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 34px; font-family: Georgia, Times, &#039;times new roman&#039;, serif; font-size: 21px; line-height: 1.55em; width: 710px;&quot;&gt;&lt;span class=&quot;notranslate&quot; style=&quot;box-sizing: border-box;&quot;&gt;Kami akan menghindari&amp;nbsp;&lt;strong style=&quot;box-sizing: border-box; font-weight: bold;&quot;&gt;spoiler utama&lt;/strong&gt;&amp;nbsp;, tetapi beberapa misteri kecil atau kejutan dapat dimanjakan dengan membaca.&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;notranslate&quot; style=&quot;box-sizing: border-box;&quot;&gt;Anda telah diperingatkan.&lt;/span&gt;&lt;/p&gt;&lt;h2 style=&quot;box-sizing: border-box; font-family: inherit; font-weight: bold; line-height: 1.471; color: #2c2f35; margin-top: 10px; margin-bottom: 10px; font-size: 34px;&quot;&gt;&lt;span class=&quot;notranslate&quot; style=&quot;box-sizing: border-box;&quot;&gt;Alien Beku Utara Yankton&lt;/span&gt;&lt;/h2&gt;&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 34px; font-family: Georgia, Times, &#039;times new roman&#039;, serif; font-size: 21px; line-height: 1.55em; width: 710px;&quot;&gt;&lt;img class=&quot;aligncenter size-full wp-image-202465&quot; style=&quot;box-sizing: border-box; border: 0px; vertical-align: middle; max-width: 100%; height: auto; display: block; margin-left: auto; margin-right: auto;&quot; src=&quot;https://cdn.gamerant.com/wp-content/uploads/Grand-Theft-Auto-5-Easter-Egg-Frozen-Alien.jpg.optimal.jpg&quot; sizes=&quot;(max-width: 570px) 100vw, 570px&quot; srcset=&quot;https://cdn.gamerant.com/wp-content/uploads/Grand-Theft-Auto-5-Easter-Egg-Frozen-Alien.jpg.optimal.jpg 570w, https://cdn.gamerant.com/wp-content/uploads/Grand-Theft-Auto-5-Easter-Egg-Frozen-Alien-325x171.jpg.optimal.jpg 325w&quot; alt=&quot;Grand Theft Auto 5 Easter Egg Frozen Alien&quot; width=&quot;570&quot; height=&quot;300&quot; /&gt;&lt;span id=&quot;ezoic-pub-ad-placeholder-139&quot; class=&quot;ezoic-adpicker-ad&quot; style=&quot;box-sizing: border-box;&quot;&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 34px; font-family: Georgia, Times, &#039;times new roman&#039;, serif; font-size: 21px; line-height: 1.55em; width: 710px;&quot;&gt;&lt;span id=&quot;ezoic-pub-ad-placeholder-105&quot; class=&quot;ezoic-adpicker-ad&quot; style=&quot;box-sizing: border-box;&quot;&gt;&lt;/span&gt;&lt;span class=&quot;notranslate&quot; style=&quot;box-sizing: border-box;&quot;&gt;Tidak perlu waktu lama bagi telur paskah untuk mulai menetes, karena yang pertama dapat ditemukan dalam prolog yang bersalju.&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;notranslate&quot; style=&quot;box-sizing: border-box;&quot;&gt;Ketika mobil liburan mendekati belokan tajam ke kanan dan melewati jembatan, malahan langsung menuju ke lereng satu ke kanan ke sungai beku di bawah.&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 34px; font-family: Georgia, Times, &#039;times new roman&#039;, serif; font-size: 21px; line-height: 1.55em; width: 710px;&quot;&gt;&lt;span class=&quot;notranslate&quot; style=&quot;box-sizing: border-box;&quot;&gt;Terletak tepat di bawah jembatan, terbungkus dalam es, adalah makhluk asing pertama (tetapi bukan yang terakhir) yang tersembunyi di dalam kampanye.&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;notranslate&quot; style=&quot;box-sizing: border-box;&quot;&gt;Sayangnya, memeriksa es di luar bumi berarti gagal dalam misi, tetapi kami berpendapat bahwa itu lebih dari layak.&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;notranslate&quot; style=&quot;box-sizing: border-box;&quot;&gt;Dan jika Anda penggemar UFO misterius, ada banyak lagi sentuhan tersembunyi yang ingin Anda temukan.&lt;/span&gt;&lt;/p&gt;&lt;h2 style=&quot;box-sizing: border-box; font-family: inherit; font-weight: bold; line-height: 1.471; color: #2c2f35; margin-top: 10px; margin-bottom: 10px; font-size: 34px;&quot;&gt;&lt;span class=&quot;notranslate&quot; style=&quot;box-sizing: border-box;&quot;&gt;GTA: Koneksi San Andreas&lt;/span&gt;&lt;/h2&gt;&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 34px; font-family: Georgia, Times, &#039;times new roman&#039;, serif; font-size: 21px; line-height: 1.55em; width: 710px; text-align: center;&quot;&gt;&lt;img class=&quot;aligncenter size-full wp-image-202468&quot; style=&quot;box-sizing: border-box; border: 0px; vertical-align: middle; max-width: 100%; height: auto; display: block; margin-left: auto; margin-right: auto;&quot; src=&quot;https://cdn.gamerant.com/wp-content/uploads/Grand-Theft-Auto-5-Easter-Egg-San-Andreas-Mural.jpg.optimal.jpg&quot; sizes=&quot;(max-width: 570px) 100vw, 570px&quot; srcset=&quot;https://cdn.gamerant.com/wp-content/uploads/Grand-Theft-Auto-5-Easter-Egg-San-Andreas-Mural.jpg.optimal.jpg 570w, https://cdn.gamerant.com/wp-content/uploads/Grand-Theft-Auto-5-Easter-Egg-San-Andreas-Mural-325x171.jpg.optimal.jpg 325w&quot; alt=&quot;Grand Theft Auto 5 Easter Egg San Andreas Mural&quot; width=&quot;570&quot; height=&quot;300&quot; /&gt;&lt;/p&gt;&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 34px; font-family: Georgia, Times, &#039;times new roman&#039;, serif; font-size: 21px; line-height: 1.55em; width: 710px;&quot;&gt;&lt;span class=&quot;notranslate&quot; style=&quot;box-sizing: border-box;&quot;&gt;Penggemar&amp;nbsp;&lt;em style=&quot;box-sizing: border-box;&quot;&gt;Grand Theft Auto: San Andreas&lt;/em&gt;&amp;nbsp;sangat gembira ketika&amp;nbsp;&lt;a style=&quot;box-sizing: border-box; background-color: transparent; color: #ff7200; text-decoration: none; transition: opacity 0.3s, color 0.3s ease;&quot; href=&quot;https://translate.googleusercontent.com/translate_c?depth=1&amp;amp;hl=id&amp;amp;prev=search&amp;amp;rurl=translate.google.co.id&amp;amp;sl=en&amp;amp;sp=nmt4&amp;amp;u=https://gamerant.com/grand-theft-auto-5-trailer-benk-113903/&amp;amp;xid=17259,15700021,15700124,15700149,15700168,15700186,15700191,15700201,15700208&amp;amp;usg=ALkJrhi0ZzrzWYeoo75bi3qZX_Sp-79h7Q&quot;&gt;trailer pertama untuk&amp;nbsp;&lt;em style=&quot;box-sizing: border-box;&quot;&gt;GTAV&lt;/em&gt;&lt;/a&gt;&amp;nbsp;menegaskan bahwa seri akan sekali lagi kembali ke lapangan menghentak Carl &#039;CJ&#039; Johnson.&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;notranslate&quot; style=&quot;box-sizing: border-box;&quot;&gt;Dan dengan jumlah sentuhan khusus dan anggukan halus, jelas para pengembang sendiri senang untuk mengunjungi kembali pijakan mereka yang lama.&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 34px; font-family: Georgia, Times, &#039;times new roman&#039;, serif; font-size: 21px; line-height: 1.55em; width: 710px;&quot;&gt;&lt;span class=&quot;notranslate&quot; style=&quot;box-sizing: border-box;&quot;&gt;Selain dari mural besar yang mengklaim bahwa &amp;ldquo;We Missed You Last Time,&amp;rdquo; para pengembang menunjukkan bahwa karakter San Andreas khususnya masih sangat hidup dan sehat (kurang lebih) di Los Santos.&lt;/span&gt;&lt;span id=&quot;ezoic-pub-ad-placeholder-152&quot; class=&quot;ezoic-adpicker-ad&quot; style=&quot;box-sizing: border-box;&quot;&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 34px; font-family: Georgia, Times, &#039;times new roman&#039;, serif; font-size: 21px; line-height: 1.55em; width: 710px;&quot;&gt;&lt;span class=&quot;notranslate&quot; style=&quot;box-sizing: border-box;&quot;&gt;Di antara barang-barang di kamar tidur Frankin adalah album bertuliskan nama &#039;OG Loc,&#039; seorang rapper pemula dan pemeran&amp;nbsp;&lt;em style=&quot;box-sizing: border-box;&quot;&gt;GTA: SA&lt;/em&gt;&amp;nbsp;., Menyiratkan bahwa ia mungkin benar-benar telah menemukan ketenaran dan kekayaan di tahun-tahun sejak peristiwa-peristiwa permainan itu.&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 34px; font-family: Georgia, Times, &#039;times new roman&#039;, serif; font-size: 21px; line-height: 1.55em; width: 710px;&quot;&gt;&lt;img class=&quot;aligncenter size-full wp-image-202469&quot; style=&quot;box-sizing: border-box; border: 0px; vertical-align: middle; max-width: 100%; height: auto; display: block; margin-left: auto; margin-right: auto;&quot; src=&quot;https://cdn.gamerant.com/wp-content/uploads/Grand-Theft-Auto-5-Easter-Egg-OG-Loc-Album.jpg.optimal.jpg&quot; sizes=&quot;(max-width: 570px) 100vw, 570px&quot; srcset=&quot;https://cdn.gamerant.com/wp-content/uploads/Grand-Theft-Auto-5-Easter-Egg-OG-Loc-Album.jpg.optimal.jpg 570w, https://cdn.gamerant.com/wp-content/uploads/Grand-Theft-Auto-5-Easter-Egg-OG-Loc-Album-325x171.jpg.optimal.jpg 325w&quot; alt=&quot;Grand Theft Auto 5 Album Paskah Telur OG Loc&quot; width=&quot;570&quot; height=&quot;300&quot; /&gt;&lt;/p&gt;&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 34px; font-family: Georgia, Times, &#039;times new roman&#039;, serif; font-size: 21px; line-height: 1.55em; width: 710px;&quot;&gt;&lt;span class=&quot;notranslate&quot; style=&quot;box-sizing: border-box;&quot;&gt;Selain itu, pemain juga terikat untuk bertemu dengan &#039;Sweet&#039; Johnson, saudara CJ dalam kampanye&amp;nbsp;&lt;em style=&quot;box-sizing: border-box;&quot;&gt;GTAV&lt;/em&gt;&amp;nbsp;.&lt;/span&gt;&lt;/p&gt;&lt;h2 style=&quot;box-sizing: border-box; font-family: inherit; font-weight: bold; line-height: 1.471; color: #2c2f35; margin-top: 10px; margin-bottom: 10px; font-size: 34px;&quot;&gt;&lt;span class=&quot;notranslate&quot; style=&quot;box-sizing: border-box;&quot;&gt;Misteri Gn.&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;notranslate&quot; style=&quot;box-sizing: border-box;&quot;&gt;Seribu tahun&lt;/span&gt;&lt;/h2&gt;&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 34px; font-family: Georgia, Times, &#039;times new roman&#039;, serif; font-size: 21px; line-height: 1.55em; width: 710px;&quot;&gt;&lt;img class=&quot;aligncenter size-full wp-image-202472&quot; style=&quot;box-sizing: border-box; border: 0px; vertical-align: middle; max-width: 100%; height: auto; display: block; margin-left: auto; margin-right: auto;&quot; src=&quot;https://cdn.gamerant.com/wp-content/uploads/Grand-Theft-Auto-5-Easter-Egg-Illuminati.jpg.optimal.jpg&quot; sizes=&quot;(max-width: 570px) 100vw, 570px&quot; srcset=&quot;https://cdn.gamerant.com/wp-content/uploads/Grand-Theft-Auto-5-Easter-Egg-Illuminati.jpg.optimal.jpg 570w, https://cdn.gamerant.com/wp-content/uploads/Grand-Theft-Auto-5-Easter-Egg-Illuminati-325x171.jpg.optimal.jpg 325w&quot; alt=&quot;Grand Theft Auto 5 Easter Egg Illuminati&quot; width=&quot;570&quot; height=&quot;300&quot; /&gt;&lt;/p&gt;&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 34px; font-family: Georgia, Times, &#039;times new roman&#039;, serif; font-size: 21px; line-height: 1.55em; width: 710px;&quot;&gt;&lt;span class=&quot;notranslate&quot; style=&quot;box-sizing: border-box;&quot;&gt;Jika penampakan alien yang membeku di prolog tidak cukup dari petunjuk, Rockstar tampaknya memiliki sesuatu tentang alien.&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;notranslate&quot; style=&quot;box-sizing: border-box;&quot;&gt;Dengan bagian pesawat ruang angkasa yang menghamburkan Los Santos, dan pemukiman aneh orang-orang di sudut barat laut dari peta yang menembak pemain yang terlihat sebagai agen &#039;pemerintah,&#039; jelas konspirasi adalah tema yang signifikan dalam&amp;nbsp;&lt;em style=&quot;box-sizing: border-box;&quot;&gt;GTAV&lt;/em&gt;&amp;nbsp;.&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;notranslate&quot; style=&quot;box-sizing: border-box;&quot;&gt;Tapi tidak seperti dunia nyata, pemain dapat memiliki sendiri pertemuan dekat mereka sendiri dengan mengikuti beberapa langkah.&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 34px; font-family: Georgia, Times, &#039;times new roman&#039;, serif; font-size: 21px; line-height: 1.55em; width: 710px;&quot;&gt;&lt;span id=&quot;ezoic-pub-ad-placeholder-153&quot; class=&quot;ezoic-adpicker-ad&quot; style=&quot;box-sizing: border-box;&quot;&gt;&lt;/span&gt;&lt;span class=&quot;notranslate&quot; style=&quot;box-sizing: border-box;&quot;&gt;Ini dimulai dengan gedung mobil kabel di puncak Mt.&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;notranslate&quot; style=&quot;box-sizing: border-box;&quot;&gt;Chili di bagian barat laut peta.&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;notranslate&quot; style=&quot;box-sizing: border-box;&quot;&gt;Di salah satu dinding interior, gambar yang dicat dapat dilihat menggambarkan sesuatu dari piramida kasar, dengan UFO melayang di atas, dan gambar alien, telur retak dan manusia (memakai jetpack?) Di bagian bawahnya.&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;notranslate&quot; style=&quot;box-sizing: border-box;&quot;&gt;Berpindah dari gedung ke dek observasi yang terletak lebih tinggi di atas gunung mengungkapkan sebuah mata yang dilukis di atas batu di bawah, mengisyaratkan bahwa gambar itu mungkin berasal dari Mt.&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;notranslate&quot; style=&quot;box-sizing: border-box;&quot;&gt;Chiliad sendiri, dengan pesan yang menginstruksikan pemain untuk kembali ke tempat setelah mereka mencapai 100% penyelesaian.&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 34px; font-family: Georgia, Times, &#039;times new roman&#039;, serif; font-size: 21px; line-height: 1.55em; width: 710px;&quot;&gt;&lt;span class=&quot;notranslate&quot; style=&quot;box-sizing: border-box;&quot;&gt;Jika pemain kembali ke dek observasi pada sekitar pukul 03:00, mereka akan disuguhi penampakan UFO nyata yang tidak mungkin terlewatkan (untuk peluang terbaik, datang saat badai dan berjalan kaki).&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;notranslate&quot; style=&quot;box-sizing: border-box;&quot;&gt;Sisa gambar dan tersirat lorong-lorong antara belum terungkap, jadi nantikan lebih banyak lagi rahasia Mt.&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;notranslate&quot; style=&quot;box-sizing: border-box;&quot;&gt;Chiliad pasti akan terungkap.&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 34px; font-family: Georgia, Times, &#039;times new roman&#039;, serif; font-size: 21px; line-height: 1.55em; width: 710px;&quot;&gt;&lt;img class=&quot;aligncenter size-full wp-image-202573&quot; style=&quot;box-sizing: border-box; border: 0px; vertical-align: middle; max-width: 100%; height: auto; display: block; margin-left: auto; margin-right: auto;&quot; src=&quot;https://cdn.gamerant.com/wp-content/uploads/Grand-Theft-Auto-5-Easter-Egg-UFO.jpg.optimal.jpg&quot; sizes=&quot;(max-width: 570px) 100vw, 570px&quot; srcset=&quot;https://cdn.gamerant.com/wp-content/uploads/Grand-Theft-Auto-5-Easter-Egg-UFO.jpg.optimal.jpg 570w, https://cdn.gamerant.com/wp-content/uploads/Grand-Theft-Auto-5-Easter-Egg-UFO-325x171.jpg.optimal.jpg 325w&quot; alt=&quot;Grand Theft Auto 5 Easter Egg UFO&quot; width=&quot;570&quot; height=&quot;300&quot; /&gt;&lt;/p&gt;&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 34px; font-family: Georgia, Times, &#039;times new roman&#039;, serif; font-size: 21px; line-height: 1.55em; width: 710px;&quot;&gt;&lt;span class=&quot;notranslate&quot; style=&quot;box-sizing: border-box;&quot;&gt;Setelah 100% selesai, pemain juga dapat menemukan kapal antariksa lainnya di ketinggian - satu di atas pangkalan militer Fort Zancudo, dan yang lainnya (tanda &#039;FIB&#039; sport) ... di Sandy Shores dekat monumen aneh &#039;balok me up&#039; alien aneh .&lt;/span&gt;&lt;/p&gt;&lt;h2 style=&quot;box-sizing: border-box; font-family: inherit; font-weight: bold; line-height: 1.471; color: #2c2f35; margin-top: 10px; margin-bottom: 10px; font-size: 34px;&quot;&gt;&lt;span class=&quot;notranslate&quot; style=&quot;box-sizing: border-box;&quot;&gt;Spaceship Bawah Air&lt;/span&gt;&lt;/h2&gt;&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 34px; font-family: Georgia, Times, &#039;times new roman&#039;, serif; font-size: 21px; line-height: 1.55em; width: 710px;&quot;&gt;&lt;img class=&quot;aligncenter&quot; style=&quot;box-sizing: border-box; border: 0px; vertical-align: middle; max-width: 100%; height: auto; display: block; margin-left: auto; margin-right: auto;&quot; src=&quot;https://cdn.gamerant.com/wp-content/uploads/Grand-Theft-Auto-5-Easter-Egg-Underwater-Spaceship.jpg.optimal.jpg&quot; alt=&quot;Grand Theft Auto 5 Easter Egg Underwater Spaceship&quot; width=&quot;570&quot; height=&quot;300&quot; /&gt;&lt;/p&gt;&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 34px; font-family: Georgia, Times, &#039;times new roman&#039;, serif; font-size: 21px; line-height: 1.55em; width: 710px;&quot;&gt;&lt;span class=&quot;notranslate&quot; style=&quot;box-sizing: border-box;&quot;&gt;Sekarang, kami berharap menemukan kapal asing yang melayang di atas titik tertinggi game, tetapi Rockstar tampaknya selalu ingin mengejutkan.&lt;/span&gt;&lt;span class=&quot;notranslate&quot; style=&quot;box-sizing: border-box;&quot;&gt;Fakta itu dengan cepat dikonfirmasi kepada siapa saja yang membeli Peta Bluprint untuk GTAV, dan menahannya di bawah sinar ultraviolet.&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;notranslate&quot; style=&quot;box-sizing: border-box;&quot;&gt;Di antara pesan-pesan rahasia dan lokasi yang terungkap di bawah cahaya, pernyataan sederhana &quot;Mereka ada di sini&quot; yang terletak di lepas pantai utara lingkungan permainan akan membutuhkan beberapa peralatan pernapasan bawah air.&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 34px; font-family: Georgia, Times, &#039;times new roman&#039;, serif; font-size: 21px; line-height: 1.55em; width: 710px;&quot;&gt;&lt;span class=&quot;notranslate&quot; style=&quot;box-sizing: border-box;&quot;&gt;Setelah pemain telah mencapai hal itu, mereka akan menemukan pesawat alien yang benar-benar utuh terkubur di dasar laut di bawah.&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;notranslate&quot; style=&quot;box-sizing: border-box;&quot;&gt;Sebagai salah satu dari empat UFO yang diidentifikasi yang terdapat dalam permainan (sejauh ini), masih belum jelas apakah kapal-kapal ini adalah tanda dari misi atau rahasia yang lebih besar, tetapi yang satu ini sepadan dengan perjalanan untuk visual saja.&lt;/span&gt;&lt;/p&gt;&lt;h2 style=&quot;box-sizing: border-box; font-family: inherit; font-weight: bold; line-height: 1.471; color: #2c2f35; margin-top: 10px; margin-bottom: 10px; font-size: 34px;&quot;&gt;&lt;span class=&quot;notranslate&quot; style=&quot;box-sizing: border-box;&quot;&gt;Pulau Rehab&lt;/span&gt;&lt;/h2&gt;&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 34px; font-family: Georgia, Times, &#039;times new roman&#039;, serif; font-size: 21px; line-height: 1.55em; width: 710px;&quot;&gt;&lt;img class=&quot;aligncenter size-full wp-image-202473&quot; style=&quot;box-sizing: border-box; border: 0px; vertical-align: middle; max-width: 100%; height: auto; display: block; margin-left: auto; margin-right: auto;&quot; src=&quot;https://cdn.gamerant.com/wp-content/uploads/Grand-Theft-Auto-5-Easter-Egg-Rehab-Island.jpg.optimal.jpg&quot; sizes=&quot;(max-width: 570px) 100vw, 570px&quot; srcset=&quot;https://cdn.gamerant.com/wp-content/uploads/Grand-Theft-Auto-5-Easter-Egg-Rehab-Island.jpg.optimal.jpg 570w, https://cdn.gamerant.com/wp-content/uploads/Grand-Theft-Auto-5-Easter-Egg-Rehab-Island-325x171.jpg.optimal.jpg 325w&quot; alt=&quot;Grand Theft Auto 5 Easter Egg Rehab Island&quot; width=&quot;570&quot; height=&quot;300&quot; /&gt;&lt;/p&gt;&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 34px; font-family: Georgia, Times, &#039;times new roman&#039;, serif; font-size: 21px; line-height: 1.55em; width: 710px;&quot;&gt;&lt;span class=&quot;notranslate&quot; style=&quot;box-sizing: border-box;&quot;&gt;Dalam salah satu mengangguk awal untuk sesama pengembang permainan video yang kemungkinan akan dihadapi para pemain, acara rehab selebriti &#039;Pulau Rehab&#039; - tampaknya sering dikunjungi oleh psikiater Michael sendiri - dicambuk di stasiun radio yang tak terhitung jumlahnya, dan bahkan memiliki papan reklame sendiri di utara. dari klub strip Vanilla Unicorn.&lt;/span&gt;&lt;span id=&quot;ezoic-pub-ad-placeholder-154&quot; class=&quot;ezoic-adpicker-ad&quot; style=&quot;box-sizing: border-box;&quot;&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 34px; font-family: Georgia, Times, &#039;times new roman&#039;, serif; font-size: 21px; line-height: 1.55em; width: 710px;&quot;&gt;&lt;span class=&quot;notranslate&quot; style=&quot;box-sizing: border-box;&quot;&gt;Meskipun acara tersebut mungkin adalah program realitas setelah selebriti detoksifikasi atau berjuang dengan kecanduan, logo untuk acara itu sendiri pasti akan terlihat akrab bagi para gamer avid&amp;hellip;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 34px; font-family: Georgia, Times, &#039;times new roman&#039;, serif; font-size: 21px; line-height: 1.55em; width: 710px;&quot;&gt;&lt;img class=&quot;aligncenter size-full wp-image-88296&quot; style=&quot;box-sizing: border-box; border: 0px; vertical-align: middle; max-width: 100%; height: auto; display: block; margin-left: auto; margin-right: auto;&quot; src=&quot;https://cdn.gamerant.com/wp-content/uploads/Dead-Island-E3.jpg.optimal.jpg&quot; sizes=&quot;(max-width: 570px) 100vw, 570px&quot; srcset=&quot;https://cdn.gamerant.com/wp-content/uploads/Dead-Island-E3.jpg.optimal.jpg 570w, https://cdn.gamerant.com/wp-content/uploads/Dead-Island-E3-325x171.jpg.optimal.jpg 325w&quot; alt=&quot;Dead Island E3&quot; width=&quot;570&quot; height=&quot;300&quot; /&gt;&lt;/p&gt;&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 34px; font-family: Georgia, Times, &#039;times new roman&#039;, serif; font-size: 21px; line-height: 1.55em; width: 710px;&quot;&gt;&lt;span class=&quot;notranslate&quot; style=&quot;box-sizing: border-box;&quot;&gt;Ya, Rockstar tampaknya membuat kiasan langsung ke&amp;nbsp;&lt;a style=&quot;box-sizing: border-box; background-color: transparent; color: #ff7200; text-decoration: none; transition: opacity 0.3s, color 0.3s ease;&quot; href=&quot;https://translate.googleusercontent.com/translate_c?depth=1&amp;amp;hl=id&amp;amp;prev=search&amp;amp;rurl=translate.google.co.id&amp;amp;sl=en&amp;amp;sp=nmt4&amp;amp;u=https://gamerant.com/tag/dead-island/&amp;amp;xid=17259,15700021,15700124,15700149,15700168,15700186,15700191,15700201,15700208&amp;amp;usg=ALkJrhjmxyxUkb84iP-odVK5ZJ_384LURQ&quot;&gt;&lt;em style=&quot;box-sizing: border-box;&quot;&gt;Dead Island&lt;/em&gt;&lt;/a&gt;&amp;nbsp;dari pengembang Techland.&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;notranslate&quot; style=&quot;box-sizing: border-box;&quot;&gt;Kami tidak tahu jika itu adalah tanda bahwa departemen seni menyukai RPG zombie atau petunjuk tentang nasib yang mungkin menimpa para selebritis tersebut, tapi itu tetap mengangguk yang bagus.&lt;/span&gt;&lt;/p&gt;&lt;h2 style=&quot;box-sizing: border-box; font-family: inherit; font-weight: bold; line-height: 1.471; color: #2c2f35; margin-top: 10px; margin-bottom: 10px; font-size: 34px;&quot;&gt;&lt;span class=&quot;notranslate&quot; style=&quot;box-sizing: border-box;&quot;&gt;Liberty City&#039;s Finest&lt;/span&gt;&lt;/h2&gt;&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 34px; font-family: Georgia, Times, &#039;times new roman&#039;, serif; font-size: 21px; line-height: 1.55em; width: 710px;&quot;&gt;&lt;img class=&quot;aligncenter size-full wp-image-202474&quot; style=&quot;box-sizing: border-box; border: 0px; vertical-align: middle; max-width: 100%; height: auto; display: block; margin-left: auto; margin-right: auto;&quot; src=&quot;https://cdn.gamerant.com/wp-content/uploads/Grand-Theft-Auto-5-Easter-Egg-Brucie-Packie.jpg.optimal.jpg&quot; sizes=&quot;(max-width: 570px) 100vw, 570px&quot; srcset=&quot;https://cdn.gamerant.com/wp-content/uploads/Grand-Theft-Auto-5-Easter-Egg-Brucie-Packie.jpg.optimal.jpg 570w, https://cdn.gamerant.com/wp-content/uploads/Grand-Theft-Auto-5-Easter-Egg-Brucie-Packie-325x171.jpg.optimal.jpg 325w&quot; alt=&quot;Grand Theft Auto 5 Easter Egg Brucie Packie&quot; width=&quot;570&quot; height=&quot;300&quot; /&gt;&lt;/p&gt;&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 34px; font-family: Georgia, Times, &#039;times new roman&#039;, serif; font-size: 21px; line-height: 1.55em; width: 710px;&quot;&gt;&lt;span class=&quot;notranslate&quot; style=&quot;box-sizing: border-box;&quot;&gt;Meskipun&amp;nbsp;&lt;em style=&quot;box-sizing: border-box;&quot;&gt;GTAV&lt;/em&gt;&amp;nbsp;diatur di sisi lain negara dari&amp;nbsp;&lt;em style=&quot;box-sizing: border-box;&quot;&gt;GTAIV&lt;/em&gt;&amp;nbsp;, lebih dari beberapa wajah dari game sebelumnya akhirnya membuat penampilan.&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;notranslate&quot; style=&quot;box-sizing: border-box;&quot;&gt;Kami akan menghindari beberapa untuk tujuan spoiler, tetapi ada dua yang mungkin benar-benar hilang jika mereka tidak pergi mencari mereka.&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;notranslate&quot; style=&quot;box-sizing: border-box;&quot;&gt;Yang pertama adalah Brucie Kibbutz, &amp;ldquo;meathead&amp;rdquo; yang berbeda secara genetis dan satu-satunya associate dari pahlawan GTAIV Niko Bellic, dan yang sekarang menghabiskan waktunya &amp;ldquo;Bleeting&amp;rdquo; di situs web media sosial yang dapat diakses di smartphone protagonis mana pun.&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 34px; font-family: Georgia, Times, &#039;times new roman&#039;, serif; font-size: 21px; line-height: 1.55em; width: 710px;&quot;&gt;&lt;span class=&quot;notranslate&quot; style=&quot;box-sizing: border-box;&quot;&gt;Yang kedua sedikit lebih penting.&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;notranslate&quot; style=&quot;box-sizing: border-box;&quot;&gt;Jika pemain - sebagai Franklin - mengunjungi tempat parkir mal besar yang terletak sedikit di sebelah tenggara penanda pencarian Tonya di malam hari, mereka akan tersandung ke sepasang pria yang membutuhkan liburan cepat.&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;notranslate&quot; style=&quot;box-sizing: border-box;&quot;&gt;Salah satu dari orang-orang itu adalah perampok bank Irlandia-Amerika, Patrick &quot;Packie&quot; McReary, yang pernah diselamatkan oleh Franklin, akan diminta untuk dibawa ke pekerjaan apa pun yang ditarik.&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;notranslate&quot; style=&quot;box-sizing: border-box;&quot;&gt;Sejak saat itu, Packie dapat bergabung dengan kru pencurian pemain.&lt;/span&gt;&lt;/p&gt;&lt;h2 style=&quot;box-sizing: border-box; font-family: inherit; font-weight: bold; line-height: 1.471; color: #2c2f35; margin-top: 10px; margin-bottom: 10px; font-size: 34px;&quot;&gt;&lt;span class=&quot;notranslate&quot; style=&quot;box-sizing: border-box;&quot;&gt;Lemari Pakaian Terinspirasi&lt;/span&gt;&lt;/h2&gt;&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 34px; font-family: Georgia, Times, &#039;times new roman&#039;, serif; font-size: 21px; line-height: 1.55em; width: 710px;&quot;&gt;&lt;img class=&quot;aligncenter size-full wp-image-202483&quot; style=&quot;box-sizing: border-box; border: 0px; vertical-align: middle; max-width: 100%; height: auto; display: block; margin-left: auto; margin-right: auto;&quot; src=&quot;https://cdn.gamerant.com/wp-content/uploads/Grand-Theft-Auto-5-Easter-Egg-Max-Payne-Shirt.jpg.optimal.jpg&quot; sizes=&quot;(max-width: 570px) 100vw, 570px&quot; srcset=&quot;https://cdn.gamerant.com/wp-content/uploads/Grand-Theft-Auto-5-Easter-Egg-Max-Payne-Shirt.jpg.optimal.jpg 570w, https://cdn.gamerant.com/wp-content/uploads/Grand-Theft-Auto-5-Easter-Egg-Max-Payne-Shirt-325x171.jpg.optimal.jpg 325w&quot; alt=&quot;Grand Theft Auto 5 Easter Egg Max Payne Shirt&quot; width=&quot;570&quot; height=&quot;300&quot; /&gt;&lt;/p&gt;&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 34px; font-family: Georgia, Times, &#039;times new roman&#039;, serif; font-size: 21px; line-height: 1.55em; width: 710px;&quot;&gt;&lt;span class=&quot;notranslate&quot; style=&quot;box-sizing: border-box;&quot;&gt;Telur easter ini mungkin tidak sebesar atau memakan waktu seperti yang lain dalam daftar, tetapi mereka mungkin diabaikan.&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;notranslate&quot; style=&quot;box-sizing: border-box;&quot;&gt;Ketika Michael pertama kali dikirim, ransel di tangan, untuk membeli pakaian baru atas permintaan Lester, ia dapat menemukan lebih dari sekadar apa yang dibutuhkan oleh misi.&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;notranslate&quot; style=&quot;box-sizing: border-box;&quot;&gt;Dimakamkan di dalam rak-rak toko pakaian Suburban adalah &quot;Parrot Print Shirt&quot; yang langsung akrab bagi penggemar&amp;nbsp;&lt;a style=&quot;box-sizing: border-box; background-color: transparent; color: #ff7200; text-decoration: none; transition: opacity 0.3s, color 0.3s ease;&quot; href=&quot;https://translate.googleusercontent.com/translate_c?depth=1&amp;amp;hl=id&amp;amp;prev=search&amp;amp;rurl=translate.google.co.id&amp;amp;sl=en&amp;amp;sp=nmt4&amp;amp;u=https://gamerant.com/tag/max-payne-3/&amp;amp;xid=17259,15700021,15700124,15700149,15700168,15700186,15700191,15700201,15700208&amp;amp;usg=ALkJrhgwe9vKy3Fl7KKR7ypufVkq1pZYag&quot;&gt;&lt;em style=&quot;box-sizing: border-box;&quot;&gt;Max Payne 3&lt;/em&gt;&lt;/a&gt;&amp;nbsp;.&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;notranslate&quot; style=&quot;box-sizing: border-box;&quot;&gt;Pakaian pertama yang Michael pakai saat pertama kali diperkenalkan adalah salinan persis dari Max, tapi artikel pakaian ini jauh lebih jelas.&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 34px; font-family: Georgia, Times, &#039;times new roman&#039;, serif; font-size: 21px; line-height: 1.55em; width: 710px; text-align: center;&quot;&gt;&lt;img class=&quot;aligncenter size-full wp-image-202476&quot; style=&quot;box-sizing: border-box; border: 0px; vertical-align: middle; max-width: 100%; height: auto; display: block; margin-left: auto; margin-right: auto;&quot; src=&quot;https://cdn.gamerant.com/wp-content/uploads/Grand-Theft-Auto-5-Easter-Egg-Drive-Jacket.jpg.optimal.jpg&quot; sizes=&quot;(max-width: 570px) 100vw, 570px&quot; srcset=&quot;https://cdn.gamerant.com/wp-content/uploads/Grand-Theft-Auto-5-Easter-Egg-Drive-Jacket.jpg.optimal.jpg 570w, https://cdn.gamerant.com/wp-content/uploads/Grand-Theft-Auto-5-Easter-Egg-Drive-Jacket-325x171.jpg.optimal.jpg 325w&quot; alt=&quot;Grand Theft Auto 5 Easter Egg Drive Jacket&quot; width=&quot;570&quot; height=&quot;300&quot; /&gt;&lt;/p&gt;&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 34px; font-family: Georgia, Times, &#039;times new roman&#039;, serif; font-size: 21px; line-height: 1.55em; width: 710px;&quot;&gt;&lt;span class=&quot;notranslate&quot; style=&quot;box-sizing: border-box;&quot;&gt;Michael bukan satu-satunya dengan pahlawan budaya pop tertentu, meskipun pakaian Lester mengidolakan jauh lebih mengganggu.&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;notranslate&quot; style=&quot;box-sizing: border-box;&quot;&gt;Setelah Trevor diperkenalkan, pemain memiliki kesempatan untuk menemukan tidak satu, tetapi dua telur paskah unik di toko pakaian Diskon yang terletak di dekatnya.&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;notranslate&quot; style=&quot;box-sizing: border-box;&quot;&gt;Yang pertama, jaket &amp;ldquo;Pengemudi Blouson&amp;rdquo; adalah penghormatan yang jelas pada jaket yang dikenakan oleh karakter Ryan Gosling di&amp;nbsp;&lt;em style=&quot;box-sizing: border-box;&quot;&gt;Drive&lt;/em&gt;&amp;nbsp;(2011), meskipun dengan kalajengking bersulam kuning berubah menjadi kepiting.&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 34px; font-family: Georgia, Times, &#039;times new roman&#039;, serif; font-size: 21px; line-height: 1.55em; width: 710px;&quot;&gt;&lt;span class=&quot;notranslate&quot; style=&quot;box-sizing: border-box;&quot;&gt;Yang kedua bahkan lebih mengganggu, tetapi tidak terlalu jelas.&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;notranslate&quot; style=&quot;box-sizing: border-box;&quot;&gt;Namanya adalah tip pertama: &quot;Blus Merah Terlupakan&quot;, yang merujuk tidak hanya betapa mudahnya menjelajah melewati jaket merah dan kotak-kotak, tetapi The Overlook Hotel, setting utama Stanley Kubrick&amp;nbsp;&lt;em style=&quot;box-sizing: border-box;&quot;&gt;The Shining&lt;/em&gt;&amp;nbsp;1980).&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 34px; font-family: Georgia, Times, &#039;times new roman&#039;, serif; font-size: 21px; line-height: 1.55em; width: 710px;&quot;&gt;&lt;img class=&quot;aligncenter size-full wp-image-202501&quot; style=&quot;box-sizing: border-box; border: 0px; vertical-align: middle; max-width: 100%; height: auto; display: block; margin-left: auto; margin-right: auto;&quot; src=&quot;https://cdn.gamerant.com/wp-content/uploads/Grand-Theft-Auto-5-Easter-Egg-The-Shining-Outfit.jpg.optimal.jpg&quot; sizes=&quot;(max-width: 570px) 100vw, 570px&quot; srcset=&quot;https://cdn.gamerant.com/wp-content/uploads/Grand-Theft-Auto-5-Easter-Egg-The-Shining-Outfit.jpg.optimal.jpg 570w, https://cdn.gamerant.com/wp-content/uploads/Grand-Theft-Auto-5-Easter-Egg-The-Shining-Outfit-325x171.jpg.optimal.jpg 325w&quot; alt=&quot;Grand Theft Auto 5 Easter Egg The Shining Outfit&quot; width=&quot;570&quot; height=&quot;300&quot; /&gt;&lt;/p&gt;&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 34px; font-family: Georgia, Times, &#039;times new roman&#039;, serif; font-size: 21px; line-height: 1.55em; width: 710px;&quot;&gt;&lt;span class=&quot;notranslate&quot; style=&quot;box-sizing: border-box;&quot;&gt;Itu benar, Trevor bisa mengenakan jaket yang sama dan kotak-kotak seperti apa yang kita hanya bisa berasumsi adalah idola layar besarnya, ayah-dan-ayah Jack Torrance (Jack Nicholson).&lt;/span&gt;&lt;/p&gt;&lt;h2 style=&quot;box-sizing: border-box; font-family: inherit; font-weight: bold; line-height: 1.471; color: #2c2f35; margin-top: 10px; margin-bottom: 10px; font-size: 34px;&quot;&gt;&lt;span class=&quot;notranslate&quot; style=&quot;box-sizing: border-box;&quot;&gt;Pekerjaan Claptrap Paint&lt;/span&gt;&lt;/h2&gt;&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 34px; font-family: Georgia, Times, &#039;times new roman&#039;, serif; font-size: 21px; line-height: 1.55em; width: 710px; text-align: center;&quot;&gt;&lt;img class=&quot;aligncenter size-full wp-image-202484&quot; style=&quot;box-sizing: border-box; border: 0px; vertical-align: middle; max-width: 100%; height: auto; display: block; margin-left: auto; margin-right: auto;&quot; src=&quot;https://cdn.gamerant.com/wp-content/uploads/Grand-Theft-Auto-5-Easter-Egg-Borderlands-Clap-Trap.jpg.optimal.jpg&quot; sizes=&quot;(max-width: 570px) 100vw, 570px&quot; srcset=&quot;https://cdn.gamerant.com/wp-content/uploads/Grand-Theft-Auto-5-Easter-Egg-Borderlands-Clap-Trap.jpg.optimal.jpg 570w, https://cdn.gamerant.com/wp-content/uploads/Grand-Theft-Auto-5-Easter-Egg-Borderlands-Clap-Trap-325x171.jpg.optimal.jpg 325w&quot; alt=&quot;Grand Theft Auto 5 Easter Egg Borderlands Clap Trap&quot; width=&quot;570&quot; height=&quot;300&quot; /&gt;&lt;/p&gt;&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 34px; font-family: Georgia, Times, &#039;times new roman&#039;, serif; font-size: 21px; line-height: 1.55em; width: 710px;&quot;&gt;&lt;span class=&quot;notranslate&quot; style=&quot;box-sizing: border-box;&quot;&gt;Sebagai bukti betapa banyak budaya pop masuk ke&amp;nbsp;&lt;em style=&quot;box-sizing: border-box;&quot;&gt;GTAV&lt;/em&gt;&amp;nbsp;, pekerjaan melukis sederhana yang ditempatkan di lokasi acak mungkin sebenarnya lebih dari yang terlihat.&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;notranslate&quot; style=&quot;box-sizing: border-box;&quot;&gt;Berjalan cepat ke halaman konstruksi yang terletak di sudut barat laut ekstrim dari peta - di seberang jalan dari kantor &quot;J&#039;s Bonds&quot; - mengungkapkan sepotong mesin yang mungkin terlihat akrab.&lt;/span&gt;&lt;span class=&quot;notranslate&quot; style=&quot;box-sizing: border-box;&quot;&gt;Mesin-mesin ini sebenarnya dapat ditemukan di banyak adegan konstruksi di sekitar kota, juga.&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 34px; font-family: Georgia, Times, &#039;times new roman&#039;, serif; font-size: 21px; line-height: 1.55em; width: 710px;&quot;&gt;&lt;span class=&quot;notranslate&quot; style=&quot;box-sizing: border-box;&quot;&gt;Kotak jongkok mungkin tidak memancarkan baris dialog, tetapi kemiripan dengan Claptrap dari seri&amp;nbsp;&lt;a style=&quot;box-sizing: border-box; background-color: transparent; color: #ff7200; text-decoration: none; transition: opacity 0.3s, color 0.3s ease;&quot; href=&quot;https://translate.googleusercontent.com/translate_c?depth=1&amp;amp;hl=id&amp;amp;prev=search&amp;amp;rurl=translate.google.co.id&amp;amp;sl=en&amp;amp;sp=nmt4&amp;amp;u=https://gamerant.com/&amp;amp;xid=17259,15700021,15700124,15700149,15700168,15700186,15700191,15700201,15700208&amp;amp;usg=ALkJrhg0qVYOxQB2-vbNGEQ3arR9Luz_Kw&quot;&gt;&lt;em style=&quot;box-sizing: border-box;&quot;&gt;Borderlands&lt;/em&gt;&lt;/a&gt;&amp;nbsp;tidak mungkin tidak disengaja.&lt;/span&gt;&lt;span class=&quot;notranslate&quot; style=&quot;box-sizing: border-box;&quot;&gt;Namun tanda lain bahwa tim di Rockstar menghabiskan jumlah waktu yang tidak senonoh untuk bermain gim video sambil mendesain sendiri, anggukan ini pada robot favorit penggemar Gearbox Software adalah definisi kehalusan.&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 34px; font-family: Georgia, Times, &#039;times new roman&#039;, serif; font-size: 21px; line-height: 1.55em; width: 710px;&quot;&gt;&lt;span class=&quot;notranslate&quot; style=&quot;box-sizing: border-box;&quot;&gt;Sumber:&amp;nbsp;&lt;a style=&quot;box-sizing: border-box; background-color: transparent; color: #ff7200; text-decoration: none; transition: opacity 0.3s, color 0.3s ease;&quot; href=&quot;https://translate.googleusercontent.com/translate_c?depth=1&amp;amp;hl=id&amp;amp;prev=search&amp;amp;rurl=translate.google.co.id&amp;amp;sl=en&amp;amp;sp=nmt4&amp;amp;u=https://www.youtube.com/watch%3Fv%3DroxayTgXCt0&amp;amp;xid=17259,15700021,15700124,15700149,15700168,15700186,15700191,15700201,15700208&amp;amp;usg=ALkJrhganNDOXlBEoOyaOzb2n-GYT3go6Q&quot; target=&quot;_blank&quot; rel=&quot;noopener noreferrer&quot;&gt;SAG&lt;/a&gt;&lt;/span&gt;&lt;/p&gt;&lt;h2 style=&quot;box-sizing: border-box; font-family: inherit; font-weight: bold; line-height: 1.471; color: #2c2f35; margin-top: 10px; margin-bottom: 10px; font-size: 34px;&quot;&gt;&lt;span class=&quot;notranslate&quot; style=&quot;box-sizing: border-box;&quot;&gt;Red Dead oleh J. Marston&lt;/span&gt;&lt;/h2&gt;&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 34px; font-family: Georgia, Times, &#039;times new roman&#039;, serif; font-size: 21px; line-height: 1.55em; width: 710px;&quot;&gt;&lt;img class=&quot;aligncenter size-full wp-image-202582&quot; style=&quot;box-sizing: border-box; border: 0px; vertical-align: middle; max-width: 100%; height: auto; display: block; margin-left: auto; margin-right: auto;&quot; src=&quot;https://cdn.gamerant.com/wp-content/uploads/Grand-Theft-Auto-5-Easter-Egg-Red-Dead-Book.jpg.optimal.jpg&quot; sizes=&quot;(max-width: 570px) 100vw, 570px&quot; srcset=&quot;https://cdn.gamerant.com/wp-content/uploads/Grand-Theft-Auto-5-Easter-Egg-Red-Dead-Book.jpg.optimal.jpg 570w, https://cdn.gamerant.com/wp-content/uploads/Grand-Theft-Auto-5-Easter-Egg-Red-Dead-Book-325x171.jpg.optimal.jpg 325w&quot; alt=&quot;Grand Theft Auto 5 Easter Egg Red Dead Book&quot; width=&quot;570&quot; height=&quot;300&quot; /&gt;&lt;/p&gt;&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 34px; font-family: Georgia, Times, &#039;times new roman&#039;, serif; font-size: 21px; line-height: 1.55em; width: 710px;&quot;&gt;&lt;span class=&quot;notranslate&quot; style=&quot;box-sizing: border-box;&quot;&gt;Ada lebih dari beberapa mengangguk untuk judul terakhir yang dipublikasikan,&amp;nbsp;&lt;a style=&quot;box-sizing: border-box; background-color: transparent; color: #ff7200; text-decoration: none; transition: opacity 0.3s, color 0.3s ease;&quot; href=&quot;https://translate.googleusercontent.com/translate_c?depth=1&amp;amp;hl=id&amp;amp;prev=search&amp;amp;rurl=translate.google.co.id&amp;amp;sl=en&amp;amp;sp=nmt4&amp;amp;u=https://gamerant.com/tag/red-dead-redemption/&amp;amp;xid=17259,15700021,15700124,15700149,15700168,15700186,15700191,15700201,15700208&amp;amp;usg=ALkJrhhMBHllyorS3P69nGBq6g_-UnQlQQ&quot;&gt;&lt;em style=&quot;box-sizing: border-box;&quot;&gt;Red Dead Redemption&lt;/em&gt;&lt;/a&gt;&amp;nbsp;ditaburkan di seluruh dunia&amp;nbsp;&lt;em style=&quot;box-sizing: border-box;&quot;&gt;GTAV&lt;/em&gt;&amp;nbsp;, tapi ini mungkin favorit kami.&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;notranslate&quot; style=&quot;box-sizing: border-box;&quot;&gt;Setelah Franklin mendapatkan rumah barunya di Vinewood Hills, lihatlah buku-buku di raknya;&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;notranslate&quot; style=&quot;box-sizing: border-box;&quot;&gt;satu buku tulang belakang khususnya harus menonjol.&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;notranslate&quot; style=&quot;box-sizing: border-box;&quot;&gt;Itu benar, hampir mustahil untuk menemukan, tetapi &quot;Red Dead&quot; oleh J. Marston terlihat jelas.&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 34px; font-family: Georgia, Times, &#039;times new roman&#039;, serif; font-size: 21px; line-height: 1.55em; width: 710px;&quot;&gt;&lt;span class=&quot;notranslate&quot; style=&quot;box-sizing: border-box;&quot;&gt;Agaknya ditulis oleh John &quot;Jack&quot; Marston, Jr. setelah peristiwa&amp;nbsp;&lt;em style=&quot;box-sizing: border-box;&quot;&gt;Red Dead&lt;/em&gt;&amp;nbsp;, seseorang hanya bisa membayangkan cerita apa yang akan terkandung di dalamnya.&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;notranslate&quot; style=&quot;box-sizing: border-box;&quot;&gt;Telur Paskah ini, bersama dengan peternakan yang terletak di sebelah selatan lembaga pemasyarakatan yang memiliki kemiripan yang mencolok dengan kampung halaman Marston, referensi penyewaan mobil Escalero, dan sentuhan-sentuhan kecil lainnya menegaskan bahwa para pengembang tidak melupakan kesamaan antara kedua judul itu.&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;notranslate&quot; style=&quot;box-sizing: border-box;&quot;&gt;Kami&amp;nbsp;&lt;a style=&quot;box-sizing: border-box; background-color: transparent; color: #ff7200; text-decoration: none; transition: opacity 0.3s, color 0.3s ease;&quot; href=&quot;https://translate.googleusercontent.com/translate_c?depth=1&amp;amp;hl=id&amp;amp;prev=search&amp;amp;rurl=translate.google.co.id&amp;amp;sl=en&amp;amp;sp=nmt4&amp;amp;u=https://gamerant.com/take-two-ceo-red-dead-redemption-2/&amp;amp;xid=17259,15700021,15700124,15700149,15700168,15700186,15700191,15700201,15700208&amp;amp;usg=ALkJrhhnUdkOaYI93QHXD2aKGpFTkrKP9w&quot;&gt;masih menunggu sekuel itu&lt;/a&gt;&amp;nbsp;.&lt;/span&gt;&lt;/p&gt;&lt;h2 style=&quot;box-sizing: border-box; font-family: inherit; font-weight: bold; line-height: 1.471; color: #2c2f35; margin-top: 10px; margin-bottom: 10px; font-size: 34px;&quot;&gt;&lt;span class=&quot;notranslate&quot; style=&quot;box-sizing: border-box;&quot;&gt;Playboy Mansion&lt;/span&gt;&lt;/h2&gt;&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 34px; font-family: Georgia, Times, &#039;times new roman&#039;, serif; font-size: 21px; line-height: 1.55em; width: 710px;&quot;&gt;&lt;img class=&quot;aligncenter size-full wp-image-202487&quot; style=&quot;box-sizing: border-box; border: 0px; vertical-align: middle; max-width: 100%; height: auto; display: block; margin-left: auto; margin-right: auto;&quot; src=&quot;https://cdn.gamerant.com/wp-content/uploads/Grand-Theft-Auto-5-Easter-Egg-Playboy-Mansion.jpg.optimal.jpg&quot; sizes=&quot;(max-width: 570px) 100vw, 570px&quot; srcset=&quot;https://cdn.gamerant.com/wp-content/uploads/Grand-Theft-Auto-5-Easter-Egg-Playboy-Mansion.jpg.optimal.jpg 570w, https://cdn.gamerant.com/wp-content/uploads/Grand-Theft-Auto-5-Easter-Egg-Playboy-Mansion-325x171.jpg.optimal.jpg 325w&quot; alt=&quot;Grand Theft Auto 5 Easter Egg Playboy Mansion&quot; width=&quot;570&quot; height=&quot;300&quot; /&gt;&lt;/p&gt;&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 34px; font-family: Georgia, Times, &#039;times new roman&#039;, serif; font-size: 21px; line-height: 1.55em; width: 710px;&quot;&gt;&lt;span class=&quot;notranslate&quot; style=&quot;box-sizing: border-box;&quot;&gt;Terletak jauh di dalam rumah mewah di Richmond barat laut - di sepanjang jalur kecil yang terletak di antara tiga lapangan tenis - adalah rumah yang mungkin akrab bagi para elit Hollywood yang menghabiskan waktu dalam versi fiktif Los Angeles ini.&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;notranslate&quot; style=&quot;box-sizing: border-box;&quot;&gt;Lampu neon, kolam renang, lapangan tenis, dan pesta yang tampaknya tak ada habisnya membuatnya jelas: ini adalah Playboy Mansion.&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;notranslate&quot; style=&quot;box-sizing: border-box;&quot;&gt;Sebuah real yang benar-benar mengejutkan mengelilingi bangunan itu sendiri, dibangun untuk dimensi yang sangat akurat.&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 34px; font-family: Georgia, Times, &#039;times new roman&#039;, serif; font-size: 21px; line-height: 1.55em; width: 710px;&quot;&gt;&lt;span class=&quot;notranslate&quot; style=&quot;box-sizing: border-box;&quot;&gt;Sayangnya, itu semua tentang telur easter, tetapi jika berenang ke dalam gua terkenal di dunia - bahkan dalam bentuk digital - ada di daftar keranjang Anda, ini harus melakukan trik.&lt;/span&gt;&lt;/p&gt;&lt;h2 style=&quot;box-sizing: border-box; font-family: inherit; font-weight: bold; line-height: 1.471; color: #2c2f35; margin-top: 10px; margin-bottom: 10px; font-size: 34px;&quot;&gt;&lt;span class=&quot;notranslate&quot; style=&quot;box-sizing: border-box;&quot;&gt;Bigfoot Sighted&lt;/span&gt;&lt;/h2&gt;&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 34px; font-family: Georgia, Times, &#039;times new roman&#039;, serif; font-size: 21px; line-height: 1.55em; width: 710px; text-align: center;&quot;&gt;&lt;img class=&quot;aligncenter size-full wp-image-202488&quot; style=&quot;box-sizing: border-box; border: 0px; vertical-align: middle; max-width: 100%; height: auto; display: block; margin-left: auto; margin-right: auto;&quot; src=&quot;https://cdn.gamerant.com/wp-content/uploads/Grand-Theft-Auto-5-Easter-Egg-Bigfoot.jpg.optimal.jpg&quot; sizes=&quot;(max-width: 570px) 100vw, 570px&quot; srcset=&quot;https://cdn.gamerant.com/wp-content/uploads/Grand-Theft-Auto-5-Easter-Egg-Bigfoot.jpg.optimal.jpg 570w, https://cdn.gamerant.com/wp-content/uploads/Grand-Theft-Auto-5-Easter-Egg-Bigfoot-325x171.jpg.optimal.jpg 325w&quot; alt=&quot;Grand Theft Auto 5 Easter Egg Bigfoot&quot; width=&quot;570&quot; height=&quot;300&quot; /&gt;&lt;/p&gt;&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 34px; font-family: Georgia, Times, &#039;times new roman&#039;, serif; font-size: 21px; line-height: 1.55em; width: 710px;&quot;&gt;&lt;span class=&quot;notranslate&quot; style=&quot;box-sizing: border-box;&quot;&gt;Hubungan antara dunia terbuka Rockstar dan sasquatch misterius yang dijuluki &#039;Bigfoot&#039; oleh sebagian orang, &#039;Yeti&#039; oleh orang lain adalah yang aneh.&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;notranslate&quot; style=&quot;box-sizing: border-box;&quot;&gt;Kami tidak tahu apa itu tentang para pengembang atau penggemar mereka yang membuat mereka sangat tertarik untuk memburu binatang mitos, tetapi ia mendapat lebih banyak waktu layar daripada sebelumnya di&amp;nbsp;&lt;em style=&quot;box-sizing: border-box;&quot;&gt;GTAV&lt;/em&gt;&amp;nbsp;.&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 34px; font-family: Georgia, Times, &#039;times new roman&#039;, serif; font-size: 21px; line-height: 1.55em; width: 710px;&quot;&gt;&lt;span class=&quot;notranslate&quot; style=&quot;box-sizing: border-box;&quot;&gt;Kami akan menghindari misi bonus pasca-penyelesaian untuk tujuan spoiler, tetapi dalam kampanye yang sebenarnya, pemain bisa mendapatkan godaan dari &#039;squatch di alam liar.&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;notranslate&quot; style=&quot;box-sizing: border-box;&quot;&gt;Ketika Trevor pertama kali diberikan kemampuan untuk menggunakan senapan sniper untuk memburu saudara-saudara O&#039;Neil - tidak dalam misi pertama, tetapi kemudian dalam kampanye - segera beralih ke pemandangan inframerah dan menunjuk ke sudut kanan bawah dari pertunjukan lembah sosok aneh di antara binatang liar dan target.&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;notranslate&quot; style=&quot;box-sizing: border-box;&quot;&gt;Secara khusus, bentuk humanoid yang&amp;nbsp;&lt;em style=&quot;box-sizing: border-box;&quot;&gt;bukan&lt;/em&gt;&amp;nbsp;salah satu dari O&#039;Neils, dan segera menghilang setelah dilihat.&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 34px; font-family: Georgia, Times, &#039;times new roman&#039;, serif; font-size: 21px; line-height: 1.55em; width: 710px;&quot;&gt;&lt;span class=&quot;notranslate&quot; style=&quot;box-sizing: border-box;&quot;&gt;Apakah Bigfoot belajar teleport?&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;notranslate&quot; style=&quot;box-sizing: border-box;&quot;&gt;Jika demikian, maka kami berharap dia berbelaskasih.&lt;/span&gt;&lt;/p&gt;&lt;h2 style=&quot;box-sizing: border-box; font-family: inherit; font-weight: bold; line-height: 1.471; color: #2c2f35; margin-top: 10px; margin-bottom: 10px; font-size: 34px;&quot;&gt;&lt;span class=&quot;notranslate&quot; style=&quot;box-sizing: border-box;&quot;&gt;Ghost of Mt.&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;notranslate&quot; style=&quot;box-sizing: border-box;&quot;&gt;Gordo&lt;/span&gt;&lt;/h2&gt;&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 34px; font-family: Georgia, Times, &#039;times new roman&#039;, serif; font-size: 21px; line-height: 1.55em; width: 710px; text-align: center;&quot;&gt;&lt;iframe style=&quot;box-sizing: border-box;&quot; src=&quot;https://translate.googleusercontent.com/translate_c?depth=1&amp;amp;hl=id&amp;amp;prev=search&amp;amp;rurl=translate.google.co.id&amp;amp;sl=en&amp;amp;sp=nmt4&amp;amp;u=https://www.youtube.com/embed/ENoWV5fDKa8%3Frel%3D0&amp;amp;xid=17259,15700021,15700124,15700149,15700168,15700186,15700191,15700201,15700208&amp;amp;usg=ALkJrhgKrROnq6HihakIFf5Iv9Ibbn6c6w&quot; width=&quot;570&quot; height=&quot;321&quot; frameborder=&quot;0&quot; allowfullscreen=&quot;allowfullscreen&quot; data-mce-fragment=&quot;1&quot;&gt;&lt;/iframe&gt;&lt;/p&gt;&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 34px; font-family: Georgia, Times, &#039;times new roman&#039;, serif; font-size: 21px; line-height: 1.55em; width: 710px;&quot;&gt;&lt;span class=&quot;notranslate&quot; style=&quot;box-sizing: border-box;&quot;&gt;Pastinya salah satu telur paskah yang ditemukan, hantu Gunung.&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;notranslate&quot; style=&quot;box-sizing: border-box;&quot;&gt;Gordo hanya muncul untuk menyampaikan pesan misteriusnya setelah pukul 23:00.&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;notranslate&quot; style=&quot;box-sizing: border-box;&quot;&gt;Video di atas memberikan lokasi yang tepat, mengungkapkan momok perempuan yang melarikan diri ketika didekati.&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;notranslate&quot; style=&quot;box-sizing: border-box;&quot;&gt;Satu-satunya tanda kehadirannya yang tersisa adalah pesan &quot;Jock&quot; tertulis dalam darah di bebatuan di bawah.&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 34px; font-family: Georgia, Times, &#039;times new roman&#039;, serif; font-size: 21px; line-height: 1.55em; width: 710px;&quot;&gt;&lt;span class=&quot;notranslate&quot; style=&quot;box-sizing: border-box;&quot;&gt;Pencarian web cepat pada smartphone karakter game ini mengungkapkan misteri yang belum terpecahkan mengenai istri John &quot;Jock&quot; Cranley, mantan pelayan dari Vinewood stuntman yang berubah menjadi publik,&amp;nbsp;&lt;a style=&quot;box-sizing: border-box; background-color: transparent; color: #ff7200; text-decoration: none; transition: opacity 0.3s, color 0.3s ease;&quot; href=&quot;https://translate.googleusercontent.com/translate_c?depth=1&amp;amp;hl=id&amp;amp;prev=search&amp;amp;rurl=translate.google.co.id&amp;amp;sl=en&amp;amp;sp=nmt4&amp;amp;u=https://gamerant.com/grand-theft-auto-5-cars-screenshots-online-missions/&amp;amp;xid=17259,15700021,15700124,15700149,15700168,15700186,15700191,15700201,15700208&amp;amp;usg=ALkJrhhbhyPSSw-r6ijvExvVVaKWvnwBkA&quot;&gt;mencalonkan diri sebagai gubernur selama kampanye gim&lt;/a&gt;&amp;nbsp;.&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;notranslate&quot; style=&quot;box-sizing: border-box;&quot;&gt;Kliping koran yang diarsipkan secara online mengungkapkan bahwa Cranley dan istrinya Jolene berada di tengah-tengah perdebatan di Mt.&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;notranslate&quot; style=&quot;box-sizing: border-box;&quot;&gt;Gordo - tentang keinginan John untuk meninggalkan karirnya dan mencari ketenaran dan kekayaan di Vinewood (sebuah langkah yang tidak disepakati istrinya) - ketika Jolene jatuh ke kematiannya.&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 34px; font-family: Georgia, Times, &#039;times new roman&#039;, serif; font-size: 21px; line-height: 1.55em; width: 710px;&quot;&gt;&lt;span class=&quot;notranslate&quot; style=&quot;box-sizing: border-box;&quot;&gt;Jock mengklaim itu kecelakaan, tetapi hantu ini tampaknya menyiratkan sebaliknya.&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 34px; font-family: Georgia, Times, &#039;times new roman&#039;, serif; font-size: 21px; line-height: 1.55em; width: 710px;&quot;&gt;&lt;img class=&quot;aligncenter size-full wp-image-202493&quot; style=&quot;box-sizing: border-box; border: 0px; vert","Informasi tentang rahasia di balik gta 5","1530724915","8","upload/photos/2018/07/7KqJPniVMTWEvU6GHaWk_04_5d91beac51bbc91ec33ad3bb1b871d5a_image.jpg","14","0","GTA V,GTA5,Rockstars,Easter Egg,Easter Egg GTA V,Easter Egg GTA"),
("2","2","Cara mempelajari bahasa spanol","&lt;div id=&quot;intro&quot; class=&quot;section  sticky  hasad&quot; style=&quot;margin: 0px 0px 25px; padding: 27px 27px 0px; border-radius: 4px; position: relative; line-height: 25px; word-wrap: break-word; background-color: #ffffff; color: #545454; font-family: Helvetica, arial, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;&quot;&gt;&lt;h1 class=&quot;firstHeading&quot; style=&quot;margin: 0px; padding: 0px; font-family: Helvetica, arial, sans-serif; -webkit-font-smoothing: antialiased; font-size: 35px; color: #222222; line-height: normal; text-align: left;&quot;&gt;&lt;a style=&quot;margin: 0px; padding: 0px; color: #222222; text-decoration: none;&quot; href=&quot;https://id.wikihow.com/Belajar-Berbahasa-Spanyol&quot;&gt;Cara Belajar Berbahasa Spanyol&lt;/a&gt;&lt;/h1&gt;&lt;p id=&quot;method_toc&quot; class=&quot;sp_method_toc&quot; style=&quot;margin: 3px -27px; padding: 10px 27px; font-family: Helvetica, arial, sans-serif; -webkit-font-smoothing: antialiased; font-size: 12px; font-weight: bold; line-height: 1.65em; color: #222222; border: 0px; background-color: #f6f8f7;&quot;&gt;&lt;span style=&quot;margin: 0px 0.75em 0px 0px; padding: 0px;&quot;&gt;3 Metode:&lt;/span&gt;&lt;a class=&quot;&quot; style=&quot;margin: 0px 10px 0px 0px; padding: 0px 0px 0px 15px; color: #337733; text-decoration: none; background-image: url(&#039;data:image/gif;base64,R0lGODlhCgAKAIAAAJa6eQAAACH/C1hNUCBEYXRhWE1QPD94cGFja2V0IGJlZ2luPSLvu78iIGlkPSJXNU0wTXBDZWhpSHpyZVN6TlRjemtjOWQiPz4gPHg6eG1wbWV0YSB4bWxuczp4PSJhZG9iZTpuczptZXRhLyIgeDp4bXB0az0iQWRvYmUgWE1QIENvcmUgNS4wLWMwNjEgNjQuMTQwOTQ5LCAyMDEwLzEyLzA3LTEwOjU3OjAxICAgICAgICAiPiA8cmRmOlJERiB4bWxuczpyZGY9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkvMDIvMjItcmRmLXN5bnRheC1ucyMiPiA8cmRmOkRlc2NyaXB0aW9uIHJkZjphYm91dD0iIiB4bWxuczp4bXA9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC8iIHhtbG5zOnhtcE1NPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvbW0vIiB4bWxuczpzdFJlZj0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL3NUeXBlL1Jlc291cmNlUmVmIyIgeG1wOkNyZWF0b3JUb29sPSJBZG9iZSBQaG90b3Nob3AgQ1M1LjEgTWFjaW50b3NoIiB4bXBNTTpJbnN0YW5jZUlEPSJ4bXAuaWlkOjIxMjNDN0VGMjdBRjExRTNBNkUwQTY5OUIxODI0MUQ5IiB4bXBNTTpEb2N1bWVudElEPSJ4bXAuZGlkOjIxMjNDN0YwMjdBRjExRTNBNkUwQTY5OUIxODI0MUQ5Ij4gPHhtcE1NOkRlcml2ZWRGcm9tIHN0UmVmOmluc3RhbmNlSUQ9InhtcC5paWQ6MjEyM0M3RUQyN0FGMTFFM0E2RTBBNjk5QjE4MjQxRDkiIHN0UmVmOmRvY3VtZW50SUQ9InhtcC5kaWQ6MjEyM0M3RUUyN0FGMTFFM0E2RTBBNjk5QjE4MjQxRDkiLz4gPC9yZGY6RGVzY3JpcHRpb24+IDwvcmRmOlJERj4gPC94OnhtcG1ldGE+IDw/eHBhY2tldCBlbmQ9InIiPz4B//79/Pv6+fj39vX08/Lx8O/u7ezr6uno5+bl5OPi4eDf3t3c29rZ2NfW1dTT0tHQz87NzMvKycjHxsXEw8LBwL++vby7urm4t7a1tLOysbCvrq2sq6qpqKempaSjoqGgn56dnJuamZiXlpWUk5KRkI+OjYyLiomIh4aFhIOCgYB/fn18e3p5eHd2dXRzcnFwb25tbGtqaWhnZmVkY2JhYF9eXVxbWllYV1ZVVFNSUVBPTk1MS0pJSEdGRURDQkFAPz49PDs6OTg3NjU0MzIxMC8uLSwrKikoJyYlJCMiISAfHh0cGxoZGBcWFRQTEhEQDw4NDAsKCQgHBgUEAwIBAAAh+QQAAAAAACwAAAAACgAKAAACCISPqcvtD2MrADs=&#039;); background-repeat: no-repeat; background-position: 0% 4px; display: inline-block;&quot; href=&quot;https://id.wikihow.com/Belajar-Berbahasa-Spanyol#Menguasai_Dasar-dasarnya_sub&quot;&gt;Menguasai Dasar-dasarnya&lt;/a&gt;&lt;a class=&quot;&quot; style=&quot;margin: 0px 10px 0px 0px; padding: 0px 0px 0px 15px; color: #337733; text-decoration: none; background-image: url(&#039;data:image/gif;base64,R0lGODlhCgAKAIAAAJa6eQAAACH/C1hNUCBEYXRhWE1QPD94cGFja2V0IGJlZ2luPSLvu78iIGlkPSJXNU0wTXBDZWhpSHpyZVN6TlRjemtjOWQiPz4gPHg6eG1wbWV0YSB4bWxuczp4PSJhZG9iZTpuczptZXRhLyIgeDp4bXB0az0iQWRvYmUgWE1QIENvcmUgNS4wLWMwNjEgNjQuMTQwOTQ5LCAyMDEwLzEyLzA3LTEwOjU3OjAxICAgICAgICAiPiA8cmRmOlJERiB4bWxuczpyZGY9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkvMDIvMjItcmRmLXN5bnRheC1ucyMiPiA8cmRmOkRlc2NyaXB0aW9uIHJkZjphYm91dD0iIiB4bWxuczp4bXA9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC8iIHhtbG5zOnhtcE1NPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvbW0vIiB4bWxuczpzdFJlZj0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL3NUeXBlL1Jlc291cmNlUmVmIyIgeG1wOkNyZWF0b3JUb29sPSJBZG9iZSBQaG90b3Nob3AgQ1M1LjEgTWFjaW50b3NoIiB4bXBNTTpJbnN0YW5jZUlEPSJ4bXAuaWlkOjIxMjNDN0VGMjdBRjExRTNBNkUwQTY5OUIxODI0MUQ5IiB4bXBNTTpEb2N1bWVudElEPSJ4bXAuZGlkOjIxMjNDN0YwMjdBRjExRTNBNkUwQTY5OUIxODI0MUQ5Ij4gPHhtcE1NOkRlcml2ZWRGcm9tIHN0UmVmOmluc3RhbmNlSUQ9InhtcC5paWQ6MjEyM0M3RUQyN0FGMTFFM0E2RTBBNjk5QjE4MjQxRDkiIHN0UmVmOmRvY3VtZW50SUQ9InhtcC5kaWQ6MjEyM0M3RUUyN0FGMTFFM0E2RTBBNjk5QjE4MjQxRDkiLz4gPC9yZGY6RGVzY3JpcHRpb24+IDwvcmRmOlJERj4gPC94OnhtcG1ldGE+IDw/eHBhY2tldCBlbmQ9InIiPz4B//79/Pv6+fj39vX08/Lx8O/u7ezr6uno5+bl5OPi4eDf3t3c29rZ2NfW1dTT0tHQz87NzMvKycjHxsXEw8LBwL++vby7urm4t7a1tLOysbCvrq2sq6qpqKempaSjoqGgn56dnJuamZiXlpWUk5KRkI+OjYyLiomIh4aFhIOCgYB/fn18e3p5eHd2dXRzcnFwb25tbGtqaWhnZmVkY2JhYF9eXVxbWllYV1ZVVFNSUVBPTk1MS0pJSEdGRURDQkFAPz49PDs6OTg3NjU0MzIxMC8uLSwrKikoJyYlJCMiISAfHh0cGxoZGBcWFRQTEhEQDw4NDAsKCQgHBgUEAwIBAAAh+QQAAAAAACwAAAAACgAKAAACCISPqcvtD2MrADs=&#039;); background-repeat: no-repeat; background-position: 0% 4px; display: inline-block;&quot; href=&quot;https://id.wikihow.com/Belajar-Berbahasa-Spanyol#Mempelajari_Tata_Bahasa_Dasar_sub&quot;&gt;Mempelajari Tata Bahasa Dasar&lt;/a&gt;&lt;a class=&quot;&quot; style=&quot;margin: 0px 10px 0px 0px; padding: 0px 0px 0px 15px; color: #337733; text-decoration: none; background-image: url(&#039;data:image/gif;base64,R0lGODlhCgAKAIAAAJa6eQAAACH/C1hNUCBEYXRhWE1QPD94cGFja2V0IGJlZ2luPSLvu78iIGlkPSJXNU0wTXBDZWhpSHpyZVN6TlRjemtjOWQiPz4gPHg6eG1wbWV0YSB4bWxuczp4PSJhZG9iZTpuczptZXRhLyIgeDp4bXB0az0iQWRvYmUgWE1QIENvcmUgNS4wLWMwNjEgNjQuMTQwOTQ5LCAyMDEwLzEyLzA3LTEwOjU3OjAxICAgICAgICAiPiA8cmRmOlJERiB4bWxuczpyZGY9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkvMDIvMjItcmRmLXN5bnRheC1ucyMiPiA8cmRmOkRlc2NyaXB0aW9uIHJkZjphYm91dD0iIiB4bWxuczp4bXA9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC8iIHhtbG5zOnhtcE1NPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvbW0vIiB4bWxuczpzdFJlZj0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL3NUeXBlL1Jlc291cmNlUmVmIyIgeG1wOkNyZWF0b3JUb29sPSJBZG9iZSBQaG90b3Nob3AgQ1M1LjEgTWFjaW50b3NoIiB4bXBNTTpJbnN0YW5jZUlEPSJ4bXAuaWlkOjIxMjNDN0VGMjdBRjExRTNBNkUwQTY5OUIxODI0MUQ5IiB4bXBNTTpEb2N1bWVudElEPSJ4bXAuZGlkOjIxMjNDN0YwMjdBRjExRTNBNkUwQTY5OUIxODI0MUQ5Ij4gPHhtcE1NOkRlcml2ZWRGcm9tIHN0UmVmOmluc3RhbmNlSUQ9InhtcC5paWQ6MjEyM0M3RUQyN0FGMTFFM0E2RTBBNjk5QjE4MjQxRDkiIHN0UmVmOmRvY3VtZW50SUQ9InhtcC5kaWQ6MjEyM0M3RUUyN0FGMTFFM0E2RTBBNjk5QjE4MjQxRDkiLz4gPC9yZGY6RGVzY3JpcHRpb24+IDwvcmRmOlJERj4gPC94OnhtcG1ldGE+IDw/eHBhY2tldCBlbmQ9InIiPz4B//79/Pv6+fj39vX08/Lx8O/u7ezr6uno5+bl5OPi4eDf3t3c29rZ2NfW1dTT0tHQz87NzMvKycjHxsXEw8LBwL++vby7urm4t7a1tLOysbCvrq2sq6qpqKempaSjoqGgn56dnJuamZiXlpWUk5KRkI+OjYyLiomIh4aFhIOCgYB/fn18e3p5eHd2dXRzcnFwb25tbGtqaWhnZmVkY2JhYF9eXVxbWllYV1ZVVFNSUVBPTk1MS0pJSEdGRURDQkFAPz49PDs6OTg3NjU0MzIxMC8uLSwrKikoJyYlJCMiISAfHh0cGxoZGBcWFRQTEhEQDw4NDAsKCQgHBgUEAwIBAAAh+QQAAAAAACwAAAAACgAKAAACCISPqcvtD2MrADs=&#039;); background-repeat: no-repeat; background-position: 0% 4px; display: inline-block;&quot; href=&quot;https://id.wikihow.com/Belajar-Berbahasa-Spanyol#Mendalami_Bahasa_Spanyol_sub&quot;&gt;Mendalami Bahasa Spanyol&lt;/a&gt;&lt;/p&gt;&lt;p style=&quot;margin: 0px; padding: 0px; font-family: Helvetica, arial, sans-serif; -webkit-font-smoothing: antialiased;&quot;&gt;Bahasa Spanyol adalah sebuah bahasa yang indah dan bersejarah dengan lebih dari 500 juta pembicara di seluruh dunia. Bahasa ini adalah salah satu dari bahasa-bahasa yang lebih mudah bagi para pembicara bahasa Inggris untuk dipelajari, karena kedua bahasa berbagi akar bahasa Latin yang sama. Meskipun mempelajari bahasa baru apapun membutuhkan waktu dan dedikasi, kepuasan yang kamu rasakan, setelah melakukan pembicaraan pertama dengan seorang pembicara bahasa Spanyol, akan membuatnya sepadan dengan usahanya! Ini adalah beberapa ide yang luar biasa untuk bagaimana mempelajari berbicara bahasa Spanyol &amp;ndash; dan memperoleh kesenangan dalam prosesnya!&lt;/p&gt;&lt;div class=&quot;clearall&quot; style=&quot;margin: 0px; padding: 0px; clear: both;&quot;&gt;&amp;nbsp;&lt;/div&gt;&lt;div id=&quot;introad-outer&quot; class=&quot;wh_ad_inner&quot; style=&quot;margin: 8px 0px 0px -27px; padding: 0px; position: relative; line-height: 0; min-height: 90px;&quot; data-service=&quot;adsense&quot; data-adtargetid=&quot;introad&quot; data-loaded=&quot;1&quot; data-lateload=&quot;0&quot; data-adsensewidth=&quot;728&quot; data-adsenseheight=&quot;120&quot; data-slot=&quot;2583804979&quot; data-channels=&quot;&quot; data-viewablerefresh=&quot;1&quot; data-apsload=&quot;1&quot;&gt;&lt;ins class=&quot;adsbygoogle ad_label ad_label_dollar&quot; style=&quot;margin: 0px; padding: 19px 0px 0px; display: inline-block; background: #ffffff; width: 728px; height: 120px;&quot; data-ad-client=&quot;ca-pub-9543332082073187&quot; data-ad-slot=&quot;2583804979&quot; data-adsbygoogle-status=&quot;done&quot;&gt;&lt;ins id=&quot;aswift_0_expand&quot; style=&quot;margin: 0px; padding: 0px; display: inline-table; border: none; height: 120px; position: relative; visibility: visible; width: 728px; background-color: transparent;&quot;&gt;&lt;ins id=&quot;aswift_0_anchor&quot; style=&quot;margin: 0px; padding: 0px; display: block; border: none; height: 120px; position: relative; visibility: visible; width: 728px; background-color: transparent;&quot;&gt;&lt;iframe id=&quot;aswift_0&quot; style=&quot;margin: 0px; padding: 0px; left: 0px; position: absolute; top: 0px; width: 728px; height: 120px;&quot; name=&quot;aswift_0&quot; width=&quot;728&quot; height=&quot;120&quot; frameborder=&quot;0&quot; marginwidth=&quot;0&quot; marginheight=&quot;0&quot; scrolling=&quot;no&quot; allowfullscreen=&quot;allowfullscreen&quot; data-mce-fragment=&quot;1&quot;&gt;&lt;/iframe&gt;&lt;/ins&gt;&lt;/ins&gt;&lt;/ins&gt;&lt;/div&gt;&lt;div class=&quot;clearall adclear&quot; style=&quot;margin: 0px; padding: 0px; clear: both;&quot;&gt;&amp;nbsp;&lt;/div&gt;&lt;/div&gt;&lt;p&gt;&lt;a class=&quot;anchor&quot; style=&quot;margin: 0px; padding: 0px; color: #337733; text-decoration: none; display: block; position: relative; top: -39px; visibility: hidden; font-family: Helvetica, arial, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ecebe8;&quot; name=&quot;Menguasai_Dasar-dasarnya_sub&quot;&gt;&lt;/a&gt;&lt;/p&gt;&lt;div class=&quot;section steps   sticky  steps_first&quot; style=&quot;margin: 0px 0px 25px; padding: 60px 0px 0px; border-radius: 4px; position: relative; line-height: 25px; color: #545454; font-family: Helvetica, arial, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ecebe8; text-decoration-style: initial; text-decoration-color: initial;&quot;&gt;&lt;div class=&quot;altblock&quot; style=&quot;margin: 0px 15px 0px 0px; padding: 10px 0px 0px; height: 50px; width: 60px; background-color: #93b874; float: left; font-size: 12px; line-height: 19px; text-align: center; color: #ffffff; border-radius: 4px 0px 0px;&quot;&gt;&lt;label class=&quot;method_label&quot; style=&quot;margin: -1px 0px 0px; padding: 0px; line-height: 12px; display: inline-block;&quot;&gt;Metode&lt;/label&gt;&lt;span style=&quot;margin: 0px; padding: 0px; display: block; font-size: 21px;&quot;&gt;1&lt;/span&gt;&lt;/div&gt;&lt;h3 class=&quot;&quot; style=&quot;margin: 0px; padding: 0px; font-family: Helvetica, arial, sans-serif; -webkit-font-smoothing: antialiased; font-size: 20px; font-weight: bold; color: #222222; line-height: 29px; width: 728px; background: #f6f5f4; position: absolute; z-index: 3; left: 0px; top: 0px; border-radius: 4px 4px 0px 0px; border-bottom: none;&quot;&gt;&lt;span id=&quot;Menguasai_Dasar-dasarnya&quot; class=&quot;mw-headline&quot; style=&quot;margin: 0px; padding: 16px 0px 15px 50px; display: block;&quot;&gt;Menguasai Dasar-dasarnya&lt;/span&gt;&lt;/h3&gt;&lt;div id=&quot;langkah_1&quot; class=&quot;section_text&quot; style=&quot;margin: 0px; padding: 0px; background-color: inherit; border-radius: 0px 0px 4px 4px; border: none;&quot;&gt;&lt;ol class=&quot;steps_list_2&quot; style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;li class=&quot;hasimage&quot; style=&quot;margin: 0px 0px 30px; padding: 20px 20px 15px; font-family: Helvetica, arial, sans-serif; -webkit-font-smoothing: antialiased; font-size: 16px; line-height: 25px; color: #545454; list-style: none; background-color: #ffffff; border-radius: 0px 0px 4px 4px; clear: both; position: relative;&quot;&gt;&lt;div class=&quot;mwimg  largeimage  floatcenter &quot; style=&quot;margin: -21px -20px 20px; padding: 0px; line-height: 0px; position: relative; overflow: hidden; border-radius: 0px; max-width: 728px;&quot;&gt;&lt;div class=&quot;content-spacer&quot; style=&quot;margin: 0px; padding: 546px 0px 0px; position: relative;&quot;&gt;&lt;img id=&quot;img_97f400e0a1&quot; class=&quot;whcdn content-fill&quot; style=&quot;margin: 0px; padding: 0px; border: none; -webkit-user-drag: none; position: absolute; top: 0px; left: 0px; bottom: 0px; right: 0px; width: 728px; min-width: 100%; height: auto; min-height: 100%;&quot; src=&quot;https://www.wikihow.com/images_en/thumb/b/b7/Learn-to-Speak-Spanish-Step-1-Version-2.jpg/v4-728px-Learn-to-Speak-Spanish-Step-1-Version-2.jpg.webp&quot; alt=&quot;Gambar berjudul Learn to Speak Spanish Step 1&quot; width=&quot;728&quot; height=&quot;546&quot; data-src=&quot;https://www.wikihow.com/images_en/thumb/b/b7/Learn-to-Speak-Spanish-Step-1-Version-2.jpg/v4-728px-Learn-to-Speak-Spanish-Step-1-Version-2.jpg&quot; /&gt;&lt;/div&gt;&lt;/div&gt;&lt;div class=&quot;step_num&quot; style=&quot;margin: 0px; padding: 8px 15px 3px 0px; font-size: 43px; color: #545454; float: left; font-weight: bold;&quot;&gt;1&lt;/div&gt;&lt;a class=&quot;stepanchor&quot; style=&quot;margin: 0px; padding: 0px; color: #337733; text-decoration: none; display: block; position: relative; top: -170px; visibility: hidden; word-wrap: break-word;&quot; name=&quot;step_1_1&quot;&gt;&lt;/a&gt;&lt;div class=&quot;step&quot; style=&quot;margin: 0px 40px 0px 0px; padding: 0px;&quot;&gt;&lt;strong class=&quot;whb&quot; style=&quot;margin: 0px; padding: 0px;&quot;&gt;Pelajari alfabet bahasa Spanyol.&lt;/strong&gt;&amp;nbsp;Meskipun alfabet bahasa Spanyol hampir sama dengan bahasa Portugis atau Inggris dalam penggunaannya, pengucapan masing-masing huruf cukuplah sulit. Meskipun pengucapan yang benar adalah salah satu keahlian yang paling sulit dikuasai bagi para pelajar berbahasa Inggris yang ingin mempelajari bahasa Spanyol, mempelajari bagaimana untuk mengucapkan huruf alfabet tersebut dengan sempurna adalah awal yang luar biasa untuk memulai petualangan berbicara bahasa Spanyolmu! Setelah kamu dapat mengucapkan semua huruf secara individual, mempelajari pengucapan seluruh kata dan frasa akan jauh lebih mudah. Lihatlah di bawah ini untuk pengucapan fonetik dari masing-masing huruf alfabet bahasa Spanyol:&lt;ul style=&quot;margin: 0px; padding: 5px 5px 20px 55px; background-color: #ffffff;&quot;&gt;&lt;li style=&quot;margin: 0px; padding: 0px; font-family: Helvetica, arial, sans-serif; -webkit-font-smoothing: antialiased; font-size: 16px; line-height: 25px; color: #545454; list-style: disc; background-color: #ffffff; border-radius: 4px; clear: both; position: relative; border: none;&quot;&gt;A =&amp;nbsp;&lt;strong style=&quot;margin: 0px; padding: 0px;&quot;&gt;ah&lt;/strong&gt;, B =&amp;nbsp;&lt;strong style=&quot;margin: 0px; padding: 0px;&quot;&gt;beh&lt;/strong&gt;, C =&amp;nbsp;&lt;strong style=&quot;margin: 0px; padding: 0px;&quot;&gt;seh&lt;/strong&gt;, D =&amp;nbsp;&lt;strong style=&quot;margin: 0px; padding: 0px;&quot;&gt;deh&lt;/strong&gt;, E =&amp;nbsp;&lt;strong style=&quot;margin: 0px; padding: 0px;&quot;&gt;eh&lt;/strong&gt;, F =&amp;nbsp;&lt;strong style=&quot;margin: 0px; padding: 0px;&quot;&gt;eh-feh&lt;/strong&gt;, G =&amp;nbsp;&lt;strong style=&quot;margin: 0px; padding: 0px;&quot;&gt;heh&lt;/strong&gt;, H =&amp;nbsp;&lt;strong style=&quot;margin: 0px; padding: 0px;&quot;&gt;ah-cheh&lt;/strong&gt;, I =&amp;nbsp;&lt;strong style=&quot;margin: 0px; padding: 0px;&quot;&gt;ee&lt;/strong&gt;&lt;/li&gt;&lt;li style=&quot;margin: 0px; padding: 0px; font-family: Helvetica, arial, sans-serif; -webkit-font-smoothing: antialiased; font-size: 16px; line-height: 25px; color: #545454; list-style: disc; background-color: #ffffff; border-radius: 4px; clear: both; position: relative; border: none;&quot;&gt;J =&amp;nbsp;&lt;strong style=&quot;margin: 0px; padding: 0px;&quot;&gt;hoh-tah&lt;/strong&gt;, K =&amp;nbsp;&lt;strong style=&quot;margin: 0px; padding: 0px;&quot;&gt;kah&lt;/strong&gt;, L =&amp;nbsp;&lt;strong style=&quot;margin: 0px; padding: 0px;&quot;&gt;eh-leh&lt;/strong&gt;, M =&amp;nbsp;&lt;strong style=&quot;margin: 0px; padding: 0px;&quot;&gt;eh-meh&lt;/strong&gt;, N =&amp;nbsp;&lt;strong style=&quot;margin: 0px; padding: 0px;&quot;&gt;eh-neh&lt;/strong&gt;, &amp;Ntilde; =&amp;nbsp;&lt;strong style=&quot;margin: 0px; padding: 0px;&quot;&gt;eh-nyeh&lt;/strong&gt;, O =&amp;nbsp;&lt;strong style=&quot;margin: 0px; padding: 0px;&quot;&gt;oh&lt;/strong&gt;&lt;/li&gt;&lt;li style=&quot;margin: 0px; padding: 0px; font-family: Helvetica, arial, sans-serif; -webkit-font-smoothing: antialiased; font-size: 16px; line-height: 25px; color: #545454; list-style: disc; background-color: #ffffff; border-radius: 4px; clear: both; position: relative; border: none;&quot;&gt;P =&amp;nbsp;&lt;strong style=&quot;margin: 0px; padding: 0px;&quot;&gt;peh&lt;/strong&gt;, Q =&amp;nbsp;&lt;strong style=&quot;margin: 0px; padding: 0px;&quot;&gt;koo&lt;/strong&gt;, R =&amp;nbsp;&lt;strong style=&quot;margin: 0px; padding: 0px;&quot;&gt;eh-reh&lt;/strong&gt;, S =&amp;nbsp;&lt;strong style=&quot;margin: 0px; padding: 0px;&quot;&gt;eh-seh&lt;/strong&gt;, T =&amp;nbsp;&lt;strong style=&quot;margin: 0px; padding: 0px;&quot;&gt;teh&lt;/strong&gt;, U =&amp;nbsp;&lt;strong style=&quot;margin: 0px; padding: 0px;&quot;&gt;oo&lt;/strong&gt;, V =&amp;nbsp;&lt;strong style=&quot;margin: 0px; padding: 0px;&quot;&gt;-beh&lt;/strong&gt;&lt;/li&gt;&lt;li style=&quot;margin: 0px; padding: 0px; font-family: Helvetica, arial, sans-serif; -webkit-font-smoothing: antialiased; font-size: 16px; line-height: 25px; color: #545454; list-style: disc; background-color: #ffffff; border-radius: 4px; clear: both; position: relative; border: none;&quot;&gt;W =&amp;nbsp;&lt;strong style=&quot;margin: 0px; padding: 0px;&quot;&gt;oo-bleh-doubleh&lt;/strong&gt;, X =&amp;nbsp;&lt;strong style=&quot;margin: 0px; padding: 0px;&quot;&gt;eh-kees&lt;/strong&gt;, Y =&amp;nbsp;&lt;strong style=&quot;margin: 0px; padding: 0px;&quot;&gt;ee gryeh-gah&lt;/strong&gt;&amp;nbsp;dan Z =&amp;nbsp;&lt;strong style=&quot;margin: 0px; padding: 0px;&quot;&gt;theh-tah&lt;/strong&gt;.&lt;sup id=&quot;_ref-1&quot; class=&quot;reference&quot; style=&quot;margin: 0px; padding: 0px; line-height: normal;&quot;&gt;&lt;a style=&quot;margin: 0px; padding: 0px; color: #337733; text-decoration: none; word-wrap: break-word;&quot; href=&quot;https://id.wikihow.com/Belajar-Berbahasa-Spanyol#_note-1&quot;&gt;[1]&lt;/a&gt;&lt;/sup&gt;&lt;/li&gt;&lt;li style=&quot;margin: 0px; padding: 0px; font-family: Helvetica, arial, sans-serif; -webkit-font-smoothing: antialiased; font-size: 16px; line-height: 25px; color: #545454; list-style: disc; background-color: #ffffff; border-radius: 4px; clear: both; position: relative; border: none;&quot;&gt;Perhatikan bahwa satu-satunya huruf di dalam alfabet bahasa Spanyol yang tidak terdapat di dalam bahasa Inggris adalah huruf &amp;Ntilde;, yang diucapkan&amp;nbsp;&lt;strong style=&quot;margin: 0px; padding: 0px;&quot;&gt;eh-nyeh&lt;/strong&gt;. Ini adalah huruf yang benar-benar berbeda dengan huruf N. Perkiraan yang paling dekat di dalam bahasa Inggris adalah bunyi &quot;ny&quot; di dalam kata &quot;canyon&quot;.&lt;sup id=&quot;_ref-N_2-0&quot; class=&quot;reference&quot; style=&quot;margin: 0px; padding: 0px; line-height: normal;&quot;&gt;&lt;a style=&quot;margin: 0px; padding: 0px; color: #337733; text-decoration: none; word-wrap: break-word;&quot; href=&quot;https://id.wikihow.com/Belajar-Berbahasa-Spanyol#_note-N-2&quot;&gt;[2]&lt;/a&gt;&lt;/sup&gt;&lt;/li&gt;&lt;/ul&gt;&lt;/div&gt;&lt;div class=&quot;clearall&quot; style=&quot;margin: 0px; padding: 0px; clear: both;&quot;&gt;&amp;nbsp;&lt;/div&gt;&lt;/li&gt;&lt;li class=&quot;hasimage&quot; style=&quot;margin: 0px 0px 30px; padding: 20px 20px 15px; font-family: Helvetica, arial, sans-serif; -webkit-font-smoothing: antialiased; font-size: 16px; line-height: 25px; color: #545454; list-style: none; background-color: #ffffff; border-radius: 4px; clear: both; position: relative;&quot;&gt;&lt;div class=&quot;mwimg  largeimage  floatcenter &quot; style=&quot;margin: -21px -20px 20px; padding: 0px; line-height: 0px; position: relative; overflow: hidden; border-radius: 4px 4px 0px 0px; max-width: 728px;&quot;&gt;&lt;div class=&quot;content-spacer&quot; style=&quot;margin: 0px; padding: 546px 0px 0px; position: relative;&quot;&gt;&lt;img id=&quot;img_d18a62234f&quot; class=&quot;whcdn content-fill&quot; style=&quot;margin: 0px; padding: 0px; border: none; -webkit-user-drag: none; position: absolute; top: 0px; left: 0px; bottom: 0px; right: 0px; width: 728px; min-width: 100%; height: auto; min-height: 100%;&quot; src=&quot;https://www.wikihow.com/images_en/thumb/5/5a/Learn-to-Speak-Spanish-Step-2-Version-2.jpg/v4-728px-Learn-to-Speak-Spanish-Step-2-Version-2.jpg.webp&quot; alt=&quot;Gambar berjudul Learn to Speak Spanish Step 2&quot; width=&quot;728&quot; height=&quot;546&quot; data-src=&quot;https://www.wikihow.com/images_en/thumb/5/5a/Learn-to-Speak-Spanish-Step-2-Version-2.jpg/v4-728px-Learn-to-Speak-Spanish-Step-2-Version-2.jpg&quot; /&gt;&lt;/div&gt;&lt;/div&gt;&lt;div class=&quot;step_num&quot; style=&quot;margin: 0px; padding: 8px 15px 3px 0px; font-size: 43px; color: #545454; float: left; font-weight: bold;&quot;&gt;2&lt;/div&gt;&lt;a class=&quot;stepanchor&quot; style=&quot;margin: 0px; padding: 0px; color: #337733; text-decoration: none; display: block; position: relative; top: -170px; visibility: hidden; word-wrap: break-word;&quot; name=&quot;step_1_2&quot;&gt;&lt;/a&gt;&lt;div class=&quot;step&quot; style=&quot;margin: 0px 40px 0px 0px; padding: 0px;&quot;&gt;&lt;strong class=&quot;whb&quot; style=&quot;margin: 0px; padding: 0px;&quot;&gt;Pelajari cara mengucapkan alfabet bahasa Spanyol.&lt;/strong&gt;&amp;nbsp;Setelah kamu mempelajari aturan bacaan bahasa Spanyol, kamu akan dapat mengucapkan kata apapun yang kamu temui.&lt;ul style=&quot;margin: 0px; padding: 5px 5px 20px 55px; background-color: #ffffff;&quot;&gt;&lt;li style=&quot;margin: 0px; padding: 0px; font-family: Helvetica, arial, sans-serif; -webkit-font-smoothing: antialiased; font-size: 16px; line-height: 25px; color: #545454; list-style: disc; background-color: #ffffff; border-radius: 4px; clear: both; position: relative; border: none;&quot;&gt;ca, co, cu =&amp;nbsp;&lt;strong style=&quot;margin: 0px; padding: 0px;&quot;&gt;kah, koh, koo&lt;/strong&gt;. ce, ci =&amp;nbsp;&lt;strong style=&quot;margin: 0px; padding: 0px;&quot;&gt;theh, thee&lt;/strong&gt;&amp;nbsp;atau&amp;nbsp;&lt;strong style=&quot;margin: 0px; padding: 0px;&quot;&gt;seh, see&lt;/strong&gt;&lt;/li&gt;&lt;li style=&quot;margin: 0px; padding: 0px; font-family: Helvetica, arial, sans-serif; -webkit-font-smoothing: antialiased; font-size: 16px; line-height: 25px; color: #545454; list-style: disc; background-color: #ffffff; border-radius: 4px; clear: both; position: relative; border: none;&quot;&gt;ch berbunyi&amp;nbsp;&lt;strong style=&quot;margin: 0px; padding: 0px;&quot;&gt;ch&lt;/strong&gt;&amp;nbsp;dalam bahasa Inggris&lt;/li&gt;&lt;li style=&quot;margin: 0px; padding: 0px; font-family: Helvetica, arial, sans-serif; -webkit-font-smoothing: antialiased; font-size: 16px; line-height: 25px; color: #545454; list-style: disc; background-color: #ffffff; border-radius: 4px; clear: both; position: relative; border: none;&quot;&gt;ga, go, gu =&amp;nbsp;&lt;strong style=&quot;margin: 0px; padding: 0px;&quot;&gt;gah, goh, goo&lt;/strong&gt;. ge, gi =&amp;nbsp;&lt;strong style=&quot;margin: 0px; padding: 0px;&quot;&gt;heh, hee&lt;/strong&gt;&lt;/li&gt;&lt;li style=&quot;margin: 0px; padding: 0px; font-family: Helvetica, arial, sans-serif; -webkit-font-smoothing: antialiased; font-size: 16px; line-height: 25px; color: #545454; list-style: disc; background-color: #ffffff; border-radius: 4px; clear: both; position: relative; border: none;&quot;&gt;h tidak berbunyi. hombre diucapkan&amp;nbsp;&lt;strong style=&quot;margin: 0px; padding: 0px;&quot;&gt;ohmbreh&lt;/strong&gt;&lt;/li&gt;&lt;li style=&quot;margin: 0px; padding: 0px; font-family: Helvetica, arial, sans-serif; -webkit-font-smoothing: antialiased; font-size: 16px; line-height: 25px; color: #545454; list-style: disc; background-color: #ffffff; border-radius: 4px; clear: both; position: relative; border: none;&quot;&gt;hua, hue, hui, huo =&amp;nbsp;&lt;strong style=&quot;margin: 0px; padding: 0px;&quot;&gt;wah, weh, wee, woh&lt;/strong&gt;&lt;/li&gt;&lt;li style=&quot;margin: 0px; padding: 0px; font-family: Helvetica, arial, sans-serif; -webkit-font-smoothing: antialiased; font-size: 16px; line-height: 25px; color: #545454; list-style: disc; background-color: #ffffff; border-radius: 4px; clear: both; position: relative; border: none;&quot;&gt;ll berbunyi seperti&amp;nbsp;&lt;strong style=&quot;margin: 0px; padding: 0px;&quot;&gt;y&lt;/strong&gt;&amp;nbsp;atau&amp;nbsp;&lt;strong style=&quot;margin: 0px; padding: 0px;&quot;&gt;j&lt;/strong&gt;&amp;nbsp;dalam bahasa Inggris. Calle berbunyi&amp;nbsp;&lt;strong style=&quot;margin: 0px; padding: 0px;&quot;&gt;kah-yeh&lt;/strong&gt;&amp;nbsp;atau&amp;nbsp;&lt;strong style=&quot;margin: 0px; padding: 0px;&quot;&gt;kah-jeh&lt;/strong&gt;.&lt;/li&gt;&lt;li style=&quot;margin: 0px; padding: 0px; font-family: Helvetica, arial, sans-serif; -webkit-font-smoothing: antialiased; font-size: 16px; line-height: 25px; color: #545454; list-style: disc; background-color: #ffffff; border-radius: 4px; clear: both; position: relative; border: none;&quot;&gt;r di awal dan rr di bagian tengah sebuah kata bunyinya diperpanjang. Lihatlah Bagaimana Memperpanjang Bunyi &quot;R&quot;.&lt;/li&gt;&lt;li style=&quot;margin: 0px; padding: 0px; font-family: Helvetica, arial, sans-serif; -webkit-font-smoothing: antialiased; font-size: 16px; line-height: 25px; color: #545454; list-style: disc; background-color: #ffffff; border-radius: 4px; clear: both; position: relative; border: none;&quot;&gt;r di bagian tengah sebuah kata bunyinya seperti tt di dalam butter dalam aksen bahasa Amerika. Loro = lohttoh.&lt;/li&gt;&lt;li style=&quot;margin: 0px; padding: 0px; font-family: Helvetica, arial, sans-serif; -webkit-font-smoothing: antialiased; font-size: 16px; line-height: 25px; color: #545454; list-style: disc; background-color: #ffffff; border-radius: 4px; clear: both; position: relative; border: none;&quot;&gt;que, qui =&amp;nbsp;&lt;strong style=&quot;margin: 0px; padding: 0px;&quot;&gt;keh, kee&lt;/strong&gt;&lt;/li&gt;&lt;li style=&quot;margin: 0px; padding: 0px; font-family: Helvetica, arial, sans-serif; -webkit-font-smoothing: antialiased; font-size: 16px; line-height: 25px; color: #545454; list-style: disc; background-color: #ffffff; border-radius: 4px; clear: both; position: relative; border: none;&quot;&gt;v berbunyi seperti b&lt;/li&gt;&lt;li style=&quot;margin: 0px; padding: 0px; font-family: Helvetica, arial, sans-serif; -webkit-font-smoothing: antialiased; font-size: 16px; line-height: 25px; color: #545454; list-style: disc; background-color: #ffffff; border-radius: 4px; clear: both; position: relative; border: none;&quot;&gt;y berbunyi seperti&amp;nbsp;&lt;strong style=&quot;margin: 0px; padding: 0px;&quot;&gt;y&lt;/strong&gt;&amp;nbsp;atau&amp;nbsp;&lt;strong style=&quot;margin: 0px; padding: 0px;&quot;&gt;j&lt;/strong&gt;&amp;nbsp;dalam bahasa Inggris. Yo berbunyi&amp;nbsp;&lt;em style=&quot;margin: 0px; padding: 0px;&quot;&gt;yoh&amp;nbsp;&lt;strong style=&quot;margin: 0px; padding: 0px;&quot;&gt;atau&lt;/strong&gt;&lt;/em&gt;&amp;nbsp;&lt;strong style=&quot;margin: 0px; padding: 0px;&quot;&gt;joh&lt;/strong&gt;.&lt;br style=&quot;margin: 0px; padding: 0px;&quot; /&gt;Lihatlah Bagaimana Mengucapkan Huruf Bahasa Spanyol dan Bunyi-bunyi Tertentu.&lt;/li&gt;&lt;/ul&gt;&lt;/div&gt;&lt;div class=&quot;clearall&quot; style=&quot;margin: 0px; padding: 0px; clear: both;&quot;&gt;&amp;nbsp;&lt;/div&gt;&lt;/li&gt;&lt;li class=&quot;hasimage&quot; style=&quot;margin: 0px 0px 30px; padding: 20px 20px 15px; font-family: Helvetica, arial, sans-serif; -webkit-font-smoothing: antialiased; font-size: 16px; line-height: 25px; color: #545454; list-style: none; background-color: #ffffff; border-radius: 4px; clear: both; position: relative;&quot;&gt;&lt;div class=&quot;mwimg  largeimage  floatcenter &quot; style=&quot;margin: -21px -20px 20px; padding: 0px; line-height: 0px; position: relative; overflow: hidden; border-radius: 4px 4px 0px 0px; max-width: 728px;&quot;&gt;&lt;div class=&quot;content-spacer&quot; style=&quot;margin: 0px; padding: 546px 0px 0px; position: relative;&quot;&gt;&lt;img id=&quot;img_2b463c0a17&quot; class=&quot;whcdn content-fill&quot; style=&quot;margin: 0px; padding: 0px; border: none; -webkit-user-drag: none; position: absolute; top: 0px; left: 0px; bottom: 0px; right: 0px; width: 728px; min-width: 100%; height: auto; min-height: 100%;&quot; src=&quot;https://www.wikihow.com/images_en/thumb/9/93/Learn-to-Speak-Spanish-Step-3-Version-2.jpg/v4-728px-Learn-to-Speak-Spanish-Step-3-Version-2.jpg.webp&quot; alt=&quot;Gambar berjudul Learn to Speak Spanish Step 3&quot; width=&quot;728&quot; height=&quot;546&quot; data-src=&quot;https://www.wikihow.com/images_en/thumb/9/93/Learn-to-Speak-Spanish-Step-3-Version-2.jpg/v4-728px-Learn-to-Speak-Spanish-Step-3-Version-2.jpg&quot; /&gt;&lt;/div&gt;&lt;/div&gt;&lt;div class=&quot;step_num&quot; style=&quot;margin: 0px; padding: 8px 15px 3px 0px; font-size: 43px; color: #545454; float: left; font-weight: bold;&quot;&gt;3&lt;/div&gt;&lt;a class=&quot;stepanchor&quot; style=&quot;margin: 0px; padding: 0px; color: #337733; text-decoration: none; display: block; position: relative; top: -170px; visibility: hidden; word-wrap: break-word;&quot; name=&quot;step_1_3&quot;&gt;&lt;/a&gt;&lt;div class=&quot;step&quot; style=&quot;margin: 0px 40px 0px 0px; padding: 0px;&quot;&gt;&lt;strong class=&quot;whb&quot; style=&quot;margin: 0px; padding: 0px;&quot;&gt;Belajar berhitung.&lt;/strong&gt;&amp;nbsp;Mengetahui bagaimana cara berhitung adalah keahlian yang dibutuhkan dalam bahasa apapun. Belajar berhitung dalam bahasa Spanyol tidak terlalu rumit, karena nama-nama angka dalam bahasa Spanyol cukup mirip dengan bahasa Inggris. Angka-angka dari satu sampai sepuluh tercantum di bawah:&lt;ul style=&quot;margin: 0px; padding: 5px 5px 20px 55px; background-color: #ffffff;&quot;&gt;&lt;li style=&quot;margin: 0px; padding: 0px; font-family: Helvetica, arial, sans-serif; -webkit-font-smoothing: antialiased; font-size: 16px; line-height: 25px; color: #545454; list-style: disc; background-color: #ffffff; border-radius: 4px; clear: both; position: relative; border: none;&quot;&gt;Satu =&amp;nbsp;&lt;strong style=&quot;margin: 0px; padding: 0px;&quot;&gt;Uno&lt;/strong&gt;, Dua =&amp;nbsp;&lt;strong style=&quot;margin: 0px; padding: 0px;&quot;&gt;Dos&lt;/strong&gt;, Tiga =&amp;nbsp;&lt;strong style=&quot;margin: 0px; padding: 0px;&quot;&gt;Tres&lt;/strong&gt;, Empat =&amp;nbsp;&lt;strong style=&quot;margin: 0px; padding: 0px;&quot;&gt;Cuatro&lt;/strong&gt;, Lima =&amp;nbsp;&lt;strong style=&quot;margin: 0px; padding: 0px;&quot;&gt;Cinco&lt;/strong&gt;, Enam =&amp;nbsp;&lt;strong style=&quot;margin: 0px; padding: 0px;&quot;&gt;Seis&lt;/strong&gt;, Tujuh =&amp;nbsp;&lt;strong style=&quot;margin: 0px; padding: 0px;&quot;&gt;Siete&lt;/strong&gt;, Delapan =&amp;nbsp;&lt;strong style=&quot;margin: 0px; padding: 0px;&quot;&gt;Ocho&lt;/strong&gt;, Sembilan =&amp;nbsp;&lt;strong style=&quot;margin: 0px; padding: 0px;&quot;&gt;Nueve&lt;/strong&gt;, Sepuluh =&amp;nbsp;&lt;strong style=&quot;margin: 0px; padding: 0px;&quot;&gt;Diez&lt;/strong&gt;.&lt;sup id=&quot;_ref-studyspanish_3-0&quot; class=&quot;reference&quot; style=&quot;margin: 0px; padding: 0px; line-height: normal;&quot;&gt;&lt;a style=&quot;margin: 0px; padding: 0px; color: #337733; text-decoration: none; word-wrap: break-word;&quot; href=&quot;https://id.wikihow.com/Belajar-Berbahasa-Spanyol#_note-studyspanish-3&quot;&gt;[3]&lt;/a&gt;&lt;/sup&gt;&lt;/li&gt;&lt;li style=&quot;margin: 0px; padding: 0px; font-family: Helvetica, arial, sans-serif; -webkit-font-smoothing: antialiased; font-size: 16px; line-height: 25px; color: #545454; list-style: disc; background-color: #ffffff; border-radius: 4px; clear: both; position: relative; border: none;&quot;&gt;Kamu harus menyadari bahwa angka satu --&amp;nbsp;&lt;em style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;strong style=&quot;margin: 0px; padding: 0px;&quot;&gt;&quot;uno&quot;&lt;/strong&gt;&lt;/em&gt;&amp;nbsp;&amp;ndash; akan berubah bentuk saat digunakan di depan sebuah kata benda maskulin ataupun feminin. Sebagai contoh, istilah &quot;seorang laki-laki&quot; diungkapkan sebagai&amp;nbsp;&lt;em style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;strong style=&quot;margin: 0px; padding: 0px;&quot;&gt;&quot;un hombre&quot;&lt;/strong&gt;&lt;/em&gt;, sedangkan istilah &quot;seorang anak perempuan&quot; diungkapkan sebagai&amp;nbsp;&lt;em style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;strong style=&quot;margin: 0px; padding: 0px;&quot;&gt;&quot;una chica&quot;&lt;/strong&gt;&lt;/em&gt;.&lt;sup id=&quot;_ref-studyspanish_3-1&quot; class=&quot;reference&quot; style=&quot;margin: 0px; padding: 0px; line-height: normal;&quot;&gt;&lt;a style=&quot;margin: 0px; padding: 0px; color: #337733; text-decoration: none; word-wrap: break-word;&quot; href=&quot;https://id.wikihow.com/Belajar-Berbahasa-Spanyol#_note-studyspanish-3&quot;&gt;[3]&lt;/a&gt;&lt;/sup&gt;&lt;/li&gt;&lt;/ul&gt;&lt;/div&gt;&lt;div class=&quot;clearall&quot; style=&quot;margin: 0px; padding: 0px; clear: both;&quot;&gt;&amp;nbsp;&lt;/div&gt;&lt;/li&gt;&lt;li class=&quot;hasimage&quot; style=&quot;margin: 0px 0px 30px; padding: 20px 20px 15px; font-family: Helvetica, arial, sans-serif; -webkit-font-smoothing: antialiased; font-size: 16px; line-height: 25px; color: #545454; list-style: none; background-color: #ffffff; border-radius: 4px; clear: both; position: relative;&quot;&gt;&lt;div class=&quot;mwimg  largeimage  floatcenter &quot; style=&quot;margin: -21px -20px 20px; padding: 0px; line-height: 0px; position: relative; overflow: hidden; border-radius: 4px 4px 0px 0px; max-width: 728px;&quot;&gt;&lt;div class=&quot;content-spacer&quot; style=&quot;margin: 0px; padding: 546px 0px 0px; position: relative;&quot;&gt;&lt;img id=&quot;img_d1fb6037a1&quot; class=&quot;whcdn content-fill&quot; style=&quot;margin: 0px; padding: 0px; border: none; -webkit-user-drag: none; position: absolute; top: 0px; left: 0px; bottom: 0px; right: 0px; width: 728px; min-width: 100%; height: auto; min-height: 100%;&quot; src=&quot;https://www.wikihow.com/images_en/thumb/5/55/Learn-to-Speak-Spanish-Step-4-Version-2.jpg/v4-728px-Learn-to-Speak-Spanish-Step-4-Version-2.jpg.webp&quot; alt=&quot;Gambar berjudul Learn to Speak Spanish Step 4&quot; width=&quot;728&quot; height=&quot;546&quot; data-src=&quot;https://www.wikihow.com/images_en/thumb/5/55/Learn-to-Speak-Spanish-Step-4-Version-2.jpg/v4-728px-Learn-to-Speak-Spanish-Step-4-Version-2.jpg&quot; /&gt;&lt;/div&gt;&lt;/div&gt;&lt;div class=&quot;step_num&quot; style=&quot;margin: 0px; padding: 8px 15px 3px 0px; font-size: 43px; color: #545454; float: left; font-weight: bold;&quot;&gt;4&lt;/div&gt;&lt;a class=&quot;stepanchor&quot; style=&quot;margin: 0px; padding: 0px; color: #337733; text-decoration: none; display: block; position: relative; top: -170px; visibility: hidden; word-wrap: break-word;&quot; name=&quot;step_1_4&quot;&gt;&lt;/a&gt;&lt;div class=&quot;step&quot; style=&quot;margin: 0px 40px 0px 0px; padding: 0px;&quot;&gt;&lt;strong class=&quot;whb&quot; style=&quot;margin: 0px; padding: 0px;&quot;&gt;Hafalkan kosakata sederhana.&lt;/strong&gt;&amp;nbsp;Semakin luas kosakata yang kamu miliki, semakin mudah untuk berbicara dalam sebuah bahasa dengan lancar. Biasakan dirimu dengan sebanyak mungkin kata sehari-hari yang sederhana dalam bahasa Spanyol &amp;ndash; kamu akan terkejut bagaimana cepatnya mereka akan berkembang!&lt;ul style=&quot;margin: 0px; padding: 5px 5px 20px 55px; background-color: #ffffff;&quot;&gt;&lt;li style=&quot;margin: 0px; padding: 0px; font-family: Helvetica, arial, sans-serif; -webkit-font-smoothing: antialiased; font-size: 16px; line-height: 25px; color: #545454; list-style: disc; background-color: #ffffff; border-radius: 4px; clear: both; position: relative; border: none;&quot;&gt;Salah satu cara yang termudah untuk melakukan hal ini adalah dengan menggunakan kata serumpun - kata-kata ini berbagi arti, ejaan dan pengucapan yang mirip di dalam kedua bahasa. Mempelajari bahasa Spanyol yang serumpun dengan kata-kata bahasa Inggris adalah sebuah cara yang luar biasa untuk meningkatkan secara cepat kosakatamu, karena 30%-40% dari semua kata bahasa Inggris memiliki sebuah kata serumpun dalam bahasa Spanyol.&lt;sup id=&quot;_ref-4&quot; class=&quot;reference&quot; style=&quot;margin: 0px; padding: 0px; line-height: normal;&quot;&gt;&lt;a style=&quot;margin: 0px; padding: 0px; color: #337733; text-decoration: none; word-wrap: break-word;&quot; href=&quot;https://id.wikihow.com/Belajar-Berbahasa-Spanyol#_note-4&quot;&gt;[4]&lt;/a&gt;&lt;/sup&gt;&lt;/li&gt;&lt;li style=&quot;margin: 0px; padding: 0px; font-family: Helvetica, arial, sans-serif; -webkit-font-smoothing: antialiased; font-size: 16px; line-height: 25px; color: #545454; list-style: disc; background-color: #ffffff; border-radius: 4px; clear: both; position: relative; border: none;&quot;&gt;Untuk kata-kata yang tidak memiliki kata serumpun, cobalah menggunakan salah satu dari cara mengingat berikut ini: Saat kamu mendengar sebuah kata dalam bahasa Inggris, pikirkan bagaimana kamu mengucapkannya dalam bahasa Spanyol. Jika kamu tidak mengetahuinya, tulis dan carilah nanti. Cukup berguna untuk membawa sebuah buku catatan kecil setiap waktu untuk tujuan ini. Sebagai alternatif, cobalah menempelkan label kecil berbahasa Spanyol di sekeliling rumahmu, seperti pada cermin, meja kopi dan mangkuk gula. Kamu akan melihat kata-kata tersebut dengan seringnya sehingga kamu akan mempelajarinya tanpa sadar!&lt;/li&gt;&lt;li style=&quot;margin: 0px; padding: 0px; font-family: Helvetica, arial, sans-serif; -webkit-font-smoothing: antialiased; font-size: 16px; line-height: 25px; color: #545454; list-style: disc; background-color: #ffffff; border-radius: 4px; clear: both; position: relative; border: none;&quot;&gt;Merupakan hal yang penting untuk mempelajari sebuah kata atau frasa dari &amp;lsquo;bahasa Spanyol ke Inggris&amp;rsquo; sekaligus &amp;lsquo;bahasa Inggris ke Spanyol&amp;rsquo;. Dengan cara ini kamu akan mengingat bagaimana cara mengucapkannya, tidak hanya mengenalinya saat mendengarnya.&lt;/li&gt;&lt;/ul&gt;&lt;/div&gt;&lt;div class=&quot;clearall&quot; style=&quot;margin: 0px; padding: 0px; clear: both;&quot;&gt;&amp;nbsp;&lt;/div&gt;&lt;/li&gt;&lt;li class=&quot;hasimage&quot; style=&quot;margin: 0px 0px 30px; padding: 20px 20px 15px; font-family: Helvetica, arial, sans-serif; -webkit-font-smoothing: antialiased; font-size: 16px; line-height: 25px; color: #545454; list-style: none; background-color: #ffffff; border-radius: 4px; clear: both; position: relative;&quot;&gt;&lt;div class=&quot;mwimg  largeimage  floatcenter &quot; style=&quot;margin: -21px -20px 20px; padding: 0px; line-height: 0px; position: relative; overflow: hidden; border-radius: 4px 4px 0px 0px; max-width: 728px;&quot;&gt;&lt;div class=&quot;content-spacer&quot; style=&quot;margin: 0px; padding: 546px 0px 0px; position: relative;&quot;&gt;&lt;img id=&quot;img_e9ba6a89d9&quot; class=&quot;whcdn content-fill&quot; style=&quot;margin: 0px; padding: 0px; border: none; -webkit-user-drag: none; position: absolute; top: 0px; left: 0px; bottom: 0px; right: 0px; width: 728px; min-width: 100%; height: auto; min-height: 100%;&quot; src=&quot;https://www.wikihow.com/images_en/thumb/0/06/Learn-to-Speak-Spanish-Step-5-Version-2.jpg/v4-728px-Learn-to-Speak-Spanish-Step-5-Version-2.jpg.webp&quot; alt=&quot;Gambar berjudul Learn to Speak Spanish Step 5&quot; width=&quot;728&quot; height=&quot;546&quot; data-src=&quot;https://www.wikihow.com/images_en/thumb/0/06/Learn-to-Speak-Spanish-Step-5-Version-2.jpg/v4-728px-Learn-to-Speak-Spanish-Step-5-Version-2.jpg&quot; /&gt;&lt;/div&gt;&lt;/div&gt;&lt;div class=&quot;step_num&quot; style=&quot;margin: 0px; padding: 8px 15px 3px 0px; font-size: 43px; color: #545454; float: left; font-weight: bold;&quot;&gt;5&lt;/div&gt;&lt;a class=&quot;stepanchor&quot; style=&quot;margin: 0px; padding: 0px; color: #337733; text-decoration: none; display: block; position: relative; top: -170px; visibility: hidden; word-wrap: break-word;&quot; name=&quot;step_1_5&quot;&gt;&lt;/a&gt;&lt;div class=&quot;step&quot; style=&quot;margin: 0px 40px 0px 0px; padding: 0px;&quot;&gt;&lt;strong class=&quot;whb&quot; style=&quot;margin: 0px; padding: 0px;&quot;&gt;Pelajari beberapa frasa pembicaraan.&lt;/strong&gt;&amp;nbsp;Dengan mempelajari dasar-dasar percakapan yang sopan, kamu akan dengan sangat cepat dapat berinteraksi dengan pembicara bahasa Spanyol pada tingkatan yang sederhana. Tulis beberapa frasa bahasa Spanyol sehari-hari di dalam buku catatan dan pelajari antara lima sampai sepuluh poin setiap harinya. Ini adalah beberapa kata/frasa agar kamu dapat memulai:&lt;ul style=&quot;margin: 0px; padding: 5px 5px 20px 55px; background-color: #ffffff;&quot;&gt;&lt;li style=&quot;margin: 0px; padding: 0px; font-family: Helvetica, arial, sans-serif; -webkit-font-smoothing: antialiased; font-size: 16px; line-height: 25px; color: #545454; list-style: disc; background-color: #ffffff; border-radius: 4px; clear: both; position: relative; border: none;&quot;&gt;Helo! =&amp;nbsp;&lt;em style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;strong style=&quot;margin: 0px; padding: 0px;&quot;&gt;&amp;iexcl;Hola!&lt;/strong&gt;&lt;/em&gt;&lt;sup id=&quot;_ref-dummies_5-0&quot; class=&quot;reference&quot; style=&quot;margin: 0px; padding: 0px; line-height: normal;&quot;&gt;&lt;a style=&quot;margin: 0px; padding: 0px; color: #337733; text-decoration: none; word-wrap: break-word;&quot; href=&quot;https://id.wikihow.com/Belajar-Berbahasa-Spanyol#_note-dummies-5&quot;&gt;[5]&lt;/a&gt;&lt;/sup&gt;&lt;/li&gt;&lt;li style=&quot;margin: 0px; padding: 0px; font-family: Helvetica, arial, sans-serif; -webkit-font-smoothing: antialiased; font-size: 16px; line-height: 25px; color: #545454; list-style: disc; background-color: #ffffff; border-radius: 4px; clear: both; position: relative; border: none;&quot;&gt;Ya =&amp;nbsp;&lt;em style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;strong style=&quot;margin: 0px; padding: 0px;&quot;&gt;S&amp;iacute;&lt;/strong&gt;&lt;/em&gt;&lt;sup id=&quot;_ref-yes_6-0&quot; class=&quot;reference&quot; style=&quot;margin: 0px; padding: 0px; line-height: normal;&quot;&gt;&lt;a style=&quot;margin: 0px; padding: 0px; color: #337733; text-decoration: none; word-wrap: break-word;&quot; href=&quot;https://id.wikihow.com/Belajar-Berbahasa-Spanyol#_note-yes-6&quot;&gt;[6]&lt;/a&gt;&lt;/sup&gt;&lt;/li&gt;&lt;li style=&quot;margin: 0px; padding: 0px; font-family: Helvetica, arial, sans-serif; -webkit-font-smoothing: antialiased; font-size: 16px; line-height: 25px; color: #545454; list-style: disc; background-color: #ffffff; border-radius: 4px; clear: both; position: relative; border: none;&quot;&gt;Tidak =&amp;nbsp;&lt;em style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;strong style=&quot;margin: 0px; padding: 0px;&quot;&gt;No&lt;/strong&gt;&lt;/em&gt;&lt;sup id=&quot;_ref-yes_6-1&quot; class=&quot;reference&quot; style=&quot;margin: 0px; padding: 0px; line-height: normal;&quot;&gt;&lt;a style=&quot;margin: 0px; padding: 0px; color: #337733; text-decoration: none; word-wrap: break-word;&quot; href=&quot;https://id.wikihow.com/Belajar-Berbahasa-Spanyol#_note-yes-6&quot;&gt;[6]&lt;/a&gt;&lt;/sup&gt;&lt;/li&gt;&lt;li style=&quot;margin: 0px; padding: 0px; font-family: Helvetica, arial, sans-serif; -webkit-font-smoothing: antialiased; font-size: 16px; line-height: 25px; color: #545454; list-style: disc; background-color: #ffffff; border-radius: 4px; clear: both; position: relative; border: none;&quot;&gt;Terima kasih! =&amp;nbsp;&lt;em style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;strong style=&quot;margin: 0px; padding: 0px;&quot;&gt;&amp;iexcl;Gracias!&lt;/strong&gt;&lt;/em&gt;&amp;nbsp;-- pronounced &quot;grah-thyahs&quot; or &quot;grah-syas&quot;&lt;sup id=&quot;_ref-dummies_5-1&quot; class=&quot;reference&quot; style=&quot;margin: 0px; padding: 0px; line-height: normal;&quot;&gt;&lt;a style=&quot;margin: 0px; padding: 0px; color: #337733; text-decoration: none; word-wrap: break-word;&quot; href=&quot;https://id.wikihow.com/Belajar-Berbahasa-Spanyol#_note-dummies-5&quot;&gt;[5]&lt;/a&gt;&lt;/sup&gt;&lt;/li&gt;&lt;li style=&quot;margin: 0px; padding: 0px; font-family: Helvetica, arial, sans-serif; -webkit-font-smoothing: antialiased; font-size: 16px; line-height: 25px; color: #545454; list-style: disc; background-color: #ffffff; border-radius: 4px; clear: both; position: relative; border: none;&quot;&gt;Silakan =&amp;nbsp;&lt;em style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;strong style=&quot;margin: 0px; padding: 0px;&quot;&gt;Por favor&lt;/strong&gt;&lt;/em&gt;&lt;sup id=&quot;_ref-dummies_5-2&quot; class=&quot;reference&quot; style=&quot;margin: 0px; padding: 0px; line-height: normal;&quot;&gt;&lt;a style=&quot;margin: 0px; padding: 0px; color: #337733; text-decoration: none; word-wrap: break-word;&quot; href=&quot;https://id.wikihow.com/Belajar-Berbahasa-Spanyol#_note-dummies-5&quot;&gt;[5]&lt;/a&gt;&lt;/sup&gt;&lt;/li&gt;&lt;li style=&quot;margin: 0px; padding: 0px; font-family: Helvetica, arial, sans-serif; -webkit-font-smoothing: antialiased; font-size: 16px; line-height: 25px; color: #545454; list-style: disc; background-color: #ffffff; border-radius: 4px; clear: both; position: relative; border: none;&quot;&gt;Siapakah namamu? =&amp;nbsp;&lt;em style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;strong style=&quot;margin: 0px; padding: 0px;&quot;&gt;&amp;iquest;C&amp;oacute;mo se llama usted?&lt;/strong&gt;&lt;/em&gt;&lt;sup id=&quot;_ref-intro_7-0&quot; class=&quot;reference&quot; style=&quot;margin: 0px; padding: 0px; line-height: normal;&quot;&gt;&lt;a style=&quot;margin: 0px; padding: 0px; color: #337733; text-decoration: none; word-wrap: break-word;&quot; href=&quot;https://id.wikihow.com/Belajar-Berbahasa-Spanyol#_note-intro-7&quot;&gt;[7]&lt;/a&gt;&lt;/sup&gt;&lt;/li&gt;&lt;li style=&quot;margin: 0px; padding: 0px; font-family: Helvetica, arial, sans-serif; -webkit-font-smoothing: antialiased; font-size: 16px; line-height: 25px; color: #545454; list-style: disc; background-color: #ffffff; border-radius: 4px; clear: both; position: relative; border: none;&quot;&gt;Namaku... =&amp;nbsp;&lt;em style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;strong style=&quot;margin: 0px; padding: 0px;&quot;&gt;Me llamo...&lt;/strong&gt;&lt;sup id=&quot;_ref-intro_7-1&quot; class=&quot;reference&quot; style=&quot;margin: 0px; padding: 0px; line-height: normal;&quot;&gt;&lt;a style=&quot;margin: 0px; padding: 0px; color: #337733; text-decoration: none; word-wrap: break-word;&quot; href=&quot;https://id.wikihow.com/Belajar-Berbahasa-Spanyol#_note-intro-7&quot;&gt;[7]&lt;/a&gt;&lt;/sup&gt;&lt;/em&gt;&lt;/li&gt;&lt;li style=&quot;margin: 0px; padding: 0px; font-family: Helvetica, arial, sans-serif; -webkit-font-smoothing: antialiased; font-size: 16px; line-height: 25px; color: #545454; list-style: disc; background-color: #ffffff; border-radius: 4px; clear: both; position: relative; border: none;&quot;&gt;Senang berjumpa denganmu =&amp;nbsp;&lt;em style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;strong style=&quot;margin: 0px; padding: 0px;&quot;&gt;Mucho gusto&lt;/strong&gt;&lt;/em&gt;&lt;sup id=&quot;_ref-intro_7-2&quot; class=&quot;reference&quot; style=&quot;margin: 0px; padding: 0px; line-height: normal;&quot;&gt;&lt;a style=&quot;margin: 0px; padding: 0px; color: #337733; text-decoration: none; word-wrap: break-word;&quot; href=&quot;https://id.wikihow.com/Belajar-Berbahasa-Spanyol#_note-intro-7&quot;&gt;[7]&lt;/a&gt;&lt;/sup&gt;&lt;/li&gt;&lt;li style=&quot;margin: 0px; padding: 0px; font-family: Helvetica, arial, sans-serif; -webkit-font-smoothing: antialiased; font-size: 16px; line-height: 25px; color: #545454; list-style: disc; background-color: #ffffff; border-radius: 4px; clear: both; position: relative; border: none;&quot;&gt;Sampai Jumpa! =&amp;nbsp;&lt;em style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;strong style=&quot;margin: 0px; padding: 0px;&quot;&gt;&amp;iexcl;Hasta luego!&lt;/strong&gt;&lt;/em&gt;&amp;nbsp;-- pronounced &quot;ahs-tah lweh-goh&quot;&lt;sup id=&quot;_ref-dummies_5-3&quot; class=&quot;reference&quot; style=&quot;margin: 0px; padding: 0px; line-height: normal;&quot;&gt;&lt;a style=&quot;margin: 0px; padding: 0px; color: #337733; text-decoration: none; word-wrap: break-word;&quot; href=&quot;https://id.wikihow.com/Belajar-Berbahasa-Spanyol#_note-dummies-5&quot;&gt;[5]&lt;/a&gt;&lt;/sup&gt;&lt;/li&gt;&lt;li style=&quot;margin: 0px; padding: 0px; font-family: Helvetica, arial, sans-serif; -webkit-font-smoothing: antialiased; font-size: 16px; line-height: 25px; color: #545454; list-style: disc; background-color: #ffffff; border-radius: 4px; clear: both; position: relative; border: none;&quot;&gt;Selamat tinggal =&amp;nbsp;&lt;em style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;strong style=&quot;margin: 0px; padding: 0px;&quot;&gt;&amp;iexcl;Adi&amp;oacute;s!&lt;/strong&gt;&lt;/em&gt;&amp;nbsp;-- pronounced &quot;ah-dyohs&quot;&lt;sup id=&quot;_ref-dummies_5-4&quot; class=&quot;reference&quot; style=&quot;margin: 0px; padding: 0px; line-height: normal;&quot;&gt;&lt;a style=&quot;margin: 0px; padding: 0px; color: #337733; text-decoration: none; word-wrap: break-word;&quot; href=&quot;https://id.wikihow.com/Belajar-Berbahasa-Spanyol#_note-dummies-5&quot;&gt;[5]&lt;/a&gt;&lt;/sup&gt;&lt;/li&gt;&lt;/ul&gt;&lt;/div&gt;&lt;div class=&quot;clearall&quot; style=&quot;margin: 0px; padding: 0px; clear: both;&quot;&gt;&amp;nbsp;&lt;/div&gt;&lt;div class=&quot;wh_ad_inner step_ad&quot; style=&quot;margin: 3px 0px -15px -20px; padding: 0px; position: relative; line-height: 0;&quot; data-service=&quot;dfp&quot; data-adtargetid=&quot;methodad&quot; data-loaded=&quot;0&quot; data-lateload=&quot;0&quot; data-adsensewidth=&quot;728&quot; data-adsenseheight=&quot;90&quot; data-channels=&quot;&quot; data-viewablerefresh=&quot;1&quot; data-apsload=&quot;1&quot;&gt;&lt;div id=&quot;methodad&quot; style=&quot;margin: 0px; padding: 0px;&quot; data-google-query-id=&quot;CPy03bqJhtwCFRYNaAodlIADyQ&quot;&gt;&lt;div id=&quot;google_ads_iframe_/10095428/AllPages_Method_1_Intl_Desktop_All_0__container__&quot; style=&quot;margin: 0px; padding: 0px; border: 0pt none; display: inline-block; width: 728px; height: 90px;&quot;&gt;&lt;iframe id=&quot;google_ads_iframe_/10095428/AllPages_Method_1_Intl_Desktop_All_0&quot; style=&quot;margin: 0px; padding: 0px; border: 0px; vertical-align: bottom;&quot; title=&quot;3rd party ad content&quot; src=&quot;https://tpc.googlesyndication.com/safeframe/1-0-29/html/container.html&quot; name=&quot;&quot; width=&quot;728&quot; height=&quot;90&quot; frameborder=&quot;0&quot; marginwidth=&quot;0&quot; marginheight=&quot;0&quot; scrolling=&quot;no&quot; sandbox=&quot;allow-forms allow-pointer-lock allow-popups allow-popups-to-escape-sandbox allow-same-origin allow-scripts allow-top-navigation-by-user-activation&quot; data-is-safeframe=&quot;true&quot; data-mce-fragment=&quot;1&quot;&gt;&lt;/iframe&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;div class=&quot;clearall adclear&quot; style=&quot;margin: 0px; padding: 0px; clear: both;&quot;&gt;&amp;nbsp;&lt;/div&gt;&lt;/li&gt;&lt;/ol&gt;&lt;div class=&quot;clearall&quot; style=&quot;margin: 0px; padding: 0px; clear: both;&quot;&gt;&amp;nbsp;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;p&gt;&lt;a class=&quot;anchor&quot; style=&quot;margin: 0px; padding: 0px; color: #337733; text-decoration: none; display: block; position: relative; top: -39px; visibility: hidden; font-family: Helvetica, arial, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ecebe8;&quot; name=&quot;Mempelajari_Tata_Bahasa_Dasar_sub&quot;&gt;&lt;/a&gt;&lt;/p&gt;&lt;div class=&quot;section steps   sticky &quot; style=&quot;margin: 0px 0px 25px; padding: 60px 0px 0px; border-radius: 4px; position: relative; line-height: 25px; color: #545454; font-family: Helvetica, arial, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ecebe8; text-decoration-style: initial; text-decoration-color: initial;&quot;&gt;&lt;div class=&quot;altblock&quot; style=&quot;margin: 0px 15px 0px 0px; padding: 10px 0px 0px; height: 50px; width: 60px; background-color: #93b874; float: left; font-size: 12px; line-height: 19px; text-align: center; color: #ffffff; border-radius: 4px 0px 0px;&quot;&gt;&lt;label class=&quot;method_label&quot; style=&quot;margin: -1px 0px 0px; padding: 0px; line-height: 12px; display: inline-block;&quot;&gt;Metode&lt;/label&gt;&lt;span style=&quot;margin: 0px; padding: 0px; display: block; font-size: 21px;&quot;&gt;2&lt;/span&gt;&lt;/div&gt;&lt;h3 class=&quot;&quot; style=&quot;margin: 0px; padding: 0px; font-family: Helvetica, arial, sans-serif; -webkit-font-smoothing: antialiased; font-size: 20px; font-weight: bold; color: #222222; line-height: 29px; width: 728px; background: #f6f5f4; position: absolute; z-index: 3; left: 0px; top: 0px; border-radius: 4px 4px 0px 0px; border-bottom: none;&quot;&gt;&lt;span id=&quot;Mempelajari_Tata_Bahasa_Dasar&quot; class=&quot;mw-headline&quot; style=&quot;margin: 0px; padding: 16px 0px 15px 50px; display: block;&quot;&gt;Mempelajari Tata Bahasa Dasar&lt;/span&gt;&lt;/h3&gt;&lt;div id=&quot;langkah_2&quot; class=&quot;section_text&quot; style=&quot;margin: 0px; padding: 0px; background-color: inherit; border-radius: 0px 0px 4px 4px; border: none;&quot;&gt;&lt;ol class=&quot;steps_list_2&quot; style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;li class=&quot;hasimage&quot; style=&quot;margin: 0px 0px 30px; padding: 20px 20px 15px; font-family: Helvetica, arial, sans-serif; -webkit-font-smoothing: antialiased; font-size: 16px; line-height: 25px; color: #545454; list-style: none; background-color: #ffffff; border-radius: 0px 0px 4px 4px; clear: both; position: relative;&quot;&gt;&lt;div class=&quot;mwimg  largeimage  floatcenter &quot; style=&quot;margin: -21px -20px 20px; padding: 0px; line-height: 0px; position: relative; overflow: hidden; border-radius: 0px; max-width: 728px;&quot;&gt;&lt;div class=&quot;content-spacer&quot; style=&quot;margin: 0px; padding: 546px 0px 0px; position: relative;&quot;&gt;&lt;img id=&quot;img_006380dd5d&quot; class=&quot;whcdn content-fill&quot; style=&quot;margin: 0px; padding: 0px; border: none; -webkit-user-drag: none; position: absolute; top: 0px; left: 0px; bottom: 0px; right: 0px; width: 728px; min-width: 100%; height: auto; min-height: 100%;&quot; src=&quot;https://www.wikihow.com/images_en/thumb/f/ff/Learn-to-Speak-Spanish-Step-6-Version-2.jpg/v4-728px-Learn-to-Speak-Spanish-Step-6-Version-2.jpg.webp&quot; alt=&quot;Gambar berjudul Learn to Speak Spanish Step 6&quot; width=&quot;728&quot; height=&quot;546&quot; data-src=&quot;https://www.wikihow.com/images_en/thumb/f/ff/Learn-to-Speak-Spanish-Step-6-Version-2.jpg/v4-728px-Learn-to-Speak-Spanish-Step-6-Version-2.jpg&quot; /&gt;&lt;/div&gt;&lt;/div&gt;&lt;div class=&quot;step_num&quot; style=&quot;margin: 0px; padding: 8px 15px 3px 0px; font-size: 43px; color: #545454; float: left; font-weight: bold;&quot;&gt;1&lt;/div&gt;&lt;a class=&quot;stepanchor&quot; style=&quot;margin: 0px; padding: 0px; color: #337733; text-decoration: none; display: block; position: relative; top: -170px; visibility: hidden; word-wrap: break-word;&quot; name=&quot;step_2_1&quot;&gt;&lt;/a&gt;&lt;div class=&quot;step&quot; style=&quot;margin: 0px 40px 0px 0px; padding: 0px;&quot;&gt;&lt;strong class=&quot;whb&quot; style=&quot;margin: 0px; padding: 0px;&quot;&gt;Pelajari cara mengonjugasikan kata kerja beraturan.&lt;/strong&gt;&amp;nbsp;Mempelajari bagaimana mengkonjugasikan kata kerja adalah bagian utama dari mempelajari bagaimana cara berbahasa Spanyol yang benar. Konjugasi berarti mengambil bentuk infinitif dari sebuah kata kerja (bicara, makan) dan mengubah bentuknya untuk mengindikasikan&amp;nbsp;&lt;strong style=&quot;margin: 0px; padding: 0px;&quot;&gt;siapa&lt;/strong&gt;&amp;nbsp;yang melakukan sebuah pekerjaan dan&amp;nbsp;&lt;strong style=&quot;margin: 0px; padding: 0px;&quot;&gt;kapan&lt;/strong&gt;&amp;nbsp;pekerjaan tersebut dilakukan. Saat mempelajari bagaimana mengkonjugasikan kata kerja dalam bahasa Spanyol, awal yang baik untuk memulainya adalah dengan kata kerja beraturan dalam bentuk sekarang. Kata kerja dalam bahasa Spanyol semua berakhiran dengan &quot;&lt;strong style=&quot;margin: 0px; padding: 0px;&quot;&gt;-ar&lt;/strong&gt;&quot;, &quot;&lt;strong style=&quot;margin: 0px; padding: 0px;&quot;&gt;-er&lt;/strong&gt;&quot; atau &quot;&lt;strong style=&quot;margin: 0px; padding: 0px;&quot;&gt;-ir&lt;/strong&gt;&quot; dan bagaimana setiap kata kerja dikonjugasikan akan tergantung pada akhirannya.&lt;sup id=&quot;_ref-8&quot; class=&quot;reference&quot; style=&quot;margin: 0px; padding: 0px; line-height: normal;&quot;&gt;&lt;a style=&quot;margin: 0px; padding: 0px; color: #337733; text-decoration: none; word-wrap: break-word;&quot; href=&quot;https://id.wikihow.com/Belajar-Berbahasa-Spanyol#_note-8&quot;&gt;[8]&lt;/a&gt;&lt;/sup&gt;&amp;nbsp;Penjelasan tentang bagaimana setiap tipe kata kerja beraturan dikonjugasikan dalam bentuk sekarang adalah sebagai berikut:&lt;ul style=&quot;margin: 0px; padding: 5px 5px 20px 55px; background-color: #ffffff;&quot;&gt;&lt;li style=&quot;margin: 0px; padding: 0px; font-family: Helvetica, arial, sans-serif; -webkit-font-smoothing: antialiased; font-size: 16px; line-height: 25px; color: #545454; list-style: disc; background-color: #ffffff; border-radius: 4px; clear: both; position: relative; border: none;&quot;&gt;&lt;strong style=&quot;margin: 0px; padding: 0px;&quot;&gt;Kata kerja berakhiran dengan &quot;-ar&quot;&lt;/strong&gt;. Hablar adalah bentuk infinitif kata kerja bahasa Spanyol dari &quot;bicara&quot;. Untuk mengubah kata kerja ini ke dalam bentuk sekarang, hal yang perlu kamu lakukan adalah menghilangkan &quot;&lt;strong style=&quot;margin: 0px; padding: 0px;&quot;&gt;-ar&lt;/strong&gt;&quot; dan menambahkan akhiran yang berbeda, yang beragam tergantung pada kata ganti subjeknya.&lt;sup id=&quot;_ref-regverb_9-0&quot; class=&quot;reference&quot; style=&quot;margin: 0px; padding: 0px; line-height: normal;&quot;&gt;&lt;a style=&quot;margin: 0px; padding: 0px; color: #337733; text-decoration: none; word-wrap: break-word;&quot; href=&quot;https://id.wikihow.com/Belajar-Berbahasa-Spanyol#_note-regverb-9&quot;&gt;[9]&lt;/a&gt;&lt;/sup&gt;&amp;nbsp;Sebagai contoh:&lt;ul style=&quot;margin: 0px; padding: 5px 5px 20px 55px; background-color: #ffffff;&quot;&gt;&lt;li style=&quot;margin: 0px; padding: 0px; font-family: Helvetica, arial, sans-serif; -webkit-font-smoothing: antialiased; font-size: 16px; line-height: 25px; color: #545454; list-style: disc; background-color: #ffffff; border-radius: 4px; clear: both; position: relative; border: none;&quot;&gt;&quot;Saya berbicara&quot; menjadi&amp;nbsp;&lt;strong style=&quot;margin: 0px; padding: 0px;&quot;&gt;yo hablo&lt;/strong&gt;&lt;/li&gt;&lt;li style=&quot;margin: 0px; padding: 0px; font-family: Helvetica, arial, sans-serif; -webkit-font-smoothing: antialiased; font-size: 16px; line-height: 25px; color: #545454; list-style: disc; background-color: #ffffff; border-radius: 4px; clear: both; position: relative; border: none;&quot;&gt;&quot;Kamu berbicara (informal)&quot; menjadi&amp;nbsp;&lt;strong style=&quot;margin: 0px; padding: 0px;&quot;&gt;t&amp;uacute; hablas&lt;/strong&gt;&lt;/li&gt;&lt;li style=&quot;margin: 0px; padding: 0px; font-family: Helvetica, arial, sans-serif; -webkit-font-smoothing: antialiased; font-size: 16px; line-height: 25px; color: #545454; list-style: disc; background-color: #ffffff; border-radius: 4px; clear: both; position: relative; border: none;&quot;&gt;&quot;Anda berbicara (formal)&quot; menjadi&amp;nbsp;&lt;strong style=&quot;margin: 0px; padding: 0px;&quot;&gt;usted habla&lt;/strong&gt;&lt;/li&gt;&lt;li style=&quot;margin: 0px; padding: 0px; font-family: Helvetica, arial, sans-serif; -webkit-font-smoothing: antialiased; font-size: 16px; line-height: 25px; color: #545454; list-style: disc; background-color: #ffffff; border-radius: 4px; clear: both; position: relative; border: none;&quot;&gt;&quot;Dia (laki/perempuan) berbicara&quot; menjadi&amp;nbsp;&lt;strong style=&quot;margin: 0px; padding: 0px;&quot;&gt;&amp;eacute;l/ella habla&lt;/strong&gt;&lt;/li&gt;&lt;li style=&quot;margin: 0px; padding: 0px; font-family: Helvetica, arial, sans-serif; -webkit-font-smoothing: antialiased; font-size: 16px; line-height: 25px; color: #545454; list-style: disc; background-color: #ffffff; border-radius: 4px; clear: both; position: relative; border: none;&quot;&gt;&quot;Kami berbicara&quot; menjadi&amp;nbsp;&lt;strong style=&quot;margin: 0px; padding: 0px;&quot;&gt;nosotros/as hablamos&lt;/strong&gt;&lt;/li&gt;&lt;li style=&quot;margin: 0px; padding: 0px; font-family: Helvetica, arial, sans-serif; -webkit-font-smoothing: antialiased; font-size: 16px; line-height: 25px; color: #545454; list-style: disc; background-color: #ffffff; border-radius: 4px; clear: both; position: relative; border: none;&quot;&gt;&quot;Kalian berbicara (informal)&quot; menjadi&amp;nbsp;&lt;strong style=&quot;margin: 0px; padding: 0px;&quot;&gt;vosotros/as habl&amp;aacute;is&lt;/strong&gt;&lt;/li&gt;&lt;li style=&quot;margin: 0px; padding: 0px; font-family: Helvetica, arial, sans-serif; -webkit-font-smoothing: antialiased; font-size: 16px; line-height: 25px; color: #545454; list-style: disc; background-color: #ffffff; border-radius: 4px; clear: both; position: relative; border: none;&quot;&gt;&quot;Anda semua berbicara (formal)&quot; menjadi&amp;nbsp;&lt;strong style=&quot;margin: 0px; padding: 0px;&quot;&gt;ustedes hablan&lt;/strong&gt;&lt;/li&gt;&lt;li style=&quot;margin: 0px; padding: 0px; font-family: Helvetica, arial, sans-serif; -webkit-font-smoothing: antialiased; font-size: 16px; line-height: 25px; color: #545454; list-style: disc; background-color: #ffffff; border-radius: 4px; clear: both; position: relative; border: none;&quot;&gt;&quot;Mereka berbicara&quot; menjadi&amp;nbsp;&lt;strong style=&quot;margin: 0px; padding: 0px;&quot;&gt;ellos/ellas hablan&lt;/strong&gt;&lt;/li&gt;&lt;li style=&quot;margin: 0px; padding: 0px; font-family: Helvetica, arial, sans-serif; -webkit-font-smoothing: antialiased; font-size: 16px; line-height: 25px; color: #545454; list-style: disc; background-color: #ffffff; border-radius: 4px; clear: both; position: relative; border: none;&quot;&gt;Seperti yang dapat kamu lihat, enam akhiran berbeda yang digunakan adalah&amp;nbsp;&lt;strong style=&quot;margin: 0px; padding: 0px;&quot;&gt;-o&lt;/strong&gt;,&amp;nbsp;&lt;strong style=&quot;margin: 0px; padding: 0px;&quot;&gt;-as&lt;/strong&gt;,&amp;nbsp;&lt;strong style=&quot;margin: 0px; padding: 0px;&quot;&gt;-a&lt;/strong&gt;,&amp;nbsp;&lt;strong style=&quot;margin: 0px; padding: 0px;&quot;&gt;-amos&lt;/strong&gt;,&amp;nbsp;&lt;strong style=&quot;margin: 0px; padding: 0px;&quot;&gt;-&amp;aacute;is&lt;/strong&gt;&amp;nbsp;and&amp;nbsp;&lt;strong style=&quot;margin: 0px; padding: 0px;&quot;&gt;-an&lt;/strong&gt;. Akhiran-akhiran ini akan sama untuk setiap kata kerja beraturan yang berakhiran dengan &quot;-ar&quot;, seperti bailar (menari), buscar (cari), comprar (beli) dan trabaj","Berikut tips dan ketentuan untuk mempelajari bahasa spanish atau spanyol","1530729231","5","upload/photos/2018/07/KFx16qibetbQXEu7ldSo_04_bbe7e2a8eb3e08f23b9fc606bd57a5a3_image.jpg","7","0","Tips,Bahasa,spanish,Bahasa spanyol"),
("3","2","Cara Membuat BackDoor Dengan Weevely","&lt;center&gt;&lt;ins class=&quot;adsbygoogle&quot; data-ad-client=&quot;ca-pub-8869884053377407&quot; data-ad-slot=&quot;1170774737&quot; data-adsbygoogle-status=&quot;done&quot;&gt;&lt;ins id=&quot;aswift_0_expand&quot;&gt;&lt;ins id=&quot;aswift_0_anchor&quot;&gt;&lt;/ins&gt;&lt;/ins&gt;&lt;/ins&gt;&lt;span id=&quot;TranslateSpan&quot;&gt;&lt;br /&gt;&lt;/span&gt;&lt;/center&gt;&lt;div id=&quot;MicrosoftTranslatorWidget&quot; class=&quot;Light&quot; translate=&quot;no&quot;&gt;&lt;div id=&quot;WidgetLauncher&quot;&gt;&lt;div id=&quot;LauncherLogo&quot; class=&quot;WithPhraseAfter&quot;&gt;&lt;a id=&quot;LauncherLogoLink&quot; title=&quot;//www.bing.com/translator&quot; href=&quot;https://www.bing.com/translator&quot; target=&quot;_blank&quot; rel=&quot;noopener noreferrer&quot;&gt;&lt;img id=&quot;LauncherLogoImage&quot; src=&quot;https://ssl.microsofttranslator.com/static/25572383/img/binglogo_light.png&quot; /&gt;&lt;/a&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;div id=&quot;main&quot; class=&quot;main section&quot;&gt;&lt;div id=&quot;Blog1&quot; class=&quot;widget Blog&quot; data-version=&quot;1&quot;&gt;&lt;div class=&quot;blog-posts hfeed&quot;&gt;&lt;div class=&quot;post-outer&quot;&gt;&lt;article class=&quot;post ty-article&quot;&gt;&lt;div class=&quot;post-header&quot;&gt;&lt;h1 class=&quot;post-title entry-title&quot;&gt;cara memasukan Backdoor ke dalam Website PHP file dengan Weevely biar tidak terdeteksi&lt;/h1&gt;&lt;/div&gt;&lt;div class=&quot;ty-inner&quot;&gt;&lt;div id=&quot;post-body-8356618156468227092&quot; class=&quot;post-body entry-content&quot;&gt;&lt;center&gt;&lt;ins class=&quot;adsbygoogle&quot; data-ad-client=&quot;ca-pub-8869884053377407&quot; data-ad-slot=&quot;1170774737&quot; data-adsbygoogle-status=&quot;done&quot;&gt;&lt;ins id=&quot;aswift_1_expand&quot;&gt;&lt;ins id=&quot;aswift_1_anchor&quot;&gt;&lt;/ins&gt;&lt;/ins&gt;&lt;/ins&gt;&lt;/center&gt;&lt;div id=&quot;post18356618156468227092&quot;&gt;&lt;div dir=&quot;ltr&quot;&gt;&lt;br /&gt;&lt;br /&gt;&lt;div class=&quot;separator&quot;&gt;&amp;nbsp;&lt;/div&gt;&lt;br /&gt;&lt;br /&gt;&lt;br /&gt;&lt;strong&gt;kali ini saya akan membagikan trik dari teman saya.&lt;/strong&gt;&lt;br /&gt;&lt;strong&gt;saya kami mengunakan ini untuk mengakses website dan mengontrol web yang telah kami susupi ..&lt;/strong&gt;&lt;br /&gt;&lt;br /&gt;&lt;strong&gt;mari perhatikan ..&amp;nbsp;&lt;/strong&gt;&lt;br /&gt;&lt;br /&gt;&lt;strong&gt;Backdoors adalah cara nyaman untuk meninggalkan setelah Anda sudah menemukan cara ke server, dan mereka dapat berguna untuk berbagai alasan. Mereka baik untuk pengembang cara cepat mengetahui mesin mereka sedang bekerja, atau untuk sistem administrator yang menginginkan akses yang sama. Tentu saja, backdoors juga sahabat hacker, dan dapat ditambahkan dalam berbagai cara. Salah satu alat yang baik untuk melakukan hal ini adalah Weevely, yang menggunakan potongan kode PHP.&lt;br /&gt;&lt;br /&gt;Weevely akan membuat terminal pada server target dan memungkinkan untuk tindakan kode remote melalui jejak agen PHP kecil. Ini mencakup lebih dari 30 modul untuk kebutuhan administrasi, serta eskalasi hak istimewa dan bahkan jaringan pergerakan lateral.ini cara terbaik untuk seorang defacer biar bisa selalu memantau web yang telah terdeface.&lt;br /&gt;&lt;br /&gt;Dalam panduan ini, kami akan mengambil untuk spin di localhost kita atau ke web sendiri untuk percobaan. Anda dapat mengikuti , atau Anda bisa langsung berjalan pada server lain di mana Anda dapat melakukan lebih banyak lagi.&lt;br /&gt;&lt;br /&gt;&lt;br /&gt;&lt;/strong&gt;&lt;br /&gt;&lt;ul&gt;&lt;li&gt;&lt;strong&gt;download Weevely&lt;/strong&gt;&lt;/li&gt;&lt;/ul&gt;&lt;strong&gt;&lt;br /&gt;Weevely dapat ditemukan dibangun ke beberapa distribusi Linux, seperti Kali. Jika tidak terinstal di sistem Linux Anda, Anda dapat menemukan versi 3 pada halaman GitHub Epinna ini. Untuk mendapatkannya diinstal pada distro Linux standar, ada berbagai cara Anda dapat memperolehnya, termasuk Git, HTTP, dan wget.&lt;br /&gt;&lt;/strong&gt;&lt;br /&gt;&lt;ul&gt;&lt;li&gt;&lt;strong&gt;Men-download file Git:&lt;/strong&gt;&lt;/li&gt;&lt;/ul&gt;&lt;strong&gt;&lt;br /&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;a href=&quot;https://auto-safelinku.blogspot.com/p/safelink-me.html?url=aHR0cHM6Ly9naXRodWIuY29tL2VwaW5uYS93ZWV2ZWx5My5naXQ=&quot; target=&quot;_blank&quot; rel=&quot;nofollow noopener noreferrer&quot;&gt;https://github.com/epinna/weevely3.git&lt;/a&gt;&lt;br /&gt;&lt;/strong&gt;&lt;br /&gt;&lt;ul&gt;&lt;li&gt;&lt;strong&gt;Download melalui HTTP sekarang di browser Anda:&lt;/strong&gt;&lt;/li&gt;&lt;/ul&gt;&lt;strong&gt;&lt;br /&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;a href=&quot;https://auto-safelinku.blogspot.com/p/safelink-me.html?url=aHR0cHM6Ly9naXRodWIuY29tL2VwaW5uYS93ZWV2ZWx5My9hcmNoaXZlL21hc3Rlci56aXA=&quot; target=&quot;_blank&quot; rel=&quot;nofollow noopener noreferrer&quot;&gt;https://github.com/epinna/weevely3/archive/master.zip&lt;/a&gt;&lt;br /&gt;&lt;/strong&gt;&lt;br /&gt;&lt;ul&gt;&lt;li&gt;&lt;strong&gt;Download melalui wget (di terminal Anda):&lt;/strong&gt;&lt;/li&gt;&lt;/ul&gt;&lt;strong&gt;&lt;br /&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;wget&amp;nbsp;&lt;a href=&quot;https://auto-safelinku.blogspot.com/p/safelink-me.html?url=aHR0cHM6Ly9naXRodWIuY29tL2VwaW5uYS93ZWV2ZWx5My9hcmNoaXZlL21hc3Rlci56aXA=&quot; target=&quot;_blank&quot; rel=&quot;nofollow noopener noreferrer&quot;&gt;https://github.com/epinna/weevely3/archive/master.zip&lt;/a&gt;&lt;br /&gt;&lt;br /&gt;&lt;/strong&gt;&lt;br /&gt;&lt;ul&gt;&lt;li&gt;&lt;strong&gt;Buat PHP file&lt;/strong&gt;&lt;/li&gt;&lt;/ul&gt;&lt;strong&gt;&lt;br /&gt;apabila anda sudah mendownload, pastikan Anda memiliki terminal atau shell jendela yang terbuka di direktori yang berisi file master.zip. Dengan asumsi ke folder Downloads Anda, mari kita pergi ke sana, unzip file tersebut, berubah menjadi bahwa lokasi folder unzip, dan melakukan daftar cepat untuk memeriksa file.&lt;br /&gt;&lt;br /&gt;&lt;br /&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;cd Downloads&lt;br /&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; unzip master.zip&lt;br /&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; cd weevely3-master/&lt;br /&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; ls&lt;br /&gt;&lt;br /&gt;&lt;br /&gt;Anda harus menjalankan weevely.py set-up berkas sendiri untuk mendapatkan hal apa yang terjadi di sini, karena script membutuhkan sintaks khusus, dan Anda dapat belajar tentang hal itu di sini.&lt;br /&gt;&lt;br /&gt;&lt;br /&gt;./weevely.py&lt;/strong&gt;&lt;br /&gt;&lt;br /&gt;&lt;div class=&quot;separator&quot;&gt;&lt;a href=&quot;https://3.bp.blogspot.com/-NNR94B4rNN8/WMfjd-d9plI/AAAAAAAAA8E/Q3N8wNNhNMITW5brje2vm_U6bRD052NqACEw/s1600/1.jpg&quot;&gt;&lt;img src=&quot;https://3.bp.blogspot.com/-NNR94B4rNN8/WMfjd-d9plI/AAAAAAAAA8E/Q3N8wNNhNMITW5brje2vm_U6bRD052NqACEw/s400/1.jpg&quot; width=&quot;400&quot; height=&quot;192&quot; border=&quot;0&quot; /&gt;&lt;/a&gt;&lt;/div&gt;&lt;br /&gt;&lt;strong&gt;&lt;br /&gt;&lt;br /&gt;&lt;br /&gt;Sebagai contoh, kita akan menggunakan &quot;Hasilkan agen backdoor&quot; pilihan. Mari kita membuat pazzWurD password kita, dan memanggil file PHP path backdoor.php. ini harus berakhir dengan sebuah file yang bernama backdoor.php dalam direktori yang sama di mana kita sedang bekerja.&lt;br /&gt;&lt;br /&gt;Harap dicatat bahwa backdoor.php bukan nama baik untuk file PHP Anda. Ini hanya sebuah contoh. Anda tidak ingin menarik terlalu banyak perhatian yang Anda lakukan, jadi pastikan untuk mengganti kedua &quot;mypassword&quot; dan &quot;myfilename.php&quot; di bawah ini dengan sesuatu yang kurang disadari.&lt;br /&gt;&lt;br /&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; ./weevely.py generate mypassword myfilename.php&lt;/strong&gt;&lt;br /&gt;&lt;br /&gt;&lt;br /&gt;&lt;div class=&quot;separator&quot;&gt;&lt;a href=&quot;https://2.bp.blogspot.com/-q9cf6AUiIqc/WMfjd6CanjI/AAAAAAAAA8A/ZI2QsZnmuU4yFtJoRE91YptB7uLrUy7RQCEw/s1600/2.jpg&quot;&gt;&lt;img src=&quot;https://2.bp.blogspot.com/-q9cf6AUiIqc/WMfjd6CanjI/AAAAAAAAA8A/ZI2QsZnmuU4yFtJoRE91YptB7uLrUy7RQCEw/s400/2.jpg&quot; width=&quot;400&quot; height=&quot;166&quot; border=&quot;0&quot; /&gt;&lt;/a&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/article&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;","Penggunaan BackDoor ini akan membuat anda tak terdeteksi","1534697566","16","upload/photos/2018/08/VXIyx9eh2TwGDE5OVk58_19_752863e6454b0e3765f4d27d08b65f42_image.jpg","8","0","BackDoor,BackDoor-Tutorial");

-- ---------------------------------------------------------
--
-- Table structure for table : `wo_blogcommentreplies`
--
-- ---------------------------------------------------------

CREATE TABLE `wo_blogcommentreplies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `comm_id` int(11) NOT NULL DEFAULT '0',
  `blog_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `text` text,
  `likes` int(11) NOT NULL DEFAULT '0',
  `posted` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `comm_id` (`comm_id`),
  KEY `blog_id` (`blog_id`),
  KEY `order1` (`comm_id`,`id`),
  KEY `order2` (`blog_id`,`id`),
  KEY `order3` (`user_id`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ---------------------------------------------------------
--
-- Table structure for table : `wo_blogcomments`
--
-- ---------------------------------------------------------

CREATE TABLE `wo_blogcomments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `blog_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `text` text,
  `likes` int(11) NOT NULL DEFAULT '0',
  `posted` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `blog_id` (`blog_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ---------------------------------------------------------
--
-- Table structure for table : `wo_blogmoviedislikes`
--
-- ---------------------------------------------------------

CREATE TABLE `wo_blogmoviedislikes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `blog_comm_id` int(20) NOT NULL DEFAULT '0',
  `blog_commreply_id` int(20) NOT NULL DEFAULT '0',
  `movie_comm_id` int(20) NOT NULL DEFAULT '0',
  `movie_commreply_id` int(20) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `blog_id` int(50) NOT NULL DEFAULT '0',
  `movie_id` int(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `blog_comm_id` (`blog_comm_id`),
  KEY `movie_comm_id` (`movie_comm_id`),
  KEY `user_id` (`user_id`),
  KEY `blog_commreply_id` (`blog_commreply_id`),
  KEY `movie_commreply_id` (`movie_commreply_id`),
  KEY `blog_id` (`blog_id`),
  KEY `movie_id` (`movie_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ---------------------------------------------------------
--
-- Table structure for table : `wo_blogmovielikes`
--
-- ---------------------------------------------------------

CREATE TABLE `wo_blogmovielikes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `blog_comm_id` int(20) NOT NULL DEFAULT '0',
  `blog_commreply_id` int(20) NOT NULL DEFAULT '0',
  `movie_comm_id` int(20) NOT NULL DEFAULT '0',
  `movie_commreply_id` int(20) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `blog_id` int(50) NOT NULL DEFAULT '0',
  `movie_id` int(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `blog_id` (`blog_comm_id`),
  KEY `movie_id` (`movie_comm_id`),
  KEY `user_id` (`user_id`),
  KEY `blog_commreply_id` (`blog_commreply_id`),
  KEY `movie_commreply_id` (`movie_commreply_id`),
  KEY `blog_id_2` (`blog_id`),
  KEY `movie_id_2` (`movie_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ---------------------------------------------------------
--
-- Table structure for table : `wo_codes`
--
-- ---------------------------------------------------------

CREATE TABLE `wo_codes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(50) NOT NULL DEFAULT '',
  `app_id` varchar(50) NOT NULL DEFAULT '',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `code` (`code`),
  KEY `user_id` (`user_id`),
  KEY `app_id` (`app_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ---------------------------------------------------------
--
-- Table structure for table : `wo_comment_replies`
--
-- ---------------------------------------------------------

CREATE TABLE `wo_comment_replies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `comment_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `page_id` int(11) NOT NULL DEFAULT '0',
  `text` text,
  `time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `comment_id` (`comment_id`),
  KEY `user_id` (`user_id`,`page_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ---------------------------------------------------------
--
-- Table structure for table : `wo_comment_replies_likes`
--
-- ---------------------------------------------------------

CREATE TABLE `wo_comment_replies_likes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reply_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `reply_id` (`reply_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ---------------------------------------------------------
--
-- Table structure for table : `wo_comment_replies_wonders`
--
-- ---------------------------------------------------------

CREATE TABLE `wo_comment_replies_wonders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reply_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `reply_id` (`reply_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ---------------------------------------------------------
--
-- Table structure for table : `wo_commentlikes`
--
-- ---------------------------------------------------------

CREATE TABLE `wo_commentlikes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `post_id` int(11) NOT NULL DEFAULT '0',
  `comment_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `comment_id` (`comment_id`),
  KEY `post_id` (`post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wo_commentlikes`
--

INSERT INTO wo_commentlikes VALUES
("1","12","1","2"),
("2","12","1","1");

-- ---------------------------------------------------------
--
-- Table structure for table : `wo_comments`
--
-- ---------------------------------------------------------

CREATE TABLE `wo_comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `page_id` int(11) NOT NULL DEFAULT '0',
  `post_id` int(11) NOT NULL DEFAULT '0',
  `text` text,
  `record` varchar(255) NOT NULL DEFAULT '',
  `c_file` varchar(255) NOT NULL DEFAULT '',
  `time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `post_id` (`post_id`),
  KEY `user_id` (`user_id`),
  KEY `page_id` (`page_id`),
  KEY `order1` (`user_id`,`id`),
  KEY `order2` (`page_id`,`id`),
  KEY `order3` (`post_id`,`id`),
  KEY `order4` (`user_id`,`id`),
  KEY `order5` (`post_id`,`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wo_comments`
--

INSERT INTO wo_comments VALUES
("1","2","0","12","Fotone kayak wong mendem","","","1530626652"),
("2","3","0","11","Keren tuh musik","","","1530636531");

-- ---------------------------------------------------------
--
-- Table structure for table : `wo_commentwonders`
--
-- ---------------------------------------------------------

CREATE TABLE `wo_commentwonders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `post_id` int(11) NOT NULL DEFAULT '0',
  `comment_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `post_id` (`post_id`),
  KEY `comment_id` (`comment_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ---------------------------------------------------------
--
-- Table structure for table : `wo_config`
--
-- ---------------------------------------------------------

CREATE TABLE `wo_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `value` varchar(1000) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=177 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wo_config`
--

INSERT INTO wo_config VALUES
("1","siteName","AT-Social"),
("2","siteTitle","AT-Social"),
("3","siteKeywords","social, wowonder, social site"),
("4","siteDesc","AT-Social is a Social Networking Platform. With our new feature, user can wonder posts, photos,"),
("5","siteEmail","atsocial@anjastechmedia.com"),
("6","defualtLang","indonesia"),
("7","emailValidation","0"),
("8","emailNotification","1"),
("9","fileSharing","1"),
("10","seoLink","1"),
("11","cacheSystem","0"),
("12","chatSystem","1"),
("13","useSeoFrindly","1"),
("14","reCaptcha","0"),
("15","reCaptchaKey","123456"),
("16","user_lastseen","1"),
("17","age","1"),
("18","deleteAccount","1"),
("19","connectivitySystem","1"),
("20","profileVisit","1"),
("21","maxUpload","512000000"),
("22","maxCharacters","10000"),
("23","message_seen","1"),
("24","message_typing","1"),
("25","google_map_api","AIzaSyBOfpaMO_tMMsuvS2T4zx4llbtsFqMuT9Y"),
("26","allowedExtenstion","jpg,png,jpeg,gif,mkv,docx,zip,rar,pdf,doc,mp3,mp4,flv,wav,txt,mov,avi,webm,wav,mpeg"),
("27","censored_words","Asu, Bangsat, Bajingan, Asu teles, Kontol, Celek, Bangsat bajingan,"),
("28","googleAnalytics",""),
("29","AllLogin","0"),
("30","googleLogin","0"),
("31","facebookLogin","0"),
("32","twitterLogin","0"),
("33","linkedinLogin","0"),
("34","VkontakteLogin","0"),
("35","facebookAppId",""),
("36","facebookAppKey",""),
("37","googleAppId",""),
("38","googleAppKey",""),
("39","twitterAppId",""),
("40","twitterAppKey",""),
("41","linkedinAppId",""),
("42","linkedinAppKey",""),
("43","VkontakteAppId",""),
("44","VkontakteAppKey",""),
("45","theme","wowonder"),
("46","second_post_button","dislike"),
("47","instagramAppId",""),
("48","instagramAppkey",""),
("49","instagramLogin","0"),
("50","header_background","#ae2fff"),
("51","header_hover_border","#333333"),
("52","header_color","#ffffff"),
("53","body_background","#f9f9f9"),
("54","btn_color","#ffffff"),
("55","btn_background_color","rgba(134,0,255,0.84)"),
("56","btn_hover_color","#ffffff"),
("57","btn_hover_background_color","#d300ff"),
("58","setting_header_color","#ffffff"),
("59","setting_header_background","#a84849"),
("60","setting_active_sidebar_color","#ffffff"),
("61","setting_active_sidebar_background","#a84849"),
("62","setting_sidebar_background","#ffffff"),
("63","setting_sidebar_color","#444444"),
("64","logo_extension","png"),
("65","online_sidebar","1"),
("66","background_extension","jpg"),
("67","profile_privacy","1"),
("68","video_upload","1"),
("69","audio_upload","1"),
("70","smtp_or_mail","mail"),
("71","smtp_username",""),
("72","smtp_host","smtp1.site.com"),
("73","smtp_password",""),
("74","smtp_port","587"),
("75","smtp_encryption","tls"),
("76","sms_or_email","mail"),
("77","sms_username",""),
("78","sms_password",""),
("79","sms_phone_number",""),
("80","is_ok","1"),
("81","pro","1"),
("82","paypal_id",""),
("83","paypal_secret",""),
("84","paypal_mode","sandbox"),
("85","weekly_price","13"),
("86","monthly_price","26"),
("87","yearly_price","48"),
("88","lifetime_price","123"),
("89","post_limit","20"),
("90","user_limit","10"),
("91","css_upload","1"),
("92","smooth_loading","1"),
("93","header_search_color","rgba(233,184,247,0.69)"),
("94","header_button_shadow","#4000ff"),
("95","currency","USD"),
("97","games","1"),
("98","last_backup","00-00-0000"),
("99","pages","1"),
("100","groups","1"),
("101","order_posts_by","1");

--
-- Dumping data for table `wo_config`
--

INSERT INTO wo_config VALUES
("102","btn_disabled","#ff0003"),
("103","developers_page","1"),
("104","user_registration","1"),
("105","maintenance_mode","0"),
("106","video_chat","1"),
("107","video_accountSid",""),
("108","video_apiKeySid","anjastechmedia"),
("109","video_apiKeySecret","admin123"),
("110","video_configurationProfileSid",""),
("111","eapi",""),
("112","favicon_extension","png"),
("113","monthly_boosts","4"),
("114","yearly_boosts","8"),
("115","lifetime_boosts","50"),
("116","chat_outgoing_background","#fff9f9"),
("117","windows_app_version","1.0"),
("118","widnows_app_api_id","f0461282f2cd52bf62bb8ad7730434a3"),
("119","widnows_app_api_key","c09016feefee6247f36056454211c16e"),
("120","stripe_id",""),
("121","stripe_secret",""),
("122","credit_card","no"),
("123","bitcoin","no"),
("124","m_withdrawal","0"),
("125","amount_ref","0.0"),
("126","affiliate_type","1"),
("127","affiliate_system","1"),
("128","classified","1"),
("129","amazone_s3","0"),
("130","bucket_name",""),
("131","amazone_s3_key",""),
("132","amazone_s3_s_key",""),
("133","region","us-east-1"),
("134","alipay","no"),
("135","is_utf8","1"),
("136","sms_t_phone_number",""),
("137","audio_chat","1"),
("138","sms_twilio_username",""),
("139","sms_twilio_password",""),
("140","sms_provider","twilio"),
("141","footer_background",""),
("142","footer_background_2",""),
("143","footer_text_color",""),
("144","classified_currency","USD"),
("145","classified_currency_s","$"),
("146","mime_types","text/plain,video/mp4,video/mov,video/mpeg,video/flv,video/avi,video/webm,audio/wav,audio/mpeg,video/quicktime,audio/mp3,image/png,image/jpeg,image/gif,application/pdf,application/msword,application/zip,application/x-rar-compressed,text/pdf,application/x-pointplus,text/css,mp4/video,.mp4/video"),
("147","footer_background_n",""),
("148","blogs","1"),
("149","can_blogs","1"),
("150","push","1"),
("151","push_id","12345678910"),
("152","push_key","123456789"),
("153","events","1"),
("154","forum","1"),
("155","last_update","1510657475"),
("156","movies","1"),
("157","yandex_translation_api","trnsl.1.1.20170601T212421Z.5834b565b8d47a18.2620528213fbf6ee3335f750659fc342e0ea7923"),
("158","update_db_15","1503149537"),
("159","ad_v_price","0.00"),
("160","ad_c_price","0.00"),
("161","emo_cdn","https://cdnjs.cloudflare.com/ajax/libs/emojione/2.1.4/assets/png/"),
("162","user_ads","1"),
("163","user_status","1"),
("164","date_style","d/m/y"),
("165","stickers","1"),
("166","giphy_api","420d477a542b4287b2bf91ac134ae041"),
("167","find_friends","1"),
("168","update_db_152","1504450479"),
("169","push_notifications","1"),
("170","push_messages","1"),
("171","update_db_153","updated"),
("172","ads_currency","USD"),
("173","web_push","1"),
("174","playtube_url","http://192.168.88.15/i-watch"),
("175","connectivitySystemLimit","5000"),
("176","video_ad_skip","10");

-- ---------------------------------------------------------
--
-- Table structure for table : `wo_custompages`
--
-- ---------------------------------------------------------

CREATE TABLE `wo_custompages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `page_title` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `page_content` text COLLATE utf8_unicode_ci,
  `page_type` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ---------------------------------------------------------
--
-- Table structure for table : `wo_egoing`
--
-- ---------------------------------------------------------

CREATE TABLE `wo_egoing` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `event_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `event_id` (`event_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ---------------------------------------------------------
--
-- Table structure for table : `wo_einterested`
--
-- ---------------------------------------------------------

CREATE TABLE `wo_einterested` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `event_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `event_id` (`event_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ---------------------------------------------------------
--
-- Table structure for table : `wo_einvited`
--
-- ---------------------------------------------------------

CREATE TABLE `wo_einvited` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `event_id` int(11) NOT NULL,
  `inviter_id` int(11) NOT NULL,
  `invited_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `event_id` (`event_id`),
  KEY `inviter_id` (`invited_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ---------------------------------------------------------
--
-- Table structure for table : `wo_emails`
--
-- ---------------------------------------------------------

CREATE TABLE `wo_emails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `email_to` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `subject` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `message` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ---------------------------------------------------------
--
-- Table structure for table : `wo_events`
--
-- ---------------------------------------------------------

CREATE TABLE `wo_events` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL DEFAULT '',
  `location` varchar(300) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `start_date` date NOT NULL,
  `start_time` time NOT NULL,
  `end_date` date NOT NULL,
  `end_time` time NOT NULL,
  `poster_id` int(11) NOT NULL,
  `cover` varchar(500) NOT NULL DEFAULT 'upload/photos/d-cover.jpg',
  PRIMARY KEY (`id`),
  KEY `poster_id` (`poster_id`),
  KEY `name` (`name`),
  KEY `start_date` (`start_date`),
  KEY `start_time` (`start_time`),
  KEY `end_time` (`end_time`),
  KEY `end_date` (`end_date`),
  KEY `order1` (`poster_id`,`id`),
  KEY `order2` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ---------------------------------------------------------
--
-- Table structure for table : `wo_family`
--
-- ---------------------------------------------------------

CREATE TABLE `wo_family` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `member_id` int(11) NOT NULL,
  `member` int(11) NOT NULL DEFAULT '0',
  `active` enum('0','1') NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `requesting` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `member_id` (`member_id`),
  KEY `active` (`active`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ---------------------------------------------------------
--
-- Table structure for table : `wo_followers`
--
-- ---------------------------------------------------------

CREATE TABLE `wo_followers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `following_id` int(11) NOT NULL DEFAULT '0',
  `follower_id` int(11) NOT NULL DEFAULT '0',
  `is_typing` int(11) NOT NULL DEFAULT '0',
  `active` int(255) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `following_id` (`following_id`),
  KEY `follower_id` (`follower_id`),
  KEY `active` (`active`),
  KEY `order1` (`following_id`,`id`),
  KEY `order2` (`follower_id`,`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wo_followers`
--

INSERT INTO wo_followers VALUES
("1","1","2","0","1"),
("2","2","1","0","1"),
("4","2","3","0","1"),
("5","3","2","0","1"),
("7","3","1","0","1"),
("8","4","2","0","1"),
("9","4","3","0","1"),
("10","1","3","0","1"),
("11","3","4","0","1"),
("12","2","4","0","1"),
("13","2","5","0","1"),
("14","5","2","0","1"),
("15","6","1","0","1"),
("16","1","6","0","1"),
("17","6","2","0","1"),
("18","2","6","0","1"),
("21","6","3","0","1"),
("22","5","3","0","0"),
("23","3","6","0","1");

-- ---------------------------------------------------------
--
-- Table structure for table : `wo_forum_sections`
--
-- ---------------------------------------------------------

CREATE TABLE `wo_forum_sections` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `section_name` varchar(200) NOT NULL DEFAULT '',
  `description` varchar(300) DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `section_name` (`section_name`),
  KEY `description` (`description`(255))
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wo_forum_sections`
--

INSERT INTO wo_forum_sections VALUES
("1","AT-Social Question Asked","Untuk mengadu permasalahan atau mengenai AT-Social"),
("2","Forum Gammer","This Forum only for the gammer, if there any answered or question but different with topics, so that&#039;s question and answered will delete."),
("3","AT-Social User Comunity","This forum for user AT-Social only without aother user please.");

-- ---------------------------------------------------------
--
-- Table structure for table : `wo_forum_threads`
--
-- ---------------------------------------------------------

CREATE TABLE `wo_forum_threads` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` int(11) NOT NULL DEFAULT '0',
  `views` int(11) NOT NULL DEFAULT '0',
  `headline` varchar(300) NOT NULL DEFAULT '',
  `post` text NOT NULL,
  `posted` varchar(20) NOT NULL DEFAULT '0',
  `last_post` int(11) NOT NULL DEFAULT '0',
  `forum` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `user` (`user`),
  KEY `views` (`views`),
  KEY `posted` (`posted`),
  KEY `headline` (`headline`(255)),
  KEY `forum` (`forum`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wo_forum_threads`
--

INSERT INTO wo_forum_threads VALUES
("1","1","16","Cara Mendapatkan lisensi Pengguna terverifikasi","[unordered_list] <br>[*]  Cara pertama, Anda bisa saja menghubungi pihak kami dari menu peraturan profil Anda, lalu anda akan ditanyakan seperti foto identitas asli anda, dan mengirim foto anda kepada pihak AT-Social.[/*] <br>[*] Dan cara yang ke dua anda juga bisa menghubungi pihak ke dua AT-Social untuk informasi lebih lanjut atas kebenaran anda dan informasi yang anda punya untuk di samakan[/*] <br>[/unordered_list]","1530670671","1530673010","1"),
("2","2","1","Bingung nih gak tau caranya","Cara menggunakan Custom Css di dashboard pengguna gimana ya? Tolong bantuanya....","1530714854","0","4"),
("3","2","11","Ada yang punya kumpulan Cheat GTA V Pc gak?","Perlu bantuanya gan tolong kalo ada yang punya atau hafal cheatnya balas quest ini ya thanks...","1530715351","1530715419","2");

-- ---------------------------------------------------------
--
-- Table structure for table : `wo_forums`
--
-- ---------------------------------------------------------

CREATE TABLE `wo_forums` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL DEFAULT '',
  `description` varchar(300) NOT NULL DEFAULT '',
  `sections` int(11) NOT NULL DEFAULT '0',
  `posts` int(11) NOT NULL DEFAULT '0',
  `last_post` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `description` (`description`(255)),
  KEY `posts` (`posts`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wo_forums`
--

INSERT INTO wo_forums VALUES
("1","AT-Social Question Asked","Forum untuk menanyakan masalah atau permasalaha yang mungkin belum anda ketahui","1","0","0"),
("2","Player Game","This room for player only","2","0","0"),
("3","Developer Game","This room only for Creator Game for make any question and answered","2","0","0"),
("4","The Room for AT-Social Comunity","Enter for make question and answered","3","0","0");

-- ---------------------------------------------------------
--
-- Table structure for table : `wo_forumthreadreplies`
--
-- ---------------------------------------------------------

CREATE TABLE `wo_forumthreadreplies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `thread_id` int(11) NOT NULL DEFAULT '0',
  `forum_id` int(11) NOT NULL DEFAULT '0',
  `poster_id` int(11) NOT NULL DEFAULT '0',
  `post_subject` varchar(300) NOT NULL DEFAULT '',
  `post_text` text NOT NULL,
  `post_quoted` int(11) NOT NULL DEFAULT '0',
  `posted_time` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `thread_id` (`thread_id`),
  KEY `forum_id` (`forum_id`),
  KEY `poster_id` (`poster_id`),
  KEY `post_subject` (`post_subject`(255)),
  KEY `post_quoted` (`post_quoted`),
  KEY `posted_time` (`posted_time`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wo_forumthreadreplies`
--

INSERT INTO wo_forumthreadreplies VALUES
("1","1","1","2","Cara Mendapatkan lisensi Pengguna terverifikasi","¿Apakah semudah itu mas admin?","0","1530673010"),
("2","3","2","1","Ane punya nih tapi bahasa jepang ngapak gak papa kan?","Cheat Codes[nl]While playing the game, press ~ to display the console window. Then, type one of the following codes and press [Enter] to activate the corresponding cheat function:[nl][nl]Result	Cheat Code[nl]Invincibility (5 minutes)	        [painkiller][nl]Maximum health and armor	[turtle][nl]Give weapons and extra ammo	[toolup][nl]Director mode	                        [jrtalent][nl]Lower wanted level	                [lawyerup][nl]Raise wanted level	                [fugitive][nl]Recharge ability instantly	        [powerup][nl]Super jump	                                [hoptoit][nl]Faster running	                        [catchme][nl]Faster swim	                                [gotgills][nl]Flaming bullets	                        [incendiary][nl]Explosive bullets	                        [highex][nl]Explosive melee attacks	        [hothands][nl]Slow-motion mode [Note 1]	[slowmo][nl]Slow-motion aiming [Note 1]	[deadeye][nl]Skyfall [Note 2]	                        [skyfall][nl]Drunk mode	                                [liquor][nl]Slippery cars	                                [snowday][nl]Low gravity	                                [floater][nl]Change weather	                        [makeitrain][nl]Spawn BMX bike	                        [bandit][nl]Spawn Buzzard attack helicopter [buzzoff][nl]Spawn Caddy (golf cart)	        [holein1][nl]Spawn Comet	[comet][nl]Spawn Duster (crop duster plane [flyspray][nl]Spawn Limo	                                [vinewood][nl]Spawn Parachute	                        [skydive][nl]Spawn PCJ-600	                        [rocket][nl]Spawn Rapid GT	                        [rapidgt][nl]Spawn Sanchez	                        [offroad][nl]Spawn Stunt Plane	                [barnstorm][nl]Spawn Trashmaster	                [trashed][nl]Note 1: Enter this code up to three times to increase its effect.[nl][nl]Note 2: You will be teleported into the sky for a skydiving freefall, but you cannot use a parachute while falling.[nl][nl]Cheat mode[nl]Enter one of the following codes to activate the corresponding cheat function. If you entered a code correctly, a small confirmation will appear above the map. Note: GTA 5 cheats for PC cannot be saved, and must be entered manually each time. They also cannot be used during missions. If you enable cheats and start a mission, the cheats will automatically be disabled. All direction commands must be entered using the digital pad. Cheats also disable achievements from being earned for the current game save. Thus, quick save your game before using cheat codes.","0","1530715419");

-- ---------------------------------------------------------
--
-- Table structure for table : `wo_games`
--
-- ---------------------------------------------------------

CREATE TABLE `wo_games` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `game_name` varchar(50) NOT NULL,
  `game_avatar` varchar(100) NOT NULL,
  `game_link` varchar(100) NOT NULL,
  `active` enum('0','1') NOT NULL DEFAULT '1',
  `time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wo_games`
--

INSERT INTO wo_games VALUES
("1","8 Ball Pool","","8-ball-pool-multiplayer","1","1535556880"),
("2","Hexagon","","hexagon","1","1535558924");

-- ---------------------------------------------------------
--
-- Table structure for table : `wo_games_players`
--
-- ---------------------------------------------------------

CREATE TABLE `wo_games_players` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `game_id` int(11) NOT NULL DEFAULT '0',
  `last_play` int(11) NOT NULL DEFAULT '0',
  `active` enum('0','1') NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`,`game_id`,`active`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wo_games_players`
--

INSERT INTO wo_games_players VALUES
("1","2","1","1535556907","1"),
("2","2","2","1535558955","1");

-- ---------------------------------------------------------
--
-- Table structure for table : `wo_group_members`
--
-- ---------------------------------------------------------

CREATE TABLE `wo_group_members` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `group_id` int(11) NOT NULL DEFAULT '0',
  `time` int(11) NOT NULL DEFAULT '0',
  `active` enum('0','1') NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`,`group_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wo_group_members`
--

INSERT INTO wo_group_members VALUES
("1","2","1","1530630357","1"),
("2","4","1","1530630951","1"),
("3","3","1","1530632568","1"),
("4","1","1","1530645328","1"),
("5","6","1","1530691217","1");

-- ---------------------------------------------------------
--
-- Table structure for table : `wo_groupadmins`
--
-- ---------------------------------------------------------

CREATE TABLE `wo_groupadmins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `group_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `group_id` (`group_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wo_groupadmins`
--

INSERT INTO wo_groupadmins VALUES
("1","1","1");

-- ---------------------------------------------------------
--
-- Table structure for table : `wo_groupchat`
--
-- ---------------------------------------------------------

CREATE TABLE `wo_groupchat` (
  `group_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_name` varchar(20) NOT NULL DEFAULT '',
  `avatar` varchar(3000) NOT NULL DEFAULT 'upload/photos/d-group.jpg',
  `time` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`group_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ---------------------------------------------------------
--
-- Table structure for table : `wo_groupchatusers`
--
-- ---------------------------------------------------------

CREATE TABLE `wo_groupchatusers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `active` enum('1','0') NOT NULL DEFAULT '1',
  `last_seen` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `group_id` (`group_id`),
  KEY `active` (`active`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ---------------------------------------------------------
--
-- Table structure for table : `wo_groups`
--
-- ---------------------------------------------------------

CREATE TABLE `wo_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `group_name` varchar(32) NOT NULL DEFAULT '',
  `group_title` varchar(40) NOT NULL DEFAULT '',
  `avatar` varchar(120) NOT NULL DEFAULT 'upload/photos/d-group.jpg ',
  `cover` varchar(120) NOT NULL DEFAULT 'upload/photos/d-cover.jpg  ',
  `about` varchar(550) NOT NULL DEFAULT '',
  `category` int(11) NOT NULL DEFAULT '1',
  `privacy` enum('1','2') NOT NULL DEFAULT '1',
  `join_privacy` enum('1','2') NOT NULL DEFAULT '1',
  `active` enum('0','1') NOT NULL DEFAULT '0',
  `registered` varchar(32) NOT NULL DEFAULT '0/0000',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `privacy` (`privacy`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wo_groups`
--

INSERT INTO wo_groups VALUES
("1","2","Onepunchmanfull","One punch Man","upload/photos/d-group.jpg ","upload/photos/d-cover.jpg  ","Grup untuk nonton animasi one punch man full episode 1-12 + misc","7","2","2","1","7/2018");

-- ---------------------------------------------------------
--
-- Table structure for table : `wo_hashtags`
--
-- ---------------------------------------------------------

CREATE TABLE `wo_hashtags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hash` varchar(255) NOT NULL DEFAULT '',
  `tag` varchar(255) NOT NULL DEFAULT '',
  `last_trend_time` int(11) NOT NULL DEFAULT '0',
  `trend_use_num` int(11) NOT NULL DEFAULT '0',
  `expire` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `last_trend_time` (`last_trend_time`),
  KEY `trend_use_num` (`trend_use_num`),
  KEY `tag` (`tag`),
  KEY `expire` (`expire`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wo_hashtags`
--

INSERT INTO wo_hashtags VALUES
("1","42401402f39f4c0b112ce895cbdbb4db","GTA","1530724916","1","2018-07-11"),
("2","49546cc4e4b57694caa44861899ca828","GTA5","1530724916","1","2018-07-11"),
("3","e3103374e7f9fd8e67627cf8a8bd5807","Rockstars","1530724917","1","2018-07-11"),
("4","e82df739dd8c84c8ae105b514f4c10df","Easter","1530724917","3","2018-07-11"),
("5","a0d4cc0f54602c3f247c72f15a7d2dbf","Tips","1530729232","1","2018-07-11"),
("6","53bdfc3983c5fbe80975a1f7b27659c9","Bahasa","1530729232","2","2018-07-11"),
("7","4757b7df2140d47d35c37e54a70ad41d","spanish","1530729232","1","2018-07-11"),
("8","7d336f64e65ba385dccb092139bb2ac3","BackDoor","1534697567","2","2018-08-26");

-- ---------------------------------------------------------
--
-- Table structure for table : `wo_hiddenposts`
--
-- ---------------------------------------------------------

CREATE TABLE `wo_hiddenposts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `post_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `post_id` (`post_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wo_hiddenposts`
--

INSERT INTO wo_hiddenposts VALUES
("1","34","1");

-- ---------------------------------------------------------
--
-- Table structure for table : `wo_langs`
--
-- ---------------------------------------------------------

CREATE TABLE `wo_langs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lang_key` varchar(160) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `english` text,
  `arabic` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `dutch` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `french` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `german` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `italian` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `portuguese` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `russian` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `spanish` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `turkish` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `indonesia` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `lang_key` (`lang_key`)
) ENGINE=InnoDB AUTO_INCREMENT=1138 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wo_langs`
--

INSERT INTO wo_langs VALUES
("1","login","Login","تسجيل الدخول","Inloggen","S&#039;identifier","Anmelden","Entra","Login","Вход","Acceder","Giriş","Masuk"),
("2","register","Register","التسجيل","Registereren","Enregistrez","Registrieren","Iscriviti","Registrar","Регистрация","Registrar","Kayıt","Daftar"),
("3","guest","Guest","زائر","Gast","Client","Gast","Ospite","Visitante","Гость","Huésped","Konuk","Anonymous"),
("4","username","Username","اسم المستخدم","Gebruikersnaam","le nom d&#039;utilisateur","Benutzername","Nome Utente","Nome de usu&amp;aacute;rio","Имя пользователя","Nombre de Usuario","Kullanıcı adı","Nama Akun"),
("5","email","E-mail","البريد الإلكتروني","E-mail","E-mail","Email","E-mail","E-mail","E-mail адрес","E-mail","E-posta","E-mail"),
("6","password","Password","كلمة المرور","Wachtwoord","Mot de passe","Passwort","Password","Senha","Пароль","Contraseña","Şifre","Password"),
("7","new_password","New password","كلمة المرورالجديدة","Nieuw wachtwoord","Nouveau mot de passe","Neues Passwort","Nuova password","Nova senha","Новый пароль","Nueva Contraseña","Yeni Şifre","Password Baru"),
("8","remember_me","Remember me","تذكرني","Onthoud mij","Souviens-toi de moi","Angemeldet bleiben","Resta collegato","Lembrar","Запомнить меня","Recordarme","Beni hatırla","Ingatlah saya"),
("9","or_login_with","Or login with","أو أدخل عن طريق","Of login met","Ou connectez-vous avec","oder Anmeldung mit","o entra con","Ou ent&amp;atilde;o fa&amp;ccedil;a login por","Или войдите через","O Acceder con:","Ya ile giriş","Atau Masuk dengan"),
("10","forget_password","Forgot Password?","هل نسيت كلمة المرور؟","Wachtwoord vergeten?","Mot de passe oublié?","Passwort Vergessen?","Password dimenticata?","Esqueceu sua senha?","Забыли пароль?","¿Olvidaste tu Contraseña?","Parolanızı unuttunuz mu?","Lupa kata sandi?"),
("11","email_address","E-mail address","البريد الإلكتروني","Email","E-mail address","Emailadresse","Indirizo email","E-mail","E-mail адрес","Direcci&amp;oacute; de E-mail","E-posta","Alamat Email"),
("12","confirm_password","Confirm Password","تأكيد كلمة المرور","Bevestig wachtwoord","Confirmez le mot de passe","Passwort bestätigen","Conferma Password","Confirmar senha","Подтвердите Пароль","Confirmar Contraseña","Şifreyi Onayla","Konfirmasi Password"),
("13","lets_go","Let&#039;s Go !","تسجيل","Ga verder!","Allons-y!","Los gehts!","Andiamo! !","Vamos l&amp;aacute;!","Войти!","¡Vamos!","Haydi gidelim !","Ayo mulai Jelajahi !"),
("14","recover_password","Recover","إعادة تعيين","Recover","Récupérer","Passwort wiederherstellen","Recuperare","Recuperar","Отправить","Recuperar","Kurtarmak","Penyembuhan"),
("15","reset_new_password_label","Reset Your Password","إعادة تعيين كلمة المرور","Reset Je Wachtwoord","Réinitialisez votre mot de passe","Passwort zurücksetzen","Resetta la tua password","Redefinir senha","Сбросить пароль","Reiniciar Contraseña","Şifrenizi sıfırlamak","Atur ulang Password anda"),
("16","reset_password","Reset","إعادة تعيين","Reset","Réinitialiser","Zurücksetzen","Resetta","Resetar","Сброс","Reiniciar","Reset","Atur ulang"),
("17","invalid_token","Invalid Token","رابط خاطأ","Verkeerde sleutel","Jeton Invalide","Ungültiges Zeichen","Gettone non valido","Token inv&amp;aacute;lido","Недопустимый маркер","Token Invalido","Geçersiz Jetonu","Token TIdak sah"),
("18","incorrect_username_or_password_label","Incorrect username or password","اسم المستخدم أو كلمة المرور غير صحيح","Gebruikersnaam of wachtwoord klopt niet","Identifiant ou mot de passe incorrect","Benutzername oder Passwort falsch","Nome utente o password errati","Nome de usu&amp;aacute;rio ou senha incorreto","Неверное имя пользователя или пароль","Usuario y/o Contraseña incorrectos","Yanlış kullanıcı adı ya da parola","Kesalahan nama akun atau password !!!"),
("19","account_disbaled_contanct_admin_label","Your account has been disabled, please contact us .","لقد تم إيقاف حسابك مؤقتاَ , يرجى الإتصال بنا .","Je account is inactief gesteld. Neem contact op met account@babster.nl.","Votre compte a été désactivé, s&#039;il vous plaît contactez-nous .","Dein Konto wurde deaktiviert. Bitte setze dich mit uns in Verbindung.","Il tuo account è stato disabilitato, non esitate a contattarci.","Sua conta foi desativada.","Ваш аккаунт был отключен, пожалуйста, свяжитесь с нами.","Tu cuenta ha sido des habilitada, por favor cont&amp;aacute;ctanos .","Hesabınız devre dışı bırakıldı, lütfen bize ulaşın.","Akun anda sedang di kunci sementara, di mohon hubungi kami."),
("20","account_not_active_label","You have to activate your account.","يجب عليك تفعيل الحساب","Je moet je account eerst activeren.","Vous devez activer votre compte.","Bitte aktiviere dein Konto.","Devi attivare il tuo account.","Voc&amp;ecirc; tem que ativar sua conta.","Вы должны активировать свою учетную запись.","Primero debes activar tu cuenta.","Hesabınızı etkinleştirmek gerekiyor.","Kamu dapat mengaktifkan akunmu."),
("21","successfully_logged_label","Successfully Logged in, Please wait..","تم تسجيل الدخول .. الرجاء الإنتظار","Succesvol ingelogt, een momentje..","Connecté avec succès, S&#039;il vous plaît attendre..","Erfolgreich angemeldet, bitte warten..","Collegato con successo, Siete pregati di attendere..","Login efetuado com sucesso. Por favor aguarde...","Успешный вход. Пожалуйста, подождите...","Acceso permitido, por favor espere..","Başarıyla Girildi, lütfen bekleyin ..","Berhasil login, Tunggu sebentar.."),
("22","please_check_details","Please check your details.","الرجاء مراجعة المعلومات التي أدخلتها","Controleer je details.","S&#039;il vous plaît vérifier vos coordonnées.","Bitte überprüfe deine Angaben.","Si prega di verificare i tuoi dati.","Por favor marque os detalhes","Пожалуйста, проверьте свои данные.","Por favor revisa tus detalles.","Bilgilerinizi kontrol edin.","Di mohon cek kembali info anda."),
("23","username_exists","Username is already exists.","اسم المستخدم موجود بالفعل","Gebruikersnaam bestaad al.","Nom d&#039;utilisateur est existe déjà.","Benutzername existiert bereits.","Il nome utente è già esistente.","Desculpe, este nome de usu&amp;aacute;rio j&amp;aacute; esta em uso.","Имя пользователя уже существует.","Nombre de usuario ya existe.","Kullanıcı adı zaten var olduğunu.","Nama akun sudah di gunakan oleh orang lain."),
("24","username_characters_length","Username must be between 5 / 32","اسم المستخدم يجب ان يكون بين 5 إلى 32 حرف","Gebruikersnaam moet tussen de 5 en 32 tekens lang zijn","Nom d&#039;utilisateur doit être comprise entre 5/32","Benutzername muss zwischen 5 und 32 Zeichen sein","Nome utente deve essere compresa tra 5 a 32 lettere","O nome de usu&amp;aacute;rio deve conter entre 5 / 32 caracteres.","Имя пользователя должно быть между 5/32 символами","Nombre de usuario debe ser de entre 5 / 32 caracteres","Kullanıcı adı 5/32 arasında olmalıdır","Nama akun harus berjumblah 5 / 32 karakter"),
("25","username_invalid_characters","Invalid username characters","صيغة اسم المستخدم خاطئة، الرجاء كتابة اسم المستخدم بالإنجليزية وبلا مسافة مثال enbrash","Ongeldige tekens in je gebruikersnaam","Caractères de nom d&#039;utilisateur non valides","Benutzername enthält unzulässige Zeichen","Caratteri Nome utente non valido","Caracteres inv&amp;aacute;lidos","Недопустимые символы в Имени пользователя","Caracteres Inv&amp;aacute;lidos","Geçersiz kullanıcı adı karakterleri","Karakter nama akun tidak di perbolehkan"),
("26","password_invalid_characters","Invalid password characters","صيغة كلمة المرور خاطئة","Ongeldige tekens in je wachtwoord","Caractères de mot de passe invalide","Passwort enthält unzulässige Zeichen","Caratteri della password non validi","Caracteres inv&amp;aacute;lidos","Недопустимые символы в пароле","Caracteres Inv&amp;aacute;lidos","Geçersiz şifre karakteri","Karakter password tidak di perbolehkan"),
("27","email_exists","This e-mail is already in use","البريد الإلكتروني مستخدم بالفعل","Dit email adres is al ingebruik.","Cet e-mail est déjà utilisée","Emailadresse wird bereits benutzt","Questa e-mail è già in uso","J&amp;aacute; existe uma conta registrar nesse e-mail.","E-mail адре уже используется","Este correo ya est&amp;aacute; en uso","E-posta kullanımda","Emailini sudah di gunakan oleh orang lain"),
("28","email_invalid_characters","This e-mail is invalid.","صيغة البريد الإلكتروني خاطئة","Dit is een ongeldige email.","Cet e-mail est invalide.","Ungültige Emailadresse.","Questa e-mail non è valido.","E-mail inv&amp;aacute;lido.","Недействительный адрес электронной почты.","Este correo es invalido.","E-posta geçersiz.","Email ini tidak sah."),
("29","password_short","Password is too short.","كلمة المرور قصيرة جداَ","Wachtwoord is te kort.","Mot de passe est trop court.","Passwort ist zu kurz.","La password è troppo corta.","Senha muito pequena.","Пароль слишком короткий.","Contrase&amp;ntilde;a muy corta.","Şifre çok kısa.","Password terlalu pendek."),
("30","password_mismatch","Password not match.","كلمة المرور غير متطابقة","Wachtwoorden komen niet overeen.","Mot de passe ne correspond.","Passwörter stimmen nicht überein.","La password non corrisponde.","As senhas n&amp;atilde;o conferem.","Пароли не совпадают.","Contrase&amp;ntilde; diferente.","Şifre eşleşmiyor.","Password tidak sah."),
("31","reCaptcha_error","Please Check the re-captcha.","الرجاء فحص ال reCaptcha","Controleer de beveiligingscode.","S&#39;il vous plaît Vérifiez la ré-captcha.","Bitte überprüfe den re-captcha.","Ricontrollare la Recaptcha.","Por favor, marque o captcha.","Пожалуйста, введите повторно капчу.","Favor de marcar el Re-Captcha.","ReCAPTCHA&#039;yı kontrol ediniz.","Please Check the re-captcha."),
("32","successfully_joined_label","Successfully joined, Please wait..","تم الإشتراك بنجاح , الرجاء الإنتظار ..","Succesvol geregistreerd, een momentje..","Réussir rejoint, S&#039;il vous plaît attendre..","Erfolgreich beigetreten, bitte warten..","Iscrizione con sucesso, attendere prego..","Registrado com sucesso, Por favor aguarde..","Успешный вход. Пожалуйста, подождите...","Unido satisfactoriamente, Por favor espera..","Başarıyla katıldı! Lütfen bekleyin ..","Anda sudah berhasil mendaftar, tunggu sebentar.."),
("33","account_activation","Account Activation","تفعيل الحساب","Account activicatie","Activation de compte","Konto Aktivierung","Account attivato","Ativa&amp;ccedil;&amp;atilde;o de Conta","Активация аккаунта","Activaci&amp;oacute;n de cuenta","Hesap Aktivasyonu","Account Activation"),
("34","successfully_joined_verify_label","Registration successful! We have sent you an email, Please check your inbox/spam to verify your email.","تم الإشتراك بنجاح! لقد تم إرسال رمز التعيل إلى بريدك الإلكتروني","Succesvol geregistreerd, check je inbox/spam voor de activicatie mail.","Inscription réussi! Nous vous avons envoyé un e-mail, S&#39;il vous plaît vérifier votre boîte de réception / spam pour vérifier votre email.","Registrierung war erfolgreich! Wir haben dir eine Email gesandt: Bitte überprüfe dein Postfach und Spamordner zum aktivieren deines Kontos.","Registrazione di successo! Ti abbiamo inviato una e-mail, controlla la tua posta in arrivo / spam per verificare la tua email.","Registrado com sucesso! Enviamos um email, verifique a caixa de entrada/spam para verificar seu e-mail.","Поздравляем вы успешно зарегистрировались! Мы отправили Вам письмо с ссылкой для подтверждения регистрации. Пожалуйста, проверьте ваш почтовый ящик. Рекомендуем проверить папку «Спам» — возможно письмо попало туда.","Registro exitoso, te hemos enviado un correo de verificaci&amp;oacute;n, Revisa tu bandeja de entrada de correo.","Kayıt başarılı! Size bir e-posta gönderdik, e-postanızı doğrulamak için gelen / spam kontrol edin.","Registration successful! We have sent you an email, Please check your inbox/spam to verify your email."),
("35","email_not_found","We can&#039;t find this email.","البريد الإلكتروني غير موجود","We kunnen deze email niet vinden.","Nous ne pouvons pas trouver cet e-mail.","Email konnte nicht gefunden werden.","Non e possibile trovare questo indirizzo mail.","n&amp;atilde;o podemos encontrar este e-mail.","Мы не можем найти этот E-mail.","No encontramos este E-mail.","Biz bu e-postayı bulamıyor.","Kami tidak dapat menemukan email ini."),
("36","password_rest_request","Password reset request","طلب إعادة تعيين كلمة المرور","Wachtwoord reset aanvraag","Demande de réinitialisation de mot","Passwort-Reset-Anfrage","Richiesta di reimpostazione della password","Pedido para resetar senha","Запрос Восстановление пароля","Solicitud de reinicio de contraseña","Parola sıfırlama isteği","Permintaan untuk mengatur ulang password"),
("37","email_sent","E-mail has been sent successfully","لقد تم إرسال الرسالة","Email is succesvol verzonden","Le courriel a été envoyé avec succès","Email wurde erfolgreich versendet","E-mail è stata inviata con successo","E-mail enviado com sucesso.","Письмо отправлено","Correo enviado correctamente","E-posta başarıyla gönderildi","E-mail has been sent successfully"),
("38","processing_error","An error found while processing your request, please try again later.","حدث خطأ عند المعالجة , الرجاء المحاولة لاحقاَ","Er is een fout opgetreden, probeer het later nog eens.","Une erreur est survenue lors du traitement de votre demande, s&#39;il vous plaît réessayer plus tard.","In der Bearbeitung wurde ein Fehler festgestellt. Bitte versuche es später noch einmal.","Un errore durante l&#039;elaborazione della richiesta, riprova più tardi.","Algo de errado aconteceu. Por favor, tente novamente mais tarde.","Обнаружена ошибка при обработке вашего запроса, пожалуйста, попробуйте еще раз","Un error a ocurrido procesando tu solicitud, Intenta de nuevo mas tarde.","İsteğiniz işlenirken hata, lütfen tekrar deneyiniz bulundu","An error found while processing your request, please try again later."),
("39","password_changed","Password successfully changed !","تم تغيير كلمة المرور بنجاح","Wachtwoord succesvol gewijzigd !","Mot de passe changé avec succès !","Passwort erfolgreich geändert!","Password cambiata con successo!","Senha trocada com sucesso !","Пароль успешно изменен!","¡ Contrase&amp;ntilde;a modificada correctamente !","Şifre başarıyla değiştirildi !","Password Berhasil di ubah !"),
("40","please_choose_correct_date","Please choose a correct date.","الرجاء أختيار تاريخ الميلاد الصحيح","Selecteer een geldige datum.","S&#039;il vous plaît choisir une date correcte.","Bitte gebe ein korrektes Datum an.","Scegliere una data corretta.","Selecione uma data correta.","Пожалуйста, выберите правильную дату.","Por favor elige una fecha correcta.","Doğru tarih seçiniz.","Di mohon pilih tanggal dengan benar."),
("41","setting_updated","Setting successfully updated !","تم تحديث المعلومات بنجاح !","Instellingen succesvol gewijzigd!","Réglage de mise à jour avec succès !","Einstellungen erfolgreich übernommen!","Impostazioni aggiornate correttamente!","Configura&amp;ccedil;&amp;otilde;es atualizadas !","Настройки успешно обновлены!","¡ Configuraci&amp;oacute;n correctamente guardada !","Ayar Başarıyla Güncellendi!","Peraturan berhasil di perbarui !"),
("42","current_password_mismatch","Current password not match","كلمة المرور الحالية غير صحيحة","Huidig wachtwoord komt niet overeen","Mot de passe actuel ne correspond pas","Aktuelles Passwort stimmt nicht","Password corrente non corrisponde","Sua senha atual n&amp;atilde;o confere","Текущий пароль не совпадает","Contrase&amp;ntilde;a actual diferente","Mevcut şifre eşleşmiyor","Current password not match"),
("43","website_invalid_characters","Website is invalid.","صيغة الموقع الإلكتروني غير صحيحة","Website is niet geldig.","Site Web est invalide.","Webseite ist ungültig.","Sito web non è valido.","Site inv&amp;aacute;lido.","Недопустимые символы в сайте.","El sitio web es invalido.","Web sitesi geçersiz.","Website tidak benar."),
("44","account_deleted","Account successfully deleted, please wait..","تم حذف حسابك نهائياَ , الرجاء الإنتظار ..","Account is succesvol gewijzigd, een momentje..","Compte supprimé avec succès, s&#039;il vous plaît patienter..","Konto erfolgreich gelöscht, bitte warten..","Account cancellato con successo, si prega di attendere..","Conta deletada, por favor aguarde..","Аккаунт успешно удален, пожалуйста, подождите...","Cuenta eliminada correctamente, por favor espere..","Başarıyla silindi Hesap, lütfen bekleyin ..","Akun berhasil di hapus, harap tunggu.."),
("45","home","Home","الصفحة الرئيسية","Home","Domicile","Start","Home","In&amp;iacute;cio","Главная","Inicio","Ana Sayfa","Beranda"),
("46","advanced_search","Advanced Search","البحث المتقدم","Uitgebreid zoeken","Recherche Avancée","Erweiterte Suche","Ricerca avanzata","Pesquisa avan&amp;ccedil;ada","Расширенный поиск","B&amp;uacute;squeda Avanzada","Gelişmiş Arama","Coba fitur pencarian (P-H-G-G)"),
("47","search_header_label","Search for people, pages, groups and #hashtags","إبحث عن أعضاء, #هاشتاغ","Zoek mensen, #hastags en andere dingen..","Recherche de personnes, et les choses #hashtags","Suche Personen, #hashtags und Dinge","Cerca per persone, cose e #hashtags","Procurar pessoas, #hashtags ou coisas","Поиск людей, мест или #хэштегов","Buscar Otakus, #hashtags y lolis","Kişiler, #hashtags ve şeyler ara","Cari AT-Social"),
("48","no_result","No result found","لم يتم العثور على أي نتائج","Geen resultaten gevonden","Aucun résultat trouvé","Leider keine Ergebnisse","Nessun risultato trovato","Nada encontrado","Не найдено ни одного результата","Sin resultados","Herhangi bir ürün bulunamadı","Tidak ada hasil di temukan"),
("49","last_seen","Last Seen:","آخر ظهور:","Laatst gezien:","Dernière Visite:","Zuletzt online vor:","Ultimo accesso:","Visto por &amp;uacute;ltimo:","Был@:","Hace","Son Görülen:","Terkahir terlihat:"),
("50","accept","Accept","قبول","Accepteren","Acceptez","Akzeptieren","Accettare","Aceitar","принимать","Aceptar","Kabul etmek","Terima"),
("51","cancel","Cancel","إلغاء","Weiger","Annuler","Abbruch","Cancella","Cancelar","Отмена","Cancelar","Iptal","Batalkan"),
("52","delete","Delete","حذف","Verwijder","Effacer","Löschen","Ellimina","Deletar","Удалить","Eliminar","Sil","Hapus"),
("53","my_profile","My Profile","صفحتي الشخصية","Mijn Profiel","Mon profil","Mein Profil","Mio Profilo","Meu Perfil","Мой профиль","Mi Perfil","Profilim","Profil saya"),
("54","saved_posts","Saved Posts","المنشورات المحفوظة","Opgeslagen berichten","Messages Enregistrés","Gespeicherte Beiträge","Post Salvati","Posts Salvos","Сохраненные заметки","Posts Guardados","Kayıtlı Mesajlar","Simpan pikiran"),
("55","setting","Settings","الإعدادات","Instellingen","Réglage","Einstellungen","Impostazioni","Configura&amp;ccedil;&amp;otilde;es","Настройки","Configuraci&amp;oacute;n","Ayarlar","Peraturan"),
("56","admin_area","Admin Area","لوحة المدير","Beheerpaneel","Admin Area","Administration","Area Administratore","Admin","Админка","Área del Admin","Yönetici Alanı","Admin Area"),
("57","log_out","Log Out","تسجيل الخروج","Uitloggen","Se déconnecter","Abmelden","Esci","Sair","Выйти","Cerrar Sesión","Çıkış Yap","Keluar"),
("58","no_new_notification","You do not have any notifications","لا يوجد إشعارات","Je hebt geen meldingen","Vous ne disposez pas de toutes les notifications","Derzeit keine neuen Benachrichtigungen","Non avete notifiche","Voc&amp;ecirc; tem 0 notifica&amp;ccedil;&amp;otilde;es","Нет новых уведомлений","No tienes nuevas notificaciones","Bildirim yok","Belum ada Pemberitahuan"),
("59","no_new_requests","You do not have any requests","لا يوجد طلبات صداقة","Je hebt geen verzoeken","Vous ne disposez pas de toutes les demandes","Derzeit keine neuen Anfragen","Non avete alcuna richiesta","Voc&amp;ecirc; tem 0 pedidos de amizade","Нет новых запросов","No tienes nuevas solicitudes","Istekler yok","Belum ada permintaan"),
("60","followed_you","followed you","تابعك","volgt je","je t&#039;ai suivi","folgt dir jetzt","Ti segue","Seguiu voc&amp;ecirc;","последовал@ за тобой","te ha seguido","Seni takip etti.","Mengikuti anda"),
("61","comment_mention","mentioned you on a comment.","أشار لك في تعليق","heeft je vermeld in een reactie.","vous avez mentionné sur un commentaire.","hat dich in einem Kommentar erwähnt.","lei ha citato un commento.","mencionou voc&amp;ecirc; em um coment&amp;aacute;rio.","упомянул@ вас в комментарии.","te ha mencionado en un comentario.","Bir yorumum sizden bahsetti.","menandai anda pada komentarnya."),
("62","post_mention","mentioned you on a post.","أشار لك في منشور","heeft je vermeld in een bericht.","vous avez mentionné sur un poteau.","hat dich in einem Beitrag erwähnt.","lei ha citato in un post.","mencionou voc&amp;ecirc; em um post.","упомянул@ вас в заметке.","te menciono en una publicaci&amp;oacute;.","Bir yayında sizden bahsetti.","menandai anda pada pikiranya."),
("63","posted_on_timeline","posted on your timeline.","نشر على حائطك","heeft een krabbel op je tijdlijn geplaats.","posté sur votre timeline.","hat an deine Pinwand geschrieben.","pubblicato sulla timeline.","postou algo em sua linha do tempo.","Публикация на стене","publico en tu timeline.","Zaman çizelgesi Yayınlanan.","menulis pikiranya di linimasa anda."),
("64","profile_visted","visited your profile.","زار صفحتك الشخصية","heeft je profiel bezocht.","visité votre profil.","hat dein Profil besucht.","ha visitato il tuo profilo.","te visitou.","посетил@ ваш профиль.","visitó tu perfil","Profilinizi ziyaret etti.","megunjungi profil anda tadi."),
("65","accepted_friend_request","accepted your friend request.","قبل طلب الصداقة","heeft je vriendschapsverzoek geaccepteerd.","accepté votre demande d&#039;ami.","hat deine Freundschaftsanfrage akzeptiert.","ha accettato la tua richiesta di amicizia.","aceitou seu pedido de amizade.","принял@ запрос о дружбе.","acepto tu solicitud de amistad.","Arkadaşlık isteğin kabul edildi.","menerima permintaan pertemanan anda."),
("66","accepted_follow_request","accepted your follow request.","قبل طلب المتابعة","heeft je volgverzoek geaccepteerd.","accepté votre demande de suivi.","hat deine Folgenanfrage akzeptiert.","ha accettato la tua richiesta di follow/segumento.","aceitou que voc&amp;ecirc; siga ele.","принять запрос.","acepto tu solicitud de seguimiento.","Senin takip talebi kabul etti.","menerima permintaan anda untuk megikutinya."),
("67","liked_comment","liked your comment &quot;{comment}&quot;","أعجب بتعليقك &quot;{comment}&quot;","respecteerd je reactie &quot;{comment}&quot;","aimé votre commentaire &quot;{comment}&quot;","gefällt dein Kommentar &quot;{comment}&quot;","piace il tuo commento &quot;{comment}&quot;","curtiu seu coment&amp;aacute;rio &quot;{comment}&quot;","нравится Ваш комментарий &quot;{comment}&quot;","le gusta tu comentario &quot;{comment}&quot;","Yorumunuzu Beğendi &quot;{comment}&quot;","Menyukai komentar anda &quot;{comment}&quot;"),
("68","wondered_comment","wondered your comment &quot;{comment}&quot;","تعجب من تعليقك &quot;{comment}&quot;","wondered je reactie &quot;{comment}&quot;","demandé votre commentaire &quot;{comment}&quot;","wundert sich über deinen Kommentar &quot;{comment}&quot;","si chiedeva il tuo commento &quot;{comment}&quot;","n&amp;atilde;o curtiu seu coment&amp;aacute;rio &quot;{comment}&quot;","не нравится &quot;{comment}&quot;","le sorprendioo tu comentario &quot;{comment}&quot;","Yorumunuzu merak etti &quot;{comment}&quot;","Tidak menyukai komentar anda &quot;{comment}&quot;"),
("69","liked_post","liked your {postType} {post}","أعجب ب {postType} الخاص بك {post}","respecteerd je {postType} {post}","aimé votre {postType} {post}","gefällt dein {postType} {post}","piace il {postType} {post}","curtiu seu {postType} {post}","нравится {postType} {post}","le gusta tu {postType} {post}","Senin {postType} Beğendi {post}","Menyukai pikiran anda pada {postType} {post}"),
("70","wondered_post","wondered your {postType} {post}","تعجب ب {postType} الخاص بك {post}","wondered je {postType} {post}","demandé votre {postType} {post}","wundert sich über deinen {postType} {post}","si chiedeva il tuo {postType} {post}","n&amp;atilde;o curtiu seu {postType} {post}","не нравится {postType} {post}","le sorprendio tu {postType} {post}","Senin {postType} merak etti {post}","Tidak menyukai pikiran anda pada {postType} {post}"),
("71","share_post","shared your {postType} {post}","شارك {postType} الخاص بك {post}","deelde je {postType} {post}","partagé votre {postType} {post}","hat deinen {postType} {post} geteilt","ha condiviso il tuo {postType} {post}","compartilhou {postType} {post}","сделал@ перепост {postType} {post}","ha compartido tu {postType} {post}","Senin {postType} paylaştı {post}","membagikan pikiran anda {postType} {post}"),
("72","commented_on_post","commented on your {postType} {post}","علق على {postType} {post}","reageerde op je {postType} {post}","commenté sur votre {postType} {post}","hat deinen {postType} {post} kommentiert","ha commentato il tuo {postType} {post}","comentou em seu {postType} {post}","прокомментировал {postType} {post}","comento en tu {postType} {post}","Senin {postType} yorumlananlar {post}","mengomentari pada pikiran anda {postType} {post}"),
("73","activity_liked_post","liked {user} &lt;a class=&quot;main-color&quot; href=&quot;{post}&quot;&gt;post&lt;/a&gt;.","أعجب &lt;a class=&quot;main-color&quot; href=&quot;{post}&quot;&gt;بمنشور&lt;/a&gt; {user}.","respecteerd {user} &lt;a class=&quot;main-color&quot; href=&quot;{post}&quot;&gt;bericht&lt;/a&gt;.","aimé {user} &lt;a class=&quot;main-color&quot; href=&quot;{post}&quot;&gt;poster&lt;/a&gt;.","gefällt {user} &lt;a class=&quot;main-color&quot; href=&quot;{post}&quot;&gt;Beitrag&lt;/a&gt;.","piace {user} &lt;a class=&quot;main-color&quot; href=&quot;{post}&quot;&gt;post&lt;/a&gt;.","curtiu {user} &lt;a class=&quot;main-color&quot; href=&quot;{post}&quot;&gt;post&lt;/a&gt;.","нравится &lt;a class=&quot;main-color&quot; href=&quot;{post}&quot;&gt;заметка&lt;/a&gt; {user}.","le gust&amp;oacute; la &lt;a class=&quot;main-color&quot; href=&quot;{post}&quot;&gt;publicaci&amp;oacute;n&lt;/a&gt; de {user} .","{user} &lt;a class=&quot;main-color&quot; href=&quot;{post}&quot;&gt;post&lt;/a&gt; beğendi.","menyukai &lt;a class=&quot;main-color&quot; href=&quot;{post}&quot;&gt;pikiranya&lt;/a&gt; {user}."),
("74","activity_wondered_post","wondered {user} &lt;a class=&quot;main-color&quot; href=&quot;{post}&quot;&gt;post&lt;/a&gt;.","تعجب &lt;a class=&quot;main-color&quot; href=&quot;{post}&quot;&gt;بمنشور&lt;/a&gt; {user}.","wondered {user} &lt;a class=&quot;main-color&quot; href=&quot;{post}&quot;&gt;bericht&lt;/a&gt;.","demandé {user} &lt;a class=&quot;main-color&quot; href=&quot;{post}&quot;&gt;poster&lt;/a&gt;.","wundert sich über {user} &lt;a class=&quot;main-color&quot; href=&quot;{post}&quot;&gt;Beitrag&lt;/a&gt;.","chiedeva {user} &lt;a class=&quot;main-color&quot; href=&quot;{post}&quot;&gt;post&lt;/a&gt;.","n&amp;atilde;o curtiu {user} &lt;a class=&quot;main-color&quot; href=&quot;{post}&quot;&gt;post&lt;/a&gt;.","не нравится &lt;a class=&quot;main-color&quot; href=&quot;{post}&quot;&gt;заметка&lt;/a&gt; {user}.","le sorprendio la &lt;a class=&quot;main-color&quot; href=&quot;{post}&quot;&gt;publicaci&amp;oacute;n&lt;/a&gt; de {user} .","Wondered {user} &lt;a class=&quot;main-color&quot; href=&quot;{post}&quot;&gt;post&lt;/a&gt;.","tidak menyukai &lt;a class=&quot;main-color&quot; href=&quot;{post}&quot;&gt;pikiranya&lt;/a&gt; {user}."),
("75","activity_share_post","shared {user} &lt;a class=&quot;main-color&quot; href=&quot;{post}&quot;&gt;post&lt;/a&gt;.","شارك &lt;a class=&quot;main-color&quot; href=&quot;{post}&quot;&gt;منشور&lt;/a&gt; {user}.","deelde {user} &lt;a class=&quot;main-color&quot; href=&quot;{post}&quot;&gt;bericht&lt;/a&gt;.","partagé {user} &lt;a class=&quot;main-color&quot; href=&quot;{post}&quot;&gt;poster&lt;/a&gt;.","hat {user} &lt;a class=&quot;main-color&quot; href=&quot;{post}&quot;&gt;Beitrag&lt;/a&gt; geteilt.","condiviso {user} &lt;a class=&quot;main-color&quot; href=&quot;{post}&quot;&gt;post&lt;/a&gt;.","compartilhou {user} &lt;a class=&quot;main-color&quot; href=&quot;{post}&quot;&gt;post&lt;/a&gt;.","поделился &lt;a class=&quot;main-color&quot; href=&quot;{post}&quot;&gt;заметкой&lt;/a&gt; {user}.","compartio la &lt;a class=&quot;main-color&quot; href=&quot;{post}&quot;&gt;publicaci&amp;oacute;n&lt;/a&gt; de {user} .","Shared {user} &lt;a class=&quot;main-color&quot; href=&quot;{post}&quot;&gt;post&lt;/a&gt;.","membagikan kiriman pada &lt;a class=&quot;main-color&quot; href=&quot;{post}&quot;&gt;pikiranya&lt;/a&gt; {user}."),
("76","activity_commented_on_post","commented on {user} &lt;a class=&quot;main-color&quot; href=&quot;{post}&quot;&gt;post&lt;/a&gt;.","علق على &lt;a class=&quot;main-color&quot; href=&quot;{post}&quot;&gt;منشور&lt;/a&gt; {user}.","reageerde op {user} &lt;a class=&quot;main-color&quot; href=&quot;{post}&quot;&gt;bericht&lt;/a&gt;.","commenté sur {user} &lt;a class=&quot;main-color&quot; href=&quot;{post}&quot;&gt;poster&lt;/a&gt;.","hat {user} &lt;a class=&quot;main-color&quot; href=&quot;{post}&quot;&gt;Beitrag&lt;/a&gt; kommentiert.","ha commentato in {user} &lt;a class=&quot;main-color&quot; href=&quot;{post}&quot;&gt;post&lt;/a&gt;.","Comentou no {user} &lt;a class=&quot;main-color&quot; href=&quot;{post}&quot;&gt;post&lt;/a&gt;.","прокомментировал@ &lt;a class=&quot;main-color&quot; href=&quot;{post}&quot;&gt;заметку&lt;/a&gt; {user}.","comento en la &lt;a class=&quot;main-color&quot; href=&quot;{post}&quot;&gt;publicaci&amp;oacute;n de &lt;/a&gt;{user} .","Commented on {user} &lt;a class=&quot;main-color&quot; href=&quot;{post}&quot;&gt;post&lt;/a&gt;.","mengomentari kiriman  &lt;a class=&quot;main-color&quot; href=&quot;{post}&quot;&gt;Pikiranya&lt;/a&gt; {user}."),
("77","video_n_label","video.","الفيديو","video.","vidéo.","Video","video.","v&amp;iacute;deo.","видео.","video.","video","video."),
("78","post_n_label","post.","المنشور","bericht.","poster.","Beitrag","post.","post.","пост.","post.","post","kirim."),
("79","photo_n_label","photo.","الصورة","foto.","photo.","Foto","imagini.","foto.","фото.","foto.","fotoğraf","foto."),
("80","file_n_label","file.","الملف","bestand.","fichier.","Datei","file.","arquivo.","файл.","archivo.","dosya","file."),
("81","vine_n_label","vine video.","فيديو الفاين","vine video.","vine vidéo.","Vine-Video","vine video.","Vine.","видео.","vine.","vine video","vine video."),
("82","sound_n_label","sound.","الملف الصوتي","muziek.","du son.","Musik","musica.","som.","аудио.","sonido.","ses","Suara."),
("83","avatar_n_label","profile picture.","صورتك الشخصية","profiel foto.","Photo de profil.","Profilbild","imagine di profilo.","imagem de perfil.","Фото профиля","foto de perfil.","profil fotoğrafı","foto profil."),
("84","error_not_found","404 Error","خطأ 404","404 Error","404 Erreur","404 Fehler","404 Errore","Erro 404","Ошибка 404","Error 404","404 Hatası","404 Error &lt;:0&gt;"),
("85","sorry_page_not_found","Sorry, page not found!","عذراَ , الصفحة المطلوبة غير موجودة .","Sorry, pagina niet gevonden!","Désolé, page introuvable!","Entschuldigung: Seite wurde nicht gefunden!","la pagina non trovata!","P&amp;aacute;gina n&amp;atilde;o encontrada!","Извините, страница не обнаружена!","Gommen ne, pagina no encontrada!","Maalesef sayfa bulunamadı!","Maaf, Halaman tidak ditemukan atau tidak ada &lt;:(&gt;"),
("86","page_not_found","The page you are looking for could not be found. Please check the link you followed to get here and try again.","الصفحة التي طلبتها غير موجودة , الرجاء فحص الرابط مرة أخرى","The page you are looking for could not be found. Please check the link you followed to get here and try again.","La page que vous recherchez n&#39;a pu être trouvée. S&#39;il vous plaît vérifier le lien que vous avez suivi pour arriver ici et essayez à nouveau.","Die Seite die du besuchen möchtest, wurde nicht gefunden. Bitte überprüfe den Link auf Richtigkeit und versuche es erneut.","La pagina che stai cercando non è stato trovato. Si prega di controllare il link che hai seguito per arrivare qui e riprovare.","A p&amp;aacute;gina que voc&amp;ecirc; esta procurando n&amp;atilde;o foi encontrada. Confira o link e tente novamente.","Упс! Мы не можем найти страницу, которую вы ищете. Вы ввели неправильный адрес, или такая страница больше не существует.","La p&amp;aacute;gina que est&amp;aacute;s buscando no se encuentra. Por favor revisa el link y vuelve a intentar.","Aradığınız sayfa bulunamadı. Buraya ve tekrar denemek için izlenen linki kontrol edin.","The page you are looking for could not be found. Please check the link you followed to get here and try again."),
("87","your_account_activated","Your account have been successfully activated!","لقد تم تفعيل حسابك بنجاح !","Je account is succesvol geactiveerd!","Votre compte a été activé avec succès!","Dein Konto wurde erfolgreich aktiviert!","Il tuo account è stato attivato con successo!","Conta ativada!","Ваша учетная запись была успешно активирована!","¡Tu cuenta ha sido activada exitosamente!","Hesabınız başarıyla aktive edildi!","Your account have been successfully activated!"),
("88","free_to_login","You&#039;r free to &lt;a href=&quot;{site_url}&quot;&gt;{login}&lt;/a&gt; !","يمكنك الآن &lt;a href=&quot;http://localhost/wowonder_update&quot;&gt;{login}&lt;/a&gt; !","Je kan &lt;a href=&quot;http://localhost/wowonder_update&quot;&gt;{login}&lt;/a&gt; !","Votre libre &lt;a href=&quot;http://localhost/wowonder_update&quot;&gt;{login}&lt;/a&gt; !","Bitte hier &lt;a href=&quot;http://localhost/wowonder_update&quot;&gt;{login}&lt;/a&gt; !","Siete liberi di  &lt;a href=&quot;http://localhost/wowonder_update&quot;&gt;{login}&lt;/a&gt; !","Fa&amp;ccedil;a &lt;a href=&quot;http://localhost/wowonder_update&quot;&gt;{login}&lt;/a&gt; !","Вы&#039;r войти &lt;a href=&quot;http://localhost/wowonder_update&quot;&gt;{login}&lt;/a&gt; !","Eres libre de &lt;a href=&quot;http://localhost/wowonder_update&quot;&gt;{login}&lt;/a&gt; !","Sen serbestsin &lt;a href=&quot;http://localhost/wowonder_update&quot;&gt;{login}&lt;/a&gt; ! için","Gratis untuk &lt;a href=&quot;{site_url}&quot;&gt;{login}&lt;/a&gt; !"),
("89","general_setting","General Setting","المعلومات العامة","General Setting","Cadre général","Allgemeine Einstellungen","Impostazioni Generali","Configura&amp;ccedil;&amp;otilde;es gerais","Общие настройки","Configuraci&amp;oacute;n General","Genel Ayar","Peraturan umum"),
("90","login_setting","Login Setting","ملعومات الدخول","Login Setting","Connexion Cadre","Anmeldungseinstellungen","Impostazioni di accesso","Configura&amp;ccedil;&amp;otilde;es de login","Войти Настройки","Configuraci&amp;oactute;n de Acceso","Üye Girişi Ayarı","Peraturan Masuk"),
("91","manage_users","Manage Users","إدارة المستخدمين","Manage Users","gérer les utilisateurs","Benutzer verwalten","Gestisci Utenti","Editar usu&amp;aacute;rios","Управление пользователями","Manejar Usuarios","Kullanıcıları Yönet","Manajemen pengguna"),
("92","manage_posts","Manage Posts","إدارة المنشورات","Manage Posts","gérer les messages","Beiträge verwalten","Gestisci Posts","Editar posts","Управление сообщения","Manejar Publicaciones","Mesajlar Yönet","Manajemen kiriman"),
("93","manage_reports","Manage Reports","إدارة التبليغات","Manage Reports","gérer les rapports","Meldungen verwalten","Gestisci Segnalazioni","Vizualizar reports","Управление отчетами","Manenjar Reportes","Raporlar Yönet","Manajemen laporan"),
("94","advertisement","Advertisement","الإعلانات","Advertisement","Publicité","Werbung","Publicita","Divulga&amp;ccedil;&amp;atilde;o","Реклама","Aviso","Reklâm","Periklanan"),
("95","more","More","أكثر","Meer","Plus","mehr","Più","Mais","еще","Más información","daha","Lainya"),
("96","cache_system","Cache System","نظام الكاش","Cache System","Système de cache","Cachsystem","Cache di Systema","Cache","система кэша","Cache","Önbellek Sistemi","Cache System"),
("97","chat_system","Chat System","نظام الدردشة","Chat System","système chat","Chatsystem","Sistema Chat","Sistema do chat","Чат системы","Chat","Sohbet Sistemi","Chat System"),
("98","email_validation","Email validation","تأكيد الحساب عبر الايميل","Email validation","Email de validation","Emailbestätigung","Email di convalida","Valida&amp;ccedil;&amp;atilde;o de Email","E-mail валидации","Validaci&amp;oacute;n de correo","E-posta Doğrulama","Penerimaan Email"),
("99","email_notification","Email notification","إرسال الإشعارات عبر الايميل","Email notification","Notification par courriel","Email-Benachrichtigungen","Notifiche Email","Notifica&amp;ccedil;&amp;atilde;o de Email","E-mail уведомления","Notificaciones","E-posta Bildirimi","Pemberitahuan Email"),
("100","smooth_links","Smooth links","الروابط القصيرة","Smooth links","liens lisses","Einfache Links","Collegamenti Smooth","Links permitidos","Гладкие Ссылки","Smooth links","Pürüzsüz Bağlantılar","Link Lembut");

--
-- Dumping data for table `wo_langs`
--

INSERT INTO wo_langs VALUES
("101","seo_friendly_url","SEO friendly url","الروابط الداعة لمواقع البحث","SEO friendly url","SEO URL conviviale","SEO freundliche URL","SEO amicizie url","URL","SEO Дружественные ссылки","url amigable para SEO","SEO dost URL","Alamat web yang mudah di mengerti"),
("102","file_sharing","File sharing","مشاركة الملفات","File sharing","Partage de fichier","Datenaustausch","Condivisione di file","Compartilhar arquivo","обмена файлами","Compartir Archivos","Dosya paylaşımak","Berbagi File"),
("103","themes","Themes","شكل الموقع","Themes","thèmes","Design","Temi","Temas","Темы","Temas","Temalar","Tema AT-Social"),
("104","user_setting","User Setting","إعدادات المستخدم","User Setting","Cadre de l&#039;utilisateur","Benutzereinstellungen","Impostazioni utente","Configura&amp;ccedil;&amp;otilde;es do usu&amp;aacute;rio","настройки пользователя","Configuraci&amp;oacute;n de usuario","Kullanıcı Ayarı","Peraturan untuk pengguna"),
("105","site_setting","Site Setting","إعدادات الموقع","Site Setting","site Cadre","Seiteneinstellungen","impostazioni del sito","Configura&amp;ccedil;&amp;otilde;es do site","настройка сайта","Configuraci&amp;oacute;n de sitio","Sitede Ayarı","Peraturan AT-Social"),
("106","cache_setting_info","Enable cache system to speed up your website, Recommended more than 10,000 active users.","فعل نظام الكاش لتسريع الموقع, يستحسن إستخدامه لأكثر من 10 آلاف مستخدم.","Enable cache system to speed up your website, Recommended more than 10,000 active users.","Activer système de cache pour accélérer votre site, a recommandé plus de 10.000 utilisateurs actifs.","Aktiviere das Cachesystem um die Seiten schneller zu machen, Empfehlenswert ab 10,000 aktiven Benutzern.","Abilita sistema di cache per velocizzare il tuo sito web, consigliato più di 10.000 utenti attivi.","Ativar o cache para aumentar a velocidade do site, Recomendado se tiver mais de 10,000 usu&amp;aacute;rios ativos.","Включить систему кэш для ускорения вашего сайта, Рекомендуем более 10000 активных пользователей.","Habilitar cache para aumentar la velocidad de tu sitio, Recomendado para m&amp;aacute;s de 10,000 usuarios activos.","Web sitenizi hızlandırmak için önbellek sistemi etkinleştirin, 10.000 &#039;den fazla aktif kullanıcı önerilir.","Nyalakan cache system untuk mempercepat loading pada AT-Social, Sangat di rekomendasikan ketika pengguna melebihi 10.000 pengguna aktif."),
("107","chat_setting_info","Enable chat system to chat with friends on the buttom of the page","فعل نظام الدردشة للدردشة مع الإصدقاء في يمين أسفل الصفحة.","Enable chat system to chat with friends on the buttom of the page","Activer système chat pour discuter avec des amis sur le fond de la page","Aktiviere das Chatsystem zum chatten mit Freunden","Attivare il sistema chat per chiacchierare con gli amici in fondo alla pagina","Ativar sistema de chat para conversas com seus amigos no rodap&amp;eacute; da p&amp;aacute;gina","Включить чат системы для общаться с друзьями на дне страницы","Habilitar cache de chat, para hablar con amigos al pie del sitio","Sayfanın altındaki arkadaşlarınızla sohbet etmek için sohbet sistemini etkinleştirme","Enable chat system to chat with friends on the buttom of the page"),
("108","email_validation_info","Enable email validation to send activation link when user registred.","لإرسال رمز التاكيد عبر البريد الإلكتروني عندما يسجل المستخدم.","Enable email validation to send activation link when user registred.","Activer la validation de messagerie pour envoyer le lien d&#39;activation lorsque l&#39;utilisateur référencée.","Aktiviere Email-Aktivierung zum Senden eines Aktivierungslinks wenn sich ein Benutzer registriert.","Abilitare la convalida e-mail per inviare link di attivazione quando utente registrato.","Ativar valida&amp;ccedil;&amp;atilde;o de e-mail quando um usu&amp;aacute;rio se registrar.","Включить проверку электронной почты, чтобы отправить ссылку активации, когда зарегистрированный пользователь.","Habilitar validaci&amp;oacute;n de correo para usuarios registrados.","Kullanıcı kayıt sırasında aktivasyon bağlantısını göndermek için e-posta doğrulama etkinleştirin.","Enable email validation to send activation link when user registred."),
("109","email_notification_info","Enable email notification to send user notification via email.","لإرسال الإشعارات عبر البريد الإلكتروني.","Enable email notification to send user notification via email.","Activer la notification par e-mail pour envoyer une notification par e-mail de l&#39;utilisateur.","Aktiviere Email-Benachrichtigungen zum Senden von Benachrichtigungen an die Benutzer.","Abilita notifica e-mail per inviare via e-mail di notifica all&#039;utente.","Enviar notifica&amp;ccedil;&amp;otilde;es por e-mail.","Включить уведомление по электронной почте, чтобы отправить уведомление пользователя по электронной почте.","Habilitar notificaci&amp;oacute;n por correo para enviar al usuario.","E-posta yoluyla kullanıcı bildirim göndermek için e-posta bildirimi etkinleştirin.","Enable email notification to send user notification via email."),
("110","smooth_links_info","Enable smooth links, e.g.{site_url}/home.","لإستخدام الروابط القصيرة, مثال: http://localhost/wowonder_update/home.","Enable smooth links, e.g.http://localhost/wowonder_update/home.","Activer les liens lisses, e.g.http://localhost/wowonder_update/home.","Aktiviere Einfache Links, z.B.http://localhost/wowonder_update/start","Abilita collegamenti regolari, e.g.http://localhost/wowonder_update/home.","Ativar links limpos, exemplo.http://localhost/wowonder_update/home.","Включить гладкие ссылки, напримерhttp://localhost/wowonder_update/home.","Habilitar smooth links, e.g.http://localhost/wowonder_update/home.","Pürüzsüz bağlantıları etkinleştirme, e.g.http://localhost/wowonder_update/home.","Nyalakan link lembut, contoh: {site_url}/home."),
("111","seo_frindly_info","Enable SEO friendly url, e.g.{site_url}//1_hello-how-are-you-doing.html","لإستخدام الروابط المساعدة لمواقع البحث, مثال: http://localhost/wowonder_update/1_hello-how-are-you-doing.html","Enable SEO friendly url, e.g.http://localhost/wowonder_update//1_hello-how-are-you-doing.html","Activer SEO URL conviviale, e.g.http://localhost/wowonder_update//1_hello-how-are-you-doing.html","Aktiviere SEO freundliche URL, z.B.http://localhost/wowonder_update//1_hallo-was-machst-du-gerade.html","Abilita SEO friendly url, e.g.http://localhost/wowonder_update//1_hello-how-are-you-doing.html","Ativar SEO URL, exemplo.http://localhost/wowonder_update//1_hello-how-are-you-doing.html","Включить SEO Дружественные ссылки, напримерhttp://localhost/wowonder_update//1_hello-how-are-you-doing.html","Habilitar url amigable para SEO, e.g.http://localhost/wowonder_update//1_hello-how-are-you-doing.html","SEO dostu url etkinleştirme, e.g.http://localhost/wowonder_update//1_hello-how-are-you-doing.html","Nyalakan Alamat mudah di mengerti, Contoh: {site_url}//1_hello-how-are-you-doing.html"),
("112","file_sharing_info","Enable File sharing to share &amp; upload videos,images,files,sounds, etc..","لمشاركة الملفات : صوت , فيديو , صورة , الخ ..","Enable File sharing to share &amp; upload videos,images,files,sounds, etc..","Activez le partage de fichiers pour partager et télécharger des vidéos, des images, des fichiers, des sons, etc...","Aktiviere Datenaustausch zum teilen und hochladen von: Videos, Bildern, Dateien, Musik, etc..","Attivare la condivisione di file per condividere e caricare video, immagini, file, suoni, ecc..","Ativar o compartilhamento de arquivos, para compartilhar videos,imagens,arquivos,sons,etc..","Включить общий доступ к файлам, чтобы разделить и загрузить видео, изображения, файлы, звуки и т.д ..","Habilitar compartir archivos, para subir v&amp;iacute;deos, sonido, im&amp;aacute;genes , etc..","Paylaşmak &amp; vb video, görüntü, dosyaları, sesler, yüklemek için Dosya paylaşımını etkinleştirin ..","Nyalakan berbagi file untuk dapat mengirim video, images, file, suara, etc.."),
("113","cache","Cache","الكاش","Cache","Cache","Cache","Cache","Cache","кэш","Cache","Önbellek","Cache"),
("114","site_information","Site Information","معلومات الموقع","Site Information","Informations sur le site","Seiteninformationen","Informazioni sul sito","Informa&amp;ccedil;&amp;otilde;es do Site","информация о сайте","Informaci&amp;oacute;n del sitio","Site Bilgileri","Informasi AT-Social"),
("115","site_title_name","Site Name &amp; Title:","اسم الموقع و عنوانه:","Site Name &amp; Title:","Site Nom et titre:","Seitenname und Titel:","Nome del sito &amp; Titolo:","Nome e t&amp;iacute;tulo do Site:","Название сайта и Заголовок:","Nombre y t&amp;iacute;tulo del sitio:","Site Adı &amp; Başlık:","Site Name &amp; Title:"),
("116","site_name","Site name","اسم الموقع","Site name","Nom du site","Seitenname","Nome del sito","Nome do Site","Название сайта","Nombre del sitio","Site adı","Ubah judul AT-Social"),
("117","site_title","Site title","عنوان الموقع","Site title","Titre du site","Seitentitel","Titolo del sito","T&amp;iacute;tulo do Site","Заголовок сайта","T&amp;iacute;tulo del sitio","Site başlığı","Ubah Judul AT-Social"),
("118","site_keywords_description","Site Keywords &amp; Description:","وصف الموقع والكلمات المفتاحية:","Site Keywords &amp; Description:","Site Mots-clés et description:","Seiten-Schlüsselwörter und Beschreibung:","Chave di ricerca e descrizione del sito:","Descri&amp;ccedil;&amp;atilde;o das palavras-chaves:","Сайт Ключевые слова и Описание:","Palabras clave y Descripci&amp;oacute;:","Sitede Anahtar kelimeler ve Açıklama:","Deskripsi &amp; kata kunci AT-Social:"),
("119","site_keywords","Site Keywords","كلمات مفتاحية, مثال: موقع, تواصل اجتماعي, الخ ..","Site Keywords (eg: social,wownder ..)","site Mots-clés (eg: social,wownder ..)","Seiten-Schlüsselwörter (z.B: social,wundern ..)","Parole chiave del sito (ad esempio: il mio social network, social etc ..)","Palavras-chaves do site","Ключевые слова Сайт (например: социальная, лучше ..)","Palabras clave (ej: social,wownder ..)","Site Anahtar kelimeler (eg: social,wownder ..)","Kata kunci AT-Social"),
("120","site_description","Site Description","وصف الموقع","Site Description","description du site","Seitenbeschreibung","Descrizione del stio","Descri&amp;ccedil;&amp;atilde;o do site","описание сайта","Descripci&amp;oacute;n del sitio","Site Açıklaması","Deskripsi AT-Social"),
("121","site_email","Site E-mail","بريد الموقع الإلكتروني:","Site E-mail","Site E-mail","System-Email","Indirizo email del sito","E-mail do site","Сайт E-mail","E-mail del sitio","Site E-posta","E-Mail AT-Social"),
("122","site_lang","Default Language","اللغة الأساسية:","Default Language","Langage par défaut","Standard-Sprache","Lingua di default","Linguagem padr&amp;ccedil;o","Язык по умолчанию","Lenguaje por defecto","Varsayılan dil","Bahasa utama yang di gunakan"),
("123","theme_setting","Theme Setting","إعدادات شكل الموقع","Theme Setting","thème Cadre","Design Einstellungen","Impostazione tema","Configura&amp;ccedil;&amp;otilde;es do tema","тема настройка","Configuraci&amp;oacute;n de Tema","Tema Ayarı","Peraturan tema"),
("124","activeted","Activated","مفعل","Activeted","Activeted","Aktiviert","Attiva","Ativado","активировал","Activado","Aktif","Di aktifkan"),
("125","version","Version:","الإصدار:","Version:","Version:","Version:","Versione:","Vers&amp;ccedil;o:","Версия:","Versi&amp;oacute;n:","Sürüm:","Version:"),
("126","author","Author:","المالك:","Author:","Auteur:","Autor:","Author:","Autor:","Автор:","Autor:","Yazar:","Author:"),
("127","user_status","User status","حالة المستخدم","User status","Le statut de l&#039;utilisateur","Benutzerstatus","Status del utente","Status do usu&amp;aacute;rio","Статус пользователь","Estatus de usuario","Kullanıcı durumu","Status pengguna"),
("128","online_lastseen","(online/last seen)","(متصل / آخر ظهور)","(online/last seen)","(en ligne / vu la dernière fois)","(online/zuletzt online)","(Attvo/Ultima visita)","(online/visto por &amp;uacute;ltimo)","(онлайн / в последний раз был@)","(En linea/visto hace)","(çevrimiçi / son görüldüğü)","(online/last seen)"),
("129","enable","Enable","تفعيل","Enable","Activer","Aktivieren","Attiva","Ativar","Включить","Habilitado","Etkinleştirmek","Di izinkan"),
("130","disable","Disable","إلغاء التفعيل","Disable","désactiver","Deaktivieren","Disattiva","Desativar","Отключить","Des habilitado","Devre dışı","Tidak di izinkan"),
("131","allow_users_to_delete","Allow users to delete their account","السماح للمستخدم بحذف حسابه؟","Allow users to delete their account:","Autoriser les utilisateurs à supprimer son compte:","Benutzern erlauben ihr Konto zu löschen:","Consentire agli utenti di cancellare il proprio account:","Permitir que usu&amp;uacute;rios deletem suas contas","Разрешить пользователям удалять свой счет:","Permitir a usuarios eliminar su cuenta:","Kullanıcıların kendi hesabını silmek için izin verin:","Izinkan pengguna untuk menghapus akunnya sendiri"),
("132","profile_visit_notification","Profile visit notification","تلقي الإشعارات عند زيارة الصفحة الشخصية؟","Profile visit notification:","Profil notification de visite:","Profilbesucher Benachrichtigung:","Notifiche sula visita del tuo profilo:","Notifica&amp;ccedil;&amp;atilde;o de visita no perfil","Профиль уведомление визит:","Notificaci&amp;oacute;n de visita de perfil:","Profil ziyaret bildirimi:","Pemberitahuan pengunjung profil"),
("133","display_user_age_as","Display user age as","أظهار العمر ك؟","Display user age as:","Display user d&#39;âge:","Zeige das Alter eines Users als:","Mostra eta utente come:","Mostrar idade como","Показать возраст пользователя, как:","Mostrar edad de usuario como:","Ekran kullanıcı yaşı olarak:","Display user age as"),
("134","date","Date","التاريخ","Date","Rendez-vous amoureux","Datum","Data","Data","Дата","Fecha","Tarih","Tanggal"),
("135","age","Age","العمر","Age","Âge","Alter","Eta","Idade","Возраст","Edad","Yaş","Umur"),
("136","connectivity_system","Connectivity System","نظام الصداقة:","Connectivity System:","Système de connectivité:","Communityart:","Connettività del Sistema:","Conectividade do sistema","Связь система:","Sistema de Conectividad:","Bağlantı Sistemi:","Connectivity System"),
("137","connectivity_system_note","&lt;span style=&quot;color:red;&quot;&gt;Note:&lt;/span&gt; If you change the system to another one, all existing followings, followers, friends will be deleted.&lt;/small&gt;","&lt;span style=&quot;color:red;&quot;&gt;ملاحظة:&lt;/span&gt; عند تغيير نظام الصداقة كل الصداقات , المتابعات سوف تحذف من قاعدة البيانات , الرجاء الحذر !&lt;/small&gt;","&lt;span style=&quot;color:red;&quot;&gt;Note:&lt;/span&gt; If you migrate from one system to another, all existing followings, followers, friends, memberships will be deleted to avoid issues.&lt;/small&gt;","&lt;span style=&quot;color:red;&quot;&gt;Note:&lt;/span&gt; If you migrate from one system to another, all existing followings, followers, friends, memberships will be deleted to avoid issues.&lt;/small&gt;","&lt;span style=&quot;color:red;&quot;&gt;Achtung:&lt;/span&gt; Wenn Du von einem System zu einem anderen migrierst, werden alle existierenden: Folger, Verfolger, Freunde, Mitgliedschaften gelöscht um Probleme zu vermeiden.&lt;/small&gt;","&lt;span style=&quot;color:red;&quot;&gt;Nota:&lt;/span&gt; Se si esegue la migrazione da un sistema all&#039;altro, tutti i seguenti esistenti, seguaci, amici, appartenenze verranno eliminati per evitare problemi.&lt;/small&gt;","&lt;span style=&quot;color:red;&quot;&gt;Observa&amp;ccedil;&amp;atilde;o:&lt;/span&gt; Se voc&amp;ecirc; mudar o sistema, todos aqueles que voc&amp;ecirc; segue, que te seguem e seus amigos ser&amp;ccedil;o perdidos.&lt;/small&gt;","&lt;span style=&quot;color:red;&quot;&gt;Примечание:&lt;/span&gt;  При переходе от одной системы к другой, все существующие Подписан, последователи, друзья, членство будет удален, чтобы избежать проблем.&lt;/small&gt;","&lt;span style=&quot;color:red;&quot;&gt;Nota:&lt;/span&gt; Si migras de un sistema a otro, Toda la informaci&amp;oacute;n existente, seguidos, seguidores, etc.., ser&amp;aacute; eliminada para evitar conflictos.&lt;/small&gt;","&lt;span style=&quot;color:red;&quot;&gt;Not:&lt;/span&gt; Eğer bir sistemden diğerine göç, tüm mevcut followings, takipçileri, arkadaşlar, üyelikleri sorunları önlemek için silinir.&lt;/small&gt;","&lt;span style=&quot;color:red;&quot;&gt;Note:&lt;/span&gt; If you change the system to another one, all existing followings, followers, friends will be deleted.&lt;/small&gt;"),
("138","friends_system","Friends system","نظام الصداقة مثل فيسبوك","Friends system","Système d&#39;amis","Freundesystem","Sistema Amici","Sistema de amigos","Друзья система","Sistema de amigos","Arkadaşlar Sistemi","Friends system"),
("139","follow_system","Follow system","نظام المتابعة مثل تويتر","Follow system","système de suivi","Folgensystem","Sistema con seguire/Follow","Sistema de seguidores","Следуйте системы","Sistema de seguidores","Takip Sistemi","Follow system"),
("140","max_upload_size","Max upload size for videos, images, sounds, and files","الحد الأقصى لحجم الرفع:","Max upload size:","Taille maximale de téléchargement:","Maximale Dateigröße zum hochladen:","Dimensione massima di upload:","Tamanho m&amp;aacute;ximo de v&amp;iacute;deos, imagens, sons e arquivos","Максимальный размер загрузки:","Limite de subida:","Max upload size:","Batas maksimal untuk mengupload video, images, suara, dan file"),
("141","max_characters_length","Max characters length","الحد الأقصى لعدد الأحرف:","Max characters length:","Max longueur des caractères:","Maximale Zeichenlänge:","Lunghezza massima caratteri:","Max characters length","Макс символов длиной:","Limite de caracteres:","Maksimum yükleme boyutu:","Batas maksimal karakter penulisan"),
("142","allowed_extenstions","Allowed extenstions","صيغ الملفات المسومح يها:","Allowed extenstions:","extensions autorisées:","Erlaubte Endungen:","Estensioni ammessi:","Extens&amp;otilde;es permitidas","Допустимые расширения:","Extensiones permitidas:","İzin Uzantıları:","Ekstensi yang di izinkan"),
("143","reCaptcha_setting","reCaptcha Setting","إعدادات الريكابتا","reCaptcha Setting","reCaptcha Cadre","reCaptcha Einstellungen","reCaptcha Impostazioni","Configura&amp;ccedil;&amp;atilde;o do reCaptcha","настройка ReCaptcha","Configuraci&amp;oacute;n reCaptcha","Tuttum Ayarı","reCaptcha Setting"),
("144","reCaptcha_key_is_required","reCaptcha key is required","مفتاح الريكابتشا مطلوب","reCaptcha key is required","reCaptcha clé est nécessaire","reCaptcha schlüßel ist erforderlich","reCaptcha Chiave e richesta","a chave do reCaptcha &amp;eacute; necess&amp;aacute;ria","Ключ ReCaptcha требуется","Llave de reCaptcha es requerida","Tuttum anahtarı gereklidir","reCaptcha key is required"),
("145","reCaptcha_key","reCaptcha Key","مفتاح الريكابتشا:","reCaptcha Key :","reCaptcha clé :","reCaptcha Schlüßel :","reCaptcha chiave :","chave do reCaptcha","Ключ ReCaptcha :","Llave de reCaptcha :","Tuttum Anahtarı:","reCaptcha Key"),
("146","google_analytics","Google Analytics","تحليل غوغل","Google Analytics","Google Analytics","Google Analytics","Google Analytics","Google Analytics","Гугл Аналитика","Google Analytics","Google Analiz","Google Analytics"),
("147","google_analytics_code","Google analytics code","كود لتحليل غوغل","Google analytics code:","Google code Google Analytics:","Google Analytics Code:","Google analytics Codice:","C&amp;oacute;digo do Google analytics","Гугл Аналитика код:","Google analytics code:","Google Analytics Kodu:","Google analytics code"),
("148","cache_setting","Cache Setting","إعدادات الكاش","Cache Setting","cache Cadre","Cache Einstellungen","Cache Impostazioni","Configura&amp;ccedil;&amp;atilde;o de Cache","настройка кэша","Configuraci&amp;oacute;n de Cache","Önbellek Ayarı","Peraturan cache"),
("149","cache_recomended_clear","It&#039;s highly recommended to clear the cache.","انه من المستحين أن تمسح الكاش.","It&#039;s highly recommended to clear the cache.","Il est fortement recommandé de vider le cache.","Es ist sehr empfehlenswert den Cache zu säubern.","Si raccomanda di cancellare la cache.","&amp;eacute; recomend&amp;aacute;vel que voc&amp;ecirc; limpe o cache.","Это рекомендуется очистить кэш.","Es altamente recomendado limpiar la cache.","Oldukça önbelleği temizlemek için tavsiye edilir.","Ini sangat tinggi di rekomendasikan untuk membersihkan cache."),
("150","cache_size","Cache Size:","حجم الكاش:","Cache Size:","Taille du cache:","Cachegröße:","Cache Dimensioni:","Tamanho do cache:","Размер кэша:","Tamaño de Cache:","Önbellek Boyutu:","Ukuran Cache:"),
("151","clear_cache","Clear Cache","مسح الكاش","Clear Cache","Vider le cache","Cache säubern","Pulisci Cache","Limpar Cache","Очистить кэш","Limpiar Cache","Önbelleği","Bersihkan Cache"),
("152","social_login","Social login","دخول التواصل الإجتماعي","Social login","Social login","Social Anmeldung","Social login","Login","Социальный вход","Social login","Sosyal giriş","Social login"),
("153","social_login_api","Social login API&#039;S","ال API الخاص ب الدخول بإستخدام التواصل الإجتماعي","Social login API&#039;S","Social login API&#39;S","Social Anmeldung API&#039;S","Social login API&#039;S","Login API","Социальный вход API &#039;S","APIS sociales","Sosyal giriş APIler","Social login API&#039;S"),
("154","facebook","Facebook","الفسبوك","Facebook","Facebook","Facebook","Facebook","Facebook","Facebook","Facebook","Facebook","Facebook"),
("155","google","Google+","غوغل بلاس","Google+","Google+","Google+","Google+","Google+","Google+","Google+","Google+","Google+"),
("156","twitter","Twitter","تويتر","Twitter","Twitter","Twitter","Twitter","Twitter","Твиттер","Twitter","Twitter","Twitter"),
("157","linkedin","Linkedin","لينكد إن","Linkedin","Linkedin","Linkedin","Linkedin","Linkedin","Linkedin","Linkedin","Linkedin","Linkedin"),
("158","vkontakte","Vkontakte","في كينتاكتا","Vkontakte","Vkontakte","Vkontakte","Vkontakte","Vkontakte","Вконтакте","Vkontakte","Vkontakte","Vkontakte"),
("159","facebook_api","Facebook API","فيسبوك API","Facebook API","Facebook API","Facebook API","Facebook API","Facebook API","Facebook API","Facebook API","Facebook API","Facebook API"),
("160","google_api","Google API","غوغل API","Google API","Google API","Google API","Google API","Google API","Google API","Google API","Google API","Google API"),
("161","twitter_api","Twitter API","تويتر API","Twitter API","Twitter API","Twitter API","Twitter API","Twitter API","Твиттер API","Twitter API","Twitter API","Twitter API"),
("162","linkedin_api","Linkedin API","لينكد إن API","Linkedin API","Linkedin API","Linkedin API","Linkedin API","Linkedin API","Linkedin API","Linkedin API","Linkedin API","Linkedin API"),
("163","vkontakte_api","Vkontakte API","في كينتاكتا API","Vkontakte API","Vkontakte API","Vkontakte API","Vkontakte API","Vkontakte API","Vkontakte API","Vkontakte API","Vkontakte API","Vkontakte API"),
("164","app_id","App ID","رقم التطبيق","App ID","App ID","App ID","App ID","App ID","App ID","ID de aplicaci&amp;oacute;n","App Kimliği","App ID"),
("165","app_secret_key","App Secret Key","مفتاح التطبيق","App Secret Key","App Secret Key","App Geheim Schlüssel","Chiave segreta delle app","Chave Secreta APP","App Секретный ключ","Llave secreta de aplicaci&amp;oacute;n","App Gizli Anahtarı","App Secret Key"),
("166","login_with","Login with","تسجيل الدخول عن طريق:","Login with","Connectez-vous avec","Anmelden mit","Entra con","Logar com","Войдите с","Ingresar con","İle giriş","Login with"),
("167","id","ID","ID","ID","ID","ID","ID","ID","ID","ID","ID","ID"),
("168","source","Source","المصدر","Source","La source","Quelle","Fonte","Source","Источник","Fuente","Kaynak","Source"),
("169","status","Status","الحالة","Status","statut","Status","Stato","Status","Состояние","Estado","Statü","Status"),
("170","pending","Pending","قيد الإنتظار","Pending","en attendant","Anstehend","In atesa","Pendente","В ожидании","Pendiente","Bekleyen","Pending"),
("171","first_name","First name","الإسم","First name","Prénom","Vorname","Nome","Primeiro nome","Имя","Nombre","İsim","Nama pertama"),
("172","last_name","Last name","الكنية","Last name","Nom de famille","Nachname","Cognome","&amp;uacute;ltimo nome","Фамилия","Apellido","Soyadı","Nama tengah dan akhir"),
("173","about_me","About me","عني","About me","A propos de moi","Über mich","Su di me","Sobre","Обо мне","Sobre mi","Benim hakkımda","Tentang diri saya"),
("174","website","Website","الموقع الإلكتروني","Website","Website","Webseite","Sito Web","Website","Веб-сайт","Website","Web Sitesi","Website saya"),
("175","action","Action","عمل","Actie","action","Aktion","Azione","Açao","действие","Acción","Aksiyon","Pilihan"),
("176","show_more_users","Show more users","عرض المزيد من المستخدمين","Show more users","Afficher plus d&#039;utilisateurs","Zeige mehr Benutzer","Mostra piu utenti","Mostrar mais usu&amp;uacute;rios","Показать больше пользователей","Mostrar m&amp;aacute;s usuarios","Daha fazla kullanıcı göster","Tampilkan Pengguna lainya"),
("177","no_more_users_to_show","No more users to show","لا يوجد المزيد","No more users to show","Pas plus aux utilisateurs d&#039;afficher","Keine weiteren Benutzer","Nessun altro utente da mostrare","N&amp;atilde;o me mostre mais usu&amp;uacute;rios","Нет больше пользователей, чтобы показать","No hay m&amp;aacute;s usuarios","Artık kullanıcılar göstermek için","Tidak ada pengguna lain untuk di tampilkan"),
("178","user_delete_confirmation","Are you sure you want to delete this user?","هل أنت متأكد من حفذ هذا المستخدم؟","Are you sure you want to delete this user?","Êtes-vous sûr de vouloir supprimer cet utilisateur?","Diesen Benutzer wirklich löschen?","Sei sicuro di voler eliminare questo utente?","Gostaria mesmo de deletar esse usu&amp;uacute;rio?","Вы уверены, что хотите удалить этого пользователя?","¿Seguro que deseas eliminar este amigo?","Bu kullanıcıyı silmek istediğinizden emin misiniz?","Anda yakin untuk menghapus akun ini tuan admin?"),
("179","post_delete_confirmation","Are you sure you want to delete this post?","هل أنت متأكد من حفذ هذا المنشور؟","Are you sure you want to delete this post?","Es-tu sur de vouloir supprimer cette annonce?","Diesen Beitrag wirklich löschen?","Sei sicuro di voler eliminare questo post?","Gostaria mesmo de deletar esse post?","Вы уверены, что хотите удалить это сообщение?","¿Seguro que deseas eliminar est&amp;aacute; punlicaci&amp;oacute;n?","Bu mesajı silmek istediğinizden emin misiniz?","Anda yakin ingin menghapus pikiran ini tuan admin?"),
("180","show_more_posts","Show more posts","عرض المزيد من المنشورات","Show more posts","Montrer plus d&#039;articles","Zeige mehr Beiträge","Mostra gli altri messaggi","Mostrar mais posts","Показать еще записи","Mostrar m&amp;aacute;s publicaciones","Daha fazla mesajları göster","Tampilkan Pikiran lainya"),
("181","no_more_posts","No more posts","لا يوجد المزيد","No more posts","Pas plus de postes","Keine weiteren Beiträge","Non ci sono altri post","N&amp;atilde;o me mostre mais posts","Нет заметок для отображения","No hay mas publicaciones","Daha mesajlar yok","Tidak ada pikiran lainya"),
("182","no_posts_found","No posts found","لا يوجد منشورات","No posts found","Aucun post trouvé","Keine Beiträge gefunden","nesun post trovato","Nenhum post encontrado","Заметки не найдены","Publicaci&amp;oacute;n no encontrada","Mesajlar yok","Tidak ada pikiran yang di temukan"),
("183","publisher","Publisher","الناشر","Publisher","Éditeur","Herausgeber","Editore","Publicador","опубликовал@","Editor","Yayımcı","Pengirim"),
("184","there_are_not_new_posts_for_now","There are not new post for now","لا يوجد منشورات جديدة","There are not new post for now","Il n&#039;y a pas pour le moment nouveau poste","Derzeit keine neuen Beiträge","Nessun nuovo post per ora","Nenhum post novo","На данный момент нет новых сообщений","No hay mas publicaciones por ahora","Henüz okunmamış Mesaja vardır","Tidak ada kiriman pikiran baru saat ini"),
("185","post_link","Post link","رابط المنشور","Post link","lien Poster","Beitragslink","Post link","Link do post","Заметка ссылка","Publicar link","Mesaj bağlantı","Link Pikiran"),
("186","time","Time","الوقت","Time","Temps","Zeit","Orario","Tempo","Время","Hora","Zaman","Waktu"),
("187","post","Post","المنشور","Post","Poster","Beitrag","Post","Post","Заметка","Publicacion","Mesaj","Pikiran"),
("188","no_posts_yet","{name} has not posted anything yet","{name} لم ينشر أي منشور بعد.","{name} has not posted anything yet","{name} n&#039;a pas encore posté rien","{name} hat noch keine Beiträge erstellt","{name} non ha pubblicato ancora nulla","{name} n&amp;atilde;o postou nada ainda","{name} еще ничего не опубликовано","{name} no ha publicado nada a&amp;uacute;n","{name} bir şey yayınlamadı","{name} Belum membuat pikiran apapun"),
("189","search","Search","بحث","Search","Recherche","Suche","Cerca","Procurar","Поиск","Buscar","Aramak","Cari"),
("190","on","On","تفعيل","On","Sur","An","Attivo","On","Открыт","Encender","Açık","On"),
("191","off","Off","إالغاء","Off","De","Aus","Spento","Off","Закрыт","Apagar","Kapalı","Off"),
("192","save","Save","حفظ","Save","sauvegarder","Speichern","Salva","Salvar","Сохранить","Guardar","Kaydet","Simpan"),
("193","saved","Saved !","تم الحفظ !","Saved !","Enregistré !","Gespeichert!","Salvato !","Salvo !","Сохранено!","¡ Guardado !","Kaydedilen!","Tersimpan !"),
("194","reporter","Reporter","البالغ","Reporter","Journaliste","Meldungen","Rapporter","Usu&amp;uacute;rio","Отчет","Reportes","Muhabir","Pelapor"),
("195","time_reported","Time Reported","زمن التبليغ","Time Reported","temps Rapporté","Meldungs Zeit","Tempo Segnalato","Hor&amp;aacute;rio","Время отчета","Hora reportada","Bildiren Zaman","Waktu dilaporkan"),
("196","there_are_no_new_reports","There are no new reports for now.","لا يوجد تبليغات جديدة","There are no new reports for now.","Il n&#39;y a pas de nouveaux rapports pour l&#39;instant.","Derzeit keine neuen Meldungen.","Non ci sono nuovi report per ora.","Nenhum report novo.","На данный момент нет новых отчетов.","No hay nuevos reportes por ahora.","Henüz yeni raporlar vardır.","There are no new reports for now."),
("197","open_post","Open Post","أفتح المنشور","Open Post","Ouvrir Poste","Beitrag öffnen","Apri il post","Abrir Post","Открыть заметку","Abrir publicaci&amp;oacute;n","Henüz Raporlar Vardır Yeni.","Buka Pikiran"),
("198","mark_safe","Mark Safe","تعيين كآمن","Mark Safe","Mark Safe","Als sicher markieren","Mark sicuro","Marcar como seguro","Безопасно","Marcar como seguro","Mark Güvenli","Tandai aman"),
("199","delete_post","Delete Post","حذف","Delete Post","Delete Post","Beitrag löschen","Cancella questo Post","Deletar Post","Удалить заметку","Eliminar publicaci&amp;oacute;n","Sil","Hapus pikiran"),
("200","advertisement_setting","Advertisement Setting","إعدادات الإعلانات","Advertisement Setting","Cadre Publicité","Werbeeinstellungen","Impostazione Pubblicità","Configura&amp;ccedil;&amp;otilde;es de divulga&amp;ccedil;&amp;atilde;o","Реклама настройки","Configuraci&amp;oacuten; de avisos","Reklam Ayarı","Advertisement Setting");

--
-- Dumping data for table `wo_langs`
--

INSERT INTO wo_langs VALUES
("201","more_setting","More Setting","المزيد","More Setting","plus Cadre","Mehr Einstellungen","Piu Impostazioni","Mais configura&amp;ccedil;&amp;otilde;es","Расширенные настройки","M&amp;aacute;s configuraciones","Daha Ayar","More Setting"),
("202","mailing_users","Mailing list","القائمة البريدية","Mailing list","Liste de diffusion","Mail an alle User","Lista di email","Lista dos emails","Список рассылки","Lista de correos","Mail listesi","Mailing list"),
("203","send","Send","إرسال","Send","Envoyer","Senden","Invia","Enviar","Отправить","Enviar","Gönder","Kirim"),
("204","mailing_subject","Subject..","الموضوع..","Subject..","Assujettir..","Gegenstand..","Subject..","T&amp;iacute;tulo..","Тема..","Tema..","Konu ..","Subject.."),
("205","mailing_message","Message..","الرسالة..","Message..","Message..","Nachricht..","Messaggio..","Mensagem..","Сообщение..","Mensaje..","Mesaj..","Pesan.."),
("206","announcement","Announcement","تصريح","Announcement:","Annonce:","Ankündigung:","Annuncio:","Aviso","Объявление:","Anuncio:","Duyuru:","Pengumuman"),
("207","new_announcement","New announcement","تصريح جديد","New announcement ..","nouvelle annonce ..","Neue Ankündigung ..","Nuovo annuncio ..","Novo aviso","Новое объявление...","Nuevo anuncio ..","Yeni duyuru ..","New announcement"),
("208","add","Add","إضافة","Add","Ajouter","Hinzufügen","Aggiungi","Add","Добавить","Agregar","Ekle","Tambahkan"),
("209","views","Views","الآراء","Uitzichten","Vues","Ansichten","Visualizzazioni","Visualizações","Просмотры","Puntos de vista","Görüntüler","Di lihat"),
("210","there_are_no_active_announcements","There are no active announcements.","لا يوجد تصريحات مفعلة","There are no active announcements.","Il n&#039;y a pas d&#039;annonces actives.","Derzeit keine aktiven Ankündigungen.","Non ci sono annunci attivi.","Nenhum aviso novo.","Нет активных объявлений.","No hay avisos activos.","Aktif duyurular hiç yok.","Di sini belum ada pengumuman yang aktf maupun tidak aktif."),
("211","there_are_no_inactive_announcements","There are no inactive announcements.","لايوجد تصريحات غير مفعلة","There are no inactive announcements.","Il n&#39;y a aucune annonce inactifs.","Derzeit keine Inaktiven Ankündigungen.","Non ci sono annunci inattivi.","Nenhum aviso inativo.","Нет неактивных объявления.","No hay avisos inactivos.","Aktif değil duyurular hiç yok.","There are no inactive announcements."),
("212","add_friend","Add Friend","إضافة صديق","Voeg toe","Ajouter","Als Freund","Aggiungi Amico","Adicionar como amigo","Добавить друга","Agregar amigo","Arkadaş ekle","Tambah sebagai teman"),
("213","follow","Follow","متابعة","Volgen","Suivre","folgen","Segui","Seguir","Следовать","Seguir","Takip et","Ikuti"),
("214","following","Following","متابَعون","Volgend","Suivant","folgt","Following","Seguindo","Следую","Siguiendo","Aşağıdaki","Mengikuti"),
("215","following_btn","Following","متابع","Volgend","Suivant","folgt","Following","Seguindo","Следую","Siguiendo","Aşağıdaki","Di ikuti"),
("216","followers","Followers","متابِعون","Volgers","Les adeptes","verfolger","Followers","Seguidores","Подписчики","Seguidores","İzleyiciler","Pengikut"),
("217","message","Message","رسالة","Stuur bericht","Message","Nachricht","Messaggio","Mensagem","Сообщение","Mensaje","Mesaj","Pesan"),
("218","requested","Requested","طلب","Aangevraagd","Demandé","Gewünscht","richiesto","Requeridos","запрошенный","Pedido","İstenen","Diminta"),
("219","friends_btn","Friends","الإصدقاء","Vrienden","Friends","Freunde","Amici","Amigos","Друзья","Amigos","Arkadaşlar","Teman"),
("220","online","Online","متصل","Online","Online","Online","In Linea","Online","Онлайн","Conectado","Çevrimiçi","Online"),
("221","offline","Offline","غير متصل","Offline","Offline","Offline","Offline","Offline","Оффлайн","Desconectado","Çevrimdışı","Offline"),
("222","you_are_currently_offline","You are currently offline","غير متصل","Je bent momenteel offline","Vous êtes actuellement déconnecté","Du wirst als Offline angezeigt!","Attualmente sei offline","Voc&amp;ecirc; esta offline","На данный момент вы в оффлайн","Est&amp;aacute;s actualmente desconectado.","Şu anda çevrimdışı olan","Anda sedang offline saat ini !!!"),
("223","no_offline_users","No offline users.","لا يوجد أصدقاء غير متصلين","Geen offline mensen.","Aucun utilisateur hors ligne.","Freunde Offline.","Nessun utente in offline.","Nenhum usu&amp;uacute;rio offline.","Нет пользователей оффлайн.","Sin usuarios desconectados.","Hiçbir çevrimdışı kullanıcıları.","Tidak ada pengguna offline."),
("224","no_online_users","No online users.","لا يوجد أصدقاء متصلين","Geen online mensen.","Aucun membre en ligne.","Freunde Online.","Nessun utente in linea.","Nenhum usu&amp;uacute;rio Online.","Нет пользователей онлайн.","Sin usuarios conectados.","Hiçbir online kullanıcılar.","Tidak ada pengguna online."),
("225","search_for_users","Search for users","إبحث عن مستخدمين","Zoek mensen","Recherche d&#039;utilisateurs","Freund suchen","Cerca per utente","Procurar usu&amp;uacute;rios","Поиск пользователей","Buscar usuarios","Kullanıcıları için ara","Pencarian untuk pengguna"),
("226","no_users_found","No users found.","لا يوجد نتائج","Geen mensen gevonden.","Aucun utilisateur trouvé.","Leider kein Treffer.","nessun utente trovato.","Nenhum usu&amp;uacute;rio encontrado.","Не найдено ни одного пользователя.","Usuario no encontrado.","Kullanıcı bulunamadı.","Tidak ada pengguna di temukan."),
("227","seen","Seen","تمت القراءة","Gezien","vu","Gesehen","Visto","Visto","посещений","Visto","Görülme","Di lihat"),
("228","load_more_posts","Load more posts","تحميل المزيد من المنشورات","Laad meer berichten","Chargez plus de postes","Mehr Beiträge laden","Carica piu notizie","Carregar mais posts","Загрузка заметок","Cargar m&amp;aacute;s publicaciones","Daha fazla Mesajları yükle","Muat Pikiran lainya"),
("229","load_more_users","Load more users","تحميل المزيد من المستخدمين","Laad meer mensen","Charger plusieurs utilisateurs","Mehr Benutzer laden","Carica piu utenti","Carregar mais usu&amp;uacute;rios","Загрузить больше","Cargar m&amp;aacute;S usuarios","Daha fazla kullanıcı yükle","Muat pengguna lainya"),
("230","there_are_no_tags_found","No results found for your query.","لا يوجد منشورات حول هذه التاغ","Geen resultaten gevonden.","Aucun résultat n&#039;a été trouvé pour votre recherche.","Keine Ergebnisse für deine Anfrage gefunden.","Nessun risultato corrisponde alla tua richiesta.","Nenhum resultado encontrado.","Не найдено ни одной метки.","Sin resultados para tu b&amp;uacute;squeda.","Bulunan hiçbir etiket bulunmamaktadır.","Tidak ada hasil pada kueri anda"),
("231","there_are_no_saved_posts","You don&#039;t have any saved posts.","لا يوجد منشورات محفوظة","Je hebt geen opgeslagen berichten.","Vous ne disposez pas de messages enregistrés.","Keine gespeicherten Beiträge.","Non avete nessun post salvato.","Voc&amp;ecirc; n&amp;atilde;o tem nenhum post salvo.","Нет сохраненных заметок.","No tienes ning&amp;uacute;na publicaci&amp;oacute;n guardada.","Kaydedilmiş bir konu bulunmuyor.","Kamu tidak memiliki pemikiran yang tersimpan."),
("232","messages","Messages","الرسائل","Berichten","Messages","Nachrichten","Messaggi","Mensagens","Переписка","Mensajes","Mesajlar","Pesan"),
("233","write_something","Write Something ..","أكتب رسالة ..","Schrijf iets ..","Écrire quelque chose ..","Schreibe etwas..","Scrivi qualcosa ..","Escreva algo ..","Напишите что-нибудь...","Escribe algo ..","Bir şey yaz ..","Tulis pesan anda .."),
("234","no_more_message_to_show","No more message","لا يوجد رسائل","Geen berichten om weer te geven","Pas plus un message","Keine weiteren Nachrichten","Niente più messaggi","Nenhuma mensagem nova","Нет больше сообщений","No hay mensajes","Artık mesajı","Tidak pesan lainya"),
("235","view_more_messages","View more messages","تحميل المزيد من الرسائل","Bekijk meer berichten","Voir plus de messages","Mehr Nachrichten ansehen","Vedi più messaggi","Ver mais mensagens","Посмотреть больше сообщений","Ver m&amp;aacute;s mensajes","Daha fazla ileti görüntüle","Lihat pesan lainya"),
("236","sorry_cant_reply","Sorry, you can&#039;t reply to this user.","عذراَ لا يمكنك إرسال رسالة لهذا المستخدم.","Sorry, je kan niet reageren op dit bericht.","Désolé, vous ne pouvez pas répondre à cet utilisateur.","Du kannst diesem Benutzer nicht antworten.","Siamo spiacenti, non è possibile rispondere a questo utente.","Voc&amp;ecirc; n&amp;atilde;o pode responder este usu&amp;uacute;rio.","Извините, вы не можете ответить.","Disculpa, no puedes responder a este usuario.","Maalesef, bu kullanıcı cevap veremezsiniz.","Maaf, anda sudah tidak bisa lagi membalas pesan pada pengguna ini"),
("237","choose_one_of_your_friends","Choose one of your friends","أخنر واحداَ من أصدقائك","Selecteer een van je vrienden","Choisissez un de vos amis","Wähle einen deiner Freunde","Scegli uno dei tuoi amici","Escolha um de seus amigos","Выберите одного из ваших друзей","Elige uno de tus amigos","Arkadaşlarınızla birini seçin","Pilih salah satu teman anda"),
("238","and_say_hello","And Say Hello !","و قل له مرحباً !","En zeg Hallo !","Et dire Bonjour !","und sage Hallo!","E dire Ciao !","E diga ol&amp;aacute; !","И скажите что-нибудь!","¡ Y dile algo!","Ve Merhaba Deyin!","&lt;br&gt;katakan Hola !"),
("239","download","Download","تحميل","Download","Télécharger","Herunterladen","Download","Download","Скачать","Descargar","İndir","Download"),
("240","update_your_info","Update your info","تحديث المعلومات الخاصة بك","Update je informatie","Mettre à jour vos informations","Aktualisiere deine Informationen","Aggiorna le tue informazioni","Atualizar sua informa&amp;ccedil;&amp;atilde;o","Обновите свою информацию","Actualizar tu informaci&amp;oacute;n","Bilgilerinizi güncelleyin","Perbarui informasi mu"),
("241","choose_your_username","Choose your username:","أختر اسم مستخدم خاص بك :","Kies een gebruikersnaam:","Choisissez votre nom d&#039;utilisateur:","Wähle deinen Benutzernamen:","Scegli il tuo username:","Escolha seu nome de usu&amp;uacute;rio:","Выберите ваше имя пользователя:","Escoje tu nombre de usuario:","Kullanıcı adınızı seçin:","Pilih nama akun:"),
("242","create_your_new_password","Create your new password:","أنشء كملنة المرور:","Geef een nieuw wachtwoord op:","Créer votre nouveau mot de passe:","Erstelle dein neues Passwort:","Crea la tua nuova password:","Nova Senha:","Создать новый пароль:","Crear tu nueva contrase&amp;ntilde;a:","Yeni şifrenizi oluşturun:","Buat password baru mu:"),
("243","update","Update","تحديث","Update","Mettre à jour","Aktualisieren","Aggiorna","Atualizar","Обновить","Actualizar","Güncelleme","Perbarui"),
("244","delete_comment","Delete Comment","حذف التعليق","Verwijder reactie","supprimer les commentaires","Kommentar löschen","Ellimina il commento","Deletar coment&amp;aacute;rio","Удалить комментарий","Eliminar comentario","Yorum Sil","Hapus komentar"),
("245","confirm_delete_comment","Are you sure that you want to delete this comment ?","هل أنت متاكد من حذف هذا التعليق ؟","Weet je zeker dat je deze reactie wil verwijderen?","Etes-vous sûr que vous voulez supprimer ce commentaire ?","Diesen Kommentar wirklich löschen ?","Sei sicuro di voler eliminare questo commento ?","Deletar coment&amp;aacute;rio ?","Вы уверены, что хотите удалить этот комментарий?","¿ Seguro que deseas eliminar est&amp;eacute; comentario ?","Bu yorumu silmek istediğinizden emin misiniz?","Anda yakin ingin menghapus komentar ini ?"),
("246","confirm_delete_post","Are you sure that you want to delete this post ?","هل أنت متاكد من حذف هذا المنشور ؟","Weet je zeker dat je dit bericht wil verwijderd?","Etes-vous sûr que vous voulez supprimer ce message ?","Diesen Beitrag wirklich löschen ?","Sei sicuro di voler eliminare questo post?","Deletar post ?","Вы уверены, что хотите удалить эту заметку?","¿ Seguro que deseas eliminar est&amp;aacute; publicaci&amp;oacute;n?","Eğer bu mesajı silmek istediğinizden emin misiniz?","Anda yakin ingin menghapus pikiran ini ?"),
("247","edit_post","Edit Post","تعديل","Wijzig bericht","Modifier le message","Betrag bearbeiten","Modifica Post","Editar Post","Редактировать заметку","Editar Publicaci&amp;oacute;n","Düzenle","Edit Pikiran"),
("248","session_expired","Session Expired","انتهت الجلسة !","Sessie is verlopen","La session a expiré","Sitzung abgelaufen","Sessione scaduta","Sess&amp;ccedil;o expirada","Время сессии истекло","Sesi&amp;oacute;n Expirada","Oturum süresi doldu","Sesi berakhir"),
("249","session_expired_message","Your Session has been expired, please login again.","لقد تم أنتهاء جلستك, الرجاء الدخول مرة أخرى","Je sessie is verlopen, log opnieuw in.","Votre session a expiré, s&#039;il vous plaît vous connecter à nouveau.","Deine Sitzung ist abgelaufen, bitte melde dich erneut an.","La tua sessione è scaduta, effettua il login di nuovo.","Sess&amp;ccedil;o expirada. Fa&amp;ccedil;a login para continuar.","Время сессии истекло, пожалуйста, войдите еще раз.","Tu sesi&amp;oacute;n ha expirado, ingresa nuevamente.","Sizin Oturum süresi dolmuş olması, tekrar giriş yapınız.","Sesi sudah berakhir silakan masuk kembali."),
("250","country","Country","البلد","Land","Pays","Land","Nazione","Pa&amp;iacute;s","Страна","Pa&amp;iacute;s","Ülke","Negara"),
("251","all","All","الكل","Alle","Tous","Alle","Tutti","Tudo","Все","Todo","Hepsi","Semua"),
("252","gender","Gender","الجنس","Geslacht","Genre","Geschlecht","Genere","Genero","Пол","Genero","Cinsiyet","Jenis kelamin"),
("253","female","Female","أنثى","Vrouw","Femelle","Weiblich","Femmina","Mulher","Женский","Mujer","Dişi","Wanita"),
("254","male","Male","ذكر","Man","Mâle","Männlich","Maschio","Homem","Мужской","Hombre","Erkek","Pria"),
("255","profile_picture","Profile Picture","الصورة الشخصية","Profielfoto","Photo de profil","Profilfoto","Immagine del profilo","Imagem de Perfil","Профиль фото","Imagen de perfil","Profil fotoğrafı","Foto profil"),
("256","result","Result","النتائج:","Resultaat:","Résultat:","Ergebnis:","Risultato:","Resultado","Результат:","Resultado:","Sonuç:","Hasil"),
("257","yes","Yes","نعم","Ja","Oui","Ja","Si","Sim","Да","Si","Evet","Ya"),
("258","no","No","لا","Nee","Non","Nein","No","N&amp;atilde;o","Нет","No","Hayır","tidak"),
("259","verified_user","Verified User","حساب موثّق","Bekende Babster","vérifié utilisateur","Verifiziertes Mitglied","Utente Verificato","Contribuidor","Проверенный пользователь","Usuario Verificado","Doğrulanmış Kullanıcı","Penguna terverifikasi"),
("260","change_password","Change Password","تغير كلمة المرور","Wijzig Wachtwoord","Changer le mot de passe","Passwort ändern","Cambiare la password","Mudar Senha","Изменить пароль","Cambiar contrase&amp;ntilde;a","Şifre değiştir","Ganti Password"),
("261","current_password","Current Password","كلمة المرور الحالية","Huidig wachtwoord","Mot de passe actuel","Aktuelles Passwort","Password attuale","Senha Atual","Текущий пароль","Contrase&amp;ntilde;a actual","Şifreniz","Current Password"),
("262","repeat_password","Repeat password","أعادة كلمة المرور","Herhaal wachtwoord","Répéter le mot de passe","Passwort wiederholen","Ripeti la password","Confirme sua senha atual","Повторите пароль","Repetir contrase&amp;ntilde;a","Şifreyi tekrar girin","Repeat password"),
("263","general","General","العامة","Algemeen","Général","Allgemein","Generale","Geral","Основные","General","Genel","Umum"),
("264","profile","Profile","الصفحة الشخصية","Profiel","Profil","Profil","Profilo","Perfil","Профиль","Perfil","Profil","Profil"),
("265","privacy","Privacy","الخصوصية","Privacy","Intimité","Privatsphäre","Privacy","Privacidade","Конфиденциальность","Privacidad","Gizlilik","Privasi"),
("266","delete_account","Delete Account","حذف الحساب","Verwijder je account","Effacer le compte","Konto löschen","Ellimina Account","Deletar conta","Удалить аккаунт","Eliminar cuenta","Hesabım sil","Hapus akun"),
("267","delete_account_confirm","Are You sure that you want to delete your account, and leave our network ?","هل أنت متأكد من حذف حسابك , وترك موقعنا ؟","Weet je zeker dat je je account voor goed wil verwijderen?","Etes-vous sûr que vous voulez supprimer votre compte, et de laisser notre réseau ?","Möchtest du Dein Konto wirklich löschen und &quot;wen-kennt-wer&quot; verlassen?","Sei sicuro di voler eliminare il tuo account, e lasciare la nostra rete?","Deletar conta e sair da nossa rede social ?","Вы уверены, что хотите удалить свой аккаунт, и оставить нашу сеть?","¿ Seguro que deseas eliminar tu cuenta ?","Hesabınızı silmek ve ağımızı ayrılmak istediğinizden emin misiniz?","Anda yakin ingin menghapus akun anda, dan keluar dari jaringan kami ?"),
("268","delete_go_back","No, I&#039;ll Think","لا , ليس الآن.","Nee, liever niet","Non, je vais y réfléchir","Ich möchte nochmal eine Nacht drüber schlafen","No, ci penserò","N&amp;atilde;o, irei pensar melhor.","Нет, я подумаю","No, fue un error","Hayır, bence olacak","Saya pikir tidak jadi."),
("269","verified","Verified","توثيق","Geverifieerd","vérifié","Verifiziert","Verificato","Verificado","Подтвержден","Verificado","Doğrulanmış","Terverifikasi"),
("270","not_verified","Not verified","غير موثّق","Niet Geverifieerd","non vérifié","Nicht verifiziert","Non Verificato","N&amp;atilde;o &amp;eacute; verificado","Не подтвержден","No verificado","Doğrulanmadı","Tidak terverifikasi"),
("271","admin","Admin","مدير","Admin","Administrateur","Admin","Administratore","Admin","Админ","Administrador","Yönetici","Pengguna super"),
("272","user","User","مستخدم","Gebruiker","Utilisateur","Benutzer","Utente","Usu&amp;uacute;rio","Пользователь","Usuario","Kullanıcı","Pengguna biasa"),
("273","verification","Verification","التأكيد","Verificatie","Vérification","Verifizierung","Verifica","Verifica&amp;ccedil;&amp;atilde;o","Верификация","Verificaci&amp;oacute;n","Doğrulama","Verifikasi"),
("274","type","Type","النوع","Type","Type","Typ","Tipo","Tipo","Тип","Tipo","Tip","Type"),
("275","birthday","Birthday","تاريخ الميلاد","Geboortedatum","Anniversaire","Geburtstag","Compleano","Anivers&amp;aacute;rio","Дата рождения","Cumplea&amp;ntilde;os","Doğum Günü","Ulang tahun"),
("276","active","Active","مفعل","Actief","actif","Aktiv","Attivo","Ativo","Активный","Activo","Aktif","Aktif"),
("277","inactive","inactive","غير مفعل","Inactief","inactif","Inaktiv","Innativo","Desativar Login","Неактивный","Inactivo","Pasif","tidak aktif"),
("278","privacy_setting","Privacy Setting","إعدادات الخصوصية","Privacy Instellingen","Paramètre de confidentialité","Privatsphäre Einstellungen","Impostazione di Privacy","Configura&amp;ccedil;&amp;otilde;es de privacidade","Настройки конфиденциальности","Configuraci&amp;oacute;n de privacidad","Gizlilik ayarı","Pengaturan privasi"),
("279","follow_privacy_label","Who can follow me ?","من يستطيع متابعتي ؟","Wie kan mij volgen?","Qui peut me suivre ?","Wer darf mir folgen?","Chi può seguirmi?","Quem pode me seguir ?","Кто может следовать за мной?","¿ Qui&amp;eacute;n puede seguirme ?","Kim beni takip edebilirim?","Siapa yang dapat mengikuti anda?"),
("280","everyone","Everyone","الكل","Iedereen","Toutes les personnes","Jeder","Tutti","Todos","Все","Todos pueden ver","Herkes","Semua orang"),
("281","my_friends","My Friends","أصدقائي","Mijn vrienden","Mes amis","Meine Freunde","Miei amici","Amigos","Мои друзья","Mis Amigos","Arkadaşlarım","Teman saya"),
("282","no_body","No body","لا أحد","Niemand","Personne","Niemand","Nessuno","Ningu&amp;eacute;m","Никто","Nadie","hiçbir vücut","Tidak siapapun"),
("283","people_i_follow","People I Follow","أعضاء أتابعهم","Mensen die ik volg","Les gens que je suivre","Personen denen ich folge","Persone che Seguo","Pessoas que eu sigo","За кем я следую","Personas que sigo","İnsanlar izleyin","People I Follow"),
("284","people_follow_me","People Follow Me","أعضاء يتابعونني","Mensen die mij volgen","Les gens Follow Me","Persone die mir folgen","Persone che mi seguono","Pessoas que me seguem","Кто следует за мной","Personas que me sigue","İnsanlar beni takip etti","People Follow Me"),
("285","only_me","Only me","أنا فقط","Alleen ik","Seulement moi","Nur ich","Solo Io","apenas eu","Только мне","Solo yo","Sadece ben","Hanya saya"),
("286","message_privacy_label","Who can message me ?","من يستطيع إرسال رسالة لي ؟","Wie kan mij een bericht sturen?","Qui peut me message ?","Wer darf mir Nachrichten schreiben?","Chi può inviarmi i messaggi?","quem pode me enviar mensagem ?","Кто может отправлять мне сообщения?","¿Qui&amp;eacute;n puede enviarme mensajes?","Kim bana mesaj olabilir?","Siapa yang bisa mengirim pesan kepada anda?"),
("287","timeline_post_privacy_label","Who can post on my timeline ?","من يستطيع النشر على حائطي ؟","Wie kan mij krabbelen?","Qui peut poster sur mon calendrier ?","Wer darf an meine Pinwand schreiben?","Chi può postare su mia timeline?","quem pode postar na minha linha do tempo ?","Кто может публиковать на моей стене?","¿Qui&amp;eacute;n puede publicar en mi perfil?","Benim zaman çizelgesi üzerinde kim gönderebilir?","Siapa yang dapat menulis di linimasa anda?"),
("288","activities_privacy_label","Show my activities ?","إضهار إنشطتي","Laat mijn activiteiten zien?","Afficher mes activités ?","Zeige meine Aktivitäten?","Visualizza le mie attività?","Mostrar minhas atividades ?","Показывать мою деятельность?","¿Mostrar mi actividad?","Benim faaliyetleri göster?","Siapa yang dapat melihat aktivitas anda ?"),
("289","show","Show","إظهار","Ja","Montrer","Zeigen","Mostra","Mostrar","Показать","Mostrar","Göster","Tampilkan"),
("290","hide","Hide","أخفي","Nee","Cache","Verstecken","Nascondi","Esconder","Скрывать","Ocultar","Gizl","Sembunyikan"),
("291","confirm_request_privacy_label","Confirm request when someone follows you ?","قبول الطلب أو رفضه عندما يتابعك مستخدم ؟","Bevestig verzoek wanneer iemand jou volgt?","Confirmer la demande quand quelqu&#39;un vous suit ?","Anfrage bestätigen wenn mir jemand folgen möchte?","Confermare richiesta quando qualcuno ti segue?","Aceitar que a pessoa te siga ?","Подтверждать запрос когда кто-то следует за вами?","¿Confirmar cuando alguien te sigue?","Birisi size izlediğinde isteği onaylayın?","Confirm request when someone follows you ?"),
("292","lastseen_privacy_label","Show my last seen ?","إظهار أخر ظهور ؟","Laat mijn laatst gezien zien?","Afficher mon dernière fois ?","Zeigen was ich zuletzt gesehen habe?","Mostra mia ultima visita?","Mostrar a &amp;uacute;ltima vez que voc&amp;ecirc; foi visto ?","Показывать мой последний визит?","¿Mostrar mi &amp;uacute;ltima conexi&amp;oacute;n?","Benim son görüldüğü göster?","Tampilkan kapan terakhir kali saya terlihat ?"),
("293","site_eg","(e.g: http://www.siteurl.com)","(مثال: http://www.enbrash.com)","(e.g: http://www.siteurl.com)","(e.g: http://www.siteurl.com)","(z.B.: http://www.meine-seite.de)","(Esempio: http://www.siteurl.com)","(exemplo: http://www.siteurl.com)","(например: http://www.siteurl.com)","(e.j: http://www.siteurl.com)","(örneğin: http://www.siteurl.com)","(e.g: http://www.siteurl.com)"),
("294","profile_setting","Profile Setting","إعدادات الصفحة الشخصية","Profiel Instellingen","Profile Setting","Profil Einstellungen","Impostazioni Profilo","Configura&amp;ccedil;&amp;otilde;es de Perfil","Профиль настройки","Configuraci&amp;oacute;n de perfil","Profil Ayarı","Profile Setting"),
("295","pinned_post","Pinned","مثبت","Vastgezete Bericht","épinglé","Angepinnt","Appuntato","Fixo","Важная","Anotado","Sabitlenmiş","Telah di simpan"),
("296","pin_post","Pin Post","تثبيت","Vastzetten","Pin Poster","Beitrag Anpinnen","Appunta un Post","Fixar post","Закрепить заметку","Anotar publicaci&amp;oacute;n","Pim","Simpan pikiran"),
("297","unpin_post","Unpin Post","إلغاء تثبيت","Niet meer vastzetten","Détacher Poster","Beitrag Abpinnen","Rimuovi il Post Appuntato","Desafixar Post","Снять заметку","Des anotar publicaci&amp;oacute;n","Kaldırılıncaya","Batalkan menyimpan"),
("298","open_post_in_new_tab","Open post in new tab","أفتح في صفحة جديدة","Open bericht in nieuw tapblad","Ouvrir dans un nouvel onglet après","Beitrag in neuem Fenster öffnen","Alberino aperto in una nuova scheda","Abrir post em uma nova aba","Открыть в новой вкладке","Abrir en nueva pestaña","Yeni sekmede aç sonrası","Open post in new tab"),
("299","unsave_post","Unsave Post","إلغاء حفظ المنشور","Verwijderen","unsave Poster","Beitrag nicht mehr speichern","Non salvare post","N&amp;atilde;o salvar post","Не сохранять заметку","No guardar publicaci&amp;oacute;n","Kaydetme Seçeneğini","Hapus tersimpan"),
("300","save_post","Save Post","حفظ المنشور","Opslaan","Sauvegarder Poster","Beitrag speichern","Salva Post","Salvar Post","Сохранить заметку","Guardar publicaci&amp;oacute;n","Kaydet Mesaj","Simpan pikiran");

--
-- Dumping data for table `wo_langs`
--

INSERT INTO wo_langs VALUES
("301","unreport_post","Unreport Post","إلغاء التبليغ","Verwijder Aangeven","Unreport Poster","Beitrag nicht mehr melden","Ellimina segnalazione di questo Post","N&amp;atilde;o reportar Post","Не жаловаться","Quitar reporte","Rapor sil","Batalkan laporan"),
("302","report_post","Report Post","تبليغ المنشور","Bericht aangeven","Signaler le message","Beitrag melden","Segnala questo Post","Reportar Post","Пожаловаться","Reportar publicaci&amp;oacute;n","Rapor","Laporkan Pikiran"),
("303","shared_this_post","Shared this post","شارك هذا المنشور","Heeft dit bericht gedeeld","Partagé ce post","hat diesen Beitrag geteilt","Condividi questo Post","Compartilhar post","поделился этой записью","Comparti&amp;oacute; est&amp;aacute; publicaci&amp;oacute;n","Bu yazı paylaştı","Bagikan pikiran ini"),
("304","changed_profile_picture_male","Changed his profile picture","غير صورته الشخصية","Heeft zijn profielfoto gewijzigd","Changé sa photo de profil","hat sein Profilbild geändert","Cambiato l&#039;immagine del profilo","Mudou sua imagem de perfil","изменил свою фотографию","Cambio su foto de perfil","Onun profil resimlerini değiştirdi","mengubah foto profilnya"),
("305","changed_profile_picture_female","Changed her profile picture","غيرت صورتها الشخصية","Heeft haar profielfoto gewijzigd","A changé sa photo de profil","hat ihr Profilbild geändert","Cambiato sua immagine del profilo","Mudou sua imagem de perfil","изменила свою фотографию","Cambio su foto de perfil","Onun profil resimlerini değiştirdi","mengubah foto profilnya"),
("306","post_login_requriement","Please log in to like,wonder,share and comment !","الرجاء الدخول لعمل إعجاب , تعجب , وكومنت !","Login om te respecteren, te reageren!","S&#039;il vous plaît vous connecter à aimer, étonnant, partager et commenter !","Bitte melde dich zuerst an!","Effettua il login per piacere, meraviglia, condividere e commentare!","Fa&amp;ccedil;a login para compartilhar, curtir, comentar, etc !","Пожалуйста войдите или зарегистрируйтесь, чтобы добавлять &quot;Мне нравится&quot; и комментарии!","¡ Ingresa para dar Like, Comentar, Seguir y muchas cosas m&amp;aacute;s !","Merak, pay gibi ve Yorumlamak için giriş yapınız!","Dimohon masuk untuk, membuat pemikiran, menyukai, berkomentar, membagikan, dan tidak menyukai !"),
("307","likes","Likes","الإعجابات","Respects","Aime","Gefällt mir","Mi piace","Curtiu","Нравится","Me gusta","Beğeniler","Di sukai"),
("308","like","Like","إعجاب","Respect!","Aimer","Gefällt mir","Mi piace","Curtir","Мне нравится","Me gusta","Beğen","Suka"),
("309","wonder","Wonder","تعجب","Wonder","Merveille","Wundert mich","Wonder","N&amp;atilde;o curtir","Удивляться!","Me sorprende","Merak et","Tidak suka"),
("310","wonders","Wonders","التعجبات","Super Respects","Merveilles","Verwundert","Wonders","Dislikes","Удивляться","Me sorprende","Merakler","Tidak di sukai"),
("311","share","Share","شارك","Delen","Partagez","Teilen","Condividi","Compartilhar","Перепост","Compartir","Paylaş","Bagikan"),
("312","comments","Comments","التعليقات","Reacties","commentaires","Kommentare","Commenti","Coment&amp;aacute;rios","Комментарии","Comentarios","Yorumlar","Comments"),
("313","no_likes","No likes yet","لا يوجد إعجابات","Geen respects","Aucune aime encore","Noch keine Gefällt mir Angaben","Non hai ancora un mi piace","Nenhuma curtida ainda","Пока нет &quot;Мне нравится&quot;","Sin Me Gusta","Hiç beğeniler yok","No likes yet"),
("314","no_wonders","No wonders yet","لا يوجد تعجبات","Geen super respects","Pas encore wondres","Noch keine Verwunderungen","Ancora nessun wondres","Nenhum dislike ainda","Неудивительно, пока","Sin Me Sorprende","Hiç merakler yok","No wonders yet"),
("315","write_comment","Write a comment and press enter","اكتب تعليق وأضغط أنتر ..","Schrijf je reactie en druk dan op enter","Ecrire un commentaire et appuyez sur Entrée","Schreibe einen Kommentar und drücke Enter","Scrivi un commento e premere invio","Escreva um coment&amp;aacute;rio e d&amp;ecirc; enter","Напишите комментарий и нажмите клавишу ВВОД","Escribe un comentario y presiona enter","Bir yorum yazın ve enter tuşuna basın ..","Write a comment and press enter"),
("316","view_more_comments","View more comments","إظهار المزيد من التعليقات","Bekijk meer reacties","Voir plus de commentaires","Mehr Kommentare zeigen","Visualizza più commenti","Vizualizar mais coment&amp;aacute;rios","Посмотреть больше комментариев","Ver m&amp;aacute;s comentarios","Daha fazla yorum","Tampilkan komentar lainya"),
("317","welcome_to_news_feed","Welcome to your News Feed !","أهلا بك في صفحة أحدث المنشورات !","Welkom op je tijdlijn !","Bienvenue à votre Nouvelles RSS!","Willkkommen in deinem News-Feed!","Benvenuto nel tuo News Feed!","Bem vindo as nossa not&amp;iacute;cias !","Добро пожаловать в ленту новостей!","¡ Bienvenido a tu muro de noticias !","Hoş geldiniz!","Selamat datang di halaman pikiran AT-Social !"),
("318","say_hello","Say Hello !","قل مرحباً !","Zeg snel Hallo !","Dis bonjour !","Sag Hallo!","Saluta !","Diga Ol&amp;aacute; !","Скажи привет!","¡ Di hola !","Merhaba de !","Katakan Hola !"),
("319","publisher_box_placeholder","What&#039;s going on? #Hashtag.. @Mention.. Link..","ما الذي يحصل الآن ؟ #هاشتاغ .. @إشارة","Hoe gaat het vandaag? #Hashtag.. @Vermeld..","Ce qui se passe? #hashtag ..@Mention..","Was ist los? #Hashtag.. @Erwähnen..","A cosa sti pensando? ..","O que voc&amp;ecirc; esta fazendo? #Hashtag.. @Mencione.. Link..","Что у Вас нового? #Хэштегом... @Упоминание...","¿ Que est&amp;aacute;s pensando ? #Anime #lolis.. @Otakus..","Ne söylemek istersin ? #Hashtag .. @Mansiyon ..","Apa yang anda pikirkan ? #Hashtag.. @Mention.. Link.."),
("320","youtube_link","Youtube Link","رابط اليوتيوب","Youtube Link","Youtube Link","Youtube Link","Youtube Link","Youtube Link","Youtube Ссылка","Link de Youtube","Youtube Bağlantısık","Youtube Link"),
("321","vine_link","Vine Link","رابط الفاين","Vine Link","Vine Link","Vine Link","Vine Link","Vine Link","Vine Ссылка","Link de Vine","Vine Bağlantı","Vine Link"),
("322","soundcloud_link","SoundCloud Link","رابط الساوندكلاود","SoundCloud Link","SoundCloud Link","SoundCloud Link","SoundCloud Link","SoundCloud Link","SoundCloud Ссылка","Link de SoundCloud","Soundcloud Bağlantı","SoundCloud Link"),
("323","maps_placeholder","Where are you ?","أين أنت الآن ؟","Waar ben je ?","Où es tu?","Wo bist du?","Dove ti trovi?","Onde voc&amp;ecirc; esta ?","Это где?","¿ Donde est&amp;aacute;s ?","Neredesin ?","Where are you ?"),
("324","post_label","Post","نشر","Plaats","Poster","LOS","Post","Post","Отправить","Publicar","Gönder","Post"),
("325","text","Text","النصوص","Tekst","Envoyer des textos","Text","Testo","Texto","Заметки","Texto","Metin","Text"),
("326","photos","Photos","الصور","Foto&#039;s","Photos","Fotos","Foto","Fotos","Фото","Fotos","Resimler","Photos"),
("327","sounds","Sounds","الموسيقى","muziek","Des sons","Musik","Musica","Sons","Аудио","Sonidos","Sesler","Sounds"),
("328","videos","Videos","الفيديو","Video&#039;s","Les vidéos","Videos","Video","V&amp;iacute;deos","Видео","Videos","Videolar","Videos"),
("329","maps","Maps","الخرائط","Maps","Plans","Karten","Mappe","Mapas","Карты","Mapas","Haritalar","Maps"),
("330","files","Files","الملفات","Files","Dossiers","Dateien","File","Arquivos","Файлы","Archivos","Dosyalar","Files"),
("331","not_following","Not following any user","لا يوجد متابِعين","Volgt nog geen mensen","Ne pas suivre tout utilisateur","folgt niemandem","Non seguire qualsiasi utente","N&amp;atilde;o segue ningu&amp;eacute;m","Не следовать","No sigues a ning&amp;uacute;n usuario","Herhangi kullanıcıları takip Değil","Not following any user"),
("332","no_followers","No followers yet","لا يوجد متابَعين","Heeft geen volgers","Pas encore adeptes","hat keine Verfolger","Non hai ancora nessuno che ti segue","Nenhum seguidor ainda","Пока нет последователей","Sin seguidores","Henüz takipçileri","No followers yet"),
("333","details","Details","المعلومات العامة","Details","Détails","Einzelheiten","Detagli","Detalhes","Информация","Detalles","Detaylar","Details"),
("334","social_links","Social Links","الروابط الاجتماعية","Sociale Links","Liens sociaux","Sociallinks","Link Sociali","Redes Sociais","Социальные ссылки","Enlaces Sociales","Sosyal Bağlantılar","Social Links"),
("335","online_chat","Chat","الأصدقاء المتصلين","Online vrienden","amis en ligne","Freunde Online","Utenti Attivi","Amigos Online","Друзья онлайн","Amigos Conectados","Çevrimiçi arkadaş","Chat"),
("336","about","About","حول","About","Sur","Über Uns","Su di noi","Sobre","О нас","Pin","Yaklaşık","Tentang"),
("337","contact_us","Contact Us","إتصل بنا","Contact Us","Contactez nous","Kontaktiere uns","Contattaci","Contato","Контакты","Contacto","Bize Ulaşın","Contact Us"),
("338","privacy_policy","Privacy Policy","سياسة الخصوصية","Privacy Policy","politique de confidentialité","Datenschutz","Privacy Policy","Privacidade","Политика","Pol&amp;iacute;tica","Gizlilik Politikası","Privasi keamanan"),
("339","terms_of_use","Terms of Use","شروط الاستخدام","Terms of Use","Conditions d&#039;utilisation","Nutzungsbedingungen","Condizioni d&#039;uso","Termos de Uso","Условия","Condiciones","Kullanım Şartları","Persyaratan penggunaan"),
("340","developers","Developers","المطورين","Developers","Développeurs","Entwickler","Sviluppatori","Desenvolvedores","Разработчикам","Developers","Geliştiriciler","Developers"),
("341","language","Language","اللغة","Language","Langue","Sprache","Lingua","Linguagem","Язык","Idioma","Dil","Bahasa"),
("342","copyrights","Copyright © {date} {site_name}. All rights reserved.","حقوق النشر © {date} {site_name} . جميع الحقوق محفوظة","Copyright © {date} {site_name}. All rights reserved.","Copyright © {date} {site_name}. All rights reserved.","Copyright © {date} {site_name}. Alle Rechte vorbehalten.","Copyright © {date} {site_name}. Tutti i diritti riservati.","Direitos reservados © {date} {site_name}. Todos os direitos reservados.","Авторские права © {date} {site_name}. Все права защищены.","Copyright © {date} {site_name}. Todos los derechos reservados.","Telif hakkı © {date} {site_name}. Bütün haklar saklıdır.","Copyright © {date} {site_name}. All rights reserved."),
("343","year","year","سنة","jaar","an","Jahr","Anno","ano","год","A&amp;ntilde;o","yıl","tahun"),
("344","month","month","شهر","maand","mois","Monat","mese","m&amp;ecirc;s","месяц","mes","ay","bulan"),
("345","day","day","يوم","dag","jour","Tag","giorno","dia","день","d&amp;iacute;a","gün","hari"),
("346","hour","hour","ساعة","uur","heure","Stunde","ora","hora","час","hora","saat","hour"),
("347","minute","minute","دقيقة","minuut","minute","Minute","minuto","minuto","минут","minuto","dakika","menit"),
("348","second","second","ثانية","seconde","deuxième","Sekunde","secondo","segundo","секунд","segundo","saniye","Detik"),
("349","years","years","سنوات","jaren","années","Jahre","anni","anos","лет","a&amp;ntilde;os","yıllar","tahun"),
("350","months","months","اشهر","maanden","mois","Monate","messi","meses","месяцев","meses","aylar","bulan"),
("351","days","days","أيام","dagen","jours","Tage","giorni","dias","дней","d&amp;iacute;as","günler","hari"),
("352","hours","hours","ساعات","uren","des heures","Stunden","ore","horas","часов","horas","saatler","Jam"),
("353","minutes","minutes","دقائق","minuten","minutes","Minuten","minuti","minutos","минут","minutos","dakika","menit"),
("354","seconds","seconds","ثانية","seconden","secondes","Sekunden","secondi","segundos","секунд","segundos","saniye","detik"),
("355","time_ago","ago","منذ","geleden","depuis","","fa","atr&amp;aacute;s","назад","","önce","yang lalu"),
("356","time_from_now","from now","من الآن","van nu","à partir de maintenant","ab jetzt","da adesso","agora","С этого момента","desde ahora","şu andan itibaren","from now"),
("357","time_any_moment_now","any moment now","في أي لحظة الآن","een moment geleden","d un moment","jeden Moment","da un momento all&#039;altro","algum tempo atr&amp;aacute;s","В любой момент","cualquier momento","Şimdi her an","any moment now"),
("358","time_just_now","Just now","ألآن","Net geplaats","Juste maintenant","Gerade eben","Proprio adesso","Neste momento","Прямо сейчас","Ahora","Şu anda","Baru saja"),
("359","time_about_a_minute_ago","about a minute ago","منذ دقيقة","een minuut geleden","Il ya environ une minute","Vor einer Minute","circa un minuto fa","minuto atr&amp;aacute;s","минуту назад","Hace un minuto","yaklaşık bir dakika önce","beberapa menit yang lalu"),
("360","time_minute_ago","%d minutes ago","منذ %d دقائق","%d minuten geleden","%d il y a quelques minutes","vor %d Minuten","%d minuti fa","%d minutos atras","%d минут назад","hace %d minutos","%d dakika önce","%d menit yang lalu"),
("361","time_about_an_hour_ago","about an hour ago","منذ ساعة","een uur geleden","il y a à peu près une heure","Vor einer Stunde","circa un&#039;ora fa","uma hora atr&amp;aacute;s","около часа назад","Hace una hora","yaklaşık bir saat önce","beberapa jam yang lalu"),
("362","time_hours_ago","%d hours ago","منذ %d ساعات","%d uren geleden","%d il y a des heures","vor %d Stunden","%d ore fa","%d horas atras","%d часов назад","Hace %d horas","%d saatler önce","%d jam yang lalu"),
("363","time_a_day_ago","a day ago","منذ يوم","a dag geleden","a Il ya jour","Gestern","a giorni fa","dia atr&amp;aacute;s","день назад","Hace un dia","bir gün önce","beberapa hari yang lalu"),
("364","time_a_days_ago","%d days ago","منذ %d أيام","%d dagen geleden","%d il y a quelques jours","vor %d Tagen","%d giorni fa","%d dias atras","%d дней назад","Hace %d dias","%d gün önce","%d hari yang lalu"),
("365","time_about_a_month_ago","about a month ago","منذ شهر","een maand geleden","il y a environ un mois","vor einem Monat","circa un mese fa","um m&amp;ecirc;s atr&amp;aacute;s","Около месяца назад","Hace un mes","yaklaşık bir ay önce","beberapa bulan yang lalu"),
("366","time_months_ago","%d months ago","منذ %d أشهر","%d maanden geleden","%d il y a des mois","vor %d Monaten","%d mesi fa","%d meses atr&amp;aacute;s","%d месяц назад","Hace %d meses","%d aylar önce","%d bulan yang lalu"),
("367","time_about_a_year_ago","about a year ago","منذ سنة","een jaar geleden","Il ya environ un an","vor einem Jahr","circa un anno fa","um ano atr&amp;aacute;s","около года назад","Hace un año","yaklaşık bir yıl önce","beberapa tahun yang lalu"),
("368","time_years_ago","%d years ago","منذ %d سنوات","%d jaar geleden","%d il y a des années","vor %d Jahren","%d anni fa","%d anos atr&amp;aacute;s","%d много лет назад","Hace %d años","%d yıllar önce","%d tahun yang lalu"),
("369","latest_activities","Latest Activities","آخر النشاطات","Laatste Activiteiten","Dernières activités","Letzte Aktivitäten","Ultimi Attività","&amp;uacute;ltimas atividades","Последнии действия","Actividad reciente","Son Aktiviteler","Aktifitas terakhir"),
("370","no_activities","No new activities","لا يوجد نشاطات","Geen nieuwe activiteiten","Pas de nouvelles activités","Keine neuen Aktivitäten","Non ci sono nuove attività","Nenhuma atividade nova","Нет действий","No hay actividad reciente","Aktiviteler yok","No new activities"),
("371","trending","Trending !","الهاشتاغات النشطة !","Populair!","Trending !","Im Trend!","Tendenza !","Assunto do momento !","Тенденции!","¡ Popular !","Trend!","Trending !"),
("372","load_more_activities","Load more activities","تحميل المزيد من النشاطات","Laad meer activiteiten","Chargez plus d&#39;activités","Weitere Aktivitäten laden","Carica altri attività","Carregar mais atividades","Загрузить больше","Cargar mas actividad","Daha fazla faaliyetleri yükle","Load more activities"),
("373","no_more_actitivties","No more actitivties","لا يوجد المزيد من النشاطات","Geen andere activiteiten","Pas plus d&#39;activités","Keine weiteren Aktivitäten","Nessun altro attività","Nenhuma atividade nova","Нет больше действий","No hay mas actividad","Daha faaliyetler yok","No more actitivties"),
("374","people_you_may_know","People you may know","مستخدمين قد تعرفهم","Mensen die je misschien kent","Les gens que vous connaissez peut-être","Personen die Du vielleicht kennst","Persone che Potresti Conoscere","Pessoas que voc&amp;ecirc; talvez conhe&amp;ccedil;a","Люди, которых вы можете знать","Personas que tal vez conozcas","Tanıyor olabileceğin kişiler","Orang yang mungkin anda kenal"),
("375","too_long","Too long","طويل جداَ","Te lang","Trop long","Zu Lang","Troppo lungo","Muito grande.","Слишком длинный","Muy largo","Too long","Too long"),
("376","too_short","Too short.","قصير جداَ","To kort.","Trop court.","Zu Kurz.","Troppo corto.","Muito curto.","Слишком короткий.","Muy corto.","Too short.","Too short."),
("377","available","Available !","متاح !","Beschikbaar!","Disponible !","Verfügbar!","A disposizione !","Available !","Доступный!","¡ Disponible !","Available !","Available !"),
("378","in_use","In use.","مستخدم","In gebruik.","En service.","In Benutzung.","In uso.","Em uso.","В использовании.","En uso.","In use.","In use."),
("379","username_invalid_characters_2","Username should not contain any special characters, symbols or spaces.","يجب اسم المستخدم أن لا يحتوي على أية أحرف خاصة أو رموز أو مسافات.","Gebruikersnaam mag geen speciale tekens bevatten.","Nom d&#39;utilisateur ne doit pas contenir de caractères, symboles ou espaces spéciaux.","Bitte keine Sonder- oder Leerzeichen verwenden.","Nome utente non deve contenere caratteri speciali, simboli o spazi.","O nome de usu&amp;uacute;rio N&amp;atilde;o deve conter nenhum carectere especial, s&amp;iacute;mbolo ou espa&amp;ccedil;os.","Имя пользователя не должно содержать каких-либо специальных символов или пробелов.","Nombre de usuario no valido, no debe contener s&amp;iacute;mbolos, caracteres especiales o espacios.","Username should not contain any special characters, symbols or spaces.","Username should not contain any special characters, symbols or spaces."),
("380","liked","Liked","معجب","Vond","A aimé","gefällt dir","Piacuto","Curtiu","Нравится","Me gusta","Beğendim","Di sukai"),
("381","my_pages","My Pages","صفحاتي","Mijn pagina&#039;s","Mes Pages","Meine Seiten","Mie Pagine","Minhas P&amp;aacute;ginas","Мои Страницы","Mis páginas","Benim Sayfalar","Halaman saya"),
("382","liked_page","Liked your page ({page_name})","أعجب بصفحتك ({page_name})","Vond je pagina ({page_name})","Aimé votre page ({page_name})","gefällt Deine Seite ({page_name})","Piaciuto tua pagina ({page_name})","Curtiu sua p&amp;aacute;gina ({page_name})","нравится ваша страница ({page_name})","Me gustó tu página ({page_name})","Sayfanızı Beğendi ({page_name})","Liked your page ({page_name})"),
("383","this_week","This week","إعجابات هذا الإسبوع","Deze week","Cette semaine","in dieser Woche","Questa settimana","Essa semana","На этой неделе","Esta semana","Bu hafta","Minggu ini loh"),
("384","posts","posts","المشاركات","posts","des postes","Beiträge","messaggi","Postagens","сообщений","Mensajes","Mesajları","Kiriman"),
("385","located_in","Located in","موجود في","Gelegen in","Situé dans","Wohnt in","Situata in","Localiza&amp;ccedil;&amp;atilde;o","Город","Situado en","Bulunan","Located in"),
("386","phone_number","Phone","الهاتف","Telefoon","Téléphone","Telefon","Telefono","Telefone","Телефон","Teléfono","Telefon","Phone"),
("387","company","Company","شركة","Bedrijf","Compagnie","Unternehmen","Azienda","Empresa","Компания","Empresa","şirket","Company"),
("388","category","Category","القسم","Categorie","Catégorie","Kategorie","Categoria","Categoria","Категория","Categoría","Kategori","Kategori"),
("389","search_for_posts","Search for posts","إبحث عن منشورات","Zoeken naar berichten","Rechercher les messages","Nach Beiträgen suchen","Cerca messaggi","Procurar posts","Поиск заметок","Buscar mensajes","Mesajları ara","Cari untuk Pikiran"),
("390","create_new_page","Create New Page","إنشاء صفحة جديدة","Nieuwe pagina","Créer une page","Neue Seite erstellen","Crea nuova pagina","Criar uma nova p&amp;aacute;gina","Создать страницу","Crear nueva página","Yeni Sayfa Oluştur","Buat halaman baru"),
("391","page_name","Page name","إسم الصفحة (الذي يظهر في رابط الصفحة)","Pagina naam","Nom de la page","Seitenname","Nome della Pagina","Nome da p&amp;aacute;gina","Название","Nombre de la página","Sayfa adı","Page name"),
("392","page_title","Page title","عنوان الصفحة","Pagina titel","Titre de la page","Seitentitel","Titolo della Pagina","T&amp;iacute;tulo da p&amp;aacute;gina","Заголовок","Título de la página","Sayfa başlığı","Page title"),
("393","your_page_title","Your page title","عنوان صفحتك","Uw pagina titel","Votre titre de la page","Dein Seitentitel","Il tuo titolo della Pagina","T&amp;iacute;tulo da sua p&amp;aacute;gina","Заголовок страницы","Tu página de título","Sizin sayfa başlık","Your page title"),
("394","page_category","Page Category","القسم","Pagina Categorie","page Catégorie","Seiten-Kategorie","Categoria","Categoria da p&amp;aacute;gina","Категория","Página Categoría","Sayfa Kategori","Kategori halaman"),
("395","page_description","Page description","حول الصفحة","Pagina beschrijving","Description de la page","Seitenbeschreibung","Descrivi la tua pagina","Descri&amp;ccedil;&amp;atilde;o da p&amp;aacute;gina","Описание страницы","Descripción de la página","Sayfa açıklaması","Page description"),
("396","page_description_info","Your Page description, Between 10 and 200 characters max.","معلومات حول صفحتك","Uw pagina beschrijving, tussen de 10 en 200 karakters max.","Votre description de la page, entre 10 et 200 caractères max.","Deine Seitenbeschreibung, zwischen 10 und 200 Zeichen max.","La tua descrizione pagina, tra i 10 ei 200 caratteri massimo.","A descri&amp;ccedil;&amp;atilde;o da sua p&amp;aacute;gina deve conter entre 10 e 200 caracteres.","Описание страницы между 10 и 200 символов макс.","Su descripción de página, entre 10 y 200 caracteres máx.","10 ve 200 karakter max Arasında Sayfanız açıklama","Your Page description, Between 10 and 200 characters max."),
("397","create","Create","إنشاء","Creëren","Créer","Erstellen","Crea","Criar","Создать","Crear","Yarat","Buat Baru"),
("398","page_name_exists","Page name is already exists.","إسم الصفحة مستخدم بل الفعل","Pagina naam is al bestaat.","Nom de la page est existe déjà.","Seitenname ist bereits vorhanden.","Nome della pagina è esiste già.","O nome dessa p&amp;aacute;gina j&amp;aacute; esta sendo usado.","Название страницы уже существует.","Nombre de la página es que ya existe.","Sayfa adı zaten var olduğunu.","Page name is already exists."),
("399","page_name_characters_length","Page name must be between 5 / 32","إسم الصفحة يجب ان يكون بين 5 الى 32 حرف","Pagina naam moet tussen 5/32","Nom de la page doit être comprise entre 5/32","Seitenname muss zwischen 5 und 32 Zeichen bestehen","Nome della pagina deve essere compresa tra 5/32","O nome da p&amp;aacute;gina deve conter entre 5 / 32 caracteres","Название страницы должно быть между 5/32 символами","Nombre de la página debe estar entre 5/32","Sayfa adı 5/32 arasında olmalıdır","Page name must be between 5 / 32"),
("400","page_name_invalid_characters","Invalid page name characters","صيغة اسم الصفحة خاطئة","Ongeldige pagina naam tekens","Invalides nom de la page caractères","Ungültige Zeichen vorhanden","Caratteri del nome di pagina non valida","Caracteres inv&amp;aacute;lidos","Недопустимые символы в Названии страницы","Caracteres del nombre de la página no válidos","Geçersiz sayfa adı karakterleri","Invalid page name characters");

--
-- Dumping data for table `wo_langs`
--

INSERT INTO wo_langs VALUES
("401","edit","Edit","تصحيح","Bewerk","modifier","Bearbeiten","Modifica","Editar","редактировать","Editar","Düzenleme","Edit"),
("402","page_information","Page Information","معلومات الصفحة","Pagina Informatie","Informations sur la page","Seiteninformationen","Informazioni pagina","Informa&amp;ccedil;&amp;otilde;es da p&amp;aacute;gina","Информация о странице","Página de información","Sayfa Bilgileri","Page Information"),
("403","delete_page","Delete Page","حذف الصفحة","Pagina Verwijderen","supprimer la page","Seite löschen","Ellimina Pagina","Deletar p&amp;aacute;gina","Удалить страницу","Eliminar página","Sayfayı Sil","Delete Page"),
("404","location","Location","موقع","Plaats","Emplacement","Lage","Posizione","localização","Расположение","Ubicación","Konum","Location"),
("405","pages_you_may_like","Pages you may like","صفحات قد تعجبك","Pagina&#039;s die je misschien graag","Pages que vous aimerez","Seiten, die Dir gefallen","Pagine che potete gradire","P&amp;aacute;ginas que talvez voc&amp;ecirc; goste","Рекомендуемые страницы","Páginas que le gustará","Eğer gibi olabilir Sayfalar","Halaman yang mungkin anda suka"),
("406","show_more_pages","Show more pages","أظهر المزيد من الثفحات","Toon meer pagina&#039;s","Voir plus de pages","Zeige mehr Seiten","Mostra più pagine","Mostrar mais p&amp;aacute;ginas","Показать больше страниц","Mostrar más páginas","Daha fazla sayfa göster","Tampilkan halaman lainya"),
("407","no_more_pages","No more pages to show","لا يوجد المزيد","Geen pagina te tonen","No more pages to show","Keine weiteren Seiten vorhanden,","Niente più pagine per mostrare","Nenhuma p&amp;aacute;gina nova para mostrar","Нет больше страниц","No más páginas para mostrar","Yok daha fazla sayfa göstermek için","Tidak ada halaman untuk di tampilkan"),
("408","page_delete_confirmation","Are you sure you want to delete this page?","هل أنت متأكد أنك تريد حذف هذه الصفحة ؟","Bent u zeker dat u deze pagina wilt verwijderen?","Etes-vous sûr de vouloir supprimer cette page?","Bist Du sicher das Du diese Seite löschen möchtest?","Sei sicuro di voler cancellare questa pagina?","Deletar p&amp;aacute;gina?","Вы уверены, что хотите удалить эту страницу?","¿Seguro que quieres borrar esta página?","Bu sayfayı silmek istediğinizden emin misiniz?","Are you sure you want to delete this page?"),
("409","manage_pages","Manage Pages","إدارة الصفحات","Pagina&#039;s beheren","gérer les pages","Seiten verwalten","Gestisci Pagine","Editar p&amp;aacute;ginas","Управление страницами","Gestionar páginas","Sayfaları Yönet","Manage Pages"),
("410","owner","Owner","المدير","Eigenaar","Propriétaire","Inhaber","Proprietario","Dono","Владелец","Propietario","Sahib","Owner"),
("411","no_pages_found","No pages found","لا يوجد صفحات","Geen pagina&#039;s gevonden","Aucune page trouvé","Keine Seiten gefunden","Nessuna pagina trovata","Nenhuma p&amp;aacute;gina encontrada","Не найдено ни одной страницы","No se encontraron páginas","Hiçbir sayfalar bulunamadı","Tidak ada halaman di temukan"),
("412","welcome_wonder","Wonder","تعجب","Wonder","Merveille","Wundern","Wonder","N&amp;atilde;o curtiu","Pintter","Pintter","şaşkınlık","Wonder"),
("413","welcome_connect","Connect","إتصل","Aansluiten","connecter","Verbinden","Connettiti","Conectar","Подключайтесь","Conectar","Bağlamak","Connect"),
("414","welcome_share","Share","شارك","Delen","Partagez","Teilen","Condividi","Compartilhar","Делитесь","Compartir","Pay","Bagikan"),
("415","welcome_discover","Discover","إستكشف","Ontdekken","Découvrir","Entdecken","Scoprire","Descobrir","Знакомьтесь","Descubrir","Keşfedin","Discover"),
("416","welcome_find_more","Find more","جد المزيد","Vind meer","Trouve plus","Mehr fnden","Trova più","Procurar mais","Найдите больше","Encuentra más","Daha fazla bul","Find more"),
("417","welcome_mobile","Mobile Friendly","متناسق مع جميع الأجهزة","Mobile Vriendelijk","mobile bienvenus","100% Mobilfreundlich","Mobile Friendly","Amigos pelo celular","Адаптивный дизайн","Mobile Amistoso","Mobil Dostu","Mobile Friendly"),
("418","welcome_wonder_text","Wonder (NEW), ability to wonder a post if you don&#039;t like it.","تعجب (جديد), ميزة جديدة تستطيع من خلالها التعجب بل المنشورات.","Wonder (NEW), de mogelijkheid om een bericht af of je niet bevalt.","Wonder (NOUVEAU), la capacité à se demander un poste si vous ne l&#39;aimez pas.","(NEU) Wundern, die Möglichkeit, einen Beitrag zu markieren, in Frage zu stellen, weil Du es nicht glaubst oder verstehst.","Wonder (NEW), capacità di stupirsi un post, se non ti piace.","N&amp;atilde;o curtir (NEW), abilidade para N&amp;atilde;o curtir um post.","Свободно и без ограничений, делитесь своими публикациями со всем миром.","Libre y sin restricciones, asombroso para compartir tus publicaciones en todo el mundo.","Eğer beğenmezseniz bir yazı merak (YENİ), yetenek Wonder.","Wonder (NEW), ability to wonder a post if you don&#039;t like it."),
("419","welcome_connect_text","Connect with your family and friends and share your moments.","تواصل مع عائلتك وأصدقائك شارك اللحظات الخاصة بك.","Verbinden met je familie en vrienden en deel je momenten.","Connectez-vous avec votre famille et vos amis et partager vos moments.","Ein modernes soziales Netzwerk für den Kontakt zu Deiner Familie und Freunden.","Connettiti con la tua famiglia e gli amici e condividere i tuoi momenti.","Conecte com seus amigos e fam&amp;iacute;lia, e compartilhe seus momentos.","Общайтесь с вашей семьей и друзьями, поделитесь своими лучшими моментами.","Conéctate con tu familia y amigos para compartir los mejores momentos.","Aileniz ve arkadaşlarınızla bağlamak ve anları paylaşmak.","Connect with your family and friends and share your moments."),
("420","welcome_share_text","Share what&#039;s new and life moments with your friends.","شارك الحظات الجديدة في حياتك مع أصدقائك.","Deel wat nieuw is en het leven momenten met je vrienden.","Partager ce sont des moments de nouvelles et de la vie avec vos amis.","Teile mit Deinen Freunden, Nachbarn und Kollegen alles was neu ist. Zeige was Dir gefällt.","Condividi ciò che è nuovo e la vita momenti con i tuoi amici.","Compartilhe o que acontece em sua vida com seus amigos.","Поделитесь своим контентом с помощью Pintter и получите самое лучшее продвижение.","Comparte todos tus contenidos a través de Pintter y consigue la mejor promoción.","Arkadaşlarınızla yeni ve yaşam anları ne paylaşın.","Share what&#039;s new and life moments with your friends."),
("421","welcome_discover_text","Discover new people, create new connections and make new friends.","إكتشف أشخاص جدد، وأنشىء اتصالات جديدة وكون صداقات جديدة.","Ontdek nieuwe mensen, nieuwe verbindingen te maken en nieuwe vrienden maken.","Découvrez de nouvelles personnes, créer de nouvelles connexions et de faire de nouveaux amis.","Entdecke neue Leute, neue Verbindungen und neue Freunde.","Scoprire nuove persone, creare nuove connessioni e fare nuove amicizie.","Descubra novas pessoas, fa&amp;ccedil;a amigos e se divirta!","Откройте для себя новых людей, создавайте связи и заводите новых друзей.","Descubre nuevas personas, haz nuevas conexiones y nuevos contactos.","Yeni insanlarla keşfedin, yeni bağlantılar oluşturmak ve yeni arkadaşlar.","Discover new people, create new connections and make new friends."),
("422","welcome_find_more_text","Find more of what you&#039;re looking for with WoWonder Search.","أبحث عن ما تريد مع  نظام بحث واواندر","Vind meer van wat je zoekt met WoWonder Search.","Trouver plus de ce que vous n &#039;êtes à la recherche d&#039;avec WoWonder Recherche.","Finde viel mehr, was Du mit wen-kennt-wer-Suche suchst.","Trova più di quello che stai cercando con WoWonder Ricerca.","Veja mais do que voc&amp;ecirc; esta procurando com o WoWonder Search.","Узнайте больше о том, что вы ищете с помощью функции поиска Pintter.","Encuentras más de lo que estás buscando con el nuevo Pintter Buscador.","Eğer WoWonder Arama ile aradığınızı daha bulun.","Temukan lebih banyak dengan AT-Social Searching."),
("423","welcome_mobile_text","100% screen adaptable on all tablets and smartphones.","100% متناسق مع جميع الأجهزة من الهواتف الذكية والتابلت","100% scherm passen op alle tablets en smartphones.","Écran 100% adaptable sur toutes les tablettes et les smartphones.","100% für Dein Tablet und Smartphone angepasst.","Schermo100%  adattato su tutti i tablet e smartphone.","Tela 100% adapt&amp;aacute;vel em todos os tablets e smartphones.","100% адаптируется к любому мобильному экрану, таблету или смарт-устройству.","100% adaptable a cualquier pantalla móvil, tabletas o dispositivo inteligentes.","Tüm tabletler ve akıllı telefonlarda uyarlanabilir %100 ekran.","100% screen adaptable on all tablets and smartphones."),
("424","working_at","Working at","يعمل في","Werken bij","Travailler à","Arbeitet bei","Lavorare in","Trabalhando em","Работает в","Trabajando en","Çalışmak","Working at"),
("425","relationship","Relationship","الحالة الإجتماعية","Verhouding","Relation","Beziehung","Relazione","Relacionamento","Отношения","Relación","ilişki","Hubungan"),
("426","none","None","غير محدد","Geen","Aucun","Keine","Nessuna","Nenhum","Не выбрано","Ninguno","Hiçbiri","None"),
("427","avatar","Avatar","الصورة الشخصية","Avatar","Avatar","Profilbild","Avatar","Avatar","Аватар","Avatar","Avatar","Avatar"),
("428","cover","Cover","الغلاف","Deksel","Couverture","Titelbild","Immagine di copertura","Capa","Обложка","Fondo","Kapak","Cover"),
("429","background","Background","خلفية صفحتك الشحصية","Achtergrond","Contexte","Hintergrund","Sfondo","Fundo","Задний план","Fondo de Pantalla","Geçmiş","Background"),
("430","theme","Theme","الثيم","Thema","Thème","Thema","Temi","Tema","Тема","Tema","Tema","Theme"),
("431","deafult","Default","الإفتراضي","Standaard","Défaut","Standard","Predefinito","Padr&amp;ccedil;o","По умолчанию","Defecto","Standart","Default"),
("432","my_background","My Background","الخاص بي","Mijn Achtergrond","Mon arrière-plan","Mein Hintergrund","Mio Sfondo","Meu fundo","Мой фон","Mi pasado","Benim Arkaplan","My Background"),
("433","company_website","Company website","الموقع الإلكتروني للعمل","Bedrijfs websitee","Site Web de l&#39;entreprise","Unternehmenswebseite","Sito Sociaeta","Site da empresa","Веб-сайт компании","Página Web de la compañía","Şirket Web Sitesi","Company website"),
("434","liked_my_page","Liked My Page","معجبين بصفحتي","Vond Mijn pagina","Aimé Ma Page","gefällt meine Seite","Mi è piaciuta la mia pagina","Curtiu minha p&amp;aacute;gina","Понравилась моя страница","Me gustó mi página","Benim Sayfam Beğendi","Menyukai halaman ku"),
("435","dislike","Dislike","عدم الإعجاب","Afkeer","Aversion","Gefällt mir nicht","Antipatia","N&amp;atilde;o curtir","Не нравится","No me gusta","Beğenmeme","Tidak suka"),
("436","dislikes","Dislikes","غير معجبين","Antipathieën","Dégoûts","Unbeliebt","Antipatia","N&amp;atilde;o curtiu","Не нравится","No le gusta","Sevmedikleri","Tidak menyukai"),
("437","disliked_post","disliked your {postType} {post}","لم يعجب {postType} {post}","hekel aan je {postType} {post}","détesté votre {postType} {post}","gefällt dein Beitrag {postType} {post} nicht","antipatia tuo {postType} {post}","N&amp;atilde;o curtiu seu {postType} {post}","не нравится {postType} {post}","no le gusta tu {postType} {post}","senin {postType} sevmiyordu {post}","Tidak menyukai pikiran anda pada {postType} {post}"),
("438","disliked_comment","disliked your comment &quot;{comment}&quot;","لم يعجب بتعليقك &quot;{comment}&quot;","hekel aan je reactie &quot;{comment}&quot;","détesté votre commentaire &quot;{comment}&quot;","gefällt dein Kommentar &quot;{comment}&quot;","antipatia tuo commento &quot;{comment}&quot;","N&amp;atilde;o curtiu seu coment&amp;aacute;rio &quot;{comment}&quot;","не нравится ваш комментарий &quot;{comment}&quot;","no le gustaba su comentario &quot;{comment}&quot;","sevilmeyen Yorumunuzu &quot;{comment}&quot;","tidak menyukai komentar anda &quot;{comment}&quot;"),
("439","activity_disliked_post","disliked {user} &lt;a class=&quot;main-color&quot; href=&quot;{post}&quot;&gt;post&lt;/a&gt;.","لم يعجب &lt;a class=&quot;main-color&quot; href=&quot;{post}&quot;&gt;بمنشور&lt;/a&gt; {user} .","hekel {user} &lt;a class=&quot;main-color&quot; href=&quot;{post}&quot;&gt;post&lt;/a&gt;.","détesté {user} &lt;a class=&quot;main-color&quot; href=&quot;{post}&quot;&gt;post&lt;/a&gt;.","unbeliebt {user} &lt;a class=&quot;main-color&quot; href=&quot;{post}&quot;&gt; Beitrag &lt;/a&gt;.","antipatia {user} &lt;a class=&quot;main-color&quot; href=&quot;{post}&quot;&gt;post&lt;/a&gt;.","N&amp;atilde;o curtiu {user} &lt;a class=&quot;main-color&quot; href=&quot;{post}&quot;&gt;post&lt;/a&gt;.","{user} не нравится &lt;a class=&quot;main-color&quot; href=&quot;{post}&quot;&gt;пост&lt;/a&gt;.","No me gustó {user} &lt;a class=&quot;main-color&quot; href=&quot;{post}&quot;&gt; posterior &lt;/a&gt;.","Sevmediği {user} &lt;a class=&quot;main-color&quot; href=&quot;{post}&quot;&gt; yazılan &lt;/a&gt;.","Tidak menyukai &lt;a class=&quot;main-color&quot; href=&quot;{post}&quot;&gt;pikiranya&lt;/a&gt; {user}."),
("440","second_button_type","Second post button type","نوع الزر الثاني للمنشور","Tweede post type knop","Deuxième poste de type bouton","Zweiter Likebutton","Secondo palo tipo di pulsante","Segundo tipo de bot&amp;ccedil;o","Второй тип кнопки","Segundo mensaje de tipo botón","İkinci sonrası düğmesi tipi","Second post button type"),
("441","group_name","Group name","إسم المجموعة","Groepsnaam","Nom de groupe","Gruppenname","Nome del gruppo","Nome do grupo","URL группы","Nombre del grupo","Grup ismi","Group name"),
("442","group_title","Group title","عنوان المجموعة","Groep titel","Titre de groupe","Gruppentitel","Titolo del gruppo","T&amp;iacute;tulo do grupo","Название группы","Título del Grupo","Grup başlık","Group title"),
("443","my_groups","My Groups","مجموعاتي","Mijn Groepen","Mes Groupes","Meine Gruppen","I miei gruppi","Meus grupos","Мои группы","Mis grupos","Gruplar","Grup saya"),
("444","school","School","المدرسة","School","L&#39;école","Schule","Scuola","Escola","Школа","Colegio","Okul","School"),
("445","site_keywords_help","Example: social, wowonder, social site","Example: social, wowonder, social site","Example: social, wowonder, social site","Example: social, wowonder, social site","Beispiel: soziale, wen-kennt-wer, soziale Website","Esempio: sociale, wowonder, sito di social","Exemplo: social, wowonder, site social","Пример: социальная сеть, pintter, социальный сайт","Ejemplo:, wowonder, sitio social sociales","Örnek: Sosyal, wowonder, sosyal sitesi","Example: social, wowonder, social site"),
("446","message_seen","Message Seen","الرسائل المقروئة","Bericht Seen","Vu message","Nachricht gesehen","Messaggio Visto","Mensagem lida","Прочитал@","Mensaje Seen","İleti Seen","Message Seen"),
("447","recommended_for_powerful","Recommended for powerful servers","مستحسن للاسيرفرات القوية","Aanbevolen voor krachtige servers","Recommandé pour les puissants serveurs","Empfohlen für leistungsstarke Server","Consigliato per potenti server","Recomendado para servi&amp;ccedil;os pesados","Рекомендуется для мощных серверов","Recomendado para servidores de gran alcance","Güçlü sunucular için önerilen","Recommended for powerful servers"),
("448","message_typing","Chat typing system","نظام &quot;يكتب&quot; للشات","Chat typering systeem","Système de typage chat","Chat Typisierungssystem","Sistema di digitazione Chat","Sistema de digita&amp;ccedil;&amp;atilde;o","Набирает сообщение","Sistema de tipificación de Chat","Sohbet yazarak sistemi","Chat typing system"),
("449","reCaptcha","reCaptcha","reCaptcha","reCaptcha","reCaptcha","reCaptcha","reCaptcha","reCaptcha","ReCaptcha","reCaptcha","Tuttum","reCaptcha"),
("450","instagram","Instagram","الأنستاغرام","Instagram","Instagram","Instagram","Instagram","Instagram","Instagram","Instagram","Instagram","Instagram"),
("451","profile_visit_notification_help","if you don&#039;t share your visit event , you won&#039;t be able to see other people visiting your profile.","اذا لم تفعل زيارة الصفحة , فانك لن تكون قادرا على رؤية الاخرين وهم يزورون صفحتك.","als u niet uw bezoek evenement te delen, zult u niet in staat zijn om andere mensen een bezoek aan uw profiel te zien.","si vous ne partagez pas votre événement de la visite, vous ne serez pas en mesure de voir d&#39;autres gens qui visitent votre profil.","Wenn Du Deine Profilbesuche nicht teilen willst, können andere nicht sehen wenn du ihr Profil besucht hast.","se non si condivide il vostro evento visita, non sarà in grado di vedere altre persone che visitano il tuo profilo.","Se voc&amp;ecirc; N&amp;atilde;o abilitar a notifica&amp;ccedil;&amp;atilde;o de perfil, voc&amp;ecirc; N&amp;atilde;o poder&amp;aacute; ver quem visitou seu perfil.","Если отключить это уведомление, вы не будете получать уведомления о том кто посещал ваш профиль.","Si desactivas esta notificación tu tampoco recibirás avisos de visita de otros usuarios.","Eğer ziyaret olayı paylaşmak yoksa, profilinizi ziyaret eden diğer kişileri görmek mümkün olmayacaktır.","if you don&#039;t share your visit event , you won&#039;t be able to see other people visiting your profile."),
("452","account_delete","Delete Account","حذف الحساب","Account verwijderen","Effacer le compte","Konto löschen","Eliminare l&#039;account","Deletar conta","Удалить аккаунт","Borrar cuenta","Hesabı sil","Delete Account"),
("453","ip_address","IP Address","IP عنوان","IP Address","Adresse IP","IP Adresse","Indirizzo IP","Endere&amp;ccedil;o IP","Айпи адрес","Dirección IP","IP adresi","IP Address"),
("454","manage_groups","Manage Groups","إدارة المجموعات","Groepen beheren","Gérer les groupes","Gruppen verwalten","Gestisci gruppi","Editar grupos","Управление группами","Administrar grupos","Grupları Yönet","Manage Groups"),
("455","group_delete_confirmation","Are you sure you want to delete this group?","هل أنت متأكد أنك تريد حذف هذه المجموعة؟","Bent u zeker dat u deze groep wilt verwijderen?","Êtes-vous sûr de vouloir supprimer ce groupe?","Bist Du sicher das Du diese Gruppe löschen möchtest?","Sei sicuro di voler eliminare questo gruppo?","Deletar este grupo?","Вы уверены, что хотите удалить эту группу?","¿Seguro que quieres borrar este grupo?","Bu grubu silmek istediğinizden emin misiniz?","Are you sure you want to delete this group?"),
("456","no_more_groups","No more groups to show","لا يوجد المزيد من المجموعات","Geen groepen tonen","Pas de plusieurs groupes pour montrer","Keine weiteren Gruppen,","Nessun altro gruppo per mostrare","Nenhum grupo para mostrar","Нет больше групп для отображения","No hay más grupos que mostrar","Artık gruplar göstermek için","Tidak ada grup untuk di tampilkan"),
("457","show_more_groups","Show more groups","عرض المزيد من المجموعات","Toon meer groepen","Montrer plus de groupes","Mehrere Gruppen anzeigen","Mostra più gruppi","Mostrar mais grupos","Показать больше групп","Mostrar más grupos","Daha fazla gruplar göster","Tampilkan lebih banyak grup"),
("458","members","Members","أفراد","leden","Membres","Mitglieder","Utenti","Membros","члены","Miembros","Üyeler","Members"),
("459","verifications_requests","Verification Requests","طلبات الحسابات المؤكدة","Verificatie Verzoeken","Demandes de vérification","Verifizierungsanfragen","Richieste di verifica","Pedidos de verifica&amp;ccedil;&amp;atilde;o","Запросы","Solicitudes verificación","Doğrulama İstekleri","Verification Requests"),
("460","verify","Verify","تأكيد","Verifiëren","Vérifier","Überprüfen","Verificare","Verificar","Добавить","Verificar","Doğrulamak","Verify"),
("461","ignore","Ignore","تجاهل","Negeren","Ignorer","Ignorieren","Ignorare","Ignorar","Игнорировать","Ignorar","Ignore","Ignore"),
("462","page","Page","صفحة","Pagina","Page","Seite","Pagina","P&amp;aacute;gina","Страница","Página","Sayfa","Page"),
("463","no_new_verification_requests","No new verification requests","لا يوجد طلبات جديدة للتحقق","Geen nieuwe verificatie aanvragen","Aucune nouvelle demande de vérification","Keine neuen Verifizierungsanfragen","Non ci sono nuove richieste di verifica","Nenhum pedido de verifica&amp;ccedil;&amp;atilde;o","Нет новых запросов","No hay nuevas solicitudes de verificación","Yeni doğrulama istekleri","No new verification requests"),
("464","ban_user","Ban User","حظر العضو","Ban gebruiker","Ban User","Gesperrte Benutzer","Ban utente","Banir usu&amp;uacute;rio","Забанить","Ban usuario","Ban User","Ban User"),
("465","banned","Banned","المحظور","Verboden","Banned","Verboten","Vietato","Banido","Забанен","Banned","Yasaklı","Banned"),
("466","there_are_no_banned_ips","There are no banned ips.","لا يوجد ips محطورة","Er zijn geen verboden ips.","Il n&#39;y a pas ips interdits.","Es sind keine gesperrte IPs.","Non ci sono ips vietati.","Nenhum IP banido.","Нет забаненных IPS.","No hay ips prohibidas.","Hiçbir yasak ips bulunmamaktadır.","There are no banned ips."),
("467","invalid_ip","Invalid ip address.","عنوان IP غير صالح.","Ongeldig IP-adres.","Adresse IP non valide.","Ungültige IP-Adresse.","Indirizzo IP non valido.","IP inv&amp;aacute;lido.","Неверный IP адрес.","Dirección IP no válida.","Geçersiz IP adresi.","Invalid ip address."),
("468","ip_banned","IP address successfully banned.","عنوان IP حظرت بنجاح.","IP-adres succesvol verbannen.","Adresse IP banni avec succès.","IP-Adresse erfolgreich verboten.","Indirizzo IP vietato con successo.","IP banido.","IP-адрес успешно забанен.","Dirección IP prohibida éxito.","IP adresi başarıyla yasaklandı.","IP address successfully banned."),
("469","ip_exist","IP address already exist","عنوان IP موجودة بالفعل","IP-adres bestaan","Adresse IP existent déjà","Bereits vorhanden IP-Adresse","Indirizzo IP già esistente","J&amp;aacute; existe este IP","IP-адрес уже существует","Dirección IP ya existen","IP adresi zaten mevcut","IP address already exist"),
("470","please_add_ip","Please add an ip address","يرجى إضافة عنوان IP","Voeg een ip-adres","S&#39;il vous plaît ajouter une adresse ip","Bitte füge eine IP-Adresse hinzu","Si prega di aggiungere un indirizzo IP","Adicione um IP","Пожалуйста, добавьте IP адрес","Por favor, añada una dirección IP","Bir ip adresinizi ekleyiniz","Please add an ip address"),
("471","ip_deleted","IP address successfully deleted","عنوان IP حذف بنجاح","IP-adres succesvol verwijderd","Adresse IP supprimé avec succès","IP-Adresse erfolgreich gelöscht","Indirizzo IP eliminato","IP deletado","IP-адрес успешно удален","Dirección IP eliminado correctamente","IP adresi başarıyla silindi","IP address successfully deleted"),
("472","email_me_when","Email me when","أرسل لي عندما","E-mail me als","Envoyez-moi lorsque","Email-Bnachrichtigung, wenn:","Inviami una email quando","Enviar e-mail quando algu&amp;eacute;m","Напишите, когда","Envíame un email:","Bana e-posta","Email me when"),
("473","e_likes_my_posts","Someone liked my posts","شخص اعجب بمنشوري","Iemand hield van mijn berichten","Quelqu&#39;un aimait mes messages","Jemand wundert sich über meinen Beitrag","Qualcuno è piaciuto miei post","Curtir meus posts","Нравятся мои заметки","Cuando a alguien le gusta mis posts","Birisi Mesajları sevdim","Someone liked my posts"),
("474","e_wondered_my_posts","Someone wondered my posts","شخص تعجب بمنشوري","Iemand vroeg me af van mijn berichten","Quelqu&#39;un demanda mes messages","Jemand mag meine Beiträge nicht","Qualcuno chiese miei post","Dar dislike em meus posts","Не нравятся мои заметки","Cuando alguien pregunta en mis posts","Birisi Mesajları merak","Someone wondered my posts"),
("475","e_commented_my_posts","Someone commented on my posts","شخص علق على منشوراتي","Iemand heeft gereageerd op mijn berichten","Quelqu&#39;un a commenté mes messages","Jemand kommentiert meine Beiträge","Qualcuno ha commentato i miei post","Comentar meus posts","Прокомментировали мои заметки","Cuando alguien comenta mis posts","Birisi benim mesajlar yorumladı","Someone commented on my posts"),
("476","e_shared_my_posts","Someone shared on my posts","شخص شارك منشوراتي","Iemand gedeeld op mijn berichten","Quelqu&#39;un partagé sur mes posts","Jemand teilt meine Beiträge","Qualcuno ha condiviso i miei post","Compartilhar meus posts","Поделились моими заметками","Cuando alguien comparte mis posts","Birisi benim yazılarda paylaştı","Someone shared on my posts"),
("477","e_followed_me","Someone followed me","شخص تابعني","Iemand volgde mij","Quelqu&#39;un m&#39;a suivi","Jemand folgt mir","Qualcuno mi ha seguito","Me seguir","Следуют за мной","Cuando alguien me sigue","Biri beni takip","Someone followed me"),
("478","e_liked_page","Someone liked my pages","شخص أعجب بصفحة خاصة بي","Iemand hield van mijn pagina&#039;s","Quelqu&#039;un aimait mes pages","Jemand gefällt meine Seiten","Qualcuno è piaciuto mie pagine","Curtir minha p&amp;aacute;gina","Нравится моя страница","Cuando a alguien le gusta mis páginas","Birisi sayfalarını sevdim","Seseorang menyukai halaman saya"),
("479","e_visited_my_profile","Someone visited my profile","شخص زار صفحتي الشخصية","Iemand bezocht mijn profiel","Quelqu&#39;un a visité mon profil","Jemand hat mein Profil besucht","Qualcuno ha visitato il mio profilo","Visitar meu perfil","Посетили мой профиль","Cuando alguien ha visitó mi perfil","Birisi profilimi ziyaret","Someone visited my profile"),
("480","e_mentioned_me","Someone mentioned me","شخص ذكرني","Iemand noemde me","Quelqu&#39;un a parlé de moi","Jemand erwähnte mich","Qualcuno mi ha detto","Te mencionar","Упомянули меня","Cuando alguien me menciona","Biri bana söz","Someone mentioned me"),
("481","e_joined_group","Someone joined my groups","شخص انضم الى مجموعاتي","Iemand trad mijn groepen","Quelqu&#039;un a rejoint mes groupes","Jemand ist meiner Gruppe beigetreten","Qualcuno è entrato miei gruppi","Entrar no meu grupo","Вступили в мою группу","Cuando alguien se une a mis grupos","Birisi grupları katıldı","Seseorang yang bergabung dengan grup ku"),
("482","e_accepted","Someone accepted my friend/follow requset","شخص قبل طلب صادقتي/متابعتي","Iemand aanvaard mijn vriend / follow verzoek","Quelqu&#39;un a accepté mon ami / suivre la demande","Jemand akzeptiert mein Freundschaftsanfrage","Qualcuno ha accettato il mio amico / seguire la richiesta","Aceitar o meu pedido para seguir/adicionar aos amigos","Приняли дружбу / запрос следовать","Cuando alguien acepta mi petición","Birisi arkadaşım / takip et requset kabul","Someone accepted my friend/follow requset"),
("483","e_profile_wall_post","Someone posted on my timeline","شخص نشر على صفحتي الشخصية","Iemand gepost op mijn timeline","Quelqu&#39;un a posté sur mon calendrier","Jemand hat etwas in mein Profil geschrieben","Qualcuno ha postato su mia timeline","Postar em sua linha do tempo","Публикация на стене профиля","Cuando alguien escribe en mi muro","Birisi benim zaman çizelgesi yayınlanan","Someone posted on my timeline"),
("484","no_groups_found","No groups found","لا يوجد مجموعات","Geen groepen gevonden","Pas de groupes trouvés","Keine Gruppen gefunden","Nessun gruppo trovato","Nenhum grupo encontrado","Группы не найдены","No se encontraron grupos","Grup bulunamadı","Tidak menemukan grup"),
("485","group_information","Group information","معلومات المجموعة","Groep informatie","L&#39;information de groupe","Gruppenthemen","Informazioni Gruppo","Informa&amp;ccedil;&amp;otilde;es do grupo","Информация о группе","Información del Grupo","Grup bilgileri","Group information"),
("486","delete_group","Delete Group","حذف المجموعة","Groep verwijderen","Supprimer le groupe","Gruppe löschen","Elimina gruppo","Deletar grupo","Удалить группу","Eliminar grupo","Grubu Sil","Delete Group"),
("487","group_name_exists","Group name is already exists.","اسم المجموعة موجود بالفعل.","Groepsnaam is al bestaat.","Le nom du groupe est existe déjà.","Gruppenname ist bereits vorhanden.","Il nome del gruppo è già esistente.","Nome do grupo j&amp;aacute; esta em uso.","Название группы уже существует.","El nombre del grupo es ya existe.","Grup adı zaten var olduğunu.","Group name is already exists."),
("488","group_name_invalid_characters","Invalid group name characters","أحرف اسم مجموعة غير صالحة","Ongeldige naam van de groep tekens","Invalides nom de groupe caractères","Ungültige Gruppenname Zeichen","Caratteri del nome del gruppo non validi","Caracteres inv&amp;aacute;lidos","Недопустимые символы в URL группы","Caracteres del nombre de grupo no válido","Geçersiz grup adı karakter","Invalid group name characters"),
("489","group_name_characters_length","Group name must be between 5 / 32","يجب أن يكون اسم المجموعة بين 5/32 حرف","Groepsnaam moet tussen 5/32","Le nom du groupe doit être comprise entre 5/32","Gruppenname muss zwischen 5 und 32 Zeichen bestehen","Il nome del gruppo deve essere compresa tra 5/32","O nome do grupo deve conter entre 5 / 32 caracteres","URL группы должен быть между 5/32 символами","Nombre del grupo debe estar entre 5/32","Grup ismi 5/32 arasında olmalıdır","Group name must be between 5 / 32"),
("490","no_requests_found","No requests found!","لم يتم العثور على أية طلبات!","Geen verzoeken gevonden!","Aucune demande trouvée!","Keine Anfragen gefunden!","Nessuna richiesta trovata!","Não foram encontrados pedidos!","Запросов не найдено!","No se han encontrado solicitudes!","İstek bulunamadı!","No requests found!"),
("491","remove","Remove","إزالة","Verwijderen","Enlever","Entfernen","Rimuovere","Remover","Удалить","Eliminar","Kaldır","Remove"),
("492","no_members_found","No members found","لم يتم العثور على أي أعضاء ","Er zijn geen leden gevonden","Aucun membre trouvé","Keine Mitglieder gefunden","Nessun membro trovato","Nenhum membro encontrado","Участники не найдены","No se encontraron miembros","Üye bulunamadı","No members found"),
("493","group_deleted","Group successfully deleted","تم حذف المجموعة بنجاح","Groep succesvol verwijderd","Groupe supprimé avec succès","Gruppe erfolgreich gelöscht","Gruppo cancellato con successo","Grupo deletado","Группа успешно удалена","Grupo eliminado correctamente","Grup başarıyla silindi","Group successfully deleted"),
("494","create_new_group","Create New Group","إنشاء مجموعة جديدة","Nieuwe groep","Créer un nouveau groupe","Neue Gruppe erstellen","Crea nuovo gruppo","Criar novo grupo","Создать новую группу","Crear nuevo grupo","Yeni Grup Oluştur","Buat grup baru"),
("495","my_games","My Games","ألعابي","Mijn games","Mes Jeux","Meine Spiele","I miei giochi","Meus jogos","Мои игры","Mis juegos","Benim Oyunlar","My Games"),
("496","no_games_found","No games found","لم يتم العثور على ألعاب","Geen games gevonden","Pas de jeux trouvés","Keine Spiele gefunden","Nessun gioco trovato","Nenhum jogo encontrado","Игры не найдены","No se han encontrado juegos","Hiçbir oyun bulunamadı","No games found"),
("497","groups","Groups","المجموعات","Groepen","Groupes","Gruppen","Gruppi","Grupos","Группы","Grupos","Gruplar","Grup"),
("498","no_friends","No friends yet","ليس لديه أصدقاء حتى الآن","Nog geen vriendent","Pas encore d&#39;amis","Noch keine Freunde","Non ci sono ancora amici","Nenhum amigo","Нет друзей","No tiene amigos todavía","Hiç arkadaşım yok","No friends yet"),
("499","no_groups","Didn&#039;t join any groups yet","لم ينضم أي مجموعة حتى الآن","Heeft een groep nog niet mee","N&#039;a pas encore de rejoindre les groupes","Hat noch keiner Gruppe beigetreten","Non ha ancora aderire a nessun gruppo","N&amp;atilde;o entrou em nenhum grupo","Не вступать ни в какие группы","No unirse a ningún grupo todavía","Henüz hiçbir gruba katılmadı","Tidak di perbolehkan dahulu untuk mengikuti grup manapun !"),
("500","load_more_pages","Load more pages","تحميل المزيد من الصفحات","Laad meer pagina&#039;s","Chargez plus de pages","Weitere Seiten laden","Caricare più pagine","Carregar mais p&amp;aacute;ginas","Загрузить больше страниц","Cargar más páginas","Daha fazla sayfaları yük","Muat Halaman Lainya");

--
-- Dumping data for table `wo_langs`
--

INSERT INTO wo_langs VALUES
("501","load_more_groups","Load more groups","تحميل المزيد من المجموعات","Laad meer groepen","Chargez plusieurs groupes","Weitere Gruppen laden","Carica altri gruppi","Carregar mais grupos","Загрузить больше групп","Cargar más grupos","Daha fazla gruplar yükle","Muat lebih banyak grup"),
("502","joined_group","Joined your group ({group_name})","إنضم الى مجموعتك ({group_name})","Toegetreden tot de groep ({group_name})","Rejoint notre groupe ({group_name})","ist deiner Gruppe ({group_name}) beigetreten","Iscritto il nostro gruppo ({group_name})","Entrou no seu grupo ({group_name})","вступил@ в ({group_name})","Se ha unido a tu grupo ({group_name})","Kayıt grup ({group_name})","Joined your group ({group_name})"),
("503","happy","Happy","السعادة","Blij","Heureux","glücklich","Contento","Feliz","Счастливый","Feliz","Mutlu","Senang"),
("504","loved","Loved","الحب","Hield","Aimé","begeistert","Amato","Apaixonado","Влюбленный","Me encantaron","Sevilen","Jatuh cinta"),
("505","sad","Sad","الحزن","Verdrietig","Triste","traurig","Triste","Triste","Грустный","Triste","Üzücü","Sedih"),
("506","so_sad","Very sad","الحزن الشديد","Zeer triest","Très triste","sehr traurig","Molto triste","Muito triste","Очень грустный","Muy triste","Çok üzgün","Sangat sedih"),
("507","angry","Angry","الغضب","Boos","En colère","verärgert","Arrabbiato","Bravo","Злой","Enfadado","Öfkeli","Marah"),
("508","confused","Confused","الحيرة","Verward","Confus","verwirrt","Confuso","Confuso","В замешательстве","Confuso","Şaşkın","Confused"),
("509","smirk","Hot","ساخن","Warm","Chaud","Heiß","Caldo","Sexy","Горячий","Caliente","Sıcak","Hot"),
("510","broke","Broken","الاحباط","Gebroken","Brisé","am Boden zerstört","Rotte","Tra&amp;iacute;do","Сломанный","Roto","Broken","Broken"),
("511","expressionless","expressionless","مستغرب","Wezenloos","Inexpressif","ausdruckslos","Inespressivo","Sem express&amp;atilde;o","Без выражений","inexpresivo","ifadesiz","merasa kurang gairah"),
("512","cool","Cool","الروعة","Koel","Bien","cool","Bene","Legal","Круто","Guay","Güzel","Keren"),
("513","funny","Funny","الضحك","Grappig","Amusant","komisch","Divertente","Divertido","Веселая","Divertido","Komik","Lucu"),
("514","tired","Tired","التعب","Moe","Fatigué","müde","Stanco","Cansado","Устала","Cansado","Yorgun","Menangis"),
("515","lovely","Lovely","محب","Heerlijk","Charmant","sehr verliebt","Bello","Amavel","Прекрасный","Encantador","Güzel","Mencintai"),
("516","blessed","Blessed","المنحة","Gezegend","Béni","gesegnet","Benedetto","AbeN&amp;atilde;oado","Благословенный","Bendito","Mübarek","Taubat"),
("517","shocked","Shocked","الصدمة","Geschokt","Choqué","schockiert","Scioccato","Chocado","В шоке","Conmocionado","Şokta","Terkejut atau shyok"),
("518","sleepy","Sleepy","النعاس","Slaperig","Somnolent","schläfrig","Assonnato","Dormindo","Сонный","Soñoliento","Uykulu","Ngantuk"),
("519","pretty","Pretty","الجمال","Mooi","Assez","hübsch","Bella","Bonito","Милая","bastante","Oldukça","Cantik"),
("520","bored","Bored","الملل","Verveeld","Ennuyé","gelangweilt","Annoiato","Entediado","Скучающий","aburrido","Bıkkın","Bosan"),
("521","total_users","Total Users","كل المستخدمين","Totaal aantal leden","Nombre d&#039;utilisateurs","Benutzer insgesamt","Totale Utenti","Total de usu&amp;uacute;rios","Всего пользователей","Total de usuarios","Toplam Kullanıcılar","Total pengguna"),
("522","users","Users","المستخدمين","Gebruikers","Utilisateurs","Benutzer","Utenti","Usu&amp;uacute;rios","Пользователи","Usuarios","Kullanıcılar","Pengguna"),
("523","pages","Pages","الصفحات","Pagina&#039;s","Pages","Seiten","Pagine","P&amp;aacute;ginas","Страницы","Páginas","Sayfalar","Halaman"),
("524","games","Games","الألعاب","Spelen","Jeux","Spiele","Giochi","Jogos","Игры","Juegos","Oyunlar","Games"),
("525","online_users","Online Users","المستخدمين المتصلين","Online Gebruikers","Utilisateurs en ligne","User online","Utenti Online","Usu&amp;uacute;rios online","Сейчас на сайте","Usuarios en línea","Çevrimiçi Kullanıcılar","Pengguna Online"),
("526","recent_searches","Recent Searches","عمليات البحث الأخيرة","Recente zoekopdrachten","Recherches récentes","Letzte Suche","Ricerche recenti","Procuras recentes","Последние поисковые запросы","Búsquedas recientes","Son aramalar","Hasil pencarian"),
("527","clear","Clear","مسح","Duidelijk","Clair","Klar","Chiaro","Limpar","Очистить","Claro","Açık","Clear"),
("528","search_filter","Search filter","البحث المتقدم","Search filter","Filtre de recherche","Suchfilter","Filtro di ricerca","Filtro de pesquisa","Фильтр поиска","Filtro de búsqueda","Arama filtresi","Saring Pencarian"),
("529","keyword","Keyword","الكلمة","Zoekfilter","Mot-clé","Stichwort","Parola chiave","Palavra-chave","Ключевое слово","Palabra clave","Kelime","Kata kunci"),
("530","what_are_looking_for","What are looking for ?","عن ماذا تبحث؟","Wat zoekt?","Que cherchez?","Was suchst du?","Quello che sono in cerca di ?","O que voc&amp;ecirc; esta procurando ?","Что вы ищете?","¿Que están buscando ?","Ne arıyorsun?","What are looking for ?"),
("531","changed_profile_cover_picture_male","Changed his profile cover","غير صورة الغلاف الخاص به","Veranderd zijn profiel deksel","Changé sa couverture de profil","hat sein Titelbild geändert","Cambiato la sua copertura del profilo","Trocou sua capa de perfil","Сменил обложку","Cambió su foto de perfil","Onun profil kapağı Değiştirildi","Changed his profile cover"),
("532","changed_profile_cover_picture_female","Changed her profile cover","غيرت صورة الغلاف الخاصة بها","Veranderde haar profiel deksel","Changé son profil couvercle","hat ihr Titelbild geändert","Cambiato suo profilo baiar","Trocou sua capa de perfil","Сменила обложку","Cambió su foto de perfil","Onun profil kapağı Değiştirildi","Changed her profile cover"),
("533","latest_games","Latest games","آخر الألعاب","Nieuwste games","Derniers jeux","Neueste Spiele","Ultimi giochi","Jogos novos","Последние игры","Últimos Juegos","Son Eklenen Oyunlar","Latest games"),
("534","no_albums_found","No albums found","لا يوجد البومات","Geen albums gevonden","Aucun album n&#39;a été trouvé","Kein Album gefunden","Nessun album trovato","Nenhum &amp;aacute;lbum encontrado","Альбомов не найдено","No hay álbumes encontrados","Albüm bulunamadı","No albums found"),
("535","create_album","Create album","إنشاء ألبوم","Maak een album","Créer un album","Album erstellen","Creare album","Criar &amp;aacute;lbum","Создать альбом","Crear albúm","Albüm oluştur","Buat album"),
("536","my_albums","My Albums","البوماتي","Mijn Albums","Mes albums","Meine Alben","I miei album","Meus &amp;aacute;lbuns","Мои альбомы","Mis álbumes","Albümlerim","My Albums"),
("537","album_name","Album name","اسم الالبوم","Albumnaam","Nom de l&#39;album","Name des Albums","Nome album","Nome do &amp;aacute;lbum","Название альбома","Nombre del álbum","Albüm adı","Album name"),
("538","upload","Upload","رفع","Uploaden","Télécharger","Hochladen","Caricare","Carregar","Загрузить","Subir","Yükleme","Upload"),
("539","add_photos","Add photos","إضافة صور","Foto&#039;s toevoegen","Ajouter des photos","Fotos hinzufügen","Aggiungi foto","Adicionar fotos","Добавить фотографии","Agregar fotos","Fotoğraf ekle","Add photos"),
("540","replies","Replies","ردود","Antwoorden","Réponses","Antworten","risposte","Respostas","Ответы","Respuestas","Cevaplar","Balasan"),
("541","reply_to_comment","Reply to comment","ردعلى التعليق","Reageer op reactie","Répondre au commentaire","Auf Kommentar antworten","Rispondi al commento","Responder o coment&amp;aacute;rio","Ответить на комментарий","Responder al comentario","Yorumu yanıtla","Reply to comment"),
("542","replied_to_comment","replied to your comment &quot;{comment}&quot;","رد على تعليقك &quot;{comment}&quot;","beantwoord je reactie &quot;{comment}&quot;","répondu à votre commentaire &quot;{comment}&quot;","hat auf Deinen Kommentar geantwortet &quot;{comment}&quot;","Risposto al tuo commento &quot;{comment}&quot;","respondeu seu coment&amp;aacute;rio &quot;{comment}&quot;","ответил@ на ваш комментарий &quot;{comment}&quot;","respondió a tu comentario &quot;{comment}&quot;","Yorumlarınız yanıtladı &quot;{comment}&quot;","membalas komentar anda &quot;{comment}&quot;"),
("543","comment_reply_mention","mentioned you in a reply &quot;{comment}&quot;","ذكرك في رد على تعليق &quot;{comment}&quot;","je genoemd in een antwoord &quot;{comment}&quot;","vous avez mentionné dans une réponse &quot;{comment}&quot;","hat dich in einer Antwort erwähnt &quot;{comment}&quot;","ti ha menzionato in una risposta &quot;{comment}&quot;","mencionou voc&amp;ecirc; em uma resposta &quot;{comment}&quot;","упомянул@ вас в комментарии &quot;{comment}&quot;","te ha mencionado en una respuesta &quot;{comment}&quot;","bir cevapta sizden bahsetti &quot;{comment}&quot;","mentioned you in a reply &quot;{comment}&quot;"),
("544","also_replied","replied to the comment &quot;{comment}&quot;","رد على التعليق &quot;{comment}&quot;","antwoordde op de reactiefeed &quot;{comment}&quot;","répondu au commentaire &quot;{comment}&quot;","hat auf den Kommentar zurück kommentiert &quot;{comment}&quot;","risposto al commento &quot;{comment}&quot;","respondeu o coment&amp;aacute;rio &quot;{comment}&quot;","ответил@ на комментарий &quot;{comment}&quot;","respondió al comentario &quot;{comment}&quot;","yorumuna cevap verdi, &quot;{comment}&quot;","membalas komentar &quot;{comment}&quot;"),
("545","liked_reply_comment","liked your reply &quot;{comment}&quot;","أعجب بردك &quot;{comment}&quot;","vond uw antwoord &quot;{comment}&quot;","aimé votre réponse &quot;{comment}&quot;","gefält deine Antwort &quot;{comment}&quot;","piaciuto vostra risposta &quot;{comment}&quot;","curtiu sua resposta &quot;{comment}&quot;","понравился ваш ответ &quot;{comment}&quot;","gustado su respuesta &quot;{comment}&quot;","Cevabınızı &quot;{comment}&quot; sevdi","Menyukai balasan komentar anda &quot;{comment}&quot;"),
("546","wondered_reply_comment","wondered your reply &quot;{comment}&quot;","تعجب بردك &quot;{comment}&quot;","afgevraagd uw antwoord &quot;{comment}&quot;","demandé votre réponse &quot;{comment}&quot;","wundert sich über deine Antwort &quot;{comment}&quot;","wondered la tua risposta &quot;{comment}&quot;","n&amp;atilde;o curtiu sua resposta &quot;{comment}&quot;","Не нравится ваш ответ &quot;{comment}&quot;","preguntó su respuesta &quot;{comment}&quot;","Cevabınızı &quot;{comment}&quot; merak","wondered your reply &quot;{comment}&quot;"),
("547","disliked_reply_comment","disliked your reply &quot;{comment}&quot;","لم يعجب بردك &quot;{comment}&quot;","hekel aan uw antwoord &quot;{comment}&quot;","détesté votre réponse &quot;{comment}&quot;","gefällt deine Antwort &quot;{comment}&quot;","non amava la sua risposta &quot;{comment}&quot;","n&amp;atilde;o curtiu sua resposta &quot;{comment}&quot;","Не нравится ответ &quot;{comment}&quot;","no le gustaba su respuesta &quot;{comment}&quot;","Cevabınızı &quot;{comment}&quot; sevmiyordu","tidak menyukai balasan komentar anda &quot;{comment}&quot;"),
("548","profile_visit_notification_p","Send users a notification when i visit their profile?","إرسال المستخدمين إخطارا عندما أقوم بزيارة صفحته الشخصية؟","Stuur gebruikers een melding wanneer ik bezoek hun profiel?","Envoyer utilisateurs une notification lorsque je visite son profil?","Benutzern eine Benachrichtigung senden, wenn ich ihr Profil besucht habe?","Inviare agli utenti una notifica durante la mia visita il loro profilo?","Enviar notifica&amp;ccedil;&amp;atilde;o para usu&amp;uacute;rios quando visitar o perfil?","Отправлять пользователям уведомления, когда я посещаю их профили?","¿Enviar a los usuarios aviso de visita?","Ben kendi profilini ziyaret ettiğinizde kullanıcılara bir bildirim gönder?","kirim pemberitahuan kepada pengguna kalau Anda mengunjungi profilnya?"),
("549","showlastseen_help","if you don&#039;t share your last seen , you won&#039;t be able to see other people last seen.","اذا لم تشارك اخر ظهور لك , فانك لن تكون قادرا على رؤية اخر ظهور المستخدمين.","als je het niet eens met je voor het laatst gezien, zult u niet in staat zijn om andere mensen het laatst gezien.","si vous ne partagez pas votre dernière fois, vous ne serez pas en mesure de voir d&#39;autres personnes la dernière fois.","wenn du nicht teilen willst was du dir als letztes angesehen hast, kannst Du auch nicht sehen was andere sich angesehen haben.","se non si condivide il visto l&#039;ultima volta, non sarà in grado di vedere altre persone visto l&#039;ultima volta.","Se voc&amp;ecirc; N&amp;atilde;o compartilhar a &amp;uacute;ltima vez que voc&amp;ecirc; foi visto, voc&amp;ecirc; tamb&amp;eacute;m N&amp;atilde;o poder&amp;aacute; ver a ultima vez que os outros usu&amp;uacute;rios foram vistos.","Если отключить это уведомление, вы не сможете видеть последнее подключение других пользователей..","Si desactivas esta notificación tu tampoco podrás ver la conexión de otros usuarios.","Eğer son görüldüğü paylaşmak yoksa, son görüldüğü diğer insanları görmek mümkün olmayacaktır.","if you don&#039;t share your last seen , you won&#039;t be able to see other people last seen."),
("550","timeline_birthday_label","Who can see my birthday?","من يمكنه رؤية تاريخ ميلادي؟","Wie kan mijn verjaardag zien?","Qui peut voir mon anniversaire?","Wer kann mein Geburtstag sehen?","Chi può vedere il mio compleanno?","Quem pode ver a data do meu anivers&amp;aacute;rio?","Кто может видеть мой день рождения?","¿Quién puede ver mi cumpleaños?","Kim benim doğum günüm görebilir?","Siapa saja yang dapat melihat hari ulang tahun anda?"),
("551","people_likes_this","people like this","مستخدم معجبين بهذا","mensen vinden dit leuk","personnes aiment ce","„Gefällt mir“ Angaben","persone piace questo","pessoas gostaram disso","Нравится","Me gusta","Bu gibi insanlar","orang yang menyukai ini"),
("552","page_inviate_label","Invite friends to like this Page","إدعو أصدقائك للإجاب بهذه الصفحة","Vrienden uitnodigen om deze pagina graag","Inviter des amis à aimer cette page","Freunde einladen, denen diese Seite gefallen könnte","Invita gli amici a piacere questa Pagina","Convidar pessoas para curtir essa p&amp;aacute;gina","Пригласить друзей","Invitar amigos","Sayfaya sevmeye arkadaşlarınızı davet edin","Undang teman atau orang untuk menyukai halaman ini"),
("553","invite_your_frineds","Invite your friends/followers","إدعوا اصدقائك/متابعينك","Nodig je vrienden / volgelingen","Invitez vos amis / followers","Laden Sie Ihre Freunde / Follower","Invita i tuoi amici / seguaci","Convidar seus amigos/seguidores","Пригласить друзей","Invita a tus amigos / seguidores para ver si les gusta esto","Arkadaşların / takipçileri davet","Undang temanmu"),
("554","not_invite","You don&#039;t have any more friends to invite","لا يوجد المزيد للدعوة","U hoeft niet meer vrienden uitnodigen","Vous ne disposez pas d&#039;autres amis à inviter","Du hast keine weiteren Freunde eingeladen","On avete più amici per invitare","Voc&amp;ecirc; j&amp;aacute; convidou todos seus amigos","У Вас нет друзей, чтобы пригласить","No tienes más amigos que invitar...","Davet etmek artık arkadaş yok","Anda belum memiliki teman untuk di undang"),
("555","invite","Invite","إدعو","Nodigen","Invitez","Einladen","Invitare","Convidar","Пригласить","Invitación","Davet etmek","Undang"),
("556","invited_page","invited you to like ({page_name})","دعاك للاعجاب بل الصفحة ({page_name})","u uitgenodigd om te willen ({page_name})","vous invite à aimer ({page_name})","Ich möchte dich gerne zu ({page_name}) einladen","invitato a piacere ({page_name})","Convidou voc&amp;ecirc; para curtir ({page_name})","предлагает вам отметить страницу ({page_name}) как понравившуюся","te invito para ver si te gusta ({page_name})","Hoşunuza davet etti ({page_name})","mengundang anda untuk menyukai halamanya di ({page_name})"),
("557","accepted_invited_page","accepted your request to like ({page_name})","قبل دعوتك للإجاب ب ({page_name})","aanvaard uw verzoek te willen ({page_name})","accepté votre demande d&#039;aimer ({page_name})","Deine Beitrittsanfrage für die Seite ({page_name}) wurde genehmigt","accettato la richiesta di piacere ({page_name})","aceitou sua solicita&amp;ccedil;&amp;atilde;o para curtir ({page_name})","принял@ ваше приглашение в ({page_name})","acepto tu invitación a ({page_name})","İsteğiniz sevmeye kabul edilir ({page_name})","menerima permintaan anda untuk menyukai halaman ({page_name})"),
("558","call_to_action","Call to action","Call to action","Oproep tot actie","Appel à l&#39;action","Was möchtest du tun?","Chiamare all&#039;azione","Ligar a&amp;ccedil;&amp;atilde;o","Призыв к действию","Llamar a la acción","Eylem çağrısı","Call to action"),
("559","call_to_action_target","Call to target url","Call to target url","Bellen om url richten","Appel à l&#39;URL cible","Rufe das URL-Ziel auf","Chiama per indirizzare url","Ligar a uma URL definida","Введите URL сайта","Insertar url","Url hedef Çağrı","Call to target url"),
("560","call_action_type_url_invalid","Call to action website is invalid","Call to action website is invalid","Oproep tot actie website is ongeldig","Appel à l&#39;action est site de invalide","Es besteht Handlungsbedarf, Website ist ungültig","Chiama per il sito di azione non è valido","Website inv&amp;aacute;lido","Неправильный URL","Llamado a la página web de acción no es válido","Eylem web Çağrı geçersiz","Call to action website is invalid"),
("561","avatar_and_cover","Avatar &amp; Cover","الصورة الشخصية والغلاف","Avatar &amp; Cover","Avatar &amp; Cover","Profil- und Titelbild","Avatar &amp; Coprire","Avatar &amp; Capa","Аватар и обложка","Avatar y Fondo","Avatar &amp; Kapak","Avatar &amp; Cover"),
("562","online_sidebar_admin_label","Enable online users to show active users in sidebar.","مكن لإظهار المستخدمين النشطين في الشريط الجانبي.","Toelaten online gebruikers actieve gebruikers te laten zien in de zijbalk.","Permettre aux utilisateurs en ligne pour montrer aux utilisateurs actifs dans la barre latérale.","Aktivieren Internetuser zu aktiven Nutzern in Seitenleiste zeigen.","Abilita utenti per mostrare agli utenti attivi in sidebar.","Permitir que usu&amp;uacute;rios vizualizem os usu&amp;uacute;rios ativos na sidebar.","Включить онлайн-пользователей, показать активных пользователей в боковой панели.","Permita que los usuarios en línea para usuarios activos mostrar en la barra lateral.","Kenar çubuğundaki aktif kullanıcıya göstermek için çevrimiçi kullanıcıları etkinleştirin.","Enable online users to show active users in sidebar."),
("563","not_active","Not active","غير فعال","Niet actief","Pas actif","Nicht aktiv","Non attivo","Não ativo","Не активен","No activo","Aktif değil","Not active"),
("564","females","Females","الإناث","Niet geactiveerd","Femmes","Frauen","Femmine","Mulheres","Женщины","Las hembras","Dişiler","Females"),
("565","males","Males","الذكور","Mannetjes","Les mâles","Männlich","Maschi","Homens","Мужчины","Los machos","Erkekler","Males"),
("566","dashboard","Dashboard","اللوحة الرئيسية","Dashboard","Tableau de bord","Übersicht","Cruscotto","Painel","Информационная панель","Tablero de instrumentos","Dashboard","Dashboard"),
("567","albums","Albums","الألبومات","Albums","Albums","Alben","Albums","&amp;aacute;lbuns","Альбомы","Álbumes","Albümler","Albums"),
("568","name","Name","الإسم","Naam","Prénom","Name","Nome","Nome","Имя","Nombre","Isim","Name"),
("569","players","Players","اللاعبين","Spelers","Des joueurs","Spieler","Giocatori","Jogadores","Игроки","Jugadores","Oyuncular","Players"),
("570","add_new_game","Add New Game","إضافة لعبة جديدة","Voeg een nieuwe game","Ajouter un nouveau jeu","Neues Spiel hinzufügen","Aggiungi nuovo gioco","Adicionar um novo jogo","Добавить новую игру","Añadir Nuevo Juego","Yeni Oyun Ekle","Add New Game"),
("571","game_added","Game added","تم الإضافة بنجاح","Spel toegevoegd","jeu ajouté","Spiel hinzugefügt","Gioco aggiunto","Jogo adicionado","Игра добавлена","Juego añadió","Oyun eklendi","Game added"),
("572","url_not_supported_game","This url is not supported","هذا الرابط غير مدعوم","Deze url wordt niet ondersteund","Cet URL est pas pris en charge","Diese URL wird nicht unterstützt","Questo URL non è supportata","URL inv&amp;aacute;lida","Этот URL-адрес не поддерживается","Esta url no es compatible","Bu url desteklenmiyor","This url is not supported"),
("573","please_add_a_game","Please add a game url","يرجى إضافة رابط لعبة","Voeg dan een spel url","S&#39;il vous plaît ajouter une url de jeu","Bitte füge ein Spiel hinzu","Si prega di aggiungere un URL di gioco","Please add a game url","Пожалуйста, добавьте игру URL","Por favor, añada una url juego","Bir oyun url ekleyin","Please add a game url"),
("574","active_announcements","Active announcements","إعلانات نشطة","actieve aankondigingen","Annonces actives","Aktive Ankündigungen","Annunci attivi","Avisos ativos","Активные объявления","Anuncios activos","Aktif duyurular","Active announcements"),
("575","inactive_announcements","Inactive announcements","إعلانات غير نشطة","inactief aankondigingen","Annonces inactifs","Inaktive Ankündigungen","Annunci inattivi","Avisos in&amp;aacute;tivos","Неактивные объявления","Anuncios inactivos","Etkin olmayan duyurular","Inactive announcements"),
("576","ban","Ban","حظر","Ban","Ban","Verbot","Bandire","Ban","Запрет","Prohibición","Yasak","Ban"),
("577","new_email","New E-mail","رسالة جديدة","Nieuwe E-mail","Nouveau E-mail","Neue Email","Nuova Email","Novo e-mail","Новый E-mail","Nuevo Email","Yeni e-posta","New E-mail"),
("578","html_allowed","Html allowed","ال html مسموح","Html toegestaan","HTML autorisée","HTML erlaubt","Html permesso","HTML permitida","HTML разрешено","Html permitido","Html izin","Html allowed"),
("579","send_me_to_my_email","Send to my email","ارسل الى بريدي الالكتروني","Stuur naar mijn e-mail","Envoyer à mon e-mail","An meine Emailadresse senden","Invia alla mia email","Enviar para o meu email","Отправить на мою электронную почту","Enviar a mi correo electrónico","Benim e-posta gönder","Send to my email"),
("580","test_message","Test message","جرب الراسلة أولا","Test bericht","Message test","Testnachricht","Messaggio di testo","Mensagem teste","Тестовое сообщение","Mensaje de prueba","Deney mesajı","Test message"),
("581","joined_members","Joined Members","الأعضاء","Toegetreden leden","Membres Inscrit","Registrierte Mitglieder","Iscritto membri","Membros","Регистрация Пользователей","Miembros Antigüedad","Katılım Üyeler","Joined Members"),
("582","join_requests","Join Requests","طلبات الإنضمام","Join Verzoeken","Rejoignez Demandes","Registrierte Anfragen","Join Richieste","Pedidos para entrar","Регистрация запросов","Únete Solicitudes","İstekler katılın","Join Requests"),
("583","verified_pages","Verified Pages","الصفحاتالؤكدة","Verified Pages","Pages Vérifié","Verifizierte Seiten","Verificato Pagine","P&amp;aacute;ginas verificadas","Официальные страницы","Verificado Páginas","Doğrulanmış Sayfalar","Verified Pages"),
("584","file_sharing_extenstions","File sharing extensions (separated with comma,)","ملحقات تبادل الملفات (مفصولة بفاصلة،)","Sharing bestandsextensies (gescheiden met een komma,)","","Daten-Transfer-Erweiterungen (mit Komma getrennt,)","Estensioni di file sharing (separati da una virgola,)","Compartilhar arquivos (separados por uma v&amp;iacute;rgula,)","Расширения обмена файлов (через запятую,)","Extensiones de intercambio de archivos (separados con comas,)","Dosya paylaşımı uzantıları (virgül ile ayrılmış)","File sharing extensions (separated with comma,)"),
("585","word_cons","Words to be censored, separated by a comma (,)","كلمات البذيئة، مفصولة بفاصلة (،)","Woorden worden gecensureerd, gescheiden door een komma (,)","Partage de fichiers extensions (séparées par des virgules,)","Zensierte Worte mit einem Komma trennen, (,)","Parole da censurati, separati da una virgola (,)","Palavras censuradas, separadas por v&amp;iacute;rgula (,)","Слова подвергаться цензуре, разделенных запятыми (,)","Palabras para ser censurados, separados por una coma (,)","Kelimeler sansür edilmesi, virgülle ayrılmış (,)","Words to be censored, separated by a comma (,)"),
("586","join","Join","أنضم","Toetreden","Joindre","Beitreten","Aderire","Entrar","Вступить","Unirse","Katılmak","Join"),
("587","joined","Joined","منضم","Geregistreerd","Inscrit","Beigetreten","Iscritto","Entrou","Выйти","Unido","Katılım","Joined"),
("588","request","Request","اطلب","Verzoek","Demande","Anfordern","Richiesta","Solicitar","Запрос","Petición","İstek","Request"),
("589","edit_comment","Edit comment","تحرير تعليق","Reactie bewerken","Modifier commentaire","Kommentar bearbeiten","Modifica commento","Editar coment&amp;aacute;rio","Редактировать комментарий","Editar comentario","Düzenleme Yorum","Edit comment"),
("590","last_play","Last Play:","آخر نشاط","Laatste Play:","Dernière lecture:","Letztes Spiel:","Ultimo Gioco:","&amp;uacute;ltimo jogo:","Последняя игра:","Último juego:","Son Oyun:","Last Play:"),
("591","play","Play","العب","Spelen","Joue","Spielen","Giocare","Jogar","Играть","Jugar","Oyna","Play"),
("592","confirm_request_group_privacy_label","Confirm request when someone joining this group ?","إرسال طلب عندما يقوم شخص بل الإنضمام لهذه المجموعة؟","Bevestigt aanvraag als iemand mee deze groep?","Confirmer la demande lorsque quelqu&#39;un se joindre à ce groupe?","Anfrage bestätigen, wenn jemand dieser Gruppe beitreten will?","Confermare richiesta quando qualcuno entrare in questo gruppo ?","Confirmar solicita&amp;ccedil;&amp;atilde;o quando algu&amp;eacute;m quiser fazer parte do grupo ?","Подтверждать запрос когда, кто-то хочет присоединиться к этой группе?","Confirmar pedido cuando alguien unirse a este grupo?","Birisi bu gruba katılmadan isteği onaylayın?","Confirm request when someone joining this group ?"),
("593","who_can_see_group_posts","Who can see group&#039;s posts ?","Who can see group&#039;s posts ?","Wie kan groepen berichten zien?","Qui peut voir des groupes messages?","Wer kann Gruppenbeiträge sehen?","Chi può vedere gruppi di messaggi?","Quem pode ver os posts do grupo ?","Кто может видеть сообщения группы?","¿Quién puede ver los mensajes de este grupo?","Kim grubun mesajları görebilirim?","Siapa yang dapat melihat kiriman grup anda ?"),
("594","joined_users","Joined users","الأعشاء المنضمين","Geregistreerd gebruikers","Inscrit utilisateurs","Registriert Nutzer","Iscritto utenti","Usu&amp;uacute;rios","Вступившие пользователи","Usuarios Antigüedad","Katılım kullanıcılar","Pengguna yang bergabung"),
("595","living_in","Living in","يسكن في","Leven in","Vivre dans","Lebt in","Residente a","Morando em","Страна","Viviendo en","Yaşayan","Tinggal di"),
("596","design","Design","تصميم","Design","Design","Design","Design","Design","дизайн","Desiño","Dizayn","Design"),
("597","people_you_may_want_to_meet","People you may want to meet","Pأعضاء قد ترغل في لقائهم","Mensen die je misschien wilt ontmoeten","Les personnes que vous pouvez rencontrer","Vielleicht kennst du","La gente si consiglia di rispettare","Pessoas que voc&amp;ecirc; talvez conhe&amp;ccedil;a","Люди, которых вы можете знать","La gente es posible que desee conocer","İnsanlar karşılamak isteyebilirsiniz","People you may want to meet"),
("598","added_new_photos_to","added new photos to","أضاف صور جديدة الى","Toegevoegd nieuwe foto&#039;s aan","ajoutés nouvelles photos à","hat neue Fotos hinzugefügt","aggiunte nuove foto","adicionou novas fotos","Добавлены новые фотографии в","añadido nuevas fotos a","eklenen yeni fotoğraf","added new photos to"),
("599","is_feeling","is feeling","يشعر ب","is het gevoel","est le sentiment","ist","è la sensazione","se sentindo","это чувство","es la sensación","duygu olduğunu","sedang merasa"),
("600","is_traveling","is traveling to","يسافر إلى","is reizen naar","se rend à","ist auf Reisen","è un viaggio in","viajando para","едет в","está viajando a","için seyahat ediyor","is traveling to");

--
-- Dumping data for table `wo_langs`
--

INSERT INTO wo_langs VALUES
("601","is_listening","is listening to","يستمع إلى","luistert naar","écoute","hört zu","è l&#039;ascolto","ouvindo","слушает","está escuchando","dinliyor","is listening to"),
("602","is_playing","is playing","يلعب ب","speelt","est en train de jouer","spielt","sta giocando","jogando","играет","está jugando","oynuyor","is playing"),
("603","is_watching","is watching","يشاهد","is aan het kijken","regarde","beobachtet","sta guardando","assistindo","смотрит","esta viendo","izliyor","is watching"),
("604","feeling","Feeling","يشعر","Gevoel","Sentiment","Gefühl","Sensazione","Sentindo","Настроение","Sensación","Duygu","Feeling"),
("605","traveling","Traveling to","يسافر","Reizen naar","Voyager à","Reisen","In viaggio verso","Viajando para","Путешествую","Viajando a","Seyahat","Traveling to"),
("606","watching","Watching","يشاهد","Kijken","En train de regarder","Ansehen","Guardando","Assistindo","Смотрю","Acecho","İzlenen","Watching"),
("607","playing","Playing","يلعب","Spelen","En jouant","Spielend","Giocando","Jogando","Играю","Jugando","Oynama","Playing"),
("608","listening","Listening to","يستمع إلى","Luisteren naar","Écouter","Hören","Ascoltare","ouvindo","Слушаю","Escuchar","Dinliyorum","Listening to"),
("609","feeling_q","What are you feeling ?","بماذا تعشر؟","Wat voel je ?","Que ressentez vous ?","Was fühlst du ?","Cosa senti ?","Como voc&amp;ecirc; esta se sentindo ?","Что чувствуете?","Que estás sintiendo ?","Ne hissediyorsun ?","Sedang merasa apakah anda ?"),
("610","traveling_q","Where are you traveling ?","الى أين تسافر","Waar wilt u verblijven?","Où êtes-vous?","Wohin möchtest du reisen?","Dove si viaggia ?","Para onde esta viajando ?","Куда едите?","A donde viajas ?","Nereye seyahat?","Where are you traveling ?"),
("611","watching_q","What are you watching ?","ماذا تشاهد؟","Waar ben je naar aan het kijken ?","Qu&#039;est-ce que vous regardez ?","Was schaust Du ?","Cosa stai guardando ?","O que esta assistindo ?","Что смотришь?","Qué estás viendo ?","Ne izliyorsun ?","Sedang menonton apakah anda ?"),
("612","playing_q","What are you Playing ?","ماذا تلعب؟","Wat ben je aan het spelen ?","A quoi tu joues ?","Was spielst du ?","A cosa stai giocando ?","O que esta jogando ?","Во что играешь?","¿A qué juegas?","Ne oynuyorsun ?","Sedang bermain apakah anda ?"),
("613","listening_q","What are you Listening to ?","إلى ماذا تستمع؟","Waar ben je naar aan het luisteren ?","Qu&#039;écoutes-tu ?","Was hörst du ?","Cosa stai ascoltando ?","O que esta ouvindo ?","Что слушаешь?","Qué estás escuchando ?","Ne dinliyorsun ?","Sedang mendengar apakah anda ?"),
("614","feel_d","What are you doing ?","ماذا تغعل؟","Wat ben je aan het doen ?","Qu&#039;est-ce que tu fais ?","Was machst Du?","Che stai facendo?","O que esta fazendo ?","Что делаете?","Que estas haciendo ?","Ne yapıyorsun ?","Sedang apakah anda ?"),
("615","studying_at","Studying at","يدرس في","Studeren aan","Etudier à","Studiert an","Studiare a","Estudando em","Образование","Estudiando en","Öğrenim","Studying at"),
("616","company_website_invalid","Company website is invalid","موقع الشركة غير صالح","Website van het bedrijf is ongeldig","Site de la société est invalide","Unternehmens-Website ist ungültig","Sito internet della Società non è valido","Site da empresa inv&amp;aacute;lido","Веб-сайт компании является недействительным","Página web de la empresa no es válido","Şirket web sitesi geçersiz","Company website is invalid"),
("617","page_deleted","Page deleted successfully","الصفحة حذفت بنجاح","Pagina succesvol verwijderd","Page supprimée avec succès","Seite erfolgreich gelöscht","Pagina eliminato con successo","P&amp;aacute;gina deletada","Страница успешно удалена","Página eliminado correctamente","Sayfa başarıyla silindi","Page deleted successfully"),
("618","cover_n_label","cover image.","صورة الغلاف.","Bedekken afbeelding.","Image de couverture.","Titelbild.","immagine di copertina.","Capa.","обложка.","Imagen de portada.","Kapak resmi.","cover image."),
("619","suggested_groups","Suggested groups","المجموعات المقترحة","Suggereerde groepen","Suggestion de groupes","Empfohlene Gruppen","Gruppi consigliati","Grupos sugeridos","Рекомендуемые группы","Grupos sugeridos","Önerilen gruplar","Saran Grup"),
("620","accepted_join_request","accepted your request to join ({group_name})","قبل طلب للإنضمام الى ({group_name})","aanvaard uw verzoek om lid te worden ({group_name})","accepté votre demande d&#39;adhésion ({group_name})","Deine Beitrittsanfrage wurde akzeptiert ({group_name})","accettato tua richiesta di iscrizione ({group_name})","aceitou sua solicita&amp;ccedil;&amp;atilde;o para se juntar ao ({group_name})","Запрос принят на вступление в ({group_name})","aceptó su solicitud para unirse ({group_name})","İsteğiniz katılmak için kabul edilir ({group_name})","accepted your request to join ({group_name})"),
("621","requested_to_join_group","requested to join your group","طلب منك الإنضمام الى مجموعتك","verzocht om uw groep aan te sluiten","demandé à rejoindre votre groupe","lädt dich ein, dieser Gruppe beizutreten","richiesto di unirsi al vostro gruppo","pediu para entrar no seu grupo","хочет присоединиться к вашей группе","solicitado a unirse a su grupo","senin gruba katılmak istedi","requested to join your group"),
("622","no_one_posted","No one posted yet","لا يوجد اي منشور بعد","Maar niemand geplaatst","Personne encore posté","Doch niemand geschrieben","Nessuno ha scritto ancora","Nenhum post ainda","Еще ничего не опубликовано","Nadie ha escrito todavía","Henüz hiç kimse gönderildi","No one posted yet"),
("623","add_your_frineds","Add your friends to this group","إضافة أصدقائك إلى هذه المجموعة","Voeg uw vrienden aan deze groep","Ajouter à vos amis de ce groupe","Füge deine Freunde zu dieser Gruppe hinzu","Aggiungi ai tuoi amici di questo gruppo","Adicionar amigos à este grupo","Добавить друзей в эту группу","Añadir amigos a este grupo","Bu gruba arkadaşlarınızı ekleyin","Add your friends to this group"),
("624","added_all_friends","There are no friends to add them","لا يوجد أصدقاء للإضافة","Er zijn geen vrienden om ze toe te voegen","Il n&#39;y a aucun ami à les ajouter","Es gibt keine Freunde, um sie hinzuzufügen","Non ci sono amici da aggiungere loro","Nenhum amigo dispon&amp;iacute;vel para ser adicionado","Добавить всех друзей","No hay amigos para agregarlos","Eklemek için hiçbir arkadaş yok","There are no friends to add them"),
("625","added_you_to_group","added you to the group ({group_name})","أضافك الى المجموعة ({group_name})","u hebt toegevoegd aan de groep ({group_name})","vous ajouté au groupe ({group_name})","hat dich zur Gruppe ({group_name}) hinzugefügt","ti ha aggiunto al gruppo ({group_name})","adicionado ao grupo ({group_name})","добавил@ вас в группу ({group_name})","te agrego al grupo ({group_name})","sizi grubuna ekledi ({group_name})","added you to the group ({group_name})"),
("626","group_type","Group type","نوع المجموعة","groepstype","Type de groupe","Gruppentyp","Tipo di gruppo","Estilo do Grupo","Тип группы","Tipo de grupo","Grup türü","Group type"),
("627","public","Public","عام","Openbaar","Public","Öffentlichkeit","Pubblico","P&amp;uacute;blico","Открытая группа","Público","Kamu","Public"),
("628","private","Private","خاص","Private","Privé","Privat","Privato","Privado","Закрытая группа","Privado","Özel","Private"),
("629","reports","Reports","الإبلاغات","Rapporten","Rapports","Meldungen","Rapporti","Reportes","Отчеты","Informes","Raporlar","Reports"),
("630","no_dislikes","No dislikes yet","لا يوجد غير معجبين","nog geen hekel","Pas encore aversions","Keiner dem das nicht gefällt","Non hai ancora un antipatie","Nenhum dislike ainda","Пока нет &quot;Не нравится&quot;","Sin embargo no le gusta","Henüz sevmeyen","No dislikes yet"),
("631","disliked","Disliked","غير معجب","Bevallen","N&#039;a pas aimé","unbeliebt","Malvisto","N&amp;atilde;o curtiu","Не нравится","No me gustó","Sevmediği","Tidak menyukai"),
("632","wondered","Wondered","متعجب","Afgevraagd","Demandé","Verwundert","Si chiese","N&amp;atilde;o curtiu","Не нравится","Se preguntó","Merak eti","Wondered"),
("633","terms","Terms Pages","صفحات الموقع","Algemene Pagina","Conditions Pages","Allgemeine Seiten","Condizioni Pagine","Termos","Правила и условия","Condiciones Páginas","Şartlar Sayfalar","Terms Pages"),
("634","profile_privacy","User Profile Privacy","خصوصية الحساب الشخصي","User Profile Privacy","Profil de confidentialité","Benutzerprofil Datenschutz","Profilo Utente Privacy","Privacidade do perfil","Профиль конфиденциальности","Perfil de usuario de Privacidad","Kullanıcı Profili Gizlilik","User Profile Privacy"),
("635","profile_privacy_info","Enable it to allow non logged users to view users profiles.","مكن هذه الميزة للسماح بعرض المستخدمين لغير المسجلين.","In staat stellen om niet-aangemelde gebruikers gebruikers profielen te bekijken.","Activer qu&#39;il permette non connecté aux utilisateurs de voir les profils des utilisateurs.","Aktivieren Sie es, damit nicht angemeldete Benutzer, um Benutzer Profile anzusehen.","Consentirle di consentire agli utenti non registrati di visualizzare profili utenti.","Permitir usu&amp;uacute;rios que N&amp;atilde;o est&amp;ccedil;o logados de ver os perfils.","Включите его, чтобы не являющихся зарегистрированные пользователи для просмотра профили пользователей.","Activar para permitir que los usuarios no iniciar sesión para ver los perfiles de los usuarios.","Olmayan açmış olan kullanıcılar profillerini görüntülemek için izin için etkinleştirin.","Enable it to allow non logged users to view users profiles."),
("636","video_upload","Video Upload","رفع الفيديو","Video uploaden","Video Upload","Video hochladen","Carica video","Carregar v&amp;iacute;deo","Видео Загрузить","Vídeo Subir","Video Yükleme","Video Upload"),
("637","video_upload_info","Enable video upload to share &amp; upload videos to the site.","مكن هذه الميزة  لتحميل وتبادل الفيديو على الموقع.","Enable video uploaden om te delen en video&#039;s uploaden naar de site.","Activer télécharger la vidéo pour partager et télécharger des vidéos sur le site.","Aktivieren Sie Video-Upload zu teilen und Videos auf der Website.","Abilita video upload per condividere e caricare i video al sito.","Carregar v&amp;iacute;deo e compartilhar ele no site.","Включить видео загрузки, чтобы разделить и загрузить видео на сайт.","Habilitar subida de vídeo para compartir y subir videos al sitio.","Paylaşmak ve siteye video yüklemek için video upload etkinleştirin.","Enable video upload to share &amp; upload videos to the site."),
("638","audio_upload","Audio Upload","رفع الموسيقى","Audio uploaden","Audio Upload","Audio hochladen","Audio Upload","Carregar audio","Аудио Загрузить","Audio Subir","Ses Yükleme","Audio Upload"),
("639","audio_upload_info","Enable audio upload to share &amp; upload sounds to the site.","مكن هذه الميزة  لتحميل وتبادل الصوتيات على الموقع.","Enable audio uploaden om te delen en uploaden geluiden naar de site.","Activer audio upload pour partager et télécharger des sons sur le site.","Aktivieren Sie Audio-Upload zu teilen und Upload-Sounds auf der Website.","Abilita audio upload per condividere e caricare i suoni al sito.","Carregar audios e compartilhar no site.","Включить аудио загрузки, чтобы разделить и загрузки звучит на сайт.","Habilitar audio upload compartir y cargar suena al sitio.","Paylaşmak ses yükleme etkinleştirin ve upload sitesine geliyor.","Enable audio upload to share &amp; upload sounds to the site."),
("640","read_more","Read more","المزيد ..","Lees Meer..","En lire plus..","Weiterlesen","Leggi di più..","Ler mais","Показать полностью...","Lee mas..","Daha fazla..","Lanjutkan Membaca pikiran"),
("641","read_less","Read less","أخفاء ..","Lees Minder..","Lire moins..","Weniger lesen","Leggi meno..","Ler menos","Свернуть...","Cerrar..","Az Oku..","Ciutkan pikiran"),
("642","add_photo","Add a photo.","أضِف صورة.","Voeg een foto toe.","Ajouter une photo.","Füge ein Bild hinzu.","Aggiungi una foto.","Adicionar foto.","Добавьте фотографию.","Añade una foto.","Bir fotoğraf ekle.","Add a photo."),
("643","add_photo_des","Show your unique personality and style.","أظهِر شخصيّتك وأسلوبك الفريد.","Voeg een foto toe.","Affichez votre personnalité et votre style uniques.","Zeige Deine einzigartige Persönlichkeit und Deinen Stil.","Mostra la tua personalità e il tuo stile.","Mostrar sua personalidade e estilo.","Продемонстрируйте свою индивидуальность и неповторимый стиль.","Muestra tu estilo y personalidad única.","Eşsiz karakterini ve tarzını yansıt.","Show your unique personality and style."),
("644","start_up_skip","Or Skip this step for now.","تخطّى هذه الخطوة الآن","Deze stap voor nu overslaan","Sauter cette étape pour le moment","Diesen Schritt vorerst überspringen","Salta questo passaggio per ora","Pular.","Пропустить этот шаг","Omitir este paso por ahora","Bu adımı şimdilik atla","&lt;br&gt;&lt;center&gt;atau lewati proses ini sekarang.&lt;/center&gt;"),
("645","start_up_continue","Save &amp; Continue","المتابعة","Opslaan &amp; Doorgaan","Enregistrer &amp; Continuer","Speichern und weiter","Salva e continua","Salvar e continuar","Сохранить &amp; Продолжить","Guardar y Continuar","Kaydet ve Devam Et","Simpan &amp; Lanjutkan"),
("646","tell_us","Tell us about you.","أخبرنا عنك.","Vertel ons over jou.","Parlez-nous de vous.","Erzählen Sie uns von Ihnen.","Parlaci di te.","Fale sobre voc&amp;ecirc;.","Расскажите о себе.","Cuéntanos acerca de ti.","Senin hakkında bilgi verin.","Katakan kepada kami tentang anda."),
("647","tell_us_des","Share your information with our community.","تبادل المعلومات الخاصة بك مع مجتمعنا.","Deel je informatie met onze gemeenschap.","Partager vos informations avec notre communauté.","Ihre Daten an unsere Community.","Condividere le informazioni con la nostra comunità.","Compartilhe informa&amp;ccedil;&amp;otilde;es.","Поделитесь информацией с нашим сообществом.","Comparta su información con nuestra comunidad.","Eden ile bilgilerinizi paylaşın.","Bagikan informasimu kepada komunitas kami.&lt;:-)&gt;"),
("648","get_latest_activity","Get latest activities from our popular users.","الحصول على أحدث الأنشطة من أكثر المستخدمين شعبية لدينا.","Ontvang de meest recente activiteiten van onze populaire gebruikers.","Obtenir les dernières activités de nos utilisateurs populaires.","Holen Sie sich aktuelle Aktivitäten aus unserer beliebten Nutzer.","Ottenere ultime attività dei nostri utenti popolari.","Veja novas informa&amp;ccedil;&amp;otilde;es dos usu&amp;uacute;rios mais populares.","Следите за последними действиями популярных пользователей.","Obtener las últimas actividades de los usuarios populares.","Bizim popüler kullanıcılardan son faaliyetleri alın.","Get latest activities from our popular users."),
("649","follow_head","Follow our famous users.","تابع أشهر المستخدمين.","Volg onze beroemde gebruikers.","Suivez nos utilisateurs célèbres.","Folgen Sie unseren berühmten Nutzer.","Segui i nostri utenti famosi.","Siga os usu&amp;uacute;rios famosos.","Следуйте за нашими знаменитыми пользователями.","Siga nuestros usuarios más populares.","Bizim ünlü kullanıcıları izleyin.","Follow our famous users."),
("650","follow_num","Follow {number} &amp; Finish","تابع {number} وإستمر","Volg {number} &amp; Finish","Suivez {number} &amp; Terminer","Folgen Sie {number} &amp; Finish","Seguire {number} &amp; Finitura","Seguir {number} &amp; terminar","Следовать за {number}","Siga {number} y Finalizar","{number} Takip et ve bit","Follow {number} &amp; Finish"),
("651","looks_good","Looks good.","يبدو جيّدًا.","Ziet er goed uit.","Ça a l&#39;air bien.","Sieht gut aus.","Sembra buono.","Parece legal.","Неплохо.","Se ve bien.","İyi görünüyor.","Looks good."),
("652","looks_good_des","You&#039;ll be able to add more to your profile later.","ستكون قادرًا على إضافة المزيد لملفك الشخصيّ لاحقًا.","Je kunt later meer toevoegen aan je profiel.","Vous serez en mesure de compléter votre profil ultérieurement.","Du wirst später mehr zu Deinem Profil hinzufügen können.","Più tardi potrai aggiungere altro al tuo profilo.","Voc&amp;ecirc; poder&amp;aacute; adicionar mais em seu perfil depois.","Вы сможете добавить другую информацию в свой профиль позже.","Podrás añadir más a tu perfil después.","Daha sonra profiline yeni şeyler ekleyebilirsin.","You&#039;ll be able to add more to your profile later."),
("653","upload_your_photo","Upload your photo","إرفع صورتك","Upload je foto","Téléchargez votre photo","Lade Dein Bild hoch","Carica la tua foto","Carregar foto","Загрузите вашу фотографию","Sube tu foto","Fotoğrafını yükle","Upload your photo"),
("654","please_wait","Please wait..","الرجاء الإنتظار..","Even geduld aub..","S&#039;il vous plaît, attendez..","Warten Sie mal..","Attendere prego..","Aguarde..","Пожалуйста подождите..","Por favor espera..","Lütfen bekleyin..","Harap tunggu sebentar.."),
("655","username_or_email","Username or E-mail","اسم المستخدم أو البريد الإلكتروني","Gebruikersnaam of E-mail","Nom d&#39;utilisateur ou email","Benutzername oder E-Mail-Adresse","Nome utente o E-mail","Nome de usuário ou E-mail","Никнейм или E-mail адрес","Usuario o correo electrónico","Kullanıcı adı ya da email","Username or E-mail"),
("656","email_setting","E-mail Setting","إعداد البريد الإلكتروني","E-mail instellen","E-mail Réglage","E-Mail Einstellung","E-mail Impostazione","Configuração de E-mail","Электронная почта Настройка","Ajuste de Correo","E-posta Ayarı","E-mail Setting"),
("657","years_old","years old","سنوات","jaar oud","ans","Jahre alt","Anni","anos","лет","años","yaşında","Umur"),
("658","friends_birthdays","Friends Birthdays","اعياد ميلاد الاصدقاء","Verjaardagen van vrienden","Annivarsaire d&#39;amis","Geburtstage von Freunden","amici Compleanni","Aniversários de Amigos","Друзья Дни рождения","Cumpleaños de amigos","Arkadaşlarının Doğumgünü","Friends Birthdays"),
("659","sms_setting","SMS Setting","اعدادات الرسائل القصيرة","SMS Instellingen","Paramètres SMS","SMS Einstellungen","Impostazione SMS","Configuração de SMS","SMS Настройка","Configuración SMS","SMS Ayarları","SMS Setting"),
("660","smooth_loading","Smooth Loading","تحمبل سلس","Gelijdelijk laden","Chargement régulier","Schnelles Laden","Smooth Caricamento","Carregamento Suave","Гладкая загрузка","Cargando","Düzgün Yükleme","Smooth Loading"),
("661","boosted_pages_viewable","Boosted pages are already viewable by all our community members.","الصفحات المعززة يتم مشاهدتها من قبل جميع افراد المجتمع","Omhoog geplaatste pagina&#039;s zijn al zichtbaar voor leden.","Les pages boostées sont déjà visibles par tous les membres de votre communauté","Hervorgehobene Seiten sind sofort für alle Mitglieder der Community Sichtbar.","pagine potenziato sono già visualizzabili da tutti i membri della community.","Páginas impulsionadas já estão visíveis por todos os membros da nossa comunidade.","Усиленные страницы уже доступны для просмотра всеми нашими членами сообщества.","Tus paginas promocionadas seran vistas en toda la comunidad.","Yükseltilen sayfalar tüm kullanıcılarımız tarafından görüntülenebilir.","Boosted pages are already viewable by all our community members."),
("662","boost_page_in_same_time","You&#039;re a {type_name}, You&#039;re just able to boost {can_boost} pages at the same time.","صفحة في نفس الوقت{can_boost}بامكانك فقط تسريع ,{type_name} انت","Je bent {type_name}, Je kan nu  {can_boost} omhoog plaatsen.","Vous êtes un {type_name}, vous pouvez booster {can_boost} pages en même temps.","Du nutzt einen {type_name} Account, Du kannst nicht {can_boost} Seiten zur selben Zeit hervorheben.","Sei un {type_name}, Sei solo in grado di aumentare {can_boost} pagine in tempo stesso.","Você é um {type_name}, Vocêé apenas capaz de impulsionar {pode_impulsionar} páginas ao mesmo tempo.","Ты {type_name}, Вы просто в состоянии повысить {can_boost} может увеличить страницы в то же самое время.","Tu {type_name}, solo puedes promocionar {can_boost} paginas al mismo tiempo.","Sen bir {type_name}, aynı zamanda {can_boost} sadece sayfaları yükseltebilirsin.","You&#039;re a {type_name}, You&#039;re just able to boost {can_boost} pages at the same time."),
("663","boost_posts_in_same_time","You&#039;re a {type_name}, You&#039;re just able to boost {can_boost} posts at the same time.","صفحة في نفس الوقت{can_boost}بامكانك فقط تسريع ,{type_name} انت","Je bent {type_name}, Je kan nu {can_boost} berichten omhoog plaatsen.","You&#39;re a {type_name}, vous pouvez booster {can_boost} posts en même temps.","Du nutzt einen {type_name} Account, Du kannst nicht  {can_boost} Beiträge zur selben Zeit hervorheben.","Sei un {type_name}, Sei solo in grado di aumentare {can_boost} messaggi in tempo stesso.","Você é um {type_name}, Vocêé apenas capaz de impulsionar {pode_impulsionar} postagens ao mesmo tempo.","Ты {type_name}, Вы просто в состоянии повысить {can_boost} может увеличить посты в то же самое время.","Tu {type_name}, solo puedes promocionar {can_boost} posts al mismo tiempo.","Sen bir {type_name}, aynı zamanda {can_boost} sadece mesajları yükseltebilirsin.","You&#039;re a {type_name}, You&#039;re just able to boost {can_boost} posts at the same time."),
("664","there_are_no_boosted_pages","There are no boosted pages yet.","لا يوجد صفحات معززة الان","Er zijn geen omhoog geplaatste pagina&#039;s.","Il n&#39;y a pas encore de pages boostées.","Es gibt zu Zeit keine hervorgehobenen Seiten.","Non ci sono ancora pagine potenziati.","Não há páginas impulsionadas ainda.","Там нет Boosted страниц пока.","No hay paginas promocionados aún.","Henüz yükseltilmiş sayfa bulunmuyor.","There are no boosted pages yet."),
("665","there_are_no_boosted_posts","There are no boosted posts yet.","لا يوجد صفحات معززة الان","Er zijn geen omhoog geplaatste berichten.","Il n&#39;y a pas encore de posts boostés.","Es gibt zur Zeit noch keine hervorgehobenen Beiträge.","Non ci sono ancora messaggi potenziati.","Não há postagens impulsionadas ainda.","Там нет Boosted сообщений пока.","No hay post promocionados aún.","Henüz yükseltilmiş mesaj bulunmuyor.","There are no boosted posts yet."),
("666","discover_pro_types","Discover more features with {sitename} PRO packages !","اكتشاف المزيد للمحترفين من الميزات مع حزم {sitename}","Ontdek meer opties met {sitename} PRO!","Découvrez plus de fonctionnalités avec {sitename} PRO !","Entdecke mehr Funktionen mit dem {sitename} Pro-Paket !","Scopri di più caratteristiche con WoWonder pacchetti PRO !","Descubra mais recursos com WoWonder PRO packages !","Откройте для себя больше возможностей с WoWonder пакетами PRO !","Descubre mas {sitename} funciones con los nuevos paquetes!","{sitename} PRO paketleri ile daha fazla özellik keşfedin !","Discover more features with {sitename} PRO packages !"),
("667","star","Star","برونزي","Ster","Etoile","Star","Star","Estrela","Star","Star","Yıldız","Star"),
("668","hot","Hot","فضي","Heet","Hot","Hot","Hot","Quente","Hot","Hot","Sıcak","Hot"),
("669","ultima","Ultima","ذهبي","Ultimate","Ultima","Ultima","Ultima","Ultima","Ultima","Ultima","Ultima","Ultima"),
("670","vip","Vip","ماسي","VIP","Vip","Vip","Vip","Vip","Vip","Vip","Vip","Vip"),
("671","featured_member","Featured member","عضو متميز","Aanbevolen lid","Membres en vedette","Besonderes Mitglied","membro In primo piano","Membro em destaque","Показанный член","Miembros destacados","Önerilen üye","Featured member"),
("672","see_profile_visitors","See profile visitors","رأيت صفحات الشخصية للزوار","Bekijk profiel bezoekers","Voir le profil des visiteurs","Sehe wer dein Profil besucht hat","Vedi visitatori profilo","Veja os perfis de visitantes","См посетителей профиля","Ver visitantes en su perfil","Profil ziyaretçilerini gör","See profile visitors"),
("673","show_hide_lastseen","Show / Hide last seen","اظهار/إخفاء أخر ظهور","Verberg laatst gezien","Voir / Cacher la dernière fois vu","Anzeigen oder Verstecke zuletzt gesehen","Mostra / Nascondi visto l&#039;ultima volta","Mostra / Esconder visto por último","Показать / Скрыть последний раз видели","Ver / Ocultar ultimas visitas","Son görünmeyi Göster / Gizle","Show / Hide last seen"),
("674","verified_badge","Verified badge","شارة التحقق","Vericatie Badge","Badge Vérifié","Verifiziert Abzeichen","distintivo verificato","Crachá verificado","Проверенные значок","Cuenta Verificada","Onaylanmış rozet","Verified badge"),
("675","post_promotion_star","Posts promotion&lt;br&gt;","نشر تريج&lt;br&gt;&lt;small&gt;(غير متاح)&lt;/small&gt;","Bericht promotie&lt;br&gt;&lt;small&gt;(Niet beschikbaar)&lt;/small&gt;","Promotion de post&lt;br&gt;&lt;small&gt;(Indisponible)&lt;/small&gt;","Beitrags Promotion&lt;br&gt;&lt;small&gt;(Nicht verfügbar)&lt;/small&gt;","la promozione Messaggio&lt;br&gt;&lt;small&gt;(Non disponibile)&lt;/small&gt;","Pós promoção&lt;br&gt;&lt;small&gt;(Não disponível)&lt;/small&gt;","продвижение сообщение&lt;br&gt;&lt;small&gt;(Недоступен)&lt;/small&gt;","Promocionar publicación&lt;br&gt;&lt;small&gt;(No Disponible)&lt;/small&gt;","Mesaj tanıtımı&lt;br&gt;&lt;small&gt;(Mevcut değil)&lt;/small&gt;","Posts promotion&lt;br&gt;"),
("676","page_promotion_star","Pages promotion&lt;br&gt;","صفحة الترويج&lt;br&gt;&lt;small&gt;(غير متاحة)&lt;/small&gt;","Pagina promotie&lt;br&gt;&lt;small&gt;(Niet beschkbaar)&lt;/small&gt;","Promotion de page&lt;br&gt;&lt;small&gt;(Indisponible)&lt;/small&gt;","Seiten Promotion&lt;br&gt;&lt;small&gt;(Nicht verfügbar)&lt;/small&gt;","promozione pagina&lt;br&gt;&lt;small&gt;(Non disponibile)&lt;/small&gt;","Pré promoção&lt;br&gt;&lt;small&gt;(Não disponível)&lt;/small&gt;","продвижение Page&lt;br&gt;&lt;small&gt;(Недоступен)&lt;/small&gt;","Promocionar pagina&lt;br&gt;&lt;small&gt;(No Disponible)&lt;/small&gt;","Sayfa tanıtımı&lt;br&gt;&lt;small&gt;(Mevcut değil)&lt;/small&gt;","Promosi halaman&lt;br&gt;"),
("677","0_discount","0% discount","0% تخفيض","0% korting","0% de réduction","0% Nachlass","0% sconto","0% de desconto","0% скидка","0% descuento","0% indirim","0% discount"),
("678","10_discount","10% discount","10% تخفيض","10% korting","10% de réduction","10% Nachlass","10% sconto","10% de desconto","10% скидка","10% descuento","10% indirim","10% discount"),
("679","20_discount","20% discount","20% تخفيض","20% korting","20% de réduction","20% Nachlass","20% dsconto","20% de desconto","20% скидка","20% descuento","20% indirim","20% discount"),
("680","60_discount","60% discount","60% تخفيض","60% korting","60% de réduction","60% Nachlass","60% sconto","60% de desconto","60% скидка","60% descuento","60% indirim","60% discount"),
("681","per_week","per week","لمدة اسبوع","per week","par semaine","pro Woche","settimanale","por semana","в неделю","por semana","haftada","per week"),
("682","per_month","per month","لمدة شهر","per maand","par mois","pro Monat","al mese","por mês","в месяц","por mes","ayda","per month"),
("683","per_year","per year","لمدة عام","per jaar","par an","pro Jahr","per anno","por ano","в год","por año","yılda","per tahun"),
("684","life_time","life time","مدى الحياة","levens lang","à vie","Lebenslang","tutta la vita","tempo de vida","продолжительность жизни","de por vida","ömür boyu","life time"),
("685","upgrade_now","Upgrade Now","ترقية الان","Upgrade Nu","Mise à jour maintenant","Jetzt Upgraden","Aggiorna ora","Atualize Agora","Обнови сейчас","Actualiza ahora","Hemen Yükselt","Upgrade Now"),
("686","boosted_posts","Boosted Posts","المشاركات المعززت","Omhoog geplaatse berichten","Posts boostés","hervorgehobene Beiträge","Messaggi potenziato","Postagens Impulsionadas","Усиленные Сообщений","Promocionar Posts","yükseltılan Mesajlar","Pkiran di promosikan"),
("687","boosted_pages","Boosted Pages","الصفحات المعززت","Omhoog geplaatsen pagina&#039;s","Pages boostées","hervorgehobene Seiten","Pagine potenziato","Páginas Impulsionadas","Усиленные Страницы","Promocionar Paginas","yükseltılan Sayfalar","Halaman di promosikan"),
("688","put_me_here","Put Me Here","ضعني هنا","Zet mij hier nier","Me mettre ici","Setze mich Hier","Mettimi qui","Me Coloque Aqui","Put Me Здесь","Poner aqui","buraya koy","Put Me Here"),
("689","promoted","Promoted","معزز","Advertenties","Promoted","Promotions","Promossa","Promovido","Повышен","Promocionar","Tanıtılan","Telah di promosikan sebagai halaman popular"),
("690","oops_something_went_wrong","Oops ! Something went wrong.","Oops ! حدث خطأ ما","Oeps ! Er ging iets mis.","Oops ! Quelquechose s&#39;est mal passé.","Oops ! Irgendetwas ist schief gegangen.","Oops! Qualcosa è andato storto.","Oops! Algo deu errado.","К сожалению! Что-то пошло не так.","Oops ! Algo salio mal.","Hata ! Bir şeyler yanlış gitti.","Oops ! Something went wrong."),
("691","try_again","Try again","حاول مجددا","Probeer het opnieuw","Essayez encore","Versuche es erneut","Riprova","Tente novamente","Попробуй еще раз","Trata de nuevo","Tekrar deneyin","Try again"),
("692","boost_page","Boost Page","اضافة صفحة","Plaats pagina omhoog","Booster Page","Seite hervorheben","Boost Pagina","Página Impulsionada","Повышение Page","Promocionar Pagina","Sayfa yükselt","Promosikan halaman"),
("693","page_boosted","Page Boosted","الصفحة المعززة","Pagina omhoog geplaatst","Page Boostée","Die Seite wurde hervorgehoben","pagina potenziato","Página Impulsionada","Страница Boosted","Pagina promocionada","yükseltılan Sayfa","Halaman di promosikan"),
("694","un_boost_page","Un-Boost Page","الصفحة الغير معززة","Verwijder omhoog plaatsing","Un-Boost Page","Seite nicht mehr hervorheben","Un-Boost Pagina","Desimpulsionar Página","Un-наддув Page","Des-promover pagina","Sayfayı yükseltma","Un-Promosikan halaman"),
("695","edit_page_settings","Edit Page Settings","تعديل إعدادات الصفحة","Verander pagina instellingen","Editer paramètres de la Page","Seiten Einstellungen bearbeiten","Modifica impostazioni pagina","Editar as configurações de página","Изменить настройки страницы","Editar ajustes de página","Sayfa Ayarlarını Düzenle","Edit Page Settings"),
("696","blocked_users","Blocked Users","المستخدمين المحظورين","Geblokkerde Gebruikers","Utilisateurs bloqués","Blockierte Mitglieder","Gli utenti bloccati","Usuários Bloqueados","Заблокированные пользователи","Blockear usuario","Bloklu Kullanıcılar","Pengguna yang di blokir"),
("697","un_block","Un-Block","غير محضور","Deblokkeer","Débloquer","Blockierung aufheben","Sbloccare","Desbloquear","открыть","Des-blockear","Blok yükselt","Un-Block"),
("698","css_file","CSS file","CSS ملف","CSS bestand","fichier CSS","CSS Datei","file CSS","arquivo CSS","файл CSS","Archivo CCS","CSS dosyası","CSS file"),
("699","css_status_default","Default design","التصميم الاولي","Standaard design","Design par défaut","Standart Design","disegno predefinito","Design padrão","дизайн По умолчанию","diseño por defecto","Varsayılan dizayn","Default design"),
("700","css_status_my","My CSS file","الخاص بي CSS ملف","Mijn CSS bestand","Mon fichier CSS","Meine CSS Datei","Il mio file CSS","Meu arquivo CSS","Мой файл CSS","Mi CSS","CSS dosyam","My CSS file");

--
-- Dumping data for table `wo_langs`
--

INSERT INTO wo_langs VALUES
("701","css_file_info","You can fully design your profile by uploading your own CSS file","CSS الخاص بك يمكنك تصميم كامل ملف التعريف الخاص بك عن طريق تحميل ملف","Je kan je profiel helemaal pimpen door je eigen CSS bestand te uploaden","Vous pouvez modifier le design de votre profil via le téléversement de votre propre fichier CSS","Du kannst dein Profil komplett selbst Designen in dem du deine CSS Datei hoch lädst","È possibile progettare completamente il proprio profilo caricando il proprio file CSS","Você pode projetar totalmente o seu perfil através de upload do seu próprio arquivo CSS","Вы можете полностью создать свой профиль, загрузив свой собственный файл CSS","Ahora puedes rediseñar tu perfil con tu propio estilo (Css)","Kendi Css dosyanızı yükleyerek profilinizi tamamen siz tasarlayabilirsiniz.","You can fully design your profile by uploading your own CSS file"),
("702","invite_your_frineds_home","Invite Your Friends","دعوة اصدقائك","Nodig je vrienden uit","Inviter vos amis","Lade deine Freunde ein","Invita i tuoi amici","Convidar Seus Amigos","Пригласить друзей","Invita a tus amigos","Arkadaşlarını Davet Et","Undang temanmu"),
("703","send_invitation","Send Invitation","إرسال الدعوة","Verstuur","Envoyer Invitation","Einladung Versenden","Spedire un invito","Enviar Convite","Выслать пригласительное","Enviar invitación","Davetiye gönder","Kirim undangan"),
("704","boost_post","Boost Post","تعزيز المنشور","Plaast bericht omhoog","Boost Post","Beitrag Hervorheben","Boost Messaggio","Impulsionar Postagem","Повысьте Post","Promocionar post","Boost Post","Promosikan pikiran"),
("705","unboost_post","UnBoost Post","عدم تعزيز المنشور","Verwijder","Un-Boost Post","Beitrag nicht mehr Hervorheben","UnBoost Messaggio","Desimpulsionar Postagem","UnBoost сообщение","Des-promocionar post","Un-Boost Post","Un-promosikan pikiran"),
("706","drag_to_re","Drag to reposition cover","اسحب لتعديل الصورة","Sleep naar de juiste positie","Faites glisser pour repositionner la couverture","Ziehe das Cover mit der Maus um es neu zu Positionieren","Trascinare per riposizionare la copertura","Arraste para reposicionar a cobertura","Перетащите, чтобы изменить положение крышки","Arrastra la portada para recortarla","Kapağı yeniden konumlandırmak için sürükleyin","Drag to reposition cover"),
("707","block_user","Block User","حضر المستخدم","Blokkeer gebruiker","Bloquer l&#39;utilisateur","Mitglied Blocken","Blocca utente","Bloquear Usuário","Заблокировать пользователя","Blockear usuario","Kullanıcı Blok","Block User"),
("708","edit_user","Edit User","تعديل حساب العضو","Wijzig gebruiker","Editer Utilisateur","Mitglied Bearbeiten","Modifica utente","Editar Usuário","Изменить пользователя","Editar usuario","Kullanıcıyı Düzenle","Edit User"),
("709","cong","Congratulations ! You&#039;re now a &lt;span style=&quot;color:{color}&quot;&gt;&lt;i class=&quot;fa fa-{icon} fa-fw&quot;&gt;&lt;/i&gt;{type_name}","مبروك! انت الان &lt;span style=&quot;color:{color}&quot;&gt;&lt;i class=&quot;fa fa-{icon} fa-fw&quot;&gt;&lt;/i&gt;{type_name}","Gefeliciteerd ! Je bent nu een &lt;span style=&quot;color:{color}&quot;&gt;&lt;i class=&quot;fa fa-{icon} fa-fw&quot;&gt;&lt;/i&gt;{type_name}","Félicitation ! Vous êtes maintenant un &lt;span style=&quot;color:{color}&quot;&gt;&lt;i class=&quot;fa fa-{icon} fa-fw&quot;&gt;&lt;/i&gt;{type_name}","Herzlichen Glückwunsch! Du bist nun ein &lt;span style=&quot;color:{color}&quot;&gt;&lt;i class=&quot;fa fa-{icon} fa-fw&quot;&gt;&lt;/i&gt;{type_name}","Complimenti ! Ora sei un &lt;span style=&quot;color:{color}&quot;&gt;&lt;i class=&quot;fa fa-{icon} fa-fw&quot;&gt;&lt;/i&gt;{type_name}","Parabéns ! Você é agora um &lt;span style=&quot;color:{color}&quot;&gt;&lt;i class=&quot;fa fa-{icon} fa-fw&quot;&gt;&lt;/i&gt;{type_name}","Поздравления ! Ты теперь &lt;span style=&quot;color:{color}&quot;&gt;&lt;i class=&quot;fa fa-{icon} fa-fw&quot;&gt;&lt;/i&gt;{type_name}","Felicidades! Ahora &lt;span style=&quot;color:{color}&quot;&gt;&lt;i class=&quot;fa fa-{icon} fa-fw&quot;&gt;&lt;/i&gt;{type_name}","Tebrikler ! Artık sen bir &lt;span style=&quot;color:{color}&quot;&gt;&lt;i class=&quot;fa fa-{icon} fa-fw&quot;&gt;&lt;/i&gt;{type_name}","Congratulations ! You&#039;re now a &lt;span style=&quot;color:{color}&quot;&gt;&lt;i class=&quot;fa fa-{icon} fa-fw&quot;&gt;&lt;/i&gt;{type_name}"),
("710","cong_2","Start browsing the new features","بدء تصفح الميزات الجديدة","Bekijk nu je nieuwe opties","Commencer à naviguer sur les nouvelles fonctionnalités","Beginne dir die neuen Funktionen anzusehen","Avviare la navigazione le nuove funzionalità","Começe a navegar os novos recursos","Начать просмотр новых функций","Comiencza a utilizar las nuevas funciones","Yeni özellikleri taramaya başlayın","Start browsing the new features"),
("711","activation_oops","Oops, looks like your account is not activated yet.","Oops, .يبدو انه لم يتم تنشيط حسابك بعد","Oeps, het lijkt er op of je account nog niet is geactiveerd.","Oops, votre compte n&#39;est pas encore activé.","Oops, so wie es aussieht wurde dein Account Nachbericht aktiviert.","Spiacenti, sembra che il tuo account non è ancora attivato.","Oops, parece que sua conta não está ativada ainda.","К сожалению, похоже, ваша учетная запись еще не активирована.","Oops, Parece que su cuenta no está activada aún.","Hata, hesabınız henüz aktif edilmemiş gibi görünüyor.","Oops, looks like your account is not activated yet."),
("712","activation_method","Please choose a method below to activate your account.",".يرجى اختيار طريقة لتفعيل حسابك أدناه","Selecteer een optie om je account te activeren.","Merci de choisir une méthode ci*dessous pour activer votre compte.","Bitte suche dir eine unten stehende Methode aus um dein Account zu aktivieren.","Si prega di scegliere un metodo seguito per attivare il tuo account.","Por favor escolha um método abaixo para ativar sua conta.","Пожалуйста, выберите метод ниже, чтобы активировать учетную запись.","Por favor trata con otro metodo para activar tu cuenta.","Hesabınızı etkinleştirmek için aşağıda ki yöntemlerden birini seçiniz.","Please choose a method below to activate your account."),
("713","activation_email","Via E-mail","عن طريق البريد","Via E-mail","Par E-mail","Via E-mail","Via posta elettronica","Via E-mail","По электронной почте","Via E-mail","E-mail ile","Via E-mail"),
("714","activation_phone","Via Phone Number","عن طريق الهاتف","Via Telefoonnummer","Par téléphone","Via Telefonnummer","Via Numero di telefono","Via Número de Telefone","Via номеру телефона","Via SMS","Telefon Numarası ile","Via Phone Number"),
("715","activation_or","Or","أو","Of","Ou","Oder","O","Ou","Или","O","yada","Or"),
("716","activation_send_code","Send Confirmation Code","إرسال رمز التأكيد","Stuur activatie code","Envoyer le code confirmation","Sende uns deinen Bestätigungs Code Manuell","Invia codice di conferma","Enviar Confirmação do Código","Отправить код подтверждения","Enviar código de activación","Onay Kodu Gönder","Send Confirmation Code"),
("717","activation_get_code_again","Didn&#039;t get the code?","لم يتم استقبال الرمز؟","Code niet ontvangen?","Didn&#39;t get the code?","Du hast keinen Code erhalten?","Non avere il codice?","Não obteve o código?","Не получить код?","No he recivido código?","Onay kodunu almadınız mı?","Didn&#039;t get the code?"),
("718","activation_resend","Resend","اعادت ارسال","Verstuur opnieuw","Renvoyer","Erneut Senden","inviare di nuovo","Re-enviar","Отправить","Re-enviar","Tekrar gönder","Resend"),
("719","activation_should_receive","You should receive the code within","يجب استقبال الرمز في مدة","Je zult de code ontvangen","You should receive the code within","Du solltest den Code in Kürze erhalten.","Si dovrebbe ricevere il codice all&#039;interno","Você deve receber o código dentro de","Вы должны получить код внутри","Debería recibir el código dentro de","içinde kodu almalısınız","You should receive the code within"),
("720","confirm","Confirm","تأكيد","Bevestig","Confirmer","Bestätigen","Confermare","Confirmar","подтвердить","Confirmar","Onayla","Confirm"),
("721","phone_num_ex","Phone number (eg. +905...)","(eg. +905...) رقم الهاتف","Telefoonnumer (bijv. +31...)","Numéro de téléphone (eg. +33...)","Telefonnummer  (z.b +49...)","Numero di telefono (eg. +905...)","Número de telefone (ex. +905...)","Номер телефона (eg. +905...)","Numero de Telefono (eg. +001...)","Telefon Numarası (örn. +905...)","Phone number (eg. +905...)"),
("722","error_while_activating","Error while activating your account.",".خطأ أثناء تفعيل حسابك","Error tijdens het activeren van uw account.","Error while activating your account.","Fehler beim aktivieren deines Accounts.","Errore durante l&#039;attivazione dell&#039;account.","Erro ao ativar a sua conta.","Ошибка при активации учетной записи.","Error al activar su cuenta.","Hesabınızı onaylarken hata oluştu.","Error while activating your account."),
("723","wrong_confirmation_code","Wrong confirmation code.",".خطأ في رمز التأكيد","Ongeldige code.","Code de confirmation erroné.","Falscher bestätigungs Code.","codice di conferma errato.","Código de confirmação incorreto.","Неправильный код подтверждения.","Este código no es valido.","Yanlış onay kodu.","Wrong confirmation code."),
("724","failed_to_send_code","Failed to send the confirmation code.",".فشل في إرسال رمز التأكيد","Het is niet gelukt de code te verzenden.","Impossible d&#39;envoyer le code de confirmation.","Fehler beim senden des bestätigungs Code.","Impossibile inviare il codice di conferma.","Não foi possível enviar o código de confirmação.","Не удалось отправить код подтверждения.","No se pudo enviar código de activación.","Onay kodu gönderilirken hata oluştu.","Failed to send the confirmation code."),
("725","worng_phone_number","Wrong phone number.",".رقم الهاتف خاطئ","Geen geldige telefoonnummer.","Numéro de téléphone erroné.","Falsche Telefonnummer.","numero di telefono sbagliato.","Número de telefone incorreto.","Неправильный номер телефона.","Numero incorrecto.","Yanlış telefon numarası.","Wrong phone number."),
("726","phone_already_used","Phone number already used.",".رقم الهاتف موجود","Telefoonnummer is al in gebruik.","Numéro de téléphone déjà utilisé.","Die angebene Telefonnummer wird bereits verwendet.","Numero di telefono già in uso.","Número de telefone já em uso.","Номер телефона уже используется.","Este nuemero ya a sido usado.","Telefon numarası kullanılıyor.","Phone number already used."),
("727","sms_has_been_sent","SMS has been sent successfully.",".تم ارسا الرسالة النصية بنجاح","SMS is succsesvol verzonden.","SMS envoyé avec succès.","Die SMS wurde erfolgreich versendet.","SMS è stato inviato con successo.","SMS foi enviado com sucesso.","SMS было отправлено успешно.","El código de activación a sido enviado.","SMS başarıyla gönderildi.","SMS has been sent successfully."),
("728","error_while_sending_sms","Error while sending the SMS, please try another number.",".خطأ أثناء إرسال الرسالة القصيرة، يرجى المحاولة باستخدام رقم آخر","We konden de SMS niet versturen, probeer een ander nummer.","Erreur lors de l&#39;envooi du SMS, merci d&#39;essayer un autre numéro de téléphone.","Fehler beim Versenden der SMS, bitte versuche eine andere Telefonnummer.","Errore durante l&#039;invio del SMS, prova un altro numero.","Erro ao enviar o SMS, por favor tente outro número.","Ошибка при отправке SMS, пожалуйста, попробуйте другой номер.","Error al enviar código de activacion, por favor trata con otro numero .","SMS gönderilemiyor, lütfen farklı numara deneyiniz.","Error while sending the SMS, please try another number."),
("729","failed_to_send_code_fill","Failed to send the confirmation code, please select one of the activation methods.",".فشل في إرسال رمز التأكيد، يرجى ملء إحدى خانات التنشيط","Het is niet gelukt de code te versturen, probeer een andere methoda.","Impossible d&#39;envoyer le code de confirmation, essayez une des méthodes d&#39;activation.","Fehler beim Versenden des bestätigungs Code, bitte wählen eine andere aktivierungs Methode.","Impossibile inviare il codice di conferma, selezionare uno dei metodi di attivazione.","Não foi possível enviar o código de confirmação, por favor preencha um dos métodos de ativação.","Не удалось отправить код подтверждения, пожалуйста, выберите один из предложенных способов активации.","Error al enviar código de activacion, por favor trata con otro metodo.","Onay kodu gönderilemiyor, lütfen aktivasyon yöntemlerinden birini seçiniz.","Failed to send the confirmation code, please select one of the activation methods."),
("730","email_sent_successfully","E-mail has been sent successfully, please check your inbox or spam folder for the activation link.",".تم إرسال البريد الإلكتروني بنجاح، يرجى مراجعة مجلد البريد الوارد أو الرسائل غير المرغوب فيها لرابط التفعيل","E-mail is succesvol verzonden, kijk ook in uw spam/ongewenste inbox.","E-mail envoyé avec succès, merci de vérifier votre boite de réception et dossier spam pour le lien d&#39;activation.","Es wurde dir eine Email gesendet, bitte überprüfe deinen Postfach und gegebenfalls auch den Spam Ordner.","E-mail è stata inviata con successo, controllare la cartella Posta in arrivo o spam per il link di attivazione.","E-mail foi enviado com sucesso, verifique a sua pasta caixa de entrada ou de spam para o link de ativação.","Электронная почта была успешно отправлена, пожалуйста, проверьте свой почтовый ящик или спам папку для ссылки активации.","El correo a sido enviado, por favor check your inbox or spam folder for the activation link.","E-mail gönderildi, aktivasyon linki için lütfen mesaj kutunuzu yada spam kutusunu kontrol ediniz.","E-mail has been sent successfully, please check your inbox or spam folder for the activation link."),
("731","limit_exceeded","Limit exceeded, please try again later.",".لقد تجاوزت الحد المسموح به، يرجى المحاولة مرة أخرى في وقت لاحق","Te vaak geprobeerd, probeer het later nog eens.","Limite dépassé, merci de réessayer plus tard.","Anzahl an versuche überschritten , bitte versuche es später nochmal..","Limite superato, riprova più tardi.","Limite excedido, tente novamente mais tarde.","Превышен лимит, пожалуйста, повторите попытку позже.","Límite excedido, por favor trata mas tarde.","Limit aşıldı, lütfen daha sonra tekrar deneyin.","Limit exceeded, please try again later."),
("732","failed_to_send_code_email","Error while sending the SMS, please try another number or activate your account via email by logging into your account.",".خطأ أثناء إرسال الرسائل القصيرة، يرجى المحاولة رقم آخر أو تفعيل حسابك عبر البريد الإلكتروني عن طريق الدخول في حسابك","Probeer je account te verifiëren via de e-mail, we konden geen sms sturen.","Erreur lors de l&#39;envoi du SMS, merci d&#39;essayer un autre numéro ou activer votre compte par e-mail en vous connectant à votre compte.","Fehler beim Versenden der SMS, bitte benutze eine andere Telefonnummer  oder aktiviere deinen Account via Email, indem  du dich mit deinem Account Anmeldest.","Errore durante l&#039;invio del SMS, prova un altro numero o attivare il tuo account tramite e-mail accedendo al proprio conto.","Erro ao enviar o SMS, tente outro número ou ativar sua conta via e-mail, entrando em sua conta.","Ошибка при отправке SMS, пожалуйста, попробуйте другой номер или активировать свою учетную запись через электронную почту, войдя в свой аккаунт.","Error al enviar código de activacion, por favor trata con otro numero o activa tu cuenta via email accediendo a tu cuenta .","SMS gönderilemiyor, lütfen başka bir numara deneyiniz yada hesabınıza giriş yaparak hesabınızı mail ile etkinleştiriniz.","Error while sending the SMS, please try another number or activate your account via email by logging into your account."),
("733","free_member","Free Member","عضو عادي","Gratis Lid","Free member","Kostenlose Mitgliedschaft","Free Member","Membro grátis","Free Member","Usuario gratis","Ücretsiz üye","Free Member"),
("734","star_member","Star Member","عضو برونزي","Ster Lid","Star Member","Star Mitgliedschaft","Star Member","Membro estrela","Star Member","Usuario star","Yıldız üye","Star Member"),
("735","hot_member","Hot Member","عضو فضي","Hot Lid","Hot Member","Hot Mitgliedschaft","Hot Member","Membro Quente","Hot Member","Usuario hot","Sıcak Üye","Hot Member"),
("736","ultima_member","Ultima Member","عضو ذهبي","Ultimate Lid","Ultima Member","Ultima Mitgliedschaft","Ultima Member","Ultima Member","Ultima Member","Usuario ultima","Ultima Üye","Ultima Member"),
("737","vip_member","Vip Member","عضو ماسي","VIP Lid","Vip Member","Vip Mitgliedschaft","Vip Member","Membro Vip","Vip Member","Usuario VIP","Vip Üye","Vip Member"),
("738","moderator","Moderator","مشرف","Moderator","Modérateur","Moderator","Moderator","Moderador","Moderator","Moderador","Moderator","Moderator"),
("739","member_type","Member Type","نوع العضوية","Member soort","Type de membres","Mitglieds Typ","Member Type","Tipo de Membro","Member Type","Tipo de menbresia","Üye Türü","Member Type"),
("740","membership","Membership","العضوية","Membership","Membership","Mitgliedschaft","membri","Filiação","членство","Membresia","Üyelik","Membership"),
("741","upgrade","Upgrade","الترقية","Upgrade","Mise à jour","Upgrade","aggiornamento","Atualização","Обновить","Actualización","Yükselt","Upgrade"),
("742","error_please_try_again","Error, Please try again later.",".خطئ, يرجى المحاولة لاحقا","Error, probeer het later opnieuw.","Erreur, merci de réessayer plus tard.","Fehler, bitte versuche es später nochmal.","Errore, riprova più tardi.","Erro, Por favor tente novamente.","Ошибка, пожалуйста, повторите попытку позже.","Error, trata de nuevo.","Hata, Lütfen daha sonra tekrar deneyin.","Error, Please try again later."),
("743","upgrade_to_pro","Upgrade To Pro","لترقية الى مزايا أكثر","Upgraden naar Pro","Passer à Pro","Upgrade auf Pro","Aggiornamento a Pro","Upgrade To Pro","Обновление до Pro","Para actualizar Pro","Pro&#039;ya yükselt","Upgrade To Pro"),
("744","no_answer","No answer","لا يوجد رد","Geen antwoord","Pas de réponse","Keine Antwort","Nessuna risposta","Sem resposta","Нет ответа","Sin respuesta","Cevap yok","Tidak ada jawaban"),
("745","please_try_again_later","Please try again later.","الرجاء المحاولة لاحقا.","Probeer het later opnieuw.","Veuillez réessayer plus tard.","Bitte versuchen Sie es später noch einmal.","Per favore riprova più tardi.","Por favor, tente novamente mais tarde.","Пожалуйста, повторите попытку позже.","Por favor, inténtelo de nuevo más tarde.","Lütfen daha sonra tekrar deneyiniz.","Please try again later."),
("746","answered","Answered !","تم الرد !","Beantwoord !","répondre !","Beantwortet !","Risposte !","Respondidas !","Ответил !","Contestada !","Yanıtlanan !","Di jawab !"),
("747","call_declined","Call declined","تم فصل الإتصال من قبل المستخدم","Call gedaald","Appel refusé","Anruf abgelehnt","chiamata rifiutato","chamada diminuiu","Вызов отказался","Llamar declinó","çağrı reddedildi","Call declined"),
("748","call_declined_desc","The recipient has declined the call, please try again later.","تم فصل الإتصال من قبل المستخدم, الرجاء المحاولة لاحقا.","De ontvanger heeft de oproep geweigerd, probeer het later opnieuw.","Le destinataire a refusé l&#39;appel, s&#39;il vous plaît essayer à nouveau plus tard.","Der Empfänger hat den Anruf abgelehnt, bitte versuchen Sie es später noch einmal.","Il destinatario ha rifiutato la chiamata, si prega di riprovare più tardi.","O destinatário recusou a chamada, por favor tente novamente mais tarde.","Получатель отклонил вызов, пожалуйста, повторите попытку позже.","El receptor ha rechazado la llamada, por favor intente de nuevo más tarde.","Alıcı çağrıyı reddetti, daha sonra tekrar deneyin.","The recipient has declined the call, please try again later."),
("749","new_video_call","New video call","إتصال فيديو","Nieuwe video-oproep","Nouvel appel vidéo","Neue Videoanruf","Nuovo video chiamata","chamada de vídeo novo","Новое видео вызова","Nueva llamada de video","Yeni video görüşmesi","New video call"),
("750","new_video_call_desc","wants to video chat with you.","يريد ان يحدثك عن طريق الفيديو.","wil video chatten met je.","veut le chat vidéo avec vous.","möchte mit Ihnen Video-Chat.","vuole chat video con te.","quer vídeo chat com você.","хочет видео-чат с вами.","quiere chatear con video con usted.","Sizinle görüntülü sohbet etmek istiyor.","wants to video chat with you."),
("751","decline","Decline","فصل","Afwijzen","Déclin","Ablehnen","Declino","Declínio","снижение","Disminución","düşüş","Decline"),
("752","accept_and_start","Accept &amp; Start","القبول &amp; البدأ","Accepteer &amp; Start","Accepter &amp; Start","Akzeptieren &amp; Start","Accetta &amp; Start","Aceitar &amp; Start","принимать","Aceptar &amp; Start","Kabul Et ve Başlaı","Accept &amp; Start"),
("753","calling","Calling","يتم الإتصال","Roeping","Appel","Berufung","chiamata","chamada","призвание","Vocación","çağrı","Calling"),
("754","calling_desc","Please wait for your friend answer.","الرجاء الإنتظار لحين يتم الرد من قبل المستخدم.","Wacht tot je vriend antwoord op de video chat starten.","S&#039;il vous plaît attendre votre ami répondre à démarrer le chat vidéo.","Bitte warten Sie, Ihr Freund das Video-Chat zu starten beantworten.","Si prega di attendere per il vostro amico a rispondere per avviare la chat video.","Por favor aguarde o amigo responder para iniciar o bate-papo de vídeo.","Пожалуйста, подождите, ваш друг ответить, чтобы начать видео чат.","Por favor, espere a que su amigo responde a iniciar el chat de vídeo.","Arkadaşınız, video sohbet başlatmak için cevap için bekleyin.","Tunggu dong sampai teman anda menjawab."),
("755","your_friends_chat","You&#039;re friends on {site_name}","أنتم أصدقاء في {site_name}","Je bent vrienden op {site_name}","Vous êtes amis sur {site_name}","Sie sind freunde auf {site_name}","Sei amici su {site_name}","Você é amigos {site_name}","Вы друзья на {site_name}","Eres amigos en {site_name}","Üzerinde dostuz {site_name}","Temanmu juga ada di {site_name}"),
("756","your_following","You&#039;re following","أنت تتابع","Je volgt","Vous suivez","Sie folgen","Stai seguendo","Você está seguindo","Вы следующие","Usted está siguiendo","İzlediğiniz","You&#039;re following"),
("757","see_all","See all","الكل","alles zien","Voir tout","Alles sehen","Vedi tutti","Ver todos","Увидеть все","Ver todo","Hepsini gör","See all"),
("758","me","Me","أنا","Me","Moi","Mich","Me","Mim","меня","Yo","Ben","Me"),
("759","post_promotion_hot","Boost up to {monthly_boosts} posts&lt;br&gt;","نشر اكثر من {monthly_boosts} منشورات &lt;br&gt;&lt;small&gt;({monthly_boosts} في نفس الوقت 7/24)&lt;/small&gt;","{monthly_boosts} berichten omhoog plaatsen&lt;br&gt;&lt;small&gt;({monthly_boosts} tegelijk 7/24)&lt;/small&gt;","Boost up to {monthly_boosts} posts&lt;br&gt;&lt;small&gt;({monthly_boosts} in same time 7/24)&lt;/small&gt;","Bis zu {monthly_boosts} Beiträge hervorheben&lt;br&gt;&lt;small&gt;({monthly_boosts} Beiträge gleichen Zeit 7/24)&lt;/small&gt;","Boost fino a {monthly_boosts} posti&lt;br&gt;&lt;small&gt;({monthly_boosts} nel contempo 7/24)&lt;/small&gt;","Impulsionar até {monthly_boosts} postagens&lt;br&gt;&lt;small&gt;({monthly_boosts} ao mesmo tempo 7/24)&lt;/small&gt;","Повышение до {monthly_boosts} сообщений&lt;br&gt;&lt;small&gt;({monthly_boosts} в то же время 7/24)&lt;/small&gt;","Promociona asta {monthly_boosts} posts&lt;br&gt;&lt;small&gt;({monthly_boosts} al mismo tiempo 7/24)&lt;/small&gt;","{monthly_boosts} mesaj yükselt&lt;br&gt;&lt;small&gt;({monthly_boosts} aynı zamanda 7/24)&lt;/small&gt;","Boost up to {monthly_boosts} posts&lt;br&gt;"),
("760","page_promotion_hot","Boost up to {monthly_boosts} pages&lt;br&gt;","نشر اكثر من {monthly_boosts} صفحات&lt;br&gt;&lt;small&gt;({monthly_boosts} في نفس الوقت 7/24)&lt;/small&gt;","{monthly_boosts} pagina&#039;s omhoog plaatsen&lt;br&gt;&lt;small&gt;({monthly_boosts} tegelijk 7/24)&lt;/small&gt;","Boost up to {monthly_boosts} pages&lt;br&gt;&lt;small&gt;({monthly_boosts} in same time 7/24)&lt;/small&gt;","Bis zu {monthly_boosts} Seiten hervorheben&lt;br&gt;&lt;small&gt;({monthly_boosts} Seiten zur gleichen Zeit 7/24)&lt;/small&gt;","Boost fino a {monthly_boosts} pagine&lt;br&gt;&lt;small&gt;({monthly_boosts} nel contempo 7/24)&lt;/small&gt;","Impulsionar até {monthly_boosts} páginas&lt;br&gt;&lt;small&gt;({monthly_boosts} ao mesmo tempo 7/24)&lt;/small&gt;","Повышение до {monthly_boosts} страниц&lt;br&gt;&lt;small&gt;({monthly_boosts} в то же время 7/24)&lt;/small&gt;","Promociona asta {monthly_boosts} paginas&lt;br&gt;&lt;small&gt;({monthly_boosts} al mismo tiempo 7/24)&lt;/small&gt;","{monthly_boosts} sayfa yükselt&lt;br&gt;&lt;small&gt;({monthly_boosts} aynı zamanda 7/24)&lt;/small&gt;","Boost up to {monthly_boosts} pages&lt;br&gt;"),
("761","post_promotion_ultima","Boost up to {yearly_boosts} posts&lt;br&gt;","نشر اكثر من {yearly_boosts} منشورات&lt;br&gt;&lt;small&gt;({yearly_boosts} في نفس الوقت 7/24)&lt;/small&gt;","{yearly_boosts} berichten omhoog plaatsen&lt;br&gt;&lt;small&gt;({yearly_boosts} tegelijk 7/24)&lt;/small&gt;","Boost up to {yearly_boosts} posts&lt;br&gt;&lt;small&gt;({yearly_boosts} in same time 7/24)&lt;/small&gt;","Bis zu {yearly_boosts} Beiträge hervorheben&lt;br&gt;&lt;small&gt;({yearly_boosts} Beiträge zur gleichen Zeit 7/24)&lt;/small&gt;","Boost fino a {yearly_boosts} posti&lt;br&gt;&lt;small&gt;({yearly_boosts} nel contempo 7/24)&lt;/small&gt;","Impulsionar até {yearly_boosts} postagens&lt;br&gt;&lt;small&gt;({yearly_boosts} ao mesmo tempo 7/24)&lt;/small&gt;","Повысить до {yearly_boosts} должностей&lt;br&gt;&lt;small&gt;({yearly_boosts} в то же время 7/24)&lt;/small&gt;","Promociona asta {yearly_boosts} posts&lt;br&gt;&lt;small&gt;({yearly_boosts} al mismo tiempo 7/24)&lt;/small&gt;","{yearly_boosts} mesaj yükselt&lt;br&gt;&lt;small&gt;({yearly_boosts} aynı zamanda 7/24)&lt;/small&gt;","Boost up to {yearly_boosts} posts&lt;br&gt;"),
("762","page_promotion_ultima","Boost up to {yearly_boosts} pages&lt;br&gt;","نشر اكثر من {yearly_boosts} صفحات&lt;br&gt;&lt;small&gt;({yearly_boosts} في نفس الوقت 7/24)&lt;/small&gt;","{yearly_boosts} pagina&#039;s omhoog plaatsen&lt;br&gt;&lt;small&gt;({yearly_boosts} tegelijk 7/24)&lt;/small&gt;","Boost up to {yearly_boosts} pages&lt;br&gt;&lt;small&gt;({yearly_boosts} in same time 7/24)&lt;/small&gt;","Bis zu {yearly_boosts} Seiten hervorheben&lt;br&gt;&lt;small&gt;({yearly_boosts} Seiten zur gleichen Zeit 7/24)&lt;/small&gt;","Boost fino a {yearly_boosts} pagine&lt;br&gt;&lt;small&gt;({yearly_boosts} nel contempo 7/24)&lt;/small&gt;","Impulsionar até {yearly_boosts} páginas&lt;br&gt;&lt;small&gt;({yearly_boosts} ao mesmo tempo 7/24)&lt;/small&gt;","Повышение до {yearly_boosts} страниц&lt;br&gt;&lt;small&gt;({yearly_boosts} в то же время 7/24)&lt;/small&gt;","Promociona asta {yearly_boosts} paginas&lt;br&gt;&lt;small&gt;({yearly_boosts} al mismo tiempo 7/24)&lt;/small&gt;","{yearly_boosts} sayfa yükselt&lt;br&gt;&lt;small&gt;({yearly_boosts} aynı zamanda 7/24)&lt;/small&gt;","Boost up to {yearly_boosts} pages&lt;br&gt;"),
("763","post_promotion_vip","Boost up to {lifetime_boosts} posts&lt;br&gt;","نشر اكثر من {lifetime_boosts} منشورات&lt;br&gt;&lt;small&gt;({lifetime_boosts} في نفس الوقت 7/24)&lt;/small&gt;","Boost up to {lifetime_boosts} posts&lt;br&gt;&lt;small&gt;({lifetime_boosts} in same time 7/24)&lt;/small&gt;","Boost up to {lifetime_boosts} posts&lt;br&gt;&lt;small&gt;({lifetime_boosts} in same time 7/24)&lt;/small&gt;","Bis zu {lifetime_boosts} Beiträge hervorheben&lt;br&gt;&lt;small&gt;({lifetime_boosts} Beiträge zur gleichen Zeit 7/24)&lt;/small&gt;","Boost fino a {lifetime_boosts} posti&lt;br&gt;&lt;small&gt;({lifetime_boosts} nel contempo 7/24)&lt;/small&gt;","Impulsionar até {lifetime_boosts} postagens&lt;br&gt;&lt;small&gt;({lifetime_boosts} ao mesmo tempo 7/24)&lt;/small&gt;","Повысить до {lifetime_boosts} должностей&lt;br&gt;&lt;small&gt;({lifetime_boosts} in same time 7/24)&lt;/small&gt;","Promociona asta {lifetime_boosts} posts&lt;br&gt;&lt;small&gt;({lifetime_boosts} al mismo tiempo 7/24)&lt;/small&gt;","{lifetime_boosts} mesaj yükselt&lt;br&gt;&lt;small&gt;({lifetime_boosts} aynı zamanda 7/24)&lt;/small&gt;","Boost up to {lifetime_boosts} posts&lt;br&gt;"),
("764","page_promotion_vip","Boost up to {lifetime_boosts} pages&lt;br&gt;","نشر اكثر من {lifetime_boosts} صفحات&lt;br&gt;&lt;small&gt;({lifetime_boosts} في نفس الوقت 7/24)&lt;/small&gt;","Boost up to {lifetime_boosts} pages&lt;br&gt;&lt;small&gt;({lifetime_boosts} in same time 7/24)&lt;/small&gt;","Boost up to {lifetime_boosts} pages&lt;br&gt;&lt;small&gt;({lifetime_boosts} in same time 7/24)&lt;/small&gt;","Bis zu {lifetime_boosts} Seiten hervorheben&lt;br&gt;&lt;small&gt;({lifetime_boosts} Seiten zur gleichen Zeit 7/24)&lt;/small&gt;","Boost fino a {lifetime_boosts} pagine&lt;br&gt;&lt;small&gt;({lifetime_boosts} nel contempo 7/24)&lt;/small&gt;","Impulsionar até {lifetime_boosts} páginas&lt;br&gt;&lt;small&gt;({lifetime_boosts} ao mesmo tempo 7/24)&lt;/small&gt;","Повышение до {lifetime_boosts} страниц&lt;br&gt;&lt;small&gt;({lifetime_boosts} в то же время 7/24)&lt;/small&gt;","Promociona asta {lifetime_boosts} paginas&lt;br&gt;&lt;small&gt;({lifetime_boosts} al mismo tiempo 7/24)&lt;/small&gt;","{lifetime_boosts} sayfa yükselt&lt;br&gt;&lt;small&gt;({lifetime_boosts} aynı zamanda 7/24)&lt;/small&gt;","Boost up to {lifetime_boosts} pages&lt;br&gt;"),
("765","sign_up","Sign up","التسجيل","Aanmelden","S&#039;inscrire","Anmelden","Registrazione","inscrever-se","зарегистрироваться","Regístrate","Kaydol","Daftar Sekarang ?"),
("766","youtube","YouTube","يوتيوب","YouTube","YouTube","YouTube","YouTube","Youtube","YouTube","Youtube","YouTube","YouTube"),
("767","my_products","My Products","منتجاتي","mijn producten","Mes produits","Meine Produkte","I miei prodotti","meus produtos","Мои продукты","Mis productos","Ürünlerim","My Products"),
("768","choose_a_payment_method","Choose a payment method","اختر طريقة الدفع","Kies een betaalmethode","Choisissez une méthode de paiement","Wählen Sie eine Zahlungsmethode","Scegliere un metodo di pagamento","Escolha um método de pagamento","Выберите способ оплаты","Elija un método de pago","Bir ödeme yöntemi seçin","Choose a payment method"),
("769","paypal","PayPal","باي بال","PayPal","PayPal","PayPal","PayPal","PayPal","PayPal","PayPal","PayPal","PayPal"),
("770","credit_card","Credit Card","بطاقة ائتمان","Credit Card","Credit Card","Kreditkarte","Carta di credito","Cartão de crédito","Кредитная карта","Tarjeta de crédito","Kredi Kartı","Credit Card"),
("771","bitcoin","Bitcoin","بيتكوين","Bitcoin","Bitcoin","Bitcoin","Bitcoin","Bitcoin","Bitcoin","Bitcoin","Bitcoin","Bitcoin"),
("772","categories","Categories","الإقسام","Categorieën","Catégories","Kategorien","Categorie","Categorias","категории","Categorías","Kategoriler","Pilih kategori"),
("773","latest_products","Latest Products","آخر المنتجات","nieuwste producten","Derniers produits","Neueste Produkte","Gli ultimi prodotti","Produtos Mais recentes","Последние поступления","últimos productos","Yeni ürünler","Produk akhir-akhir ini"),
("774","search_for_products_main","Search for products","إبحث عن منتج","Zoeken naar producten","Recherche de produits","Suche nach Produkten","Ricerca di prodotti","Pesquisa de produtos","Поиск продукции","Búsqueda de productos","Ürün ara","Cari Produk di AT-Social"),
("775","search_for_products","Search for products in {category_name}","بحث عن منتج في {category_name}","Zoeken naar producten in {category_name}","Recherche de produits dans {category_name}","Suche nach Produkten im {category_name}","Ricerca di prodotti in {category_name}","Pesquisa para os produtos em {category_name}","Поиск продукции в {category_name}","Búsqueda de productos en {category_name}","Ürünlerde ara {category_name}","Cari produk dengan kategori {category_name}"),
("776","no_available_products","No available products to show.","لا توجد منتجات متاحة.","Geen beschikbare tonend.","Pas de produits disponibles pour afficher.","Keine verfügbaren Produkte zu zeigen.","Non ci sono prodotti disponibili da mostrare.","Não há produtos disponíveis para mostrar.","Нет доступных продуктов для отображения.","No hay productos disponibles para mostrar.","Kullanılabilir bir ürün bulunamadı","Tidak ada produk untuk di tampilkan.!"),
("777","load_more_products","Load more products","تحميل المزيد من المنتجات","Laad meer producten","Chargez plus de produits","Laden Sie weitere Produkte","Caricare più prodotti","Carregar mais produtos","Загрузить больше продуктов","Cargar más productos","Daha fazla ürün göster","Load more products"),
("778","sell_new_product","Sell new product","بيع منتج جديد","Verkoop een nieuw product","Vente nouveau produit","Verkauf neuer Produkte","Vendita nuovo prodotto","Vender novo produto","Продаем новый продукт","Vender nuevos productos","Yeni bir ürün sat","Sell new product"),
("779","description","Description","الوصف","Beschrijving","La description","Beschreibung","Descrizione","Descrição","Описание","Descripción","Açıklama","Description"),
("780","please_describe_your_product","Please describe your product.","يرجى وصف المنتج الخاص بك.","Beschrijf uw product.","S&#39;il vous plaît décrire votre produit.","Bitte beschreiben Sie Ihr Produkt.","Si prega di descrivere il tuo prodotto.","Por favor, descreva o seu produto.","Пожалуйста, опишите ваш продукт.","Por favor describa su producto.","Ürününüzü açıklayın","Please describe your product."),
("781","used","Used","مستعمل","Gebruikt","Utilisé","Benutzt","Usato","Usava","Используемый","Usado","Kullanılan","Used"),
("782","new","New","جديد","Nieuwe","Nouveau","Neu","Nuovo","Novo","новый","Nuevo","Yeni","Buat Baru"),
("783","price","Price","السعر","Prijs","Prix","Preis","Prezzo","Preço","Цена","Precio","Fiyat","Price"),
("784","your_product_price","Your product price in USD currency ($), e.g (10.99)","سعر المنتج في الدولار ($), مثال (10.99)","Uw product prijs in USD valuta ($), e.g (10.99)","Votre prix du produit en monnaie USD ($), e.g (10.99)","Ihr Produktpreis in USD ($), e.g (10.99)","Il prezzo del prodotto in valuta USD ($), e.g (10.99)","Seu preço do produto em USD ($), por exemplo (10,99)","Ваша цена продукта в USD валюте ($) области, например (10,99)","Su precio del producto en USD ($), por ejemplo (10.99)","Ürün fiyatı dolar para birimi cinsinden ($), ör: (10.99)","Your product price in USD currency ($), e.g (10.99)"),
("785","edit_product","Edit product","تحرير المنتج","Product bewerken","Modifier le produit","Bearbeiten Produkt","Modifica del prodotto","Editar produto","Изменить продукт","Editar producto","Ürün düzenle","Edit product"),
("786","publish","Publish","نشر","Publiceren","Publier","Veröffentlichen","Pubblicare","Publicar","Публиковать","Publicar","Yayınla","Publish"),
("787","more_info","More info","المزيد","Meer informatie","More info","Mehr Infos","Ulteriori informazioni","Mais informações","Больше информации","Más información","Daha fazla bilgi","More info"),
("788","contact_seller","Contact seller","تواصل مع البائع","De aanbieders contacteren","Contacter le vendeur","Verkäufer kontaktieren","Contatta il venditore","Contactar fornecedor","Связаться с продавцом","Contacte al vendedor","Satıcı olmak için başvurun","Contact seller"),
("789","by_product","By &lt;a href=&quot;{product_url}&quot;&gt;{product_name}&lt;/a&gt;, posted {product_time}, in &lt;a href=&quot;{product_category}&quot;&gt;{product_category_name}&lt;/a&gt;","بواسطة &lt;a href=&quot;{product_url}&quot;&gt;{product_name}&lt;/a&gt;, نشر {product_time}, في &lt;a href=&quot;{product_category}&quot;&gt;{product_category_name}&lt;/a&gt;","Door &lt;a href=&quot;{product_url}&quot;&gt;{product_name}&lt;/a&gt;, gepost {product_time}, in &lt;a href=&quot;{product_category}&quot;&gt;{product_category_name}&lt;/a&gt;","Par &lt;a href=&quot;{product_url}&quot;&gt;{product_name}&lt;/a&gt;, posté {product_time}, dans &lt;a href=&quot;{product_category}&quot;&gt;{product_category_name}&lt;/a&gt;","Durch &lt;a href=&quot;{product_url}&quot;&gt;{product_name}&lt;/a&gt;, gesendet {product_time}, im &lt;a href=&quot;{product_category}&quot;&gt;{product_category_name}&lt;/a&gt;","Di &lt;a href=&quot;{product_url}&quot;&gt;{product_name}&lt;/a&gt;, postato {product_time}, in &lt;a href=&quot;{product_category}&quot;&gt;{product_category_name}&lt;/a&gt;","Por &lt;a href=&quot;{product_url}&quot;&gt;{product_name}&lt;/a&gt;, postou {product_time}, em &lt;a href=&quot;{product_category}&quot;&gt;{product_category_name}&lt;/a&gt;","По &lt;a href=&quot;{product_url}&quot;&gt;{product_name}&lt;/a&gt;, размещенном {product_time}, в &lt;a href=&quot;{product_category}&quot;&gt;{product_category_name}&lt;/a&gt;","Por &lt;a href=&quot;{product_url}&quot;&gt;{product_name}&lt;/a&gt;, publicado {product_time}, en &lt;a href=&quot;{product_category}&quot;&gt;{product_category_name}&lt;/a&gt;","Satışda olan ürün: &lt;a href=&quot;{product_url}&quot;&gt;{product_name}&lt;/a&gt;, Satışa başladığı zaman: {product_time}, Satış kategorisi: &lt;a href=&quot;{product_category}&quot;&gt;{product_category_name}&lt;/a&gt;","By &lt;a href=&quot;{product_url}&quot;&gt;{product_name}&lt;/a&gt;, posted {product_time}, in &lt;a href=&quot;{product_category}&quot;&gt;{product_category_name}&lt;/a&gt;"),
("790","payment_declined","Payment declined, please try again later.","حدثت مشكلة ، يرجى المحاولة مرة أخرى في وقت لاحق.","Betaling geweigerd, probeer het later opnieuw.","Paiement refusé, s&#39;il vous plaît essayer à nouveau plus tard.","Zahlung abgelehnt, bitte versuchen Sie es später noch einmal.","Pagamento rifiutato, riprova più tardi.","Pagamento recusado, por favor tente novamente mais tarde.","Платеж отклонен, пожалуйста, повторите попытку позже.","Pago rechazado, por favor intente de nuevo más tarde.","Ödeme reddedildi, lütfen daha sonra tekrar deneyin.","Payment declined, please try again later."),
("791","c_payment","Confirming payment, please wait..","تأكيد الدفع، يرجى الانتظار ..","Bevestiging van de betaling, even geduld aub ..","paiement confirmant, s&#39;il vous plaît patienter ..","Bestätigen Zahlung, bitte warten ..","Confermando il pagamento, si prega di attendere ..","Confirmação do pagamento, aguarde por favor ..","Подтверждение оплаты, пожалуйста, подождите ..","Confirmar el pago, por favor espere ..","Ödeme kontrol ediliyor, lütfen bekleyin.","Confirming payment, please wait.."),
("792","earn_users","Earn up to ${amount} for each user your refer to us !","إكسب ما يصل الى ${amount} لكل مستخدم يسجل من جانبك !","Verdien tot ${amount} voor elke gebruiker je verwijzen naar ons!","Gagnez jusqu&#39;à ${amount} pour chaque utilisateur de votre référence à nous!","Verdienen Sie bis zu ${amount} Für jeden Benutzer beziehen Ihr uns!","Guadagna fino a ${amount} per ogni utente il vostro si riferiscono a noi!","Ganhe até ${amount} para cada usuário sua referem-se a nós!","Заработайте до ${amount} для каждого пользователя вашего обратитесь к нам!","Gane hasta ${amount} para cada usuario su refieren a nosotros!","Her kullanıcıdan ${amount} daha fazla kazanmak için bizi izleyin.","Earn up to ${amount} for each user your refer to us !"),
("793","earn_users_pro","Earn up to ${amount} for each user your refer to us and will subscribe to any of our pro packages.","إكسب ما يصل الى ${amount} لكل مستخدم يسجل من جانبك ويشترك باحدى عروضنا","Verdien tot ${amount} voor elke gebruiker je verwijzen naar ons en zal zich abonneren op een van onze propakketten.","Gagnez jusqu&#39;à ${amount} pour chaque utilisateur de votre référence à nous et souscrira à un de nos forfaits pro.","Verdienen Sie bis zu ${amount} Für jeden Benutzer beziehen Ihr für uns und wird zu einem unserer Pro-Pakete abonnieren.","Guadagna fino a ${amount} per ogni utente il vostro si riferiscono a noi e sottoscriverà uno qualsiasi dei nostri pacchetti pro.","Ganhe até ${amount} para cada usuário sua referem-se a nós e vai inscrever-se a qualquer um dos nossos profissionais pacotes.","Заработайте до ${amount} для каждого пользователя вашего обратитесь к нам и подписаться на любой из наших профессиональных пакетов.","Gane hasta ${amount} para cada usuario su refieren a nosotros y suscribirse a cualquiera de nuestros redactores paquetes.","Her kullanıcıdan ${amount} kazanmak için daha fazla pro paketlerimize abone olacak.","Earn up to ${amount} for each user your refer to us and will subscribe to any of our pro packages."),
("794","my_affiliates","My Affiliates","دعوة الأصدقاء بالمكافأة","Mijn Affiliates","Mes Affiliés","Meine Affiliates","I miei affiliati","meus Afiliados","Мои Филиалы","Mis Afiliados","Benim referanslarım","My Affiliates"),
("795","my_balance","My balance","رصيدي","Mijn balans","Mon solde","Mein Gleichgewicht","Il mio equilibrio","Meu saldo","Мой баланс","Mi balance","Bakiyem","My balance"),
("796","your_ref_link","Your affiliate link is","اللينك الخاص بك هو","Uw affiliate link is","Votre lien d&#39;affiliation est","Ihre Affiliate Link ist","Il tuo link:","Sua ligação da filial é","Ваша партнерская ссылка","Su red de afiliados es","Referans adresi","Your affiliate link is"),
("797","your_balance","Your balance is ${balance}, minimum withdrawal request is ${m_withdrawal}","رصيدك هو ${balance}, الحد الأدنى لطلب السحب ${m_withdrawal}","Uw saldo is ${balance}, minimum een verzoek tot uitbetaling ${m_withdrawal}","Votre solde est ${balance}, demande de retrait minimum est ${m_withdrawal}","Ihre Waage ist ${balance}, minimum withdrawal request is ${m_withdrawal}","La bilancia è ${balance}, richiesta di prelievo minimo è ${m_withdrawal}","Seu saldo é de R ${balance} equilíbrio, o pedido de retirada mínima é de R ${m_withdrawal}","Ваш баланс составляет ${balance} баланс, минимальный запрос на вывод средств составляет ${m_withdrawal}","Su saldo es de ${balance} equilibrio, la solicitud de retiro mínimo es ${m_withdrawal}","Bakiyeniz ${balance}, minimum çekebileceğiniz tutar ${m_withdrawal}","Your balance is ${balance}, minimum withdrawal request is ${m_withdrawal}"),
("798","your_balance_is","Your balance is","رصيدك هو","Uw saldo is","Votre solde est","Ihre waage ist","La bilancia è","Seu saldo é","Ваш баланс","Su saldo es","Bakiyeniz","Your balance is"),
("799","paypal_email","PayPal email","أيميل البايبال الخاص بك","PayPal email","PayPal email","PayPal email","PayPal email","Email do Paypal","PayPal по электронной почте","E-mail de Paypal","PayPal e-posta adresi","PayPal email"),
("800","amount_usd","Amount (USD)","القيمة (دولار امريكي)","Bedrag (USD)","Montant (USD)","Menge (USD)","Quantità (USD)","Montante (USD)","Сумма (USD)","Monto (USD)","Tutar (USD)","Amount (USD)");

--
-- Dumping data for table `wo_langs`
--

INSERT INTO wo_langs VALUES
("801","request_withdrawal","Request withdrawal","اسحب الرصيد","verzoek tot uitbetaling","Demande de retrait","Antrag rückzug","richiesta di prelievo","pedido de retirada","Запрос вывода","solicitud de retiro","Para çekme talebi","Request withdrawal"),
("802","payment_history","Payment History","تاريخ الدفع","Betaalgeschiedenis","Historique de paiement","Zahlungshistorie","Storico dei pagamenti","Histórico de pagamento","История платежей","historial de pagos","Ödeme tarihi","Payment History"),
("803","amount","Amount","القيمة","Bedrag","Montant","Menge","Quantità","Quantidade","Количество","Cantidad","Tutar","Amount"),
("804","declined","Declined","تم الرفض","Afgewezen","Refusée","Abgelehnt","Rifiutato","Recusado","Отклонено","disminuido","Reddedildi","Declined"),
("805","approved","Approved","م القبول","Aangenomen","A approuvé","Genehmigt","Approvato","aprovado","утвержденный","Aprobado","Onaylandı","Approved"),
("806","total_votes","Total votes","مجموع الأصوات","Totaal aantal stemmen","Des votes","Anzahl der Kundenbewertungen","Totale voti","total de votos","Всего голосов","Total de votos","Toplam oy","Orang Pemilih"),
("807","mark_as_sold","Mark Product As Sold","تم بيع المنتج","Mark Product zoals verkocht","Marque produit vendu","Mark erhältliche Erzeugnis","Mark prodotto commerciale","Mark produto comercializado","Маркировка продукта Как Продано","Marca de producto comercializado","Satılan ürün","Mark Product As Sold"),
("808","added_new_product_for_sell","added new product for sell.","ضاف منتج جديد للبيع.","toegevoegd nieuw product voor verkoopt.","nouveau produit ajouté pour vendre.","hinzugefügt neues Produkt zu verkaufen.","nuovo prodotto aggiunto per vendere.","adicionou novo produto para vender.","добавлен новый продукт для продажи.","añadido nuevo producto para la venta.","Yeni ürün satış için eklendi","added new product for sell."),
("809","product_name","Product Name","اسم المنتج","productnaam","Nom du produit","Produktname","nome del prodotto","Nome do Produto","наименование товара","nombre del producto","Ürün adı","Product Name"),
("810","in_stock","In stock","متاح","Op voorraad","en magasin","Auf Lager","Disponibile","Em estoque","В наличии","En stock","Stokda kaç adet var","In stock"),
("811","sold","Sold","تم البيع","Uitverkocht","Vendu","Verkauft","Venduto","Vendido","Продан","Vendido","Satılan","Sold"),
("812","answer","Answer","الجواب","Antwoord","Répondre","Antworten","Risposta","Responda","Ответ","Responder","Cevap","Jawab"),
("813","add_answer","Add answer","إضافة جواب","Antwoord toevoegen","Ajouter une réponse","In Antwort","Aggiungi risposta","Adicionar resposta","Добавить ответ","Añadir respuesta","Cevap ekle","Tambah jawaban"),
("814","authenticating","Authenticating","جاري تدقيق المعلومات","Authentiserende","Authentifier","Authentifizieren","autenticazione","autenticação","удостовер","de autenticación","Kimlik doğrulama","Authenticating"),
("815","welcome_back","Welcome back!","أهلا بك!","Welkom terug!","Nous saluons le retour!","Willkommen zurück!","Ben tornato!","Bem vindo de volta!","Добро пожаловать!","¡Dar una buena acogida!","Tekrar hoşgeldiniz!","Welcome back!"),
("816","welcome_","Welcome!","أهلا بك!","Welkom!","Bienvenue!","Willkommen!","Benvenuto!","Bem vinda!","Добро пожаловать!","¡Bienvenido!","Hoşgediniz!","Welcome!"),
("817","connect_with_people","Connect with people.","تواصل مع الناس.","Contact maken met mensen.","Communiquer avec les gens.","Verbinden Sie sich mit Menschen.","Connettiti con persone.","Conectar com as pessoas.","Общайтесь с людьми.","Conectar con la gente.","İnsanlarla sürekli bağlantıda ol.","Connect with people."),
("818","make_new_friends","Make new friends.","كون صداقات جديدة.","Maak nieuwe vrienden.","Se faire de nouveaux amis.","Neue Freunde finden.","Fare nuovi amici.","Fazer novos amigos.","Завести новых друзей.","Hacer nuevos amigos.","Yeni arkadaşlar edin.","Make new friends."),
("819","share_your_memories","Share your memories.","شارك ذكرياتك.","Deel je herinneringen.","Partagez vos souvenirs.","Teilen Sie Ihre Erinnerungen.","Condividi i tuoi ricordi.","Partilhar as suas memórias.","Поделитесь своими воспоминаниями.","Compartir sus recuerdos.","Anılarını paylaş.","Share your memories."),
("820","create_new_relationships","Create new relationships.","أنشىء علاقات جديدة.","Maak nieuwe relaties.","Créer de nouvelles relations.","Erstellen Sie neue Beziehungen.","Crea nuove relazioni.","Criar novos relacionamentos.","Создание новых отношений.","Crear nuevas relaciones.","Yeni bir ilişki oluştur.","Buat hubungan baru."),
("821","discover_new_places","Discover new places.","إكتشف أماكن جديدة.","Ontdek nieuwe plaatsen.","Découvrez de nouveaux endroits.","Entdecken Sie neue Orte.","Scoprire posti nuovi.","Descubra novos lugares.","Откройте для себя новые места.","Descubrir nuevos lugares.","Yeni yerler keşfet.","Discover new places."),
("822","forgot_your_password","Forgot your password?","هل نسيت كلمة المرور?","Je wachtwoord vergeten?","Mot de passe oublié?","Haben Sie Ihr Passwort vergessen","Hai dimenticato la password?","Esqueceu sua senha?","Забыли пароль?","¿Olvidaste tu contraseña?","Şifreni mi unuttun?","Forgot your password?"),
("823","invalid_markup","Invalid markup, please try to reset your password again","العلامة غير صالحة، يرجى المحاولة لإعادة تعيين كلمة المرور الخاصة بك مرة أخرى","Ongeldige markup, dan kunt u proberen om uw wachtwoord opnieuw in te resetten","balisage non valide, s&#39;il vous plaît essayez de réinitialiser votre mot de passe","Ungültige Markup, versuchen Sie Ihr Passwort wieder zurücksetzen","markup non valido, provare a reimpostare nuovamente la password","marcação inválida, por favor, tente redefinir sua senha novamente","Недопустимая разметка, пожалуйста, попробуйте сбросить пароль еще раз","marcado no válido, intenta restablecer la contraseña de nuevo","Geçersiz karakter kullandınız lütfen tekrar deneyin.","Invalid markup, please try to reset your password again"),
("824","go_back","Go back","الرجوع","Go back","Go back","Geh zurück","Go back","Volte","Возвращаться","Regresa","Geri git","Go back"),
("825","terms_agreement","By creating your account, you agree to our","قبل إنشاء الحساب الخاص بك، فإنك توافق على","Door het maken van uw account, gaat u akkoord met onze","En créant votre compte, vous acceptez nos","Durch die Erstellung Ihres Kontos stimmen Sie unseren","Creando il tuo account, accettate la nostra","Ao criar sua conta, você concorda com a nossa","При создании учетной записи, вы согласны с нашими","Al crear su cuenta, usted está de acuerdo con nuestra","Hesabınızı oluşturduğunuzda gizlilik şartlarımızı kabul etmiş sayılırsınız.","Dengan membuat akun anda, berarti anda harus mematuhi aturan kami."),
("826","please_choose_price","Please choose a price for your product","الرجاء اختيار سعر المنتج الخاص بك","Kies een prijs voor uw product","S&#39;il vous plaît choisir un prix pour votre produit","Bitte wählen Sie einen Preis für Ihr Produkt","Scegliere un prezzo per il prodotto","Por favor, escolha um preço para seu produto","Пожалуйста, выберите цену для вашего продукта","Por favor, elija un precio para su producto","Lütfen dürtmek için bir fiyat seçiniz","Please choose a price for your product"),
("827","please_choose_c_price","Please choose a correct value for your price","الرجاء اختيار القيمة الصحيحة للسعر الخاص بك","Kies een juiste waarde voor uw prijs","S&#39;il vous plaît choisir une valeur correcte pour votre prix","Bitte wählen Sie einen korrekten Wert für Ihr Preis","Scegliere un valore corretto per il vostro prezzo","Por favor, escolha um valor correto para o seu preço","Пожалуйста, выберите правильное значение для вашей цене","Por favor, elija un valor correcto para el precio","Lütfen fiyatı güncellerken bir değer giriniz","Please choose a correct value for your price"),
("828","please_upload_image","Please upload at least 1 photo","يرجى تحميل صورة واحد كحد ادنى","Upload ten minste 1 foto","S&#39;il vous plaît télécharger au moins 1 photo","Bitte laden Sie mindestens 1 Foto","Carica almeno 1 foto","Faça o upload de pelo menos 1 foto","Пожалуйста, загрузите по крайней мере 1 фото","Sube al menos 1 foto","Lütfen en az bir fotoğraf yükleyin","Please upload at least 1 photo"),
("829","you_have_already_voted","You have already voted this poll.","لقد قمت بالتصويت بالفعل لهذا الإستطلاع.","Je hebt al deze poll gestemd.","Vous avez déjà voté ce sondage.","Sie haben bereits abgestimmt diese Umfrage.","Hai già votato questo sondaggio.","Você já votou nesta enquete.","Вы уже голосовали этот опрос.","Ya ha votado esta encuesta.","Zaten bu ankete oy kullandın","You have already voted this poll."),
("830","you_have_pending_request","You have already a pending request.","لديك بالفعل طلب معلق.","U heeft al een aanvraag in behandeling.","Vous avez déjà une demande en attente.","Sie haben bereits eine ausstehende Anforderung.","Hai già una richiesta in sospeso.","Você já tem um pedido pendente.","У вас есть уже отложенный запрос.","Ya tiene una solicitud pendiente.","Bekleyen bir isteğin var","You have already a pending request."),
("831","invalid_amount_value","Invalid amount value","قيمة غير صالحة","Ongeldig bedrag waarde","valeur de quantité non valide","Ungültige Betragswert","valore di importo non valido","valor montante inválido","Неверное значение суммы","valor de la cantidad no válida","Geçersiz bir miktar yazdın","Invalid amount value"),
("832","invalid_amount_value_your","Invalid amount value, your amount is:","قيمة غير صالحة, رصيدك هو:","Ongeldig bedrag waarde, uw bedrag is:","Valeur de quantité non valide, le montant est:","Ungültige Menge Wert, Ihre Menge ist:","valore di importo non valido, l&#039;importo è:","valor montante inválido, o valor é:","Неверное значение суммы, ваша сумма:","valor de la cantidad no válida, su cantidad es:","Geçersiz bir miktar yazdınız, bu tutar geöerli değildir:","Invalid amount value, your amount is:"),
("833","invalid_amount_value_withdrawal","Invalid amount value, minimum withdrawal request is:","قيمة غير صالحة, الحد الأدنى لطلب السحب:","Ongeldig bedrag waarde, minimum een verzoek tot uitbetaling:","valeur de quantité non valide, demande de retrait minimum est de:","Ungültige Betragswert , mindestauszahlungs anforderung ist:","Invalid amount value, minimum withdrawal request is:","valor montante inválido, o pedido de retirada mínima é:","Неверное значение суммы, минимальный запрос на вывод средств является:","valor de la cantidad no válida, la solicitud de retiro mínimo es:","Geçersiz tutar yazdınız minimum para çekme talebi:","Invalid amount value, minimum withdrawal request is:"),
("834","you_request_sent","Your request has been sent, you&#039;ll receive an email regarding the payment details soon.","تم إرسال طلبك، سوف تتلقى رسالة بريد إلكتروني حول تفاصيل المبلغ في وقت قريب.","Uw aanvraag is verzonden, zult u een e-mail met betrekking tot de betalingsgegevens binnenkort.","Votre demande a été envoyée, vous recevrez un e-mail concernant les détails de paiement bientôt.","Ihre Anfrage gesendet wurde, erhalten Sie eine E-Mail in Bezug auf die Zahlungsdetails erhalten bald.","La vostra richiesta è stata inviata, riceverai una e-mail per quanto riguarda i dati di pagamento al più presto.","O seu pedido foi enviado, você receberá um e-mail sobre os detalhes de pagamento em breve.","Ваш запрос был отправлен, вы получите по электронной почте о деталях платежа в ближайшее время.","Su solicitud ha sido enviado, recibirá un correo electrónico con respecto a los datos de pago pronto.","Para çekme isteğiniz başarı bir şekilde bize ulaştı yakında bununla ilgili bir e-posta göndereceğiz.","Your request has been sent, you&#039;ll receive an email regarding the payment details soon."),
("835","turn_off_notification","Turn off notification sound","إيقاف صوت الإعلام","Schakel meldingsgeluid","Désactiver la notification sonore","Schalten Sie eine Benachrichtigung Sound","Disattiva suono di notifica","Desligar o som de notificação","Выключите звук уведомления","Desactivar el sonido de notificación","Bildirim sesini kapat","Turn off notification sound"),
("836","turn_on_notification","Turn on notification sound","تشغيل صوت الإعلام","Zet meldingsgeluid","Activer la notification sonore","Schalten Sie eine Benachrichtigung Sound","Accendere il suono di notifica","Ligar som de notificação","Включите звук уведомления","Activar el sonido de notificación","Bildirim sesini aç","Turn on notification sound"),
("837","view_more_posts","View {count} new posts","إظهار {count} منشور جديد","Uitzicht {count} nieuwe berichten","Vue {count} de nouveaux messages","Aussicht {count} neuen beiträge","Vista {count} nuovo messaggio","Veja {count} novas mensagens","Просмотр {count} новых сообщений","Ver {count} mensajes nuevos","Yeni mesajları görüntüle {count}","Ada {count} pikiran baru loh, coba deh klik untuk lihat"),
("838","store_posts_by","Store posts by","صنف المنشورات","Store berichten van","postes de magasins par","Zeige Beiträge","Visualizza i messaggi di","mensagens de loja por","Магазин сообщения от","almacenar mensajes de","Mağazada paylaşan","Produk di kirim oleh"),
("839","new_audio_call","New audio call","إتصال جديد","Nieuwe audiogesprek","Nouveau appel audio","Neuer Audioanruf","Nuova chiamata audio","Nova chamada de áudio","Новый аудио вызов","Nueva llamada de audio","Yeni sesli çağrı","New audio call"),
("840","new_audio_call_desc","wants to talk with you.","يريد التحدث معك.","wil met je praten.","Veut parler avec vous","Möchte mit Ihnen sprechen.","vuole parlare con te.","Quer falar com você","хочет поговорить с вами.","Quiere hablar contigo","Seninle konuşmak istiyor.","wants to talk with you."),
("841","audio_call","Audio call","مكالمة صوتية","audio oproep","Appel audio","Audioanruf","chiamata audio","Chamada de áudio","Аудиовызов","llamada de audio","Sesli arama","Audio call"),
("842","audio_call_desc","talking with","يتحدث مع","praten met","parler avec","sprechen mit","parlando con","conversando com","говорить с","Hablando con","ile konuşmak","talking with"),
("843","market","Market","السوق","Markt","Marché","Markt","Mercato","Mercado","рынок","Mercado","Piyasa","Market"),
("844","comment_post_label","Comment","علق","Kommentar","Commentaire","Kommentar","Commento","Comentario","Комментарий","Comentario","Yorum Yap","Comment"),
("846","by","By","بواسطة","Door","Par","Durch","Di","De","От","Por","Tarafından","Oleh"),
("847","load_more_blogs","Load more articles","تحميل المزيد من المقالات","Laad meer artikelen","","Laden Sie weitere Artikel","Carica altri articoli","Carregar mais artigos","Загрузить другие статьи","Cargar más artículos","Daha fazla makale yükle","Load more articles"),
("848","blog","Blog","مدونة","blog","Blog","Blog","blog","Blog","Блог","Blog","Blog","Blog"),
("849","no_blogs_found","No articles found","لم يتم العثور على أية مقالات","Geen artikelen gevonden","Aucun article trouvé","Keine Artikel gefunden","Nessun articolo trovato","Nenhum artigo encontrado","Статьи не найдены","No se encontraron artículos","Makale bulunamadı","No articles found"),
("850","most_recent_art","Most recent articles","أحدث المقالات","Meest recente artikelen","Articles les plus récents","Die neuesten Artikel","Articoli più recenti","Artigos mais recentes","Последние статьи","Artículos más recientes","En yeni makaleler","Artikel yang mungkin anda harus tahu"),
("851","create_new_article","Create new article","إنشاء مقالة جديدة","Nieuwe artikel","Créer un nouvel article","Erstellen Sie einen neuen Artikel","Crea un nuovo articolo","Criar novo artigo","Создать новую статью","Crear un nuevo artículo","Yeni makale oluştur","Buat artikel baru"),
("852","my_articles","My articles","مقالاتي","mijn artikelen","Mes articles","Meine Artikel","I miei articoli","Meus artigos","Мои статьи","Mis artículos","Makalelerim","Artikel saya"),
("853","title","Title","عنوان","Titel","Titre","Titel","Titolo","Título","заглавие","Título","Başlık","Title"),
("854","content","Content","يحتوى","Inhoud","Contenu","Inhalt","Soddisfare","Conteúdo","Содержание","Contenido","İçerik","Content"),
("855","select","Select","تحديد","kiezen","Sélectionner","Wählen","Selezionare","Selecionar","Выбрать","Seleccionar","Seç","Pilih"),
("856","tags","Tags","العلامات","Tags","Mots clés","Tags","tag","Tag","Теги","Etiquetas","Etiketler","Tags"),
("857","thumbnail","Thumbnail","صورة مصغرة","thumbnail","La vignette","Miniaturansicht","Thumbnail","Miniatura","Значок видео","Miniatura","Küçük resim","Thumbnail"),
("858","published","Published","نشرت","Gepubliceerd","Publié","Veröffentlicht","Pubblicato","Publicados","Опубликовано","Publicado","Yayınlanan","Published"),
("859","views","Views","الآراء","Uitzichten","Vues","Ansichten","Visualizzazioni","Visualizações","Просмотры","Puntos de vista","Görüntüler","Di lihat"),
("860","article_updated","Your article has been successfully updated","تم تحديث مقالتك بنجاح","Uw artikel is bijgewerkt","Votre article a été mis à jour avec succès","Ihr Artikel wurde erfolgreich aktualisiert","Il tuo articolo è stato aggiornato con successo","Seu artigo foi atualizado com sucesso","Ваша статья успешно обновлена","Su artículo ha sido actualizado con éxito","Makaleniz başarıyla güncellendi","Your article has been successfully updated"),
("861","article_added","Your article has been successfully added","تمت إضافة مقالتك بنجاح","Uw artikel is succesvol toegevoegd","Votre article a été ajouté avec succès","Ihr Artikel wurde erfolgreich hinzugefügt","Il tuo articolo è stato aggiunto","Seu artigo foi adicionado com êxito","Ваша статья успешно добавлена","Su artículo ha sido añadido correctamente","Makalen başarıyla eklendi","Your article has been successfully added"),
("862","title_more_than10","Title should be more than 10 characters","يجب أن يكون العنوان أكثر من 10 أحرف","Titel moet meer zijn dan 10 tekens","Le titre doit comporter plus de 10 caractères","Titel sollte mehr als 10 Zeichen sein","Il titolo dovrebbe essere più di 10 caratteri","O título deve ter mais de 10 caracteres","Заголовок должен содержать более 10 символов.","El título debe tener más de 10 caracteres","Başlık en fazla 10 karakter olmalıdır","Judul harus lebih dari 10 karakter"),
("863","desc_more_than32","Description should be more than 32 characters","يجب أن يكون الوصف أكثر من 32 حرفا","Beschrijving moet meer zijn dan 32 tekens","La description doit comporter plus de 32 caractères","Beschreibung sollte mehr als 32 Zeichen sein","Descrizione dovrebbe essere più di 32 caratteri","A descrição deve ter mais de 32 caracteres","Описание должно содержать более 32 символов.","La descripción debe tener más de 32 caracteres","Açıklama 32 karakterden uzun olmalı","Description should be more than 32 characters"),
("864","please_fill_tags","Please fill the tags field","يرجى ملء حقل العلامات","Vul het veld labels","Remplissez le champ tags","Bitte füllen Sie das Etikettenfeld aus","Si prega di compilare il campo tag","Preencha o campo de tags","Пожалуйста, заполните поле тегов","Por favor rellene el campo de etiquetas","Lütfen etiketler alanını doldurun","Please fill the tags field"),
("865","error_found","Error found, please try again later","حدث خطأ، يرجى إعادة المحاولة لاحقا","Fout gevonden, probeer het later opnieuw","Une erreur a été trouvée, réessayez plus tard","Fehler gefunden, bitte später nochmal versuchen","Errore trovato, si prega di riprovare più tardi","Ocorreu um erro, tente novamente mais tarde","Ошибка найдена. Повторите попытку позже.","Error encontrado. Vuelve a intentarlo más tarde.","Hata bulundu, lütfen daha sonra tekrar deneyin.","Error found, please try again later"),
("866","posted_on_blog","Posted {BLOG_TIME} in {CATEGORY_NAME}.","نشر {BLOG_TIME} في {CATEGORY_NAME}.","Posted {BLOG_TIME} in {CATEGORY_NAME}.","Posted {BLOG_TIME} in {CATEGORY_NAME}.","Posted {BLOG_TIME} in {CATEGORY_NAME}.","Posted {BLOG_TIME} in {CATEGORY_NAME}.","Posted {BLOG_TIME} in {CATEGORY_NAME}.","Posted {BLOG_TIME} in {CATEGORY_NAME}.","Posted {BLOG_TIME} in {CATEGORY_NAME}.","Yayınlanan {BLOG_TIME} {CATEGORY_NAME} da.","Posted {BLOG_TIME} in {CATEGORY_NAME}."),
("867","created_new_blog","created new article","إنشاء مقالة جديدة","creëerde nieuwe artikel","Nouvel article créé","Erstellt neuen Artikel","nuovo articolo creato","Criou um novo artigo","Создал новую статью","Creó nuevo artículo","Yeni makale yazdı","membuat artikel baru"),
("868","forum","Forum","منتدى","Forum","Forum","Forum","Forum","Fórum","Форум","Foro","forum","Forum"),
("869","replies","Replies","ردود","Antwoorden","Réponses","Antworten","risposte","Respostas","Ответы","Respuestas","Cevaplar","Balasan"),
("870","last_post","Last Post","آخر مشاركة","Laatste bericht","Dernier commentaire","Letzter Beitrag","Ultimo messaggio","Última postagem","Последний пост","Ultima publicación","Son Posta","Kiriman terakhir"),
("871","topic","topic","موضوع","onderwerp","sujet","Thema","argomento","tema","тема","tema","konu","topic"),
("872","thread_search","Threads search","بحث المواضي","Zoek naar discussies","Recherche de threads","Threads suchen","Ricerca di thread","Pesquisa de Threads","Поиск по темам","Búsqueda de hilos","Konular arama","Cari pertanyaan"),
("873","create_new_topic","Create new topic","إنشاء موضوع جديد","Maak een nieuw onderwerp aan","Créer un nouveau sujet","Neues Thema erstellen","Crea nuovo argomento","Criar novo tópico","Создать новую тему","Crear nuevo tema","Yeni konu oluştur","Buat topik baru"),
("874","jump_to","Jump to","انتقل الى","Spring naar","Sauter à","Springen zu","Salta a","Pule para","Перейти к","Salta a","Atlamak","Lompat ke"),
("875","my_threads","My threads","المواضيع","Mijn draden","Mes fils","Meine Fäden","I miei fili","Meus tópicos","Мои темы","Mis hilos","Konuları ekle","Pertanyaan saya"),
("876","my_messages","My Messages","رسائلي","Mijn berichten","Mes messages","Meine Nachrichten","I miei messaggi","Minhas mensagens","Мои сообщения","Mis mensajes","Mesajlarım","Pesan saya"),
("877","headline","Headline","العنوان ","opschrift","Gros titre","Überschrift","Titolo","Título","Заголовок","Titular","manşet","Headline"),
("878","your_post","Your post","منشورك ","Uw bericht","Votre publication","Deine Post","Il tuo post","Sua postagem","Ваше сообщение","Tu mensaje","Senin gönderin","Your post"),
("879","reply","Reply","الرد ","Antwoord","Répondre","Antworten","rispondere","Resposta","Ответить","Respuesta","cevap","Reply"),
("880","started_by","Started by","بدأ ب","Begonnen door","Commencé par","Angefangen von","Iniziato da","Começado por","Начато","Comenzado por","Başlatan","Di mulai oleh"),
("881","site_admin","Site Admin","مسؤول الموقع","Site Admin","Administrateur du site","Site Admin","Amministrazione del sito","Administrador do Site","Администратор сайта","Administrador del sitio","Site Yöneticisi","Admin AT-Social"),
("882","registered","Registered","مسجل","Geregistreerd","Inscrit","Eingetragen","Registrato","Registrado","зарегистрированный","Registrado","Kayıtlı","Terdaftar di AT-Social"),
("883","posts","posts","المشاركات","posts","des postes","Beiträge","messaggi","Postagens","сообщений","Mensajes","Mesajları","Kiriman"),
("884","reply_to_topic","Reply to this topic","الرد على هذا الموضوع","Antwoord op dit onderwerp","Répondre à ce sujet","Antwort auf dieses Thema","Rispondi a questo argomento","Responder a este tópico","Ответить в эту тему Открыть новую тему","Responder a este tema","Bu konuyu cevapla","Balas pertanyaan orang ini"),
("885","topic_review","Topic review","مراجعة الموضوع ","Onderwerp review","Examen de sujet","Thema Bewertung","Revisione degli argomenti","Revisão do tópico","Обзор темы","Revisión de temas","Konu incelemesi","Topic review"),
("886","your_reply","Your Reply","ردك ","Uw reactie","Votre réponse","Deine Antwort","La tua risposta","Sua resposta","Ваш ответ","Tu respuesta","Cevabınızı","Your Reply"),
("887","list_of_users","List of users","قائمة المستخدمين","Lijst van gebruikers","Liste des utilisateurs","Liste der Benutzer","Elenco degli utenti","Lista de usuários","Список пользователей","Lista de usuarios","Kullanıcı listesi","Daftar Pengguna"),
("888","post_count","Posts count","عدد المشاركات ","Berichten tellen","Nombre de postes","Beiträge zählen","I numeri contano","Posts count","Количество сообщений","Los posts cuentan","Mesaj sayısı","Posts count"),
("889","referrals","Referrals","الإحالات ","Verwijzingen","Renvois","Verweise","Referenti","Referências","Переходов","Referencias","Tavsiye","Referrals"),
("890","last_visit","Last visit","الزيارة الأخيرة ","Laatste bezoek","Derniere visite","Letzter Besuch","Lultima visita","Ultima visita","Последнее посещение","Última visita","Son ziyaret","Last visit"),
("891","general_search_terms","General search terms","عبارات البحث العامة","Algemene zoektermen","Conditions générales de recherche","Allgemeine Suchbegriffe","Termini di ricerca generali","Termos gerais de pesquisa","Общие условия поиска","Términos generales de búsqueda","Genel arama terimleri","Peraturan hukum pencarian"),
("892","search_for_term","Search for term","البحث عن مصطلح","Zoek naar term","Rechercher un terme","Suche nach Begriff","Cerca termine","Pesquisar termo","Поиск термина","Buscar término","Terimi ara","Form text pencarian"),
("893","search_in","Search in","بحث في","Zoek in","Rechercher dans","Suchen in","Cerca nel","Procure em","Поиск в","Busca en","Araştır","Cari dengan data"),
("894","search_in_forums","Search Forums","البحث في المنتديات","Zoeken in forums","Rechercher dans les forums","Foren durchsuchen","Cerca i forum","Pesquisar Fóruns","Поиск по форуму Главная страница форума Форум","Buscar en los foros","Forumlarda Ara","Cari forum"),
("895","search_in_threads","Search in threads","البحث في المواضيع","Zoek in discussies","Rechercher dans les discussions","Suche in Threads","Cerca nei thread","Pesquisar nos tópicos","Искать в темах","Buscar en temas","Konuları ara","Cari dalam pertanyaan"),
("896","search_in_messages","Search in messages","البحث في الرسائل","Zoek in berichten","Rechercher dans les messages","Suche in Nachrichten","Cerca nei messaggi","Pesquisar em mensagens","Искать в сообщениях","Buscar en mensajes","Mesajlarda ara","Cari di dalam pesan"),
("897","search_subject_only","Search subject only","موضوع البحث فقط","Zoek alleen onderwerp","Rechercher uniquement sur le sujet","Nur Suchbegriff suchen","Cerca solo il soggetto","Procurar somente assunto","Только поиск","Solo tema de búsqueda","Sadece konu ara","Hanya cari subject saja"),
("898","threads","threads","الخيوط","threads","Fils","Fäden","fili","tópicos","потоки","trapos","ipler","pertanyaan"),
("899","action","Action","عمل","Actie","action","Aktion","Azione","Açao","действие","Acción","Aksiyon","Pilihan"),
("900","posted","Posted","تم النشر ","Geplaatst","Publié","Gesendet","Pubblicato","Postou","Сообщение","Al corriente","Gönderildi","Posted"),
("901","no_forums_found","No forums found","لم يتم العثور على منتديات ","Geen forums gevonden","Aucun forum trouvé","Keine Foren gefunden","Nessun forum trovato","Nenhum fórum encontrado","Форум не найден","No se encontraron foros","Hiçbir forum bulunamadı","No forums found");

--
-- Dumping data for table `wo_langs`
--

INSERT INTO wo_langs VALUES
("902","never","Never","أبدا ","Nooit","Jamais","Nie","Mai","Nunca","Никогда","Nunca","Asla","Never"),
("903","no_replies_found","No replies found","لم يتم العثور على أية ردود","Geen antwoorden gevonden","Aucune réponse trouvée","Keine Antworten gefunden","Nessuna risposta trovata","Nenhuma resposta encontrada","Нет ответов","No se encontraron respuestas","Yanıt bulunamadı","Tidak ada balasan di temukan"),
("904","no_threads_found","No threads found","لم يتم العثور على سلاسل محادثات","Geen discussies gevonden","Aucun sujet trouvé","Keine Fäden gefunden","Non sono stati trovati thread","Nenhum tópico encontrado","Темы не найдены","No se encontraron hilos","Konu bulunamadı","Tidak ada pertanyaan di temukan"),
("905","no_members_found","No members found","لم يتم العثور على أي أعضاء ","Er zijn geen leden gevonden","Aucun membre trouvé","Keine Mitglieder gefunden","Nessun membro trovato","Nenhum membro encontrado","Участники не найдены","No se encontraron miembros","Üye bulunamadı","No members found"),
("906","no_sections_found","","","","","","","","","","",""),
("907","wrote","wrote","كتب ","schreef","a écrit","schrieb","ha scritto","escrevi","писал","Escribió","yazdı","wrote"),
("908","edit","Edit","تصحيح","Bewerk","modifier","Bearbeiten","Modifica","Editar","редактировать","Editar","Düzenleme","Edit"),
("909","edit_topic","Edit topic","تعديل الموضوع ","Bewerk onderwerp","Modifier le sujet","Thema bearbeiten","Modifica argomento","Editar tópico","Изменить тему","Editar tema","Konuyu düzenle","Edit topic"),
("910","reply_saved","Your reply was successfully saved","تم حفظ ردك بنجاح ","Uw antwoord is succesvol opgeslagen","Votre réponse a été enregistrée avec succès","Ihre Antwort wurde erfolgreich gespeichert","La tua risposta è stata salvata correttamente","Sua resposta foi salva com êxito","Ваш ответ был успешно сохранен","Tu respuesta se ha guardado correctamente.","Yanıtınız başarıyla kaydedildi","Your reply was successfully saved"),
("911","reply_added","Your reply was successfully added","تمت إضافة ردك بنجاح","Je antwoord is succesvol toegevoegd","Votre réponse a été ajoutée avec succès","Ihre Antwort wurde erfolgreich hinzugefügt","La tua risposta è stata aggiunta con successo","Sua resposta foi adicionada com êxito","Ваш ответ был успешно добавлен","Tu respuesta se ha agregado correctamente.","Yanıtınız başarıyla eklendi","Your reply was successfully added"),
("912","forum_post_added","Your forum has been successfully added","تمت إضافة مشاركة المنتدى بنجاح ","Uw forum is succesvol toegevoegd","Votre forum a été ajouté avec succès","Dein Forum wurde erfolgreich hinzugefügt","Il tuo forum è stato aggiunto con successo","Seu fórum foi adicionado com sucesso","Ваш форум успешно добавлен","Tu foro se ha agregado correctamente","Forumunuz başarıyla eklendi","Your forum has been successfully added"),
("913","members","Members","أفراد","leden","Membres","Mitglieder","Utenti","Membros","члены","Miembros","Üyeler","Members"),
("914","help","Help","مساعدة ","Helpen","Aidez-moi","Hilfe","Aiuto","Socorro","Помощь","Ayuda","yardım et","Help"),
("915","search_terms_more4","Type in one or more search terms, each must be at least 4 characters","اكتب عبارة بحث واحدة أو أكثر، ويجب ألا يقل عدد الأحرف عن 4 أحرف","Typ één of meer zoektermen, ieder moet minstens 4 karakters","Tapez un ou plusieurs termes de recherche, chacun doit être dau moins 4 caractères","Geben Sie einen oder mehrere Suchbegriffe ein, die jeweils muss mindestens 4 Zeichen lang sein","Geben Sie einen oder mehrere Suchbegriffe ein, die jeweils muss mindestens 4 Zeichen lang sein","Digite um ou mais termos de pesquisa, cada um deve ter pelo menos 4 caracteres","Введите одно или несколько поисковых терминов, каждый из них должен быть не менее 4-х символов","Tipo de uno o más términos de búsqueda, cada uno debe tener al menos 4 caracteres","Bir veya daha fazla arama terimi girin, her En Az 4 karakter olmalıdır","Cari sesuai ketentuan peraturan yang ada di AT-Social, Dan masukan minimal ledih dari 4 kata atau karakter"),
("916","events","Events","أحداث","Evenementen","Événements","Veranstaltungen","eventi","Eventos","Мероприятия","Eventos","Olaylar","Events"),
("917","going","Going","ذاهب","gaand","Aller","Gehen","Andando","Indo","Пойду","Yendo","gidiş","Going"),
("918","interested","Interested","يستفد","Geïnteresseerd","Intéressé","Interessiert","Interessato","Interessado","интересное","Interesado","ilgili","Interested"),
("919","past","Pastor","الماضي","Verleden","Passé","Vergangenheit","Passato","Passado","прошлые","Pasado","geçmiş","Pastor"),
("920","invited","invited","دعوة","Uitgenodigd","Invité","Eingeladen","Invitato","Convidamos","приглашенни","Invitado","Davetli","di undang"),
("921","you_are_going","You are going","انت ذاهب","Jij gaat","Vous allez","Du gehst","Stai andando","Você está indo","Вы собираетесь","Usted va","Gidiyorsun","You are going"),
("922","you_are_interested","You are interested","كنت مهتما","Je bent geïnteresseerd","Tu es intéressé","Sie sind interessiert","Sei interessato","Você está interessado","Вы заинтересованы","Tú estás interesado","İlgilisin","You are interested"),
("923","start_date","Start date","تاريخ البدء","Begin datum","Date de début","Anfangsdatum","Data dinizio","Data de início","Дата начала","Fecha de inicio","Başlangıç tarihi","Start date"),
("924","end_date","End date","تاريخ الانتهاء","Einddatum","Date de fin","Enddatum","Data di fine","Data final","Дата окончания","Fecha final","Bitiş tarihi","End date"),
("925","location","Location","موقع","Plaats","Emplacement","Lage","Posizione","localização","Расположение","Ubicación","Konum","Location"),
("926","event","Event","هدف","Evenement","un événement","Event","Evento","Evento","Мероприятие","Evento","Olay","Event"),
("927","no_events_found","No events found","لم يتم العثور على أية أحداث","Geen evenementen gevonden","Aucun événement trouvé","Keine Veranstaltungen gefunden","Nessun evento trovato","Nenhum evento encontrado","События не найдены","No se han encontrado eventos","Etkinlik bulunamadı","No events found"),
("928","event_you_may_like","Events you may like","الأحداث التي قد تعجبك","Evenementen die je misschien leuk vindt","Événements que vous aimeriez","Veranstaltungen, die Sie mögen können","Eventi che ti piacciono","Eventos que você pode gostar","Мероприятия, которые могут вам понравиться","Eventos que te pueden gustar","Beğeneceğiniz etkinlikler","Events you may like"),
("929","going_people","Going people","الذهاب الناس","Mensen gaan","Aller aux gens","Leute gehen","Andando gente","Indo as pessoas","Идущие люди","Personas que van","İnsanlara gidiyor","Going people"),
("930","interested_people","Interested people","الناس المهتمين","Geïnteresseerde mensen","Les personnes intéressées","Interessierte Leute","Persone interessate","Pessoas interessadas","Заинтересованные лица","Personas interesadas","İlgilenen insanlar","Interested people"),
("931","invited_people","Invited people","الأشخاص المدعوون","Uitgenodigde mensen","Personnes invitées","Eingeladene Leute","Persone invitate","Pessoas convidadas","Приглашенные люди","Personas invitadas","Davet edilenler","Invited people"),
("932","event_added","Your event was successfully added","تمت إضافة هذا الحدث الخاص بك بنجاح","Uw evenement is toegevoegd","Votre événement a été ajouté avec succès","Ihre Veranstaltung wurde erfolgreich hinzugefügt","Il vostro evento è stato aggiunto","Seu evento foi adicionado com sucesso","Ваше мероприятие успешно добавлено","Su caso se ha añadido con éxito","Etkinliğiniz başarıyla eklendi","Your event was successfully added"),
("933","event_saved","Your event was successfully saved.","تم حفظ هذا الحدث الخاص بك","Uw evenement is opgeslagen","Votre événement a été enregistré","Ihre Veranstaltung wurde gespeichert","Il vostro evento è stato salvato","Seu evento foi salvo","Ваше мероприятие успешно сохранено","Su caso se ha guardado","Etkinlik kaydedildi","Your event was successfully saved."),
("934","confirm_delete_event","You are sure that you want to delete this event","كنت متأكدا من أنك تريد حذف هذا الحدث","Bent u zeker dat u wilt dit evenement verwijderen","Vous êtes sûr que vous voulez supprimer cet événement","Sie sind sicher, dass Sie dieses Ereignis löschen möchten","Sei sicuro di voler eliminare questo evento","Você tem certeza de que deseja excluir este evento","Вы уверены что Вы хотите удалить это событие","Está seguro de que desea eliminar este evento","Sen bu etkinliği silmek istediğinizden emin misiniz","You are sure that you want to delete this event"),
("935","load_more","Load more","تحميل أكثر","Meer laden","Chargez plus","laden Sie mehr","caricare più","Coloque mais","Показать еще","Cargar más","daha fazla yükle","Load more"),
("936","subject","Subject","موضوع","Onderwerpen","Assujettir","Fach","Soggetto","Sujeito","Предмет","Tema","konu","Subject"),
("937","go","Go","اذهب","Gaan","Aller","Gehen","Partire","Ir","Идти","Ir","Gitmek","Go"),
("938","created_new_event","created new event","حدث جديد","Aangemaakt nieuw evenement","Nouvel événement créé","Neue Veranstaltung erstellt","Ha creato un nuovo evento","Criou um novo evento","Создано новое мероприятие","Creó nuevo evento","Yeni bir etkinlik yarattı","membuat event baru"),
("939","my_events","My events","أحداثي","Mijn gebeurtenissen","Mes événements","Meine ereignisse","I miei eventi","Meus eventos","Мои мероприятия","Mis eventos","Etkinliklerim","My events"),
("940","is_interested","is interested on your event \"{event_name}\"","مهتم بحدثك \"{event_name}\"","Is geïnteresseerd in je evenement \"{event_name}\"","Est intéressé par votre événement \"{event_name}\"","Interessiert sich für deine Veranstaltung \"{event_name}\"","È interessato al tuo evento \"{event_name}\"","Está interessado no seu evento \"{event_name}\"","Заинтересовано в вашем мероприятии \"{event_name}\"","Está interesado en su evento \"{event_name}\"","\"{Event_name}\" etkinliğinizle ilgileniyor.","is interested on your event &quot;{event_name}&quot;"),
("941","is_going","is going to your event \"{event_name}\"","هو الذهاب إلى الحدث \"{event_name}\"","Gaat naar je evenement \"{event_name}\"","Va à votre événement \"{event_name}\"","Geht zu deiner Veranstaltung \"{event_name}\"","Sta andando al tuo evento \"{event_name}\"","Está indo para o seu evento \"{event_name}\"","Идет на ваше мероприятие \"{event_name}\"","Va a su evento \"{event_name}\"","\"{Event_name}\" etkinliğine gidiyor","is going to your event &quot;{event_name}&quot;"),
("942","invited_you_event","invited you to go the event &quot;{event_name}&quot;","دعاك إلى الذهاب إلى الحدث &quot;{event_name}&quot;","Heeft u uitgenodigd om het evenement te gaan &quot;{event_name}&quot;","","Lud dich ein, die Veranstaltung zu starten &quot;{event_name}&quot;","","Convidou você para ir ao evento &quot;{event_name}&quot;","Приглашает вас на мероприятие &quot;{event_name}&quot;","Te invitó a ir al evento &quot;{event_name}&quot;","Sizi &quot;{event_name}&quot; etkinliğine davet etti.","mengundang anda untuk mengunjungi event &quot;{event_name}&quot;"),
("943","replied_to_topic","replied to your topic","أجاب على الموضوع","Antwoordde op je onderwerp","A répondu à votre sujet","Antwortete auf dein Thema","Ha risposto al tuo argomento","Respondeu ao seu tópico","Ответил на вашу тему","Respondió a su tema","Cevabınız cevaplandı","membalas topik anda"),
("944","movies","Movies","أفلام","Dioscoop","Films","Kino","Film","Filmes","Кино","Películas","Filmler","Movies"),
("945","translate","Translate","ترجم","Vertalen","Traduire","übersetzen","Tradurre","Traduzir","перевести","Traducciones","çevirmek","Privasi"),
("946","genre","Genre","نوع أدبي","Genre","Genre","Genre","Genere","Gênero","Жанр","Genre","tarz","Genre"),
("947","recommended","Recommended","موصى به","Aanbevolen","Recommandé","empfohlen","Raccomandato","Recomendado","Рекомендуемые","Se recomienda","Tavsiye","Recommended"),
("948","most_watched","Most watched","الأكثر مشاهدة","Meest bekeken","Le plus regardé","Die meisten angeschaut","Più visto","Mais visto","Понравившиеся","Más información","En çok izlenen","Harus tonton"),
("949","stars","Stars","نجوم","Stars","Etoiles","Sterne","Stars","Estrelas","Звезды","Estrellas","yıldız","Stars"),
("950","more","More","أكثر","Meer","Plus","mehr","Più","Mais","еще","Más información","daha","Lainya"),
("951","no_movies_found","No movies found","لم يتم العثور على الأفلام","Geen films gevonden","Pas de films trouvés","Keine Filme gefunden","Nessun film trovato","Não há filmes encontrados","Фильмы не найдены","No movies found","Filmlerde Bulunan","No movies found"),
("952","producer","Producer","منتج","Producent","Producteur","Produzent","Produttore","Produtor","Продюсер","Producer","yapımcı","Producer"),
("953","release","Release","إطلاق","Vrijlating","Sortie","Veröffentlichung","Rilascio","Lançamento","Релиз","Versión","salıverme","Release"),
("954","quality","Quality","جودة","Kwaliteit","Qualité","Qualität","Qualità","Qualidade","Качество","Calidad","kalite","Quality"),
("955","more_like_this","More like this","أكثر من هذا القبيل","Meer in deze trant","Plus darticles","Ähnliche Titel","Altri risultati simili","Mais como este","Похожие фильмы","Más información","Buna benzer","More like this"),
("956","wallet","Wallet","محفظة نقود","Portemonnee","Portefeuille","Brieftasche","Portafoglio","Carteira","Бумажник","Billetera","Cüzdan","Wallet"),
("957","company","Company","شركة","Bedrijf","Compagnie","Unternehmen","Azienda","Empresa","Компания","Empresa","şirket","Company"),
("958","bidding","Bidding","مزايدة","bod","Enchère","Bieten","offerta","Licitação","торги","Ofertas","teklif verme","Bidding"),
("959","clicks","Clicks","نقرات","klikken","Clics","Klicks","clic","Cliques","щелчки","Clics","Tıklanma","Clicks"),
("960","url","Url","رابط","url","Url","Url","url","Url","Веб-сайт","Url","URL","Url"),
("961","audience","Audience","جمهور","Publiek","Public","Publikum","Pubblico","Público","Аудитория","Audiencia","seyirci","Audience"),
("962","select_image","Select an image","حدد صورة","Selecteer een afbeelding","Sélectionnez une image","Wählen Sie ein Bild aus","Selezionare unimmagine","Selecione uma imagem","Выберите изображение","Seleccione una imagen","Bir resim seçin","Select an image"),
("963","my_balance","My balance","رصيدي","Mijn balans","Mon solde","Mein Gleichgewicht","Il mio equilibrio","Meu saldo","Мой баланс","Mi balance","Bakiyem","My balance"),
("964","replenish_my_balance","Replenish my balance","تجديد رصيد بلدي","Herstel mijn saldo","Récupérer mon solde","Fülle meine Balance auf","Riempire il mio equilibrio","Reabasteça meu saldo","Пополнить баланс","Reponer mi saldo","Bakiyemi yenile","Replenish my balance"),
("965","continue","Continue","استمر","voortzetten","Continuer","Fortsetzen","Continua","Continuar","Продолжить","Continuar","Devam et","Continue"),
("966","replenishment_notif","Your balance has been replenished by","تمت إعادة تجديد رصيدك بواسطة","Uw saldo is aangevuld door","Votre solde a été reconstitué par","Ihr Gleichgewicht wurde ergänzt durch","Il tuo equilibrio è stato riempito da","Seu saldo foi reabastecido por","Ваш баланс был пополнен","Tu saldo ha sido reabastecido por","Bakiyeniz, tarafından yeniden dolduruldu.","Your balance has been replenished by"),
("967","ads","Advertising","إعلان","Reclame","Publicité","Werbung","Pubblicità","Publicidade","Реклама","Publicidad","Ilan","Advertising"),
("968","confirm_delete_ad","Are you sure you want to delete this ad","هل أنت متأكد أنك تريد حذف هذا الإعلان","Weet u zeker dat u deze advertentie wilt verwijderen","Êtes-vous sûr de vouloir supprimer cette annonce?","Möchten Sie diese Anzeige wirklich löschen?","Sei sicuro di voler cancellare questo annuncio","Tem certeza de que quer apagar este anúncio","Вы уверены, что хотите удалить эту рекламу","Estás seguro de que quieres eliminar esta publicidad","Bu reklamı silmek istediğinizden emin misiniz","Are you sure you want to delete this ad"),
("969","delete_ad","Delete ad","حذف الإعلان","Verwijder advertentie","Supprimer lannonce","Anzeige löschen","Elimina annuncio","Eliminar anúncio","Удалить объявление","Eliminar anuncio","Reklamı sil","Delete ad"),
("970","no_ads_found","No ads found","لم يتم العثور على أية إعلانات","Geen advertenties gevonden","Aucune annonce na été trouvée","Keine Anzeigen gefunden","Nessun annuncio trovato","Nenhum anúncio encontrado","Объявления не найдены","No se han encontrado anuncios","Hiç ilan bulunamadı","No ads found"),
("971","not_active","Not active","غير فعال","Niet actief","Pas actif","Nicht aktiv","Non attivo","Não ativo","Не активен","No activo","Aktif değil","Not active"),
("972","appears","Placement","تحديد مستوى","Plaatsing","Placement","Platzierung","Posizionamento","Colocação","размещение","Colocación","Yerleştirme","Placement"),
("973","sidebar","Sidebar","الشريط الجانبي","sidebar","Barre latérale","Seitenleiste","Sidebar","Barra Lateral","Боковая панель","Barra lateral","Kenar çubuğu","Sidebar"),
("974","select_a_page_or_link","Select a page or enter a link to your site","حدد صفحة أو أدخل رابطا إلى موقعك","Selecteer een pagina of voer een link in op uw site","Sélectionnez une page ou entrez un lien vers votre site","Wählen Sie eine Seite aus oder geben Sie einen Link zu Ihrer Website ein","Seleziona una pagina o inserisci un link al tuo sito","Selecione uma página ou insira um link para o seu site","Выберите страницу или введите ссылку на свой сайт","Seleccione una página o ingrese un enlace a su sitio","Bir sayfa seçin veya sitenize bir bağlantı girin","Select a page or enter a link to your site"),
("975","story","Story","قصة","Verhaal","Récit","Geschichte","Storia","História","История","Historia","Öykü","Story"),
("976","max_number_status","The maximum number can not exceed 20 files at a time!","الحد الأقصى لعدد لا يمكن أن يتجاوز 20 ملفات في وقت واحد!","Het maximaal aantal kan niet meer dan 20 bestanden tegelijkertijd overschrijden!","Le nombre maximal ne peut pas dépasser 20 fichiers à la fois!","Die maximale Anzahl darf maximal 20 Dateien nicht überschreiten!","Il numero massimo non può superare 20 file alla volta!","O número máximo não pode exceder 20 arquivos de cada vez!","Максимальное число не может превышать 20 файлов за раз!","¡El número máximo no puede superar los 20 archivos a la vez!","Maksimum sayı, aynı anda 20 dosya aşamaz!","The maximum number can not exceed 20 files at a time!"),
("977","status_added","Your status has been successfully added!","تمت إضافة حالتك بنجاح!","Uw status is succesvol toegevoegd!","Votre statut a été ajouté avec succès!","Ihr Status wurde erfolgreich hinzugefügt!","Il tuo stato è stato aggiunto con successo!","Seu status foi adicionado com sucesso!","Ваш статус успешно добавлен!","¡Tu estado se ha agregado correctamente!","Durumunuz başarıyla eklendi!","Your status has been successfully added!"),
("978","create_new_status","Create New Status","إنشاء حالة جديدة","Maak een nieuwe status aan","Créer un nouvel état","Neuen Status anlegen","Crea nuovo stato","Criar novo status","Создать новый статус","Crear nuevo estado","Yeni Durum Oluştur","Buat status baru"),
("979","sponsored","Sponsored","برعاية","Sponsored","Sponsorisé","Gefördert","sponsorizzati","Patrocinadas","Рекламные","Patrocinado","Sponsor","Sponsored"),
("980","notification_sent","Your notification has been sent successfully","تم إرسال الإشعار بنجاح","Uw melding is succesvol verzonden","Votre notification a été envoyée avec succès","Ihre Benachrichtigung wurde erfolgreich gesendet","La tua notifica è stata inviata correttamente","Sua notificação foi enviada com sucesso","Ваше уведомление отправлено успешно","Tu notificación se ha enviado correctamente","Bildiriminiz başarıyla gönderildi","Your notification has been sent successfully"),
("981","hide_post","Hide post","آخر اخفاء","Verberg post","Masquer la publication","Beitrag ausblenden","Nascondi post","Ocultar postagem","Скрыть сообщение","Esconder la publicación","Postayı gizle","Hide post"),
("982","verification_sent","Your verification request  soon will be considered!","سيتم النظر في طلب التحقق قريبا!","Uw verificatieaanvraag zal binnenkort worden overwogen!","Votre demande de vérification sera bientôt prise en considération!","Ihre Bestätigungsanforderung wird bald berücksichtigt!","La tua richiesta di verifica sarà presto presa in considerazione!","Seu pedido de verificação em breve será considerado!","Ваш запрос на подтверждение скоро будет рассмотрен!","Su solicitud de verificación pronto será considerada!","Doğrulama isteğiniz yakında değerlendirilecek!","Your verification request  soon will be considered!"),
("983","profile_verification","Verification of the profile!","التحقق من الملف الشخصي!","Verificatie van het profiel!","Vérification du profil!","Überprüfung des Profils!","Verifica del profilo!","Verificação do perfil!","Проверка профиля!","Verificación del perfil!","Profilin doğrulanması!","Verification of the profile!"),
("984","verification_complete","Congratulations your profile is verified!","تهانينا تم التحقق من ملفك الشخصي!","Gefeliciteerd, uw profiel is geverifieerd!","Félicitations, votre profil est vérifié!","Herzlichen Glückwunsch, Ihr Profil wird bestätigt!","Complimenti il ​​tuo profilo è verificato!","Parabéns seu perfil está verificado!","Поздравляем Ваш профиль проверен!","¡Felicidades tu perfil está verificado!","Tebrikler, profiliniz doğrulandı!","Congratulations your profile is verified!"),
("985","upload_docs","Upload documents","تحميل المستندات","Documenten uploaden","Télécharger des documents","Dokumente hochladen","Carica i documenti","Carregar documentos","Загрузить документы","Subir documentos","Belgeleri yükle","Upload documents"),
("986","select_verif_images","Please upload a photo with your passport / ID  & your distinct photo","يرجى تحميل صورة مع جواز سفرك / إد & أمب؛ صورتك المميزة","Upload een foto met uw paspoort / ID & amp; Jouw eigen foto","Veuillez télécharger une photo avec votre passeport / ID & amp; Votre photo distincte","Bitte laden Sie ein Foto mit Ihrem Pass / ID & amp; Ihr eigenes Foto","Carica una foto con il tuo passaporto / ID & amp; La tua foto distinta","Carregue uma foto com seu passaporte / ID & amp; Sua foto distinta","Пожалуйста, загрузите фотографию с вашим паспортом / ID и amp; Твоя отличная фотография","Cargue una foto con su pasaporte / ID & amp; Tu foto distinta","Lütfen pasaportunuzla bir fotoğraf yükleyin / kimliği ve amp; Farklı fotoğrafın","Please upload a photo with your passport / ID  &amp; your distinct photo"),
("987","passport_id","Passport / id card","جواز السفر / بطاقة الهوية","Paspoort / ID kaart","Passeport / carte didentité","Pass / ID-Karte","Passaporto / id carta","Passaporte / cartão de identificação","Паспорт / удостоверение личности","Pasaporte / tarjeta de identificación","Pasaport / kimlik kartı","Passport / id card"),
("988","your_photo","Your photo","صورتك","Je foto","Ta photo","Dein Foto","La tua foto","Sua foto","Твое фото","Tu foto","Senin resmin","Your photo"),
("989","please_select_passport_id","Please select your passport/id and photo!","يرجى تحديد جواز السفر / معرف والصورة!","Selecteer alstublieft uw paspoort / id en foto!","Sélectionnez votre passeport / id et photo!","Bitte wählen Sie Ihren Pass / id und Foto!","Seleziona il tuo passaporto / id e foto!","Selecione seu passaporte / id e foto!","Выберите свой паспорт / удостоверение личности и фото!","Por favor, seleccione su pasaporte / identificación y foto!","Lütfen pasaportunuzun / kimlik numaranızı ve fotoğrafınızı seçin!","Please select your passport/id and photo!"),
("990","passport_id_invalid","The passport/id picture must be an image","يجب أن تكون صورة الجواز / الصورة صورة","De paspoort / id foto moet een afbeelding zijn","Limage passeport / id doit être une image","Das Pass / id Bild muss ein Bild sein","Limmagine del passaporto / id deve essere unimmagine","A imagem de passaporte / id deve ser uma imagem","Паспорт / идентификатор должен быть изображением","La imagen del pasaporte / id debe ser una imagen","Pasaport / id resmi bir resim olmalıdır","The passport/id picture must be an image"),
("991","user_picture_invalid","The user picture must be an image","يجب أن تكون صورة المستخدم صورة","De gebruikersfoto moet een afbeelding zijn","Limage utilisateur doit être une image","Das Benutzerbild muss ein Bild sein","Limmagine dellutente deve essere unimmagine","A imagem do usuário deve ser uma imagem","Изображение пользователя должно быть изображением","La imagen del usuario debe ser una imagen","Kullanıcı resmi bir resim olmalıdır","The user picture must be an image"),
("992","verification_request_sent","Your request was successfully sent, in the very near future we will consider it!","تم إرسال طلبك بنجاح، في المستقبل القريب جدا سوف ننظر فيه!","Uw aanvraag is succesvol verzonden, in de nabije toekomst zullen we het overwegen!","Votre demande a été envoyée avec succès, dans un avenir très proche, nous lexaminerons!","Ihre Anfrage wurde erfolgreich gesendet, in naher Zukunft werden wir es betrachten!","La tua richiesta è stata inviata con successo, nel prossimo futuro lo considereremo!","Seu pedido foi enviado com sucesso, no futuro muito próximo, vamos considerá-lo!","Ваш запрос был успешно отправлен, в самом ближайшем будущем мы это рассмотрим!","Su solicitud fue enviada con éxito, en un futuro muy próximo lo consideraremos!","İsteğiniz başarıyla gönderildi, çok yakın bir zamanda bunu düşünüyoruz!","Your request was successfully sent, in the very near future we will consider it!"),
("993","shared","shared","مشترك","gedeelde","partagé","Geteilt","diviso","Compartilhado","Поделился","Compartido","Paylaşılan","Di bagikan oleh"),
("994","post_shared","Post was successfully added to your timeline!","تمت إضافة المشاركة بنجاح إلى المخطط الزمني!","Post is succesvol toegevoegd aan je tijdlijn!","Le message a été ajouté avec succès à votre calendrier!","Post wurde erfolgreich zu deinem Zeitplan hinzugefügt!","Lalberino è stato aggiunto con successo alla tua timeline!","O post foi adicionado com sucesso à sua linha de tempo!","Сообщение было успешно добавлено на ваш график!","¡Se ha agregado el mensaje a tu línea de tiempo!","Mesaj, zaman çizelgesine başarıyla eklendi!","Post was successfully added to your timeline!"),
("995","important","Important!","مهم!","Belangrijk!","Important!","Wichtig!","Importante!","Importante!","Важно!","¡Importante!","Önemli!","Important!"),
("996","unverify","Please note that if you change the username you will lose verification","يرجى ملاحظة أنه في حالة تغيير اسم المستخدم، فستفقد التحقق","Houd er rekening mee dat als u de gebruikersnaam wijzigt, u de verificatie verliest","Veuillez noter que si vous modifiez le nom dutilisateur, vous allez perdre la vérification","Bitte beachten Sie, dass Sie bei der Änderung des Benutzernamens die Bestätigung verlieren","Si prega di notare che se si modifica il nome utente perderà la verifica","Observe que se você alterar o nome de usuário, você perderá a verificação","Обратите внимание, что если вы измените имя пользователя, вы потеряете подтверждение","Tenga en cuenta que si cambia el nombre de usuario, perderá la verificación","Kullanıcı adını değiştirirseniz doğrulamayı kaybedeceğinizi lütfen unutmayın","Please note that if you change the username you will lose verification"),
("997","friend_privacy","Who can see my friends?","الذين يمكن أن نرى أصدقائي","Wie kan mijn vrienden zien","Qui peut voir mes amis","Wer kann meine Freunde sehen","Chi può vedere i miei amici","Quem pode ver meus amigos","Кто может видеть моих друзей","¿Quién puede ver a mis amigos?","Arkadaşlarımı kim görebilir?","Siapa yang dapat melihat semua teman anda?"),
("998","added_group_admin","added you group admin","أضافك مشرف المجموعة","Toegevoegd je groep admin","Ajoute ton administrateur de groupe","Fügte Ihnen gruppe admin hinzu","","Adicionou você administrador do grupo","Добавлен администратор группы","Agregó tu grupo de administración","Grup yöneticisi ekledi","added you group admin"),
("999","added_page_admin","added you page admin","أضافك مشرف الصفحة","Toegevoegd u pagina admin","A ajouté votre page admin","Fügte Ihnen die Seite admin hinzu","","Adicionou você admin da página","Добавлено администратором страницы","Agregó tu página admin","Size sayfa admin ekledi","added you page admin"),
("1000","no_messages","No messages yet here.","لا توجد رسائل حتى الآن.","Nog geen berichten hier.","","Noch keine Nachrichten.","Non ci sono ancora messaggi qui.","Ainda não há mensagens aqui.","Пока сообщений нет.","Aún no hay mensajes.","Henüz mesaj yok.","No messages yet here."),
("1001","conversation_deleted","Conversation has been deleted!","تم حذف المحادثة!","Conversatie is verwijderd!","La conversation a été supprimée!","Konversation wurde gelöscht!","La conversazione è stata cancellata!","A conversa foi excluída!","Разговор удален!","¡Se ha eliminado la conversación!","İleti dizisi silindi!","Conversation has been deleted!");

--
-- Dumping data for table `wo_langs`
--

INSERT INTO wo_langs VALUES
("1002","close","Close","قريب","Dichtbij","Fermer","Schließen","Vicino","Fechar","Закрыть","Cerca","Kapat","Close"),
("1003","members","Members","أفراد","leden","Membres","Mitglieder","Utenti","Membros","члены","Miembros","Üyeler","Members"),
("1004","exit_group","Exit group","خروج من المجموعة","Exitgroep","Groupe de sortie","Exit-Gruppe","Esci dal gruppo","Grupo de saída","Группа выхода","Salir del grupo","Grubundan çık","Exit group"),
("1005","clear_history","Clear history","تاريخ واضح","Geschiedenis wissen","Histoire claire","Geschichte löschen","Cancellare la cronologia","Apagar o histórico","Удалить переписку","Borrar historial","Geçmişi temizle","Clear history"),
("1006","group_members","Group members","أعضاء المجموعة","Groepsleden","Les membres du groupe","Gruppenmitglieder","Membri del gruppo","Membros do grupo","Участники группы","Miembros del grupo","Grup üyeleri","Group members"),
("1007","add_parts","Add participant","إضافة مشارك","Voeg deelnemer toe","Ajouter un participant","Teilnehmer hinzufügen","Aggiungi partecipante","Adicionar participante","Добавить участника","Añada participante","Katılımcı ekle","Add participant"),
("1008","unreport","Cancel Report","إلغاء التقرير","Annuleren rapport","Annuler le rapport","Bericht abbrechen","Annulla rapporto","Cancelar relatório","Отменить отчет","Cancelar informe","Raporu İptal Et","Cancel Report"),
("1009","report_user","Report this User","الإبلاغ عن هذا المستخدم","Rapporteer deze gebruiker","Signaler cet utilisateur","Diesen Nutzer melden","Segnala questo utente","Denunciar este usuário","Сообщить об этом пользователе","Reportar a este usuario","Bu kullanıcıyı rapor et","Report this User"),
("1010","report_page","Report this Page","الإبلاغ عن هذه الصفحة","Meld deze pagina aan","Signaler cette page","Diese Seite melden","Segnala questa pagina","Informe esta página","Сообщить об этой странице","Informar sobre esta página","Bu sayfayı bildir","Report this Page"),
("1011","report_group","Report this Group","الإبلاغ عن هذه المجموعة","Meld deze groep aan","Signaler ce groupe","Diese Gruppe melden","Segnala questo gruppo","Denunciar este grupo","Сообщить об этой группе","Reportar este grupo","Bu Grubu Rapor Et","Report this Group"),
("1012","page_rated","You have already rated this page!","لقد قيمت هذه الصفحة من قبل!","U heeft deze pagina al beoordeeld!","Vous avez déjà noté cette page!","Sie haben diese Seite bereits bewertet!","Hai già valutato questa pagina!","Você já avaliou esta página!","Вы уже оценили эту страницу!","¡Ya has calificado esta página!","Bu sayfaya zaten puan verdiniz!","You have already rated this page!"),
("1013","rating","Rating","تقييم","Beoordeling","Évaluation","Bewertung","Valutazione","Avaliação","Рейтинг","Clasificación","Değerlendirme","Rating"),
("1014","reviews","Reviews","التعليقات","beoordelingen","Avis","Bewertungen","Recensioni","Rever","Отзывы","Comentarios","yorumlar","Reviews"),
("1015","rate","Rate","معدل","tarief","Taux","Preis","Vota","Taxa","Ставка","Tarifa","oran","Rate"),
("1016","your_review","Write your review.","اكتب مراجعتك.","Schrijf je beoordeling.","Donnez votre avis.","Schreiben Sie eine Bewertung.","Scrivi la tua recensione.","Escreva sua revisão.","Напишите свой отзыв.","Escribe tu reseña.","Yorumunuzu yazın.","Buat tampilan anda."),
("1017","ad_saved","Your ad has been successfully saved!","تم حفظ إعلانك بنجاح!","Uw advertentie is succesvol opgeslagen!","Votre annonce a été enregistrée avec succès!","Ihre Anzeige wurde erfolgreich gespeichert!","Il tuo annuncio è stato salvato con successo!","Seu anúncio foi salvo com sucesso!","Ваше объявление успешно сохранено!","Tu anuncio se ha guardado correctamente.","Reklamınız başarıyla kaydedildi!","Your ad has been successfully saved!"),
("1018","ad_added","Your ad has been successfully added!","تمت إضافة إعلانك بنجاح!","Uw advertentie is succesvol toegevoegd!","Votre annonce a été ajoutée avec succès!","Ihre Anzeige wurde erfolgreich hinzugefügt!","Il tuo annuncio è stato aggiunto con successo!","Seu anúncio foi adicionado com sucesso!","Ваше объявление было успешно добавлено!","Su anuncio se ha agregado correctamente.","Reklamınız başarıyla eklendi!","Your ad has been successfully added!"),
("1019","invalid_ad_picture","The ads picture must be an image!","يجب أن تكون صورة الإعلانات صورة!","De advertentie foto moet een afbeelding zijn!","","Das Anzeigenbild muss ein Bild sein!","","A imagem dos anúncios deve ser uma imagem!","Изображение объявления должно быть изображением!","¡La imagen de los anuncios debe ser una imagen!","Reklam resimleri bir resim olmalıdır!","The ads picture must be an image!"),
("1020","enter_valid_desc","Please enter a valid description!","الرجاء إدخال وصف صالح!","Vul alstublieft een geldige omschrijving in!","Entrez une description valable!","Bitte geben Sie eine gültige Beschreibung ein!","Inserisci una descrizione valida!","Digite uma descrição válida!","Введите действительное описание!","Por favor ingrese una descripción válida!","Lütfen geçerli bir açıklama girin!","Please enter a valid description!"),
("1021","enter_valid_titile","Please enter a valid title!","يرجى إدخال عنوان صالح!","Vul alstublieft een geldige titel in!","Entrez un titre valide!","Bitte geben Sie einen gültigen Titel ein!","Si prega di inserire un titolo valido!","Digite um título válido!","Введите действительный заголовок!","¡Por favor ingrese un título válido!","Lütfen geçerli bir başlık girin!","Please enter a valid title!"),
("1022","enter_valid_url","Please enter a valid link!","الرجاء إدخال رابط صالح!","Vul alstublieft een geldige link in!","Veuillez entrer un lien valide!","Bitte geben Sie einen gültigen Link ein!","Inserisci un link valido!","Digite um link válido!","Пожалуйста, введите действующую ссылку!","Ingrese un enlace válido!","Lütfen geçerli bir bağlantı girin!","Please enter a valid link!"),
("1023","invalid_company_name","Please enter a valid company name!","الرجاء إدخال اسم شركة صالح!","Vul alstublieft een geldige bedrijfsnaam in!","","Bitte geben Sie einen gültigen Firmennamen ein!","Inserisci un nome aziendale valido!","Digite um nome válido da empresa!","Укажите действительное название компании!","Introduzca un nombre de empresa válido!","Lütfen geçerli bir şirket adı girin!","Please enter a valid company name!"),
("1024","mother","Mother","أم","Moeder","Mère","Mutter","Madre","Mãe","Мама","Madre","anne","Ibu"),
("1025","father","Father","الآب","Vader","Père","Vater","Padre","Pai","Отец","Padre","baba","Father"),
("1026","daughter","Daughter","ابنة","Dochter","Fille","Tochter","Figlia","Filha","Дочь","Hija","Kız evlat","Daughter"),
("1027","son","Son","ابن","Zoon","Fils","Sohn","Figlio","Filho","Сын","Hijo","Oğul","Son"),
("1028","sister","Sister","أخت","Zus","Sœur","Schwester","Sorella","Irmã","Сестра","Hermana","Kız kardeş","Sister"),
("1029","brother","Brother","شقيق","Broer","Frère","Bruder","Fratello","Irmão","Брат","Hermano","Erkek kardeş","Saudara"),
("1030","auntie","Auntie","عمة","Tante","Tata","Tante","Auntie","Tia","тетушка","Tía","teyzeciğim","Auntie"),
("1031","uncle","Uncle","اخو الام","Oom","Oncle","Onkel","Zio","Tio","Дядя","Tío","Amca dayı","Uncle"),
("1032","niece","Niece","ابنة الاخ","Nicht","Nièce","Nichte","Nipote","Sobrinha","Племянница","Sobrina","Yeğen","Niece"),
("1033","nephew","Nephew","ابن أخ","Neef","Neveu","Neffe","Nipote","Sobrinho","Племянник","Sobrino","Erkek yeğen","Nephew"),
("1034","cousin_female","Cousin (female)","ابن عم (أنثى)","Neef (vrouwelijk)","Cousine)","Cousine)","Cugina)","Prima)","Двоюродная сестра)","Prima)","Kuzenim (kadın)","Cousin (female)"),
("1035","cousin_male","Cousin (male)","ابن عم (ذكور)","Neef)","Cousin Male)","Cousin)","Cugino maschio)","Primo)","Двоюродный брат)","Primo varón)","Erkek kuzen)","Cousin (male)"),
("1036","grandmother","Grandmother","جدة","Grootmoeder","Grand-mère","Oma","Nonna","Avó","Бабушка","Abuela","büyükanne","Nenek"),
("1037","grandfather","Grandfather","جد","Grootvader","Grand-père","Großvater","Nonno","Avô","Дед","Abuelo","Büyük baba","Grandfather"),
("1038","granddaughter","Granddaughter","حفيدة","Kleindochter","Petite fille","Enkelin","Nipotina","Neta","Внучка","Nieta","Kız torun","Granddaughter"),
("1039","grandson","Grandson","حفيد","Kleinzoon","Petit fils","Enkel","Nipote","Neto","Внук","Nieto","Erkek torun","Grandson"),
("1040","stepsister","Stepsister","مثل اختي","Stiefzuster","Demi-soeur","Stiefschwester","Sorellastra","Meia-irmã","Сводная сестра","Hermanastra","Üvey kızkardeş","Stepsister"),
("1041","stepbrother","Stepbrother","أخ غير شقيق","stiefbroeder","Beau-frère","Stiefbruder","Fratellastro","Meio-irmão","Сводный брат","Hermanastro","Üvey erkek kardeş","Stepbrother"),
("1042","stepmother","Stepmother","زوجة الأب","Stiefmoeder","Stepmother","Stiefmutter","Matrigna","Madrasta","Мачеха","Madrastra","üvey anne","Stepmother"),
("1043","stepfather","Stepfather","زوج الأم","Stiefvader","Beau-père","Stiefvater","Patrigno","Padrasto","Отчим","Padrastro","üvey baba","Stepfather"),
("1044","stepdaughter","Stepdaughter","ربيبة","Stiefdochter","Belle fille","Stieftochter","Figliastra","Enteada","Падчерица","Hijastra","üvey kız","Stepdaughter"),
("1045","sister_in_law","Sister-in-law","أخت الزوج أو اخت الزوجة","Schoonzuster","Belle-soeur","Schwägerin","Cognata","Cunhada","Золовка","Cuñada","Baldız","Sister-in-law"),
("1046","brother_in_law","Brother-in-law","شقيق الزوج","Zwager","Beau-frère","Schwager","Cognato","Cunhado","Шурин","Cuñado","Kayınbirader","Brother-in-law"),
("1047","mother_in_law","Mother-in-law","حماة \" أم الزوج أو أم الزوجة","Schoonmoeder","Belle-mère","Schwiegermutter","Suocera","Sogra","Свекровь","Suegra","Kayınvalide","Mother-in-law"),
("1048","father_in_law","Father-in-law","ووالد بالتبنى","Schoonvader","Beau-père","Schwiegervater","Suocero","Sogro","Тесть","Suegro","Kayınpeder","Father-in-law"),
("1049","daughter_in_law","Daughter-in-law","ابنة بالنسب","Schoondochter","Belle-fille","Schwiegertochter","Nuora","Nora","Невестка","Hijastra","Gelin","Daughter-in-law"),
("1050","son_in_law","Son-in-law","ابنه قانونياً","Schoonzoon","Beau fils","Schwiegersohn","Genero","Genro","Зять","Yerno","Damat","Son-in-law"),
("1051","sibling_gender_neutral","Sibling (gender neutral)","الأخوة (محايدة جنسانيا)","Broers en zussen (geslachtsneutraal)","Sibling (genre neutre)","Geschwister (geschlechtsneutral)","Fidanzamento (genere neutro)","Irmão (neutro em termos de gênero)","Сиблинг (гендерно нейтральный)","Hermano (neutral de género)","Kardeşlik (cinsiyete dayalı)","Sibling (gender neutral)"),
("1052","parent_gender_neutral","Parent (gender neutral)","الوالد (محايد جنسانيا)","Ouder (geslachtsneutraal)","Parent (genre neutre)","Elternteil (geschlechtsneutral)","Genitore (genere neutro)","Pais (neutro em termos de gênero)","Родитель (гендерно нейтральный)","Padre (neutral de género)","Ebeveyn (cinsiyete dayalı)","Parent (gender neutral)"),
("1053","child_gender_neutral","Child (gender neutral)","الطفل (محايد جنسانيا)","Kind (geslachtsneutraal)","Enfant (genre neutre)","Kind (geschlechtsneutral)","Bambino (sesso neutro)","Criança (neutro em termos de gênero)","Ребенок (гендерно нейтральный)","Niño (neutral de género)","Çocuk (cinsiyete dayalı)","Child (gender neutral)"),
("1054","sibling_of_parent_gender_neutral","Sibling of Parent (gender neutral)","شقيق الوالد (محايد جنسانيا)","Broers en zussen van ouder (geslachtsneutraal)","Sibling of Parent (genre neutre)","Geschwister der Eltern (geschlechtsneutral)","Fratellanza del genitore (neutralità di genere)","Sibling of Parent (neutro em termos de gênero)","Братство родителей (гендерно нейтральный)","Hermano de padre (neutral de género)","Ebeveynin Kardeşliği (cinsiyete dayalı)","Sibling of Parent (gender neutral)"),
("1055","child_of_sibling_gender_neutral","Child of Sibling (gender neutral)","طفل الأخوة (محايد جنسانيا)","Kind van broer en zus (geslachtsneutraal)","Enfant de fratrie (genre neutre)","Kind des Geschwisters (geschlechtsneutral)","Bambino di fratelli (neutralità di genere)","Criança do irmão (neutro em termos de gênero)","Ребенок Сиблинга (гендерно нейтральный)","Hijo de hermano (neutral de género)","Kardeşlik çocuğu (cinsiyete dayalı tarafsız)","Child of Sibling (gender neutral)"),
("1056","cousin_gender_neutral","Cousin (gender neutral)","ابن عم (محايدة جنسانيا)","Neef (geslachtsneutraal)","Cousin (genre neutre)","Cousin (geschlechtsneutral)","Cugino (neutralità di genere)","Primo (neutro em termos de gênero)","Кузен (гендерно нейтральный)","Primo (neutral de género)","Kuzenim (cinsiyete aykırı)","Cousin (gender neutral)"),
("1057","grandparent_gender_neutral","Grandparent (gender neutral)","الجد (محايد جنسانيا)","Grootouder (geslachtsneutraal)","Grandparent (genre neutre)","Großeltern (geschlechtsneutral)","Nonno (neutralità di genere)","Avós (neutro em termos de gênero)","Бабушка и дедушка (гендерный нейтраль)","Abuelo (neutral de género)","Büyükbaba (cinsiyet eşitliği yok)","Grandparent (gender neutral)"),
("1058","grandchild_gender_neutral","Grandchild (gender neutral)","حفيد (محايد جنسانيا)","Grootkind (geslachtsneutraal)","Petit-fils (genre neutre)","Enkelkind (geschlechtsneutral)","Nipote (neutralità di genere)","Neto (neutro em termos de gênero)","Внуки (гендерно нейтральные)","Nieto (neutral de género)","Torun (cinsiyete dayalı)","Grandchild (gender neutral)"),
("1059","step_sibling_gender_neutral","Step-sibling (gender neutral)","أخوة الخطوة (محايدة جنسانيا)","Step-sibling (gender neutraal)","Échec-frère (genre neutre)","Schritt-Geschwister (geschlechtsneutral)","Step-sibling (gender neutral)","Irmão-irmão (neutro em termos de gênero)","Step-sibling (гендерно нейтральный)","Hermanastro (neutral de género)","Adım kardeş (cinsiyete dayalı)","Step-sibling (gender neutral)"),
("1060","step_parent_gender_neutral","Step-parent (gender neutral)","الخطوة الوالد (محايدة جنسانيا)","Step-parent (gender neutraal)","Step-parent (genre neutre)","Schritt-Elternteil (geschlechtsneutral)","Step-parent (neutralità di genere)","Etapa-pai (neutro em termos de gênero)","Пошаговый (гендерно нейтральный)","El padrastro (neutral de género)","Veli-ebeveyn (cinsiyete dayalı)","Step-parent (gender neutral)"),
("1061","stepchild_gender_neutral","Stepchild (gender neutral)","ستيبشيلد (محايد جنسانيا)","Stepchild (gender neutraal)","Stepchild (genre neutre)","Stepchild (geschlechtsneutral)","Stepchild (genere neutro)","Stepchild (neutro em termos de gênero)","Stepchild (гендерно нейтральный)","Stepchild (neutral de género)","Üvey çocuk (cinsiyete aykırı)","Stepchild (gender neutral)"),
("1062","sibling_in_law_gender_neutral","Sibling-in-law (gender neutral)","شقيق الزوج (محايد جنسانيا)","Sibling-in-law (gender neutraal)","Sage-frère (genre neutre)","Schwangerschaft (geschlechtsneutral)","Sibling-in-law (gender neutral)","Irmão-irmão (neutro em termos de gênero)","Сиблинг в законе (гендерно нейтральный)","Cuñados (neutral de género)","Kayın üstü (cinsiyete dayalı)","Sibling-in-law (gender neutral)"),
("1063","parent_in_law_gender_neutral","Parent-in-law (gender neutral)","الوالد (محايد جنسانيا)","Schoonmoeder (geslachtsneutraal)","Parent-en-loi (neutre pour le genre)","Schwiegertochter (geschlechtsneutral)","Genitore di sesso (neutralità di genere)","Sogro (neutro em termos de gênero)","Зять (гендерно нейтральный)","Suegro (neutral de género)","Kayınvalides (cinsiyet eşitli değil)","Parent-in-law (gender neutral)"),
("1064","child_in_law_gender_neutral","Child-in-law (gender neutral)","صهر الطفل (محايد جنسانيا)","Schoonzoon (geslachtsneutraal)","Bien-être (genre neutre)","Schwiegervater (geschlechtsneutral)","Suono (neutrale di genere)","Nora (neutro em termos de gênero)","Тед (гендерно нейтральный)","Niño (s) (género neutral)","Kayın-kuşun (cinsiyet eşitli)","Child-in-law (gender neutral)"),
("1065","add_to_family","Add to family","إضافة إلى الأسرة","Voeg toe aan familie","Ajouter à la famille","Zu Familie hinzufügen","Aggiungi alla famiglia","Adicionar à família","Добавить в подборку","Añadir a la familia","Ailenize ekleyin","Add to family"),
("1066","accept","Accept","قبول","Accepteren","Acceptez","Akzeptieren","Accettare","Aceitar","принимать","Aceptar","Kabul etmek","Terima"),
("1067","family_member","Family Member","عضو الأسرة","Familielid","Membre de la famille","Familienmitglied","Membro della famiglia","Membro da família","Член семьи","Miembro de la familia","Aile üyesi","Family Member"),
("1068","family_members","Family members","أفراد الأسرة","Familieleden","Membres de la famille","Familienmitglieder","Membri della famiglia","Membros da família","Члены семьи","Miembros de la familia","Aile üyeleri","Family members"),
("1069","add_as","Add as","أضفه ك","Toevoegen als","Ajouter comme","Hinzufügen Als","Aggiungi come","Adicionar como","Добавить как","Agregar como","Olarak ekle","Add as"),
("1070","confirm_remove_family_member","Are you sure that you want to remove this member from your family?","هل تريد بالتأكيد إزالة هذا العضو من عائلتك؟","Weet u zeker dat u dit lid van uw familie wilt verwijderen?","Êtes-vous sûr de vouloir supprimer ce membre de votre famille?","Sind Sie sicher, dass Sie dieses Mitglied aus Ihrer Familie entfernen möchten?","Sei sicuro di voler rimuovere questo membro dalla tua famiglia?","Tem certeza de que deseja remover esse membro da sua família?","Вы уверены, что хотите удалить этого участника из своей семьи?","¿Estás seguro de que deseas eliminar este miembro de tu familia?","Bu üyeyi ailenden kaldırmak istediğinizden emin misiniz?","Are you sure that you want to remove this member from your family?"),
("1071","family_member_added","New member was successfully added to your family list!","تمت إضافة عضو جديد بنجاح إلى قائمة عائلتك!","Nieuw lid is succesvol toegevoegd aan je familielijst!","Un nouveau membre a été ajouté avec succès à votre liste de famille!","Neues Mitglied wurde erfolgreich zu Ihrer Familienliste hinzugefügt!","Nuovo membro è stato aggiunto con successo alla tua lista di famiglia!","Novo membro foi adicionado com sucesso à sua lista de família!","Новый член был успешно добавлен в список ваших семей!","¡El nuevo miembro se agregó a su lista de familia!","Yeni üye, aileniz listesine başarıyla eklendi!","New member was successfully added to your family list!"),
("1072","request_sent","Your request was successfully sent!","تم إرسال طلبك بنجاح!","Uw verzoek is succesvol verzonden!","Votre demande a été envoyée avec succès!","Ihre Anfrage wurde erfolgreich gesendet!","La tua richiesta è stata inviata con successo!","Seu pedido foi enviado com sucesso!","Ваш запрос был успешно отправлен!","¡Su solicitud ha sido enviada correctamente!","Talebiniz başarıyla gönderildi!","Your request was successfully sent!"),
("1073","request_accepted","Accepted your request to be your @","قبلت طلبك ليكون الخاص بك @","Geaccepteerd uw verzoek om uw @","A accepté votre demande pour être votre @","Akzeptiert Ihre Anfrage zu Ihrem @","Accettato la tua richiesta per essere il tuo @","Aceitou seu pedido para ser seu @","Принял ваш запрос как ваш @","Aceptado su solicitud para ser su @","@ Olmak isteğinizi kabul ettiniz","Accepted your request to be your @"),
("1074","sent_u_request","Listed you as his @","المدرجة لك كما له @","Heb je gezien als zijn @","","Listed Sie als seine @","Ti ha elencato come suo @","Listou você como seu @","Перечислил вас как его @","Listado como su @","Seni onun @","Listed you as his @"),
("1075","requests","Requests","طلبات","verzoeken","Demandes","Anfragen","richieste","solicitações de","Запросы","Peticiones","İstekler","Requests"),
("1076","no_requests_found","No requests found!","لم يتم العثور على أية طلبات!","Geen verzoeken gevonden!","Aucune demande trouvée!","Keine Anfragen gefunden!","Nessuna richiesta trovata!","Não foram encontrados pedidos!","Запросов не найдено!","No se han encontrado solicitudes!","İstek bulunamadı!","No requests found!"),
("1077","relation_with","In relations with","في العلاقات مع","In relaties met","En relation avec","Im Zusammenhang mit","Nelle relazioni con","Em relação com","В отношениях с","En las relaciones con","Ile ilişkilerinde","Sedang berpacaran dengan"),
("1078","married_to","Married to","متزوج من","Getrouwd met","Marié à","Verheiratet mit","Sposato con","Casado com","В браке с","Casado con","Evli","Menikah dengan"),
("1079","engaged_to","Engaged to ","مخطوب ل","verloofd met","Fiancé à","verlobt mit","fidanzato con","noivo de","Помолвлены с","comprometido con","Etkileşim kurdu","Engaged to"),
("1080","relationship_status","Relationship Status ","الحالة الاجتماعية","Relatie status","Statut de la relation","Beziehungsstatus","stato delle relazioni","status de relacionamento","Семейное положение","estado civil","ilişki durumu","Relationship Status"),
("1081","relationship_request","Relationship request ","طلب العلاقة","Verzoek om relatie","Demande de relation","Beziehungsanfrage","Richiesta di relazione","Pedido de relacionamento","Запрос на отношении","Solicitud de relación","Ilişki talebi","Relationship request"),
("1082","relhip_request_accepted","Accepted your request @ ","قبل طلبك @","Geaccepteerd uw aanvraag @","A accepté votre demande @","Akzeptiert Ihre Anfrage @","Accettato la tua richiesta @","Aceitou seu pedido @","Принял(а) ваш запрос @","Aceptado su solicitud @","İsteğiniz kabul edildi @","Accepted your request @"),
("1083","relation_rejected","rejected your relation request @","رفض طلب علاقتك @","Heeft uw relatieverzoek geweigerd @","Rejeté votre demande de relation @","Abgelehnt Ihre Beziehung Anfrage @","Ha respinto la tua richiesta di relazione @","Rejeitou sua solicitação de relacionamento @","Отклонил(a) ваш запрос отношения @","Rechazó su solicitud de relación @","Ilişki isteğini reddetti @","rejected your relation request @"),
("1084","file_too_big","File size error: The file exceeds allowed the limit ({file_size}) and can not be uploaded.","خطأ في حجم الملف: يتجاوز الملف الحد المسموح به ({file_size}) ولا يمكن تحميله.","Bestandsgrootte fout: Het bestand overschrijdt de limiet toegestaan ​​({file_size}) en kan niet worden geüpload.","Erreur de taille de fichier: le fichier dépasse autorisé la limite ({image_fichier}) et ne peut pas être téléchargé.","Dateigrößenfehler: Die Datei überschreitet die Begrenzung ({file_size}) und kann nicht hochgeladen werden.","Errore di dimensione del file: il file supera il limite consentito ({file_size}) e non può essere caricato.","Erro de tamanho de arquivo: o arquivo excede permitido o limite ({file_size}) e não pode ser carregado.","Ошибка размера файла: файл превышает допустимый предел ({file_size}) и не может быть загружен.","Error de tamaño de archivo: El archivo excede el límite permitido ({file_size}) y no se puede cargar.","Dosya boyutu hatası: Dosya limiti aştı ({file_size}) ve yüklenemiyor.","File size error: The file exceeds allowed the limit ({file_size}) and can not be uploaded."),
("1085","file_not_supported","Unable to upload a file: This file type is not supported.","تعذر تحميل ملف: نوع الملف هذا غير متوافق.","Kan een bestand niet uploaden: dit bestandstype wordt niet ondersteund.","","Kann eine Datei nicht hochladen: Dieser Dateityp wird nicht unterstützt.","Impossibile caricare un file: questo tipo di file non è supportato.","Não é possível carregar um arquivo: esse tipo de arquivo não é suportado.","Не удалось загрузить файл. Этот тип файла не поддерживается.","No se puede cargar un archivo: este tipo de archivo no es compatible.","Dosya yüklenemiyor: Bu dosya türü desteklenmiyor.","Unable to upload a file: This file type is not supported."),
("1086","years_old","years old","سنوات","jaar oud","ans","Jahre alt","Anni","anos","лет","años","yaşında","Umur"),
("1087","find_friends_nearby","Find friends nearby","العثور على الأصدقاء في مكان قريب","Vind vrienden in de buurt","Trouver des amis à proximité","Freunde in der Nähe finden","Trova amici nelle vicinanze","Encontre amigos nas proximidades","Найти друзей поблизости","Encuentra amigos cercanos","Yakınlarda arkadaş bul","Temukan teman terdekat"),
("1088","location_dist","Location distance","مسافة الموقع","Locatie afstand","Distance demplacement","Standortabstand","Distanza della posizione","Distância de localização","Месторасположение","Ubicación distancia","Yer mesafesi","Jarak lokasi"),
("1089","close_to_u","close to you","قريب منك","dicht bij jou","près de vous","nah bei dir","vicino a te","perto de você","близко к тебе","cerca de usted","sana yakın","Dekat dengan anda"),
("1090","find_friends","Find friends","البحث عن أصدقاء","Zoek vrienden","Trouver des amis","Freunde finden","Trova amici","Encontrar amigos","Найти друзей","Encontrar amigos","Arkadaşları bul","Cari teman"),
("1091","distance","distance","مسافه: بعد","afstand","distance","Entfernung","distanza","distância","расстояние","distancia","mesafe","Jarak"),
("1092","distance_from_u","distance from you","المسافة منك","Afstand van jou","Distance de vous","Entfernung von Ihnen","Distanza da te","Distância de você","Расстояние от вас","Distancia de ti","Senden uzaklık","distance from you"),
("1093","show_location","Show location","إظهار الموقع","Toon locatie","","Lage anzeigen","Mostra la posizione","Mostrar localização","Показать на карте","Mostrar ubicación","Yeri göster","Show location"),
("1094","share_my_location","Share my location with public?","هل تريد مشاركة موقعي مع الجمهور؟","Deel mijn locatie met publiek?","Partagez mon emplacement avec le public?","Teilen Sie meinen Standort mit der Öffentlichkeit?","Condividi la mia posizione con il pubblico?","Compartilhe minha localização com o público?","Поделитесь своим местоположением с публикой?","Compartir mi ubicación con público?","Konumumu halkla paylaşmak mı istiyorsunuz?","Bagikan lokasi saya dengan publik?"),
("1095","enter_valid_title","Please enter a valid title","يرجى إدخال عنوان صالح","Vul alstublieft een geldige titel in","Entrez un titre valide","Bitte geben Sie einen gültigen Titel ein","Si prega di inserire un titolo valido","Insira um título válido","Введите действительное название","Ingrese un título válido","Lütfen geçerli bir başlık girin","Di mohon masukan judul yang benar"),
("1096","pay_per_click","Pay Per Click (${{PRICE}})","الدفع لكل نقرة (${{PRICE}})","Betaal per klik (${{PRICE}})","Pay Per Click (${{PRICE}})","Pay Per Click (${{PRICE}})","Pay Per Click (${{PRICE}})","Pay Per Click (${{PRICE}})","Платить за клик (${{PRICE}})","Pago por clic (${{PRICE}})","Tıklama başına Öde (${{PRICE}})","Pay Per Click (${{PRICE}})"),
("1097","pay_per_imprssion","Pay Per Impression (${{PRICE}})","الدفع لكل ظهور (${{PRICE}})","Betaal per indruk (${{PRICE}})","Pay per Impression (${{PRICE}})","Pay per Impression (${{PRICE}})","Pay Per Impression (${{PRICE}})","Pague por impressão (${{PRICE}})","Платить за показ (${{PRICE}})","Pago por impresión (${{PRICE}})","Gösterim Başına Ödeme (${{PRICE}})","Pay Per Impression (${{PRICE}})"),
("1098","top_up","Top up","فوق حتى","Top up","Remplir","Nachfüllen","Riempire","Completar","Пополнить","Completar","Ekleyin","Top up"),
("1099","balance_is_0","Your current wallet balance is: 0, please top up your wallet to continue.","رصيد المحفظة الحالي هو: 0، يرجى متابعة محفظتك للمتابعة.","Uw huidige portemonneebalans is: 0, vul uw portemonnee aan om door te gaan.","Votre solde de portefeuille actuel est: 0, veuillez compléter votre portefeuille pour continuer.","Ihre aktuelle Brieftasche Gleichgewicht ist: 0, bitte nach oben Ihre Brieftasche, um fortzufahren.","Il tuo saldo attuale del portafoglio è: 0, ti preghiamo di riempire il portafoglio per continuare.","Seu saldo de carteira atual é: 0, por favor, complete sua carteira para continuar.","Ваш текущий баланс кошелька: 0, пожалуйста, пополните свой кошелек, чтобы продолжить.","Su saldo de cartera actual es: 0, por favor, recargue su cartera para continuar.","Mevcut cüzdan bakiyeniz: 0, devam etmek için lütfen cüzdanınızı doldurun.","Your current wallet balance is: 0, please top up your wallet to continue."),
("1100","messages_delete_confirmation","Are you sure you want to delete this conversation?","هل تريد بالتأكيد حذف هذه المحادثة؟","Weet u zeker dat u dit gesprek wilt verwijderen?","Êtes-vous sûr de vouloir supprimer cette conversation?","Sind Sie sicher, dass Sie diese Konversation löschen möchten?","Sei sicuro di voler eliminare questa conversazione?","Tem certeza de que deseja excluir esta conversa?","Вы действительно хотите удалить этот разговор?","¿Seguro que quieres eliminar esta conversación?","Bu sohbeti silmek istediğinizden emin misiniz?","Are you sure you want to delete this conversation?"),
("1101","currency","Currency","دقة","Valuta","Devise","Währung","Moneta","Moeda","валюта","Moneda","Para birimi","Currency");

--
-- Dumping data for table `wo_langs`
--

INSERT INTO wo_langs VALUES
("1102","friends_stories","Friends Stories","قصص الأصدقاء","Vriendenverhalen","","Freunde Geschichten","Storie di amici","Histórias de amigos","Истории друзей","Historias de amigos","Arkadaş Hikayeleri","Cerita teman"),
("1103","no_messages_here_yet","No messages yet here.","لا توجد رسائل حتى الآن.","Nog geen berichten hier.","","Noch keine Mitteilungen.","Non ci sono ancora messaggi qui.","Ainda não há mensagens aqui.","Пока сообщений нет.","Aún no hay mensajes.","Henüz mesaj yok.","Tidak ada pesan."),
("1104","conver_deleted","Conversation has been deleted.","تم حذف المحادثة.","Conversatie is verwijderd.","La conversation a été supprimée.","Konversation wurde gelöscht.","La conversazione è stata eliminata.","A conversa foi excluída.","Разговор удален.","Se ha eliminado la conversación.","Sohbet silindi.","Conversation has been deleted."),
("1105","group_name_limit","Group name must be 4/15 characters","يجب أن يكون اسم المجموعة 4/15 حرفا","De groepsnaam moet 4/15 karakters zijn","Le nom du groupe doit comporter 4/15 caractères","Der Gruppenname muss 4/15 Zeichen lang sein","Il nome del gruppo deve essere di 4/15 caratteri","O nome do grupo deve ser de 4/15 caracteres","Имя группы должно быть 4/15 символов","El nombre del grupo debe tener 4/15 caracteres","Grup adı 4/15 karakter olmalıdır","Nama grup harus lebih 4/15 karakter"),
("1106","group_avatar_image","Group avatar must be an image","يجب أن تكون الصورة الرمزية للمجموعة صورة","Groep avatar moet een afbeelding zijn","","Gruppen-Avatar muss ein Bild sein","","O avatar do grupo deve ser uma imagem","Групповой аватар должен быть изображением","El avatar del grupo debe ser una imagen","Grup avatar bir resim olmalı","Group avatar must be an image"),
("1107","explore","Explore","إستكشاف","Onderzoeken","Explorer","Erforschen","Esplorare","Explorar","Исследовать","Explorar","Keşfetmek","Jelajah"),
("1108","format_image","File Format image","تنسيق ملف الصورة","Bestandsformaat afbeelding","Image au format du fichier","Dateiformat Bild","Immagine del formato file","Imagem do formato do arquivo","Изображение формата файла","Imagen de formato de archivo","Dosya Biçimi resmi","File Format image"),
("1109","format_video","File Format video","تنسيق ملف الفيديو","Bestandsformaat video","Format de fichier vidéo","Dateiformatvideo","Formato file video","Vídeo do formato do arquivo","Формат файла видео","Formato de archivo video","Dosya Biçimi videosu","File Format video"),
("1110","video","Video","فيديو","Video","Vidéo","Video","video","Vídeo","видео","Vídeo","Video","Video"),
("1111","video_player","VideoPlayer","مشغل فديوهات","Video speler","Lecteur vidéo","Videoplayer","Lettore video","VideoPlayer","Видео проигрыватель","Reproductor de video","Video oynatıcı","VideoPlayer"),
("1112","no_file_chosen","No file chosen","لم تقم باختيار ملف","Geen bestand gekozen","Aucun fichier choisi","Keine Datei ausgewählt","Nessun file scelto","Nenhum arquivo selecionado","Файл не выбран","Ningún archivo elegido","Dosya seçili değil","Tidak ada file yang di pilih"),
("1113","choose_file","Choose File","اختر ملف","Kies bestand","Choisir le fichier","Datei wählen","Scegli il file","Escolher arquivo","Выберите файл","Elija el archivo","Dosya seçin","Pilih File"),
("1114","media","Media File","ملف وسائط","Media bestand","Fichier multimédia","Mediendatei","File multimediale","Arquivo de mídia","Файл мультимедиа","Archivo multimedia","Medya dosyası","Media File"),
("1115","select_valid_img_vid","Media file is invalid. Please select a valid image or video","ملف الوسائط غير صالح. الرجاء تحديد صورة أو فيديو صالحين","Mediabestand is ongeldig. Selecteer een geldige afbeelding of video","Le fichier multimédia est invalide. Veuillez sélectionner une image ou une vidéo valide","Mediendatei ist ungültig. Bitte wählen Sie ein gültiges Bild oder Video aus","Il file multimediale non è valido. Si prega di selezionare unimmagine o un video valido","O arquivo de mídia é inválido. Selecione uma imagem ou vídeo válido","Недопустимый файл мультимедиа. Выберите действительное изображение или видео","El archivo multimedia no es válido. Seleccione una imagen o video válido","Medya dosyası geçersiz. Lütfen geçerli bir resim veya video seçin","Ekstensi file tidak di dukung. di mohon pilih file seperti foto(.JPG) atau video(.mp4)"),
("1116","select_valid_img","Media file is invalid. Please select a valid image","ملف الوسائط غير صالح. الرجاء تحديد صورة صالحة","Mediabestand is ongeldig. Selecteer een geldige afbeelding","Le fichier multimédia est invalide. Veuillez sélectionner une image valide","Mediendatei ist ungültig. Bitte wählen Sie ein gültiges Bild","Il file multimediale non è valido. Si prega di selezionare unimmagine valida","O arquivo de mídia é inválido. Selecione uma imagem válida","Недопустимый файл мультимедиа. Выберите действительное изображение","El archivo multimedia no es válido. Seleccione una imagen válida","Medya dosyası geçersiz. Lütfen geçerli bir resim seçin","Media file is invalid. Please select a valid image"),
("1117","select_valid_vid","Media file is invalid. Please select a valid video","ملف الوسائط غير صالح. الرجاء تحديد فيديو صالح","Mediabestand is ongeldig. Selecteer een geldige video","Le fichier multimédia est invalide. Veuillez sélectionner une vidéo valide","Mediendatei ist ungültig. Bitte wählen Sie ein gültiges Video aus","Il file multimediale non è valido. Si prega di selezionare un video valido","O arquivo de mídia é inválido. Selecione um vídeo válido","Недопустимый файл мультимедиа. Выберите действительное видео","El archivo multimedia no es válido. Seleccione un video válido","Medya dosyası geçersiz. Lütfen geçerli bir video seçin","Media file is invalid. Please select a valid video"),
("1118","drop_img_here","Drop Image Here","إسقاط الصورة هنا","Zet hier een afbeelding neer","Déposer limage ici","Bild hier ablegen","Rilascia limmagine qui","Largue a imagem aqui","Отбросьте изображение здесь","Dejar caer la imagen aquí","Buraya Resim Aç","Taruh foto di sini"),
("1119","or","OR","أو","OF","OU","ODER","O","OU","ИЛИ","O","VEYA","Atau"),
("1120","browse_to_upload","Browse To Upload","تصفح لتحميل","Blader naar uploaden","Parcourir pour télécharger","Durchsuchen zum Hochladen","Sfoglia per caricare","Navegue para carregar","Просмотр загрузки","Buscar para cargar","Yüklemeye Gözat","Browsing untuk Mengunggah"),
("1121","pr_completion","Profile Completion","الملف الشخصي الانتهاء","Profiel voltooiing","Achèvement du profil","Profil Fertigstellung","Completamento del profilo","Conclusão do perfil","Завершение профиля","Terminación del perfil","Profil Tamamlama","Status profil sudah komplit"),
("1122","ad_pr_picture","Add your profile picture","إضافة صورة ملفك الشخصي","Voeg je profielfoto toe","Ajouter votre photo de profil","Fügen Sie Ihr Profilbild hinzu","Aggiungi la tua immagine del profilo","Adicione sua foto de perfil","Добавьте свое фото профиля","Agrega tu foto de perfil","Profil resmini ekle","Tambah foto profil anda"),
("1123","add_ur_name","Add your name","أضف اسمك","Voeg je naam toe","Ajoutez votre nom","Fügen Sie Ihren Namen hinzu","Aggiungi il tuo nome","Adicione seu nome","Добавьте свое имя","Agrega tu nombre","Adınızı ekleyin","Tambah nama lengkap anda"),
("1124","ad_ur_workplace","Add your workplace","أضف مكان عملك","Voeg uw werkplek toe","Ajoutez votre lieu de travail","Fügen Sie Ihren Arbeitsplatz hinzu","Aggiungi il tuo posto di lavoro","Adicione seu local de trabalho","Добавьте свое рабочее место","Agregue su lugar de trabajo","İş yerinizi ekleyin","Tambah tempat kerja anda"),
("1125","ad_ur_country","Add your country","أضف بلدك","Voeg uw land toe","Ajoutez votre pays","Fügen Sie Ihr Land hinzu","Aggiungi il tuo paese","Adicione seu país","Добавьте свою страну","Agrega tu país","Ülkenizi ekle","Tambah negara anda"),
("1126","ad_ur_address","Add your address","أضف عنوانك","Voeg uw adres toe","Ajoutez votre adresse","Fügen Sie Ihre Adresse hinzu","Aggiungi il tuo indirizzo","Adicione seu endereço","Добавьте свой адрес","Agrega tu dirección","Adresinizi ekleyin","Tambah alamat rumah anda"),
("1127","e_sent_msg","Someone Send me a message","شخص أرسل لي رسالة","Iemand Stuur mij een bericht","Quelquun Envoyez moi un message","Jemand Senden Sie mir eine Nachricht","Qualcuno Inviami un messaggio","Alguém Envie-me uma mensagem","Кто-нибудь Послать мне сообщение","Alguien me envía un mensaje","Birisi bana bir mesaj gönder","Someone Send me a message"),
("1128","send_money","Send money","إرسال الأموال","Stuur geld","Envoyer de largent","Geld schicken","Inviare soldi","Enviar dinheiro","Отправлять деньги","Enviar dinero","Para göndermek","Kirim uang"),
("1129","u_send_money","You can send money to your friends, acquaintances or anyone","يمكنك إرسال الأموال إلى أصدقائك، معارفك أو أي شخص","Je kunt geld sturen naar je vrienden, kennissen of wie dan ook","Vous pouvez envoyer de largent à vos amis, connaissances ou nimporte qui","Sie können Geld an Ihre Freunde, Bekannten oder irgendjemanden senden","Puoi inviare denaro ai tuoi amici, conoscenti o chiunque altro","Você pode enviar dinheiro para seus amigos, conhecidos ou qualquer um","Вы можете отправлять деньги своим друзьям, знакомым или кому-либо","Puede enviar dinero a sus amigos, conocidos o cualquier persona","Arkadaşlarınız, tanıdıklarınız veya herhangi birisine para gönderebilirsiniz.","Anda dapat mengirim uang atau sejenisnya ke teman dekat anda atau orang lain"),
("1130","available_balance","Available balance","الرصيد المتوفر","Beschikbaar saldo","Solde disponible","Verfügbares Guthaben","Saldo disponibile","Saldo disponível","Доступные средства","Saldo disponible","Kalan bakiye","Available balance"),
("1131","send_to","Send To","ارسل إلى","Verzenden naar","Envoyer à","Senden an","Inviare a","Enviar para","Отправить","Enviar a","Gönderildi","Kirim ke"),
("1132","search_name_or_email","Search for user name, e-mail","البحث عن اسم المستخدم، والبريد الإلكتروني","Zoeken naar gebruikersnaam, e-mail","Recherche de nom dutilisateur, e-mail","Suchen Sie nach Benutzername, E-Mail","Cerca nome utente, e-mail","Procure por nome de usuário, e-mail","Поиск имени пользователя, электронной почты","Buscar nombre de usuario, correo electrónico","Kullanıcı adını, e-postasını ara","Search for user name, e-mail"),
("1133","money_sent_to","Your money was successfully sent to","تم إرسال أموالك بنجاح إلى","Uw geld is succesvol verzonden naar","Votre argent a été envoyé avec succès à","Ihr Geld wurde erfolgreich an gesendet","Il tuo denaro è stato inviato con successo","Seu dinheiro foi enviado com sucesso para","Ваши деньги были успешно отправлены","Su dinero fue enviado exitosamente a","Paranız başarıyla gönderildi","Your money was successfully sent to"),
("1134","sent_you","Sent you","ارسلت لك","Stuurde je","Vous a envoyé","Hat dich geschickt","Ti ho inviato","Enviei a você","Отправлено Вам","Enviado","Seni gönderdi","Mengirimi anda"),
("1135","amount_exceded","The amount exceded your current balance!","المبلغ المستحق رصيدك الحالي!","Het bedrag overschreed je huidige saldo!","Le montant a dépassé votre solde actuel!","Der Betrag übertraf Ihr aktuelles Guthaben!","Limporto ha superato il tuo saldo attuale!","O valor excedeu o seu saldo atual!","Сумма превысила ваш текущий баланс!","¡La cantidad excedió su saldo actual!","Miktar, şu anki bakiyenizi aştı!","The amount exceded your current balance!"),
("1136","custom_thumbnail","Custom Thumbnail","صورة مصغرة مخصصة","Aangepaste miniatuur","Miniature personnalisée","Benutzerdefiniertes Miniaturbild","Miniatura personalizzata","Miniatura personalizada","Пользовательская миниатюра","Miniatura personalizada","Özel Küçük Boy","Custom Thumbnail"),
("1137","cntc_limit_reached","You have reached your limit of {{CNTC_LIMIT}} friends!","لقد بلغت الحد المسموح به لعدد {{CNTC_LIMIT}} من الأصدقاء!","U heeft uw limiet van {{CNTC_LIMIT}} vrienden bereikt!","Vous avez atteint la limite de vos amis {{CNTC_LIMIT}}!","Du hast dein Limit von {{CNTC_LIMIT}} Freunden erreicht!","Hai raggiunto il limite di {{CNTC_LIMIT}} amici!","Você atingiu seu limite de amigos {{CNTC_LIMIT}}!","Вы достигли своего предела {{CNTC_LIMIT}} друзей!","¡Has alcanzado el límite de {{CNTC_LIMIT}} amigos!","{{CNTC_LIMIT}} arkadaşınızla ilgili sınırınıza ulaştınız!","You have reached your limit of {{CNTC_LIMIT}} friends!");

-- ---------------------------------------------------------
--
-- Table structure for table : `wo_likes`
--
-- ---------------------------------------------------------

CREATE TABLE `wo_likes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `post_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `post_id` (`post_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wo_likes`
--

INSERT INTO wo_likes VALUES
("3","2","1"),
("4","2","2"),
("5","2","3"),
("6","2","5"),
("8","2","7"),
("9","2","4"),
("10","2","8"),
("11","1","8"),
("12","1","9"),
("14","2","11"),
("15","2","9"),
("16","4","12"),
("17","2","12"),
("18","3","3"),
("19","3","8"),
("20","3","5"),
("22","1","12"),
("23","2","18"),
("24","1","20"),
("25","3","20"),
("26","3","18"),
("27","3","12"),
("28","3","11"),
("30","3","7"),
("32","3","21"),
("33","1","22"),
("34","1","21"),
("35","1","19"),
("36","1","26"),
("37","2","22"),
("38","2","19"),
("39","2","17"),
("40","2","16"),
("41","2","13"),
("42","2","20"),
("43","5","3"),
("44","1","3"),
("45","1","28"),
("46","5","28"),
("47","6","26"),
("48","6","19"),
("49","6","23"),
("50","6","24"),
("51","6","30"),
("52","2","30"),
("53","2","28"),
("54","2","26"),
("55","2","25"),
("56","2","24"),
("57","2","23"),
("58","2","21"),
("59","6","31"),
("60","3","29"),
("61","3","28"),
("62","3","26"),
("63","3","25"),
("64","3","23"),
("65","3","24"),
("66","3","19"),
("67","2","31"),
("68","2","29"),
("70","3","30"),
("71","3","22"),
("72","2","33"),
("73","1","33"),
("74","3","34"),
("75","3","33"),
("76","3","31"),
("77","3","38"),
("78","3","39"),
("79","3","40"),
("80","3","36"),
("81","3","35"),
("82","6","38"),
("83","6","39"),
("84","1","34"),
("85","1","40"),
("86","1","29"),
("87","1","25"),
("88","1","11"),
("89","1","41"),
("90","1","39"),
("91","1","36"),
("92","1","38"),
("93","1","35"),
("94","3","41"),
("95","7","43"),
("96","2","34"),
("99","2","36"),
("100","2","48"),
("101","2","44"),
("102","1","48"),
("103","1","44"),
("104","2","47"),
("105","1","47");

-- ---------------------------------------------------------
--
-- Table structure for table : `wo_messages`
--
-- ---------------------------------------------------------

CREATE TABLE `wo_messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `from_id` int(11) NOT NULL DEFAULT '0',
  `group_id` int(11) NOT NULL DEFAULT '0',
  `to_id` int(11) NOT NULL DEFAULT '0',
  `text` text,
  `media` varchar(255) NOT NULL DEFAULT '',
  `mediaFileName` varchar(200) NOT NULL DEFAULT '',
  `mediaFileNames` varchar(200) NOT NULL DEFAULT '',
  `time` int(11) NOT NULL DEFAULT '0',
  `seen` int(11) NOT NULL DEFAULT '0',
  `deleted_one` enum('0','1') NOT NULL DEFAULT '0',
  `deleted_two` enum('0','1') NOT NULL DEFAULT '0',
  `sent_push` int(11) NOT NULL DEFAULT '0',
  `notification_id` varchar(50) NOT NULL DEFAULT '',
  `type_two` varchar(32) NOT NULL DEFAULT '',
  `stickers` text,
  PRIMARY KEY (`id`),
  KEY `from_id` (`from_id`),
  KEY `to_id` (`to_id`),
  KEY `seen` (`seen`),
  KEY `time` (`time`),
  KEY `deleted_two` (`deleted_two`),
  KEY `deleted_one` (`deleted_one`),
  KEY `sent_push` (`sent_push`),
  KEY `group_id` (`group_id`),
  KEY `order1` (`from_id`,`id`),
  KEY `order2` (`group_id`,`id`),
  KEY `order3` (`to_id`,`id`),
  KEY `order7` (`seen`,`id`),
  KEY `order8` (`time`,`id`),
  KEY `order4` (`from_id`,`id`),
  KEY `order5` (`group_id`,`id`),
  KEY `order6` (`to_id`,`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wo_messages`
--

INSERT INTO wo_messages VALUES
("1","1","0","2","hello","","","","1530613530","1530613547","0","0","0","","",""),
("2","2","0","1","/_) iijgg /_)","","","","1530613597","1530613600","0","0","0","","",""),
("3","1","0","2","you fuck","","","","1530613691","1530613692","0","0","0","","",""),
("4","2","0","1","You too :оcean:","","","","1530613720","1530613721","0","0","0","","",""),
("5","2","0","1","Hllow...","","","","1530613761","1530613775","0","0","0","","",""),
("6","2","0","4","kunyuk","","","","1530630733","0","0","0","1","","",""),
("7","5","0","1","TEST","","","","1530680680","1530680875","0","0","0","","",""),
("8","1","0","5","Hola","","","","1530681543","1530681548","0","0","0","","",""),
("9","1","0","5","hola Test Pesan masuk","","","","1530681739","1530681740","0","0","0","","",""),
("10","2","0","5","hola","","","","1530683411","0","0","0","1","","",""),
("11","1","0","2","woy","","","","1530684848","1530684860","0","0","0","","",""),
("12","2","0","1","iye","","","","1530684983","1530684984","0","0","0","","",""),
("13","1","0","2","kentir","","","","1530684999","1530685006","0","0","0","","",""),
("14","2","0","6","lol","","","","1530690819","1530690831","0","0","0","","",""),
("15","6","0","2","¿Kamu lagi apa?","","","","1530690859","1530690861","0","0","0","","",""),
("16","6","0","2",":girl:","","","","1530690907","1530690911","0","0","0","","",""),
("17","6","0","2","Check","","","","1530690921","1530690924","0","0","0","","",""),
("18","2","0","3","Nata kentir","","","","1530704090","1530704224","0","0","0","","",""),
("19","3","0","2","Ap","","","","1530704230","1530707635","0","0","0","","",""),
("20","3","0","2","╔═╗═╔╗══════╔╗ <br>║═╬═╣╠═╦══╦═╣╚╗ <br>╠═║╩╣║╬║║║║╬║╔╣ <br>╚═╩═╩╩╩╩╩╩╩╩╩═╝ <br>╔═╗═══╔╗ <br>║║╠═╦═╬╣ <br>║╔╣╬║╬║║ <br>╚╝╚╩╬╗╠╝ <br>════╚═╝","","","","1530704259","1530707635","0","0","0","","",""),
("21","6","0","3","Perubahan warna pada sistem","","","","1530706361","1530717544","0","0","1","","",""),
("22","1","0","2","hello","","","","1530712848","1530712867","0","0","0","","",""),
("23","2","0","1",":computer:  lagi test program nih","","","","1530712902","1530712903","0","0","0","","","");

-- ---------------------------------------------------------
--
-- Table structure for table : `wo_moviecommentreplies`
--
-- ---------------------------------------------------------

CREATE TABLE `wo_moviecommentreplies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `comm_id` int(11) NOT NULL DEFAULT '0',
  `movie_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `text` text,
  `likes` int(11) NOT NULL DEFAULT '0',
  `posted` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `comm_id` (`comm_id`),
  KEY `movie_id` (`movie_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ---------------------------------------------------------
--
-- Table structure for table : `wo_moviecomments`
--
-- ---------------------------------------------------------

CREATE TABLE `wo_moviecomments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `movie_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `text` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `posted` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `movie_id` (`movie_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ---------------------------------------------------------
--
-- Table structure for table : `wo_movies`
--
-- ---------------------------------------------------------

CREATE TABLE `wo_movies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `genre` varchar(50) NOT NULL DEFAULT '',
  `stars` varchar(300) NOT NULL DEFAULT '',
  `producer` varchar(100) NOT NULL DEFAULT '',
  `country` varchar(50) NOT NULL DEFAULT '',
  `release` year(4) DEFAULT NULL,
  `quality` varchar(10) DEFAULT '',
  `duration` int(11) NOT NULL DEFAULT '0',
  `description` text,
  `cover` varchar(500) NOT NULL DEFAULT 'upload/photos/d-film.jpg',
  `source` varchar(1000) NOT NULL DEFAULT '',
  `iframe` varchar(1000) NOT NULL DEFAULT '',
  `video` varchar(3000) NOT NULL DEFAULT '',
  `views` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `genre` (`genre`),
  KEY `country` (`country`),
  KEY `release` (`release`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wo_movies`
--

INSERT INTO wo_movies VALUES
("1","OPM SP 4","action","50,100","Daisuki.net","japan","2014","web-dl","24","One punch man is a human which have power fully punch","upload/photos/2018/07/zcbDHM9xxc4hGuABaKQJ_04_6a3c433570a7dba07ba2b483a3207aba_image.gif","upload/videos/2018/07/lkguIGQ7mzmcTZyH6yp8_04_6a3c433570a7dba07ba2b483a3207aba_video.mp4","","","2"),
("2","The Enigma","history","79,100","AT-Social-Movie","united-kingdom","2012","hd","70","Film which storying about world war II engla and germany, so very threaten, so you must watching this film.","upload/photos/2018/07/U8UYczsNWBeX7UDXxNhW_04_91269cfd7a434e8a725534266e4ab150_image.gif","upload/videos/2018/07/bPEwqL9KQG6SAMrk1GNh_04_31dd59aaee89fb596574c3323b7241e3_video.mp4","","","1");

-- ---------------------------------------------------------
--
-- Table structure for table : `wo_notifications`
--
-- ---------------------------------------------------------

CREATE TABLE `wo_notifications` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `notifier_id` int(11) NOT NULL DEFAULT '0',
  `recipient_id` int(11) NOT NULL DEFAULT '0',
  `post_id` int(11) NOT NULL DEFAULT '0',
  `page_id` int(11) NOT NULL DEFAULT '0',
  `group_id` int(11) NOT NULL DEFAULT '0',
  `event_id` int(11) NOT NULL DEFAULT '0',
  `thread_id` int(11) NOT NULL DEFAULT '0',
  `seen_pop` int(11) NOT NULL DEFAULT '0',
  `type` varchar(255) NOT NULL DEFAULT '',
  `type2` varchar(32) NOT NULL DEFAULT '',
  `text` text,
  `url` varchar(255) NOT NULL DEFAULT '',
  `full_link` varchar(1000) NOT NULL DEFAULT '',
  `seen` int(11) NOT NULL DEFAULT '0',
  `sent_push` int(11) NOT NULL DEFAULT '0',
  `time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `notifier_id` (`notifier_id`),
  KEY `user_id` (`recipient_id`),
  KEY `post_id` (`post_id`),
  KEY `seen` (`seen`),
  KEY `time` (`time`),
  KEY `page_id` (`page_id`),
  KEY `group_id` (`group_id`,`seen_pop`),
  KEY `sent_push` (`sent_push`),
  KEY `order1` (`seen`,`id`),
  KEY `order2` (`notifier_id`,`id`),
  KEY `order3` (`recipient_id`,`id`),
  KEY `order4` (`post_id`,`id`),
  KEY `order5` (`page_id`,`id`),
  KEY `order6` (`group_id`,`id`),
  KEY `order7` (`time`,`id`)
) ENGINE=InnoDB AUTO_INCREMENT=125 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wo_notifications`
--

INSERT INTO wo_notifications VALUES
("28","2","4","0","0","1","0","0","0","added_you_to_group","","","index.php?link1=timeline&u=Onepunchmanfull","","0","1","1530630951"),
("34","3","4","18","0","0","0","0","0","liked_post","post_image","Mantap jiw..","index.php?link1=post&id=18","","0","1","1530632512"),
("35","3","4","12","0","0","0","0","0","liked_post","post_avatar","","index.php?link1=post&id=12","","0","1","1530632523"),
("67","2","5","0","0","0","0","0","0","accepted_request","","","index.php?link1=timeline&u=anjas123","","0","1","1530683400"),
("121","1","2","48","0","0","0","0","0","liked_post","post_soundFile","Nyan-Cat-H..","index.php?link1=post&id=48","","1535550541","1","1535550053"),
("122","1","2","44","0","0","0","0","0","liked_post","","Cara Membu..","index.php?link1=post&id=44","","1535550541","1","1535550282"),
("123","2","1","0","0","0","0","0","0","visited_profile","","","index.php?link1=timeline&u=anjas123","","1535565018","1","1535563088"),
("124","1","2","47","0","0","0","0","0","liked_post","","430531..","index.php?link1=post&id=47","","0","1","1535565687");

-- ---------------------------------------------------------
--
-- Table structure for table : `wo_pageadmins`
--
-- ---------------------------------------------------------

CREATE TABLE `wo_pageadmins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `page_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `page_id` (`page_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ---------------------------------------------------------
--
-- Table structure for table : `wo_pagerating`
--
-- ---------------------------------------------------------

CREATE TABLE `wo_pagerating` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `page_id` int(11) NOT NULL DEFAULT '0',
  `valuation` int(11) DEFAULT '0',
  `review` text,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `page_id` (`page_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wo_pagerating`
--

INSERT INTO wo_pagerating VALUES
("1","1","1","5","Sangat mendukung para gamer untuk mencari tutorial"),
("2","3","1","5","Sangat menarik perhatian dan sangat membantu memberikan info tentang game");

-- ---------------------------------------------------------
--
-- Table structure for table : `wo_pages`
--
-- ---------------------------------------------------------

CREATE TABLE `wo_pages` (
  `page_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `page_name` varchar(32) NOT NULL DEFAULT '',
  `page_title` varchar(32) NOT NULL DEFAULT '',
  `page_description` varchar(1000) NOT NULL DEFAULT '',
  `avatar` varchar(255) NOT NULL DEFAULT 'upload/photos/d-page.jpg',
  `cover` varchar(255) NOT NULL DEFAULT 'upload/photos/d-cover.jpg',
  `page_category` int(11) NOT NULL DEFAULT '1',
  `website` varchar(255) NOT NULL DEFAULT '',
  `facebook` varchar(32) NOT NULL DEFAULT '',
  `google` varchar(32) NOT NULL DEFAULT '',
  `vk` varchar(32) NOT NULL DEFAULT '',
  `twitter` varchar(32) NOT NULL DEFAULT '',
  `linkedin` varchar(32) NOT NULL DEFAULT '',
  `company` varchar(32) NOT NULL DEFAULT '',
  `phone` varchar(32) NOT NULL DEFAULT '',
  `address` varchar(100) NOT NULL DEFAULT '',
  `call_action_type` int(11) NOT NULL DEFAULT '0',
  `call_action_type_url` varchar(255) NOT NULL DEFAULT '',
  `background_image` varchar(200) NOT NULL DEFAULT '',
  `background_image_status` int(11) NOT NULL DEFAULT '0',
  `instgram` varchar(32) NOT NULL DEFAULT '',
  `youtube` varchar(100) NOT NULL DEFAULT '',
  `verified` enum('0','1') NOT NULL DEFAULT '0',
  `active` enum('0','1') NOT NULL DEFAULT '0',
  `registered` varchar(32) NOT NULL DEFAULT '0/0000',
  `boosted` enum('0','1') NOT NULL DEFAULT '0',
  PRIMARY KEY (`page_id`),
  KEY `registered` (`registered`),
  KEY `user_id` (`user_id`),
  KEY `page_category` (`page_category`),
  KEY `active` (`active`),
  KEY `verified` (`verified`),
  KEY `boosted` (`boosted`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wo_pages`
--

INSERT INTO wo_pages VALUES
("1","2","ESgGG","Gamer Spectacle","Game spectacle on comentatory From A-Tube very nice","upload/photos/2018/07/RWxPeH7I6shq75z8XUHg_04_5f0dc903d3b2f740490993e4a2d33d26_avatar.jpg","upload/photos/d-cover.jpg","8","Https://web.gse.inc","","","","","","GSE.Inc","+67899567875","United states, New york, florida","1","","","0","","","1","1","7/2018","1");

-- ---------------------------------------------------------
--
-- Table structure for table : `wo_pages_invites`
--
-- ---------------------------------------------------------

CREATE TABLE `wo_pages_invites` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_id` int(11) NOT NULL DEFAULT '0',
  `inviter_id` int(11) NOT NULL DEFAULT '0',
  `invited_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `page_id` (`page_id`,`inviter_id`,`invited_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ---------------------------------------------------------
--
-- Table structure for table : `wo_pages_likes`
--
-- ---------------------------------------------------------

CREATE TABLE `wo_pages_likes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `page_id` int(11) NOT NULL DEFAULT '0',
  `time` int(11) NOT NULL DEFAULT '0',
  `active` enum('0','1') NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `active` (`active`),
  KEY `user_id` (`user_id`),
  KEY `page_id` (`page_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wo_pages_likes`
--

INSERT INTO wo_pages_likes VALUES
("1","1","1","1530711596","1"),
("2","3","1","1530718452","1");

-- ---------------------------------------------------------
--
-- Table structure for table : `wo_payments`
--
-- ---------------------------------------------------------

CREATE TABLE `wo_payments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `amount` int(11) NOT NULL DEFAULT '0',
  `type` varchar(15) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `date` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ---------------------------------------------------------
--
-- Table structure for table : `wo_pinnedposts`
--
-- ---------------------------------------------------------

CREATE TABLE `wo_pinnedposts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `page_id` int(11) NOT NULL DEFAULT '0',
  `group_id` int(11) NOT NULL DEFAULT '0',
  `post_id` int(11) NOT NULL DEFAULT '0',
  `event_id` int(11) NOT NULL DEFAULT '0',
  `active` enum('0','1') NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `post_id` (`post_id`),
  KEY `active` (`active`),
  KEY `page_id` (`page_id`),
  KEY `group_id` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ---------------------------------------------------------
--
-- Table structure for table : `wo_polls`
--
-- ---------------------------------------------------------

CREATE TABLE `wo_polls` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `post_id` int(11) NOT NULL DEFAULT '0',
  `text` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `post_id` (`post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `wo_polls`
--

INSERT INTO wo_polls VALUES
("1","8","Siswoyo","1530611879"),
("2","8","Herry","1530611879"),
("3","8","Herny","1530611879"),
("4","8","Sopi","1530611880");

-- ---------------------------------------------------------
--
-- Table structure for table : `wo_posts`
--
-- ---------------------------------------------------------

CREATE TABLE `wo_posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `post_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `recipient_id` int(11) NOT NULL DEFAULT '0',
  `postText` text,
  `page_id` int(11) NOT NULL DEFAULT '0',
  `group_id` int(11) NOT NULL DEFAULT '0',
  `event_id` int(11) NOT NULL DEFAULT '0',
  `page_event_id` int(11) NOT NULL DEFAULT '0',
  `postLink` varchar(1000) NOT NULL DEFAULT '',
  `postLinkTitle` text,
  `postLinkImage` varchar(100) NOT NULL DEFAULT '',
  `postLinkContent` varchar(1000) NOT NULL DEFAULT '',
  `postVimeo` varchar(100) NOT NULL DEFAULT '',
  `postDailymotion` varchar(100) NOT NULL DEFAULT '',
  `postFacebook` varchar(100) NOT NULL DEFAULT '',
  `postFile` varchar(255) NOT NULL DEFAULT '',
  `postFileName` varchar(200) NOT NULL DEFAULT '',
  `postFileThumb` varchar(3000) NOT NULL DEFAULT '',
  `postYoutube` varchar(255) NOT NULL DEFAULT '',
  `postVine` varchar(32) NOT NULL DEFAULT '',
  `postSoundCloud` varchar(255) NOT NULL DEFAULT '',
  `postPlaytube` varchar(500) NOT NULL DEFAULT '',
  `postMap` varchar(255) NOT NULL DEFAULT '',
  `postShare` int(11) NOT NULL DEFAULT '0',
  `postPrivacy` enum('0','1','2','3') NOT NULL DEFAULT '1',
  `postType` varchar(30) NOT NULL DEFAULT '',
  `postFeeling` varchar(255) NOT NULL DEFAULT '',
  `postListening` varchar(255) NOT NULL DEFAULT '',
  `postTraveling` varchar(255) NOT NULL DEFAULT '',
  `postWatching` varchar(255) NOT NULL DEFAULT '',
  `postPlaying` varchar(255) NOT NULL DEFAULT '',
  `postPhoto` varchar(3000) NOT NULL DEFAULT '',
  `time` int(11) NOT NULL DEFAULT '0',
  `registered` varchar(32) NOT NULL DEFAULT '0/0000',
  `album_name` varchar(52) NOT NULL DEFAULT '',
  `multi_image` enum('0','1') NOT NULL DEFAULT '0',
  `boosted` int(11) NOT NULL DEFAULT '0',
  `product_id` int(11) NOT NULL DEFAULT '0',
  `poll_id` int(11) NOT NULL DEFAULT '0',
  `blog_id` int(11) NOT NULL DEFAULT '0',
  `videoViews` int(11) NOT NULL DEFAULT '0',
  `postRecord` varchar(3000) NOT NULL DEFAULT '',
  `postSticker` text,
  `shared_from` int(15) NOT NULL DEFAULT '0',
  `post_url` text,
  `parent_id` int(15) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `post_id` (`post_id`),
  KEY `user_id` (`user_id`),
  KEY `recipient_id` (`recipient_id`),
  KEY `postFile` (`postFile`),
  KEY `postShare` (`postShare`),
  KEY `postType` (`postType`),
  KEY `postYoutube` (`postYoutube`),
  KEY `page_id` (`page_id`),
  KEY `group_id` (`group_id`),
  KEY `registered` (`registered`),
  KEY `time` (`time`),
  KEY `boosted` (`boosted`),
  KEY `product_id` (`product_id`),
  KEY `poll_id` (`poll_id`),
  KEY `event_id` (`event_id`),
  KEY `videoViews` (`videoViews`),
  KEY `shared_from` (`shared_from`),
  KEY `order1` (`user_id`,`id`),
  KEY `order2` (`page_id`,`id`),
  KEY `order3` (`group_id`,`id`),
  KEY `order4` (`recipient_id`,`id`),
  KEY `order5` (`event_id`,`id`),
  KEY `order6` (`parent_id`,`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wo_posts`
--

INSERT INTO wo_posts VALUES
("1","1","1","0","","0","0","0","0","","","","","","","","upload/videos/2018/07/BC8c8MnIzuVVgXWkyfpc_02_d5b6bd42e82db5219e84c59d4704d01b_video.mp4","Leo Rojas - El Condor Pasa (Videoclip).mp4","","","","","","","0","0","post","","","","","","","1530525454","7/2018","","0","0","0","0","0","4","","","0","","0"),
("2","2","1","0","Mr.Pekok","0","0","0","0","","","","","","","","upload/videos/2018/07/c1UnFtLXAVuUVN7tWQeK_02_0d9f3a0266367684ec189fd01cebde62_video.mp4","videoplayback (2).mp4","","","","","","","0","0","post","","","","","","","1530525848","7/2018","","0","0","0","0","0","7","","","0","","0"),
("3","3","2","0","Life Tug","0","0","0","0","","","","","","","","upload/sounds/2018/07/haVIcCEMF54O4BLFXraU_03_13a4a83a9ae0bf63b10e4251873626a2_soundFile.mp3","Sirius7 - Smoke weed everyday - Rasmus Hedegaard.mp3","","","","","","","0","0","post","","","","","","","1530596654","7/2018","","0","1","0","0","0","0","","","0","","0"),
("4","4","2","0","","0","0","0","0","","","","","","","","upload/photos/2018/07/8uCaoyaKR33LhsJePQK6_03_8b60acdc709e3bf235afc73cda1f1290_avatar_full.jpg","","","","","","","","0","0","profile_picture_deleted","","","","","","","1530599101","7/2018","","0","0","0","0","0","0","","","0","","0"),
("5","5","2","0","Semua terlihat keren","0","0","0","0","","","","","","","","","","","","","","","","0","0","post","happy","","","","","","1530600136","7/2018","","0","0","0","0","0","0","","","0","","0"),
("7","7","1","0","Sore ini terasa menyenangka sekali :)","0","0","0","0","","","","","","","","","","","","","","","","0","0","post","cool","","","","","","1530610063","7/2018","","0","0","0","0","0","0","","","0","","0"),
("8","8","2","0","Siapakah lurah Desa Saradan 2019?","0","0","0","0","","","","","","","","","","","","","","","","0","0","post","","","","","","","1530611879","7/2018","","0","0","0","1","0","0","","","0","","0"),
("9","9","1","0","For What","0","0","0","0","","","","","","","","upload/sounds/2018/07/rAvZTWp9bNxZc1612dfo_03_10687868831fdbf7680eadf708d5a8e8_soundFile.mp3","LIL JON - TURN DOWN FOR WHAT - DJ SNAKE &amp;amp; LIL JON.mp3","","","","","","","0","0","post","","","","","","","1530617109","7/2018","","0","0","0","0","0","0","","","0","","0"),
("11","11","1","0","Diplo Tinie Tempah (Trampoline)","0","0","0","0","","","","","","","","upload/sounds/2018/07/4C25oJm3FJOkRduURKhk_03_6fa138566df55dcea2adc3f3557f7c65_soundFile.mp3","Diplo - Tinie Tempah - Trampoline (ft 2 Chainz).mp3","","","","","","","0","0","post","","","","","","","1530618525","7/2018","","0","0","0","0","0","0","","","0","","0"),
("12","12","4","0","","0","0","0","0","","","","","","","","upload/photos/2018/07/vCIkBjWFECSWfDZvODBa_03_e0b6bbda0e2791e41827b0ab07a7f5e5_avatar_full.jpg","","","","","","","","0","0","profile_picture","","","","","","","1530626475","7/2018","","0","0","0","0","0","0","","","0","","0"),
("13","13","2","0","OPM EP 1","0","1","0","0","","","","","","","","upload/videos/2018/07/4BrIIN8BXGdWm4TKNtTB_03_b799006974203759d21ab2cbad5d3663_video.mp4","OPM_01_720p.mp4","","","","","","","0","2","post","","","","","","","1530630474","7/2018","","0","0","0","0","0","2","","","0","","0"),
("16","16","2","0","OPM EP 3","0","1","0","0","","","","","","","","upload/videos/2018/07/fekSHpHfZGjYNWqZ9Ekk_03_eefcc840024b9d3d84290d898421778f_video.mp4","OPM_03_720p.mp4","","","","","","","0","2","post","","","","","","","1530630637","7/2018","","0","0","0","0","0","0","","","0","","0"),
("17","17","2","0","OPM EP 4","0","1","0","0","","","","","","","","upload/videos/2018/07/IJGmI2HbfAK7h7X3xbFS_03_2cf407482e09a077b889f8e3e69811db_video.mp4","OPM_04_720p.mp4","","","","","","","0","2","post","","","","","","","1530630665","7/2018","","0","0","0","0","0","2","","","0","","0"),
("18","18","4","0","Mantap jiwa????","0","0","0","0","","","","","","","","upload/photos/2018/07/FuKextAhKfa3WTNlSOxs_03_b9f01cfee0e4f3053e2b5c892d38d0dc_image.jpg","unduhan.jpg","","","","","","","0","0","post","","","","","","","1530630773","7/2018","","0","0","0","0","0","0","","","0","","0"),
("19","19","2","0","OPM EP 5","0","1","0","0","","","","","","","","upload/videos/2018/07/EFOC2vT6EEoIKA2bE3AN_03_42bbde68a40e99a3159417a58c959033_video.mp4","OPM_05_720p.mp4","","","","","","","0","2","post","","","","","","","1530631102","7/2018","","0","0","0","0","0","2","","","0","","0"),
("20","20","2","0","","0","0","0","0","","","","","","","","","","","","","","","","0","0","post","","","","","","","1530631353","7/2018","Foto Alay","0","0","0","0","0","0","","","0","","0"),
("21","21","3","0","Jack-U &amp; Skrillex EDM Moombahton","0","0","0","0","","","","","","","","upload/sounds/2018/07/StMvuokUNXcT29gIVGLD_03_2c5ee7e580ceb9f0e2467cc491203758_soundFile.mp3","Big EDM Sounds - EDM Moombahton [Jack Ü_ Diplo_ Skrillex inspired - Kits, Vocal .mp3","","","","","","","0","0","post","","","","","","","1530639224","7/2018","","0","0","0","0","0","0","","","0","","0"),
("22","22","3","0","","0","0","0","0","","","","","","","","upload/photos/2018/07/3XAERUpFgdNvrNpchB4D_03_a9ba42af649b8d590e054a23fdd96c8e_avatar_full.png","","","","","","","","0","0","profile_picture","","","","","","","1530639600","7/2018","","0","0","0","0","0","0","","","0","","0"),
("23","23","1","0","OPM Ova Epsd","0","1","0","0","","","","","","","","upload/videos/2018/07/3vYMNkzLS2uNGc9YTx8l_03_9b0d71617f5de776499a845644fc00a5_video.mp4","OPM_OVA_576p.mp4","","","","","","","0","2","post","","","","","","","1530645798","7/2018","","0","0","0","0","0","1","","","0","","0"),
("24","24","1","0","OPM EP 7","0","1","0","0","","","","","","","","upload/videos/2018/07/zsMndNqX1hUaZ3wZV2pp_03_567fdf79d4aa8325f2276a278581c028_video.mp4","OPM_07_720p.mp4","","","","","","","0","2","post","","","","","","","1530645941","7/2018","","0","0","0","0","0","5","","","0","","0"),
("25","25","1","0","OPM EP SP2","0","1","0","0","","","","","","","","upload/videos/2018/07/rzPghLSFJj5O2CVesBYG_03_276f457b7e9c68a8610c17f0cf597fca_video.mp4","OPM_SP2_720p.mp4","","","","","","","0","2","post","","","","","","","1530647337","7/2018","","0","0","0","0","0","3","","","0","","0"),
("26","26","1","0","OPM EP SP3","0","1","0","0","","","","","","","","upload/videos/2018/07/VhmezAD7LrhUq69OQCt3_03_366622af13a04c23c0bd569558c4f40a_video.mp4","OPM_SP3_720p.mp4","","","","","","","0","2","post","","","","","","","1530647387","7/2018","","0","0","0","0","0","4","","","0","","0"),
("28","28","1","0","Right on Time","0","0","0","0","","","","","","","","upload/sounds/2018/07/VUbXRvroBVXevifJTIXE_04_3306843f38771dc58e5c2b02179264db_soundFile.mp3","8GZDKS8xE4Cs.128.mp3","","","","","","","0","0","post","","","","","","","1530678268","7/2018","","0","0","0","0","0","0","","","0","","0"),
("29","29","1","0","Kaoma lambada","0","0","0","0","","","","","","","","upload/videos/2018/07/DRucJ3ILa8FKvEDjEYog_04_2fce5b1ba07c94519bba7b3baf86093d_video.mp4","Kaoma - Lambada (1989).mp4","","","","","","","0","0","post","","","","","","","1530679767","7/2018","","0","0","0","0","0","15","","","0","","0"),
("30","30","6","0","","0","0","0","0","","","","","","","","upload/photos/2018/07/jl2L4HbcYDNmytEwsFyz_04_2d2fe8064a4eb91d488290b2a4f7fb88_avatar_full.jpg","","","","","","","","0","0","profile_picture","","","","","","","1530692370","7/2018","","0","0","0","0","0","0","","","0","","0"),
("31","31","6","0","Coba untuk tahan tawa, kalau tertawa kalian orang paling pecundang...","0","0","0","0","","","","","","","","upload/videos/2018/07/YHPlZsd4gjdMm6ccNP98_04_d068d918efc122a14e88f334f17816bf_video.mp4","Funny pranks 2017 ● Laughter without limits.mp4","","","","","","","0","0","post","","","","","","","1530702188","7/2018","","0","0","0","0","0","6","","","0","","0"),
("33","33","0","0","Panduan FNAF 6 dengan tips tentang cara bertahan melawan animatronics dan bertahan malam di FNAF 6.   <br>   <br>           FNAF 6   <br>   <br>Freddy Fazbear&#039;s Pizzeria Simulator (FNAF 6) adalah permainan taipan pizzeria yang melibatkan selamat malam dengan menangkis serangan dari animatronics yang menyeramkan. Ini masih Lima Malam di permainan Freddy pada intinya, jadi kelangsungan hidup tergantung pada penggunaan strategi yang tepat. Panduan ini menawarkan beberapa tips untuk bertahan setiap malam di Freddy Fazbear&#039;s Pizzeria Simulator bagi mereka yang sedang berjuang atau yang tidak ingin berurusan dengan ketakutan loncat.   <br>   <br>Jika Anda mampu bertahan setiap malam dan menyelesaikan tugas pizzeria Anda selama seminggu, Anda akan menyelesaikan permainan dengan salah satu dari beberapa akhir FNAF 6. Jika ada sertifikat penutup yang Anda lewatkan, kunjungi panduan kami tentang cara membuka kunci semua akhir di Freddy Fazbear&#039;s Pizzeria Simulator untuk detailnya.   <br>   <br>   <br>Freddy Fazbear&#039;s Pizzeria Simulator - Survival Tips ....  <br>  <br>Jangan Beli Lefty -   <br>  <br>Terlepas dari peringkat harga atau kewajiban, Anda harus menghindari membeli Lefty dengan segala cara jika Anda ingin memastikan Anda bertahan malam di FNAF 6. Lefty tampaknya sangat meningkatkan peluang Anda untuk diserang di Freddy Fazbear&#039;s Pizzeria Simulator, jadi sebaiknya hindari membeli Lefty sama sekali.   <br> <br>Jauhkan Fan Off -  <br> <br>Di Freddy Fazbear&#039;s Pizzeria Simulator, animatronics tertarik pada berbagai suara. Inilah sebabnya mengapa Anda ingin menjaga kipas Anda selama mungkin, karena suara kipas dapat memikat tamu yang tidak diinginkan. Saksikan suhu di sudut kanan bawah dan nyalakan kipas hanya jika terlalu panas. Jika Anda harus menyalakan kipas angin, lakukan saat Anda memiliki tugas yang berjalan untuk meredam kebisingan.   <br>  <br>Hindari Sponsor -   <br>  <br>Jika Anda menerima kesepakatan sponsor, iklan keras akan bermain di layar komputer Anda, menjalankan risiko menarik animatronik ke arah Anda. Meskipun iklan dapat membantu Anda memperoleh lebih banyak uang, itu mungkin tidak sebanding dengan risikonya jika Anda ingin memastikan kelangsungan hidup Anda di FNAF 6.  <br>   <br>Beli Peningkatan -   <br>  <br>Meningkatkan komputer dan printer Anda akan memungkinkan mereka untuk menyelesaikan aktivitas lebih cepat. Semakin cepat tugas selesai, semakin sedikit suara yang dihasilkan, yang akan meningkatkan peluang Anda untuk bertahan hidup di malam hari.   <br>Cara Membela Terhadap Animatronics   <br>Dalam Freddy Fazbear&#039;s Pizzeria Simulator (FNAF 6), salah satu bagian yang paling menegangkan dari gim ini adalah mencoba menyelesaikan tugas pizzeria Anda di malam hari tanpa diserang atau lompatan takut oleh salah satu animatronik. Berikut adalah beberapa tips dan strategi yang dapat Anda gunakan untuk bertahan melawan animatronics dan bertahan setiap malam di Freddy Fazbear&#039;s Pizzeria Simulator.   <br>   <br>   <br>Umpan Mereka dengan Suara   <br>Salah satu cara untuk bertahan melawan animatronics saat menyelesaikan tugas pizzeria di malam hari adalah pada dasarnya tetap selangkah lebih maju dari mereka. Anda memiliki berbagai alat yang Anda inginkan di komputer kerja Anda yang dapat Anda gunakan untuk mengalihkan animatronik dan memantau pergerakan mereka di malam hari. Namun, perlu diingat bahwa mengaktifkan satu hal dapat menetralkan efek dari yang lain, jadi Anda harus menemukan cara untuk mencapai keseimbangan.   <br>   <br>Mulailah dengan memilih tab Motion Detector di layar dan aktifkan pemindai gerakan untuk melihat di mana animatronik berada di ventilasi.   <br>Sekali animatronik telah terdeteksi di salah satu ruangan, alihkan ke tab Audio dan pilih ruang yang berdekatan dari kantor Anda untuk mengalihkan perhatiannya dengan musik dan memancingnya menjauh dari Anda.   <br>Jika lebih dari satu animatronik terdeteksi, putar audio di sisi di mana sebagian besar dari mereka telah terakumulasi dan terus menonton ventilasi udara yang berlawanan untuk menghindari terkejut dari sisi lain.   <br>Saat audio aktif, kembali dan selesaikan tugas berikutnya di daftar Anda. Tugas juga bisa berisik, tetapi jika Anda mengalihkan perhatian makhluk cukup dengan audio lainnya, Anda dapat menunda mereka untuk langsung memburu Anda. Periksa berulang-ulang ventilasi udara dan dengarkan suara-suara aneh.   <br>Jika Anda mendengar animatronik terlalu dekat, matikan semuanya dan tunggu sampai hilang. Setelah Anda merasakan pantai bersih, lanjutkan proses ini sampai semua tugas selesai dan Anda dapat keluar.   <br>   <br>Jauhkan Animatronics Out   <br>Cara lain untuk menghindari disergap oleh animatronik sepanjang malam adalah dengan mencegah mereka memasuki pizzeria sama sekali. Untuk kesempatan yang lebih baik dalam bertahan hidup, Anda dapat memilih untuk membuang setiap animatronik daripada menyelamatkannya, yang mencegah mereka menyerang Anda di restoran pizza. Namun, taktik ini tidak hanya menghalangi Anda untuk menghasilkan lebih banyak uang dari hasil penyelamatan, tetapi juga mencegah Anda mencapai akhir yang baik di FNAF 6 .   <br>   <br>Selain itu, Anda harus menghindari pembelian item yang ditandai ke bawah. Item-item ini menjalankan risiko memiliki animatronik yang tersembunyi di dalamnya, mencoba masuk ke Trojan-horse di pizzeria Anda. Jika Anda ingin pergi tanpa terburu-buru berlari di Freddy Fazbear&#039;s Pizzeria Simulator , maka taktik pencegahan ini adalah taruhan terbaik Anda untuk membela terhadap animatronics di FNAF 6.   <br>   <br>Di sana Anda memilikinya. Jika Anda mengikuti tips dalam panduan ini, Anda harus dapat bertahan setiap malam di Freddy Fazbear&#039;s Pizzeria Simulator. Di antara giliran, pastikan Anda tahu cara menyelesaikan semua mini-game pengetahuan di FNAF 6 juga untuk memastikan Anda mendapatkan sertifikat Lorekeeper.","1","0","0","0","","","","","","","","","","","","","","","","0","0","post","","","","","","","1530718112","7/2018","","0","0","0","0","0","0","","","0","","0"),
("34","34","2","0","Easter Egg GTA V PC dan Console | #[1] V #[2] #[3] #[4] Egg #[4] Egg GTA V #[4] Egg GTA ","0","0","0","0","","","","","","","","","","","","","","","","0","0","post","","","","","","","1530724916","7/2018","","0","1","0","0","1","0","","","0","","0"),
("35","35","1","0","Easter Egg GTA V PC dan Console | #[1] V #[2] #[3] #[4] Egg #[4] Egg GTA V #[4] Egg GTA ","0","0","0","0","","","","","","","","","","","","","","","","0","0","post","","","","","","","1530726523","7/2018","","0","0","0","0","1","0","","","2","http://192.168.43.181/at-social/post/34","34"),
("36","36","2","0","Cara mempelajari bahasa spanol | #[5] #[6] #[7] #[6] spanyol ","0","0","0","0","","","","","","","","","","","","","","","","0","0","post","","","","","","","1530729232","7/2018","","0","1","0","0","2","0","","","0","","0"),
("38","38","2","0","Lambada Japanese version","0","0","0","0","","","","","","","","upload/videos/2018/07/lINak7Yw1iRJLo2ZTNZu_05_b936994ec1e2fe9cc8774c2c35e3a4d3_video.mp4","Lambada Japanese version.mp4","","","","","","","0","0","post","","","","","","","1530766952","7/2018","","0","0","0","0","0","5","","","0","","0"),
("39","39","2","0","Lambada Spanish Version","0","0","0","0","","","","","","","","upload/videos/2018/07/vvHWINlGEeMxlYVvyjzy_05_339635f1aeae5f41f096110a485a1f0d_video.mp4","Llorando se fué - Lambada Spanish version.flv.mp4","","","","","","","0","0","post","","","","","","","1530767153","7/2018","","0","0","0","0","0","6","","","0","","0"),
("40","40","2","0","Lambada Salsaloco de cuba","0","0","0","0","","","","","","","","upload/videos/2018/07/3VQXE2RVzdvDToENe96d_05_25bfa6f0b578e5b7fafed7aca1abccd5_video.mp4","Lambada - Salsaloco de Cuba - Dance Song &amp;amp; Group Dance Music.mp4","","","","","","","0","0","post","","","","","","","1530767501","7/2018","","0","0","0","0","0","5","","","0","","0"),
("41","41","1","0","Lambada dance Remixe","0","0","0","0","","","","","","","","upload/videos/2018/07/DsWSxhlFcKWyzVGkAMJe_13_1b1019e46e03fd7333f7eca87731cde6_video.mp4","Lambada dance Remix 2017.mp4","","","","","","","0","0","post","","","","","","","1531498782","7/2018","","0","0","0","0","0","7","","","0","","0"),
("42","42","7","0","","0","0","0","0","","","","","","","","upload/photos/2018/08/dgdOuiHlftKJBeK3xLWj_02_2182df8eeab833eaaa97fb0c65cc7f0b_avatar_full.png","","","","","","","","0","0","profile_picture","","","","","","","1533205686","8/2018","","0","0","0","0","0","0","","","0","","0"),
("43","43","7","0","Test.....","0","0","0","0","","","","","","","","","","","","","","","","0","0","post","","","","","","","1533205726","8/2018","","0","0","0","0","0","0","","","0","","0"),
("44","44","2","0","Cara Membuat BackDoor Dengan Weevely | #[8] #[8]-Tutorial ","0","0","0","0","","","","","","","","","","","","","","","","0","0","post","","","","","","","1534697566","8/2018","","0","1","0","0","3","0","","","0","","0"),
("47","47","2","0","430531","0","0","0","0","","","","","","","","","","","","","","","","0","0","post","","","","","","","1535444698","8/2018","","0","0","0","0","0","0","","","0","","0"),
("48","48","2","0","Nyan-Cat-HardCore","0","0","0","0","","","","","","","","upload/sounds/2018/08/IN1UMmVZYbRRUdUBdyAd_29_886eceecce20fd2858537c03840883bb_soundFile.mp3","nyan-cat hardcore.mp3","","","","","","","0","0","post","","","","","","","1535513218","8/2018","","0","1","0","0","0","0","","","0","","0"),
("49","49","1","0","","0","0","0","0","","","","","","","","upload/photos/2018/08/TTeUhvykoYdERoVpr1pW_29_2e22c61ae4ffa3eb69b0d1c49728f884_cover_full.jpg","","","","","","","","0","0","profile_picture_deleted","","","","","","","1535565065","8/2018","","0","0","0","0","0","0","","","0","","0");

-- ---------------------------------------------------------
--
-- Table structure for table : `wo_products`
--
-- ---------------------------------------------------------

CREATE TABLE `wo_products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8_unicode_ci,
  `category` int(11) NOT NULL DEFAULT '0',
  `price` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0.00',
  `location` text COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '0',
  `type` enum('0','1') COLLATE utf8_unicode_ci NOT NULL,
  `currency` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'USD',
  `time` int(11) NOT NULL DEFAULT '0',
  `active` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `category` (`category`),
  KEY `price` (`price`),
  KEY `status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ---------------------------------------------------------
--
-- Table structure for table : `wo_products_media`
--
-- ---------------------------------------------------------

CREATE TABLE `wo_products_media` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL DEFAULT '0',
  `image` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ---------------------------------------------------------
--
-- Table structure for table : `wo_profilefields`
--
-- ---------------------------------------------------------

CREATE TABLE `wo_profilefields` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8_unicode_ci,
  `type` text COLLATE utf8_unicode_ci,
  `length` int(11) NOT NULL DEFAULT '0',
  `placement` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'profile',
  `registration_page` int(11) NOT NULL DEFAULT '0',
  `profile_page` int(11) NOT NULL DEFAULT '0',
  `select_type` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'none',
  `active` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `registration_page` (`registration_page`),
  KEY `active` (`active`),
  KEY `profile_page` (`profile_page`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `wo_profilefields`
--

INSERT INTO wo_profilefields VALUES
("1","Kemampuan anda e.g: Komputer, programming, Dll","Beritahu kami tentang pengalaman anda dan kemampuan anda","textarea","32","profile","1","1","none","1");

-- ---------------------------------------------------------
--
-- Table structure for table : `wo_recentsearches`
--
-- ---------------------------------------------------------

CREATE TABLE `wo_recentsearches` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `search_id` int(11) NOT NULL DEFAULT '0',
  `search_type` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`,`search_id`),
  KEY `search_type` (`search_type`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wo_recentsearches`
--

INSERT INTO wo_recentsearches VALUES
("3","5","1","user"),
("8","3","1","user"),
("9","2","1","group"),
("10","1","6","user"),
("12","6","3","user"),
("14","2","2","user"),
("15","2","3","user"),
("16","2","1","user");

-- ---------------------------------------------------------
--
-- Table structure for table : `wo_relationship`
--
-- ---------------------------------------------------------

CREATE TABLE `wo_relationship` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `from_id` int(11) NOT NULL DEFAULT '0',
  `to_id` int(11) NOT NULL DEFAULT '0',
  `relationship` int(11) NOT NULL DEFAULT '0',
  `active` enum('0','1') NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `from_id` (`from_id`),
  KEY `relationship` (`relationship`),
  KEY `active` (`active`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ---------------------------------------------------------
--
-- Table structure for table : `wo_reports`
--
-- ---------------------------------------------------------

CREATE TABLE `wo_reports` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `post_id` int(11) NOT NULL DEFAULT '0',
  `profile_id` int(11) NOT NULL DEFAULT '0',
  `page_id` int(15) NOT NULL DEFAULT '0',
  `group_id` int(15) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `text` text,
  `seen` int(11) NOT NULL DEFAULT '0',
  `time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `post_id` (`post_id`),
  KEY `seen` (`seen`),
  KEY `profile_id` (`profile_id`),
  KEY `page_id` (`page_id`),
  KEY `group_id` (`group_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ---------------------------------------------------------
--
-- Table structure for table : `wo_savedposts`
--
-- ---------------------------------------------------------

CREATE TABLE `wo_savedposts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `post_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `post_id` (`post_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wo_savedposts`
--

INSERT INTO wo_savedposts VALUES
("1","1","33"),
("2","2","2");

-- ---------------------------------------------------------
--
-- Table structure for table : `wo_terms`
--
-- ---------------------------------------------------------

CREATE TABLE `wo_terms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(32) NOT NULL DEFAULT '',
  `text` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wo_terms`
--

INSERT INTO wo_terms VALUES
("1","terms_of_use","<h4>Syarat penggunaan AT-Social.</h4>     \n\nSaya memberikan sebuah isyarat bahwa menggunakan aplikasi sosial adalah sebuah hal yang menyenangkan dan membuat bahagia.          <br><br>          <h4>Pelaanggaran aplikasi</h4>namun apa yang terjadi jika aplikasi ini di salah gunakan, itu akan sangat beresiko sekali kepada anda sendiri yang menyalahgunakan aplikasi ini jika hal itu terjadi akan sangat merugikan orang lain dan juga pihak penyalahguna itu sendiri."),
("2","privacy_policy"," <h4>Privasi kami</h4>          Kami mengamankan beberapa data penting para pengguna AT-Social dan menjadikan suatu hal berharga bagi kami, data yang di simpan di AT-Sosial akan kami cek terlebih dahulu untuk tindak lanjutan yang akan kami berikan kepada data anda semua.          <br><br>          <h4>Privasi pihak ke tiga dan ke dua</h4>         Kami akan selalu meneliti data-data yang tersimpan di sini dan sebagaimana menjadikan suatu hal yang sensitiv hal ini dikarenakan jika terjadi kesalahan data atau hilangnya data itu akan menjadi tanggung jawab kami, (terkecuali jika data yang anda simpan itu hilang karena di hapus oleh anda sendiri) yang mana kami akan meneliti sampai tuntas."),
("3","about","<h4>Tentang AT-Social.</h4>   <br><br>       AT-Social di dirikan di Indonesia-Kab.Pemalang-Desa Saradan, dimana itu juga tempat lahir Pengembang yaitu Anjas Amar Pradana, AT-Social Di temukan dan di buat oleh Anjas yang mana juga pendiri perusahaan ANJAS-TECH-MEDIA.Inc yaitu perusahaan induk dari perusahaan AT-Social.          <br><br>          <h4>Kontak kami</h4>  <br><br>       Jika anda mempunyai masalah terhadap apa yang ada pada AT-Social, Anda bisa memberikan atau memberitahu keluhan anda kepada kami di Email kami =\"anjastech01@gmail.com\"  <br> Atau Telpon kami =\"085741004480\"");

-- ---------------------------------------------------------
--
-- Table structure for table : `wo_tokens`
--
-- ---------------------------------------------------------

CREATE TABLE `wo_tokens` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `app_id` int(11) NOT NULL DEFAULT '0',
  `token` varchar(200) NOT NULL DEFAULT '',
  `time` int(32) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `user_id_2` (`user_id`),
  KEY `app_id` (`app_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ---------------------------------------------------------
--
-- Table structure for table : `wo_userads`
--
-- ---------------------------------------------------------

CREATE TABLE `wo_userads` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `url` varchar(3000) CHARACTER SET utf8mb4 NOT NULL DEFAULT '',
  `headline` varchar(200) NOT NULL DEFAULT '',
  `description` text,
  `location` varchar(1000) NOT NULL DEFAULT 'us',
  `audience` longtext,
  `ad_media` varchar(3000) CHARACTER SET utf8mb4 NOT NULL DEFAULT '',
  `gender` varchar(15) CHARACTER SET utf8 COLLATE utf8_danish_ci NOT NULL DEFAULT 'all',
  `bidding` varchar(15) CHARACTER SET utf8mb4 NOT NULL DEFAULT '',
  `clicks` int(15) NOT NULL DEFAULT '0',
  `views` int(15) NOT NULL DEFAULT '0',
  `posted` varchar(15) NOT NULL DEFAULT '',
  `status` int(1) NOT NULL DEFAULT '1',
  `appears` varchar(10) NOT NULL DEFAULT 'post',
  `user_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `appears` (`appears`),
  KEY `user_id` (`user_id`),
  KEY `location` (`location`(255)),
  KEY `gender` (`gender`),
  KEY `status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ---------------------------------------------------------
--
-- Table structure for table : `wo_userfields`
--
-- ---------------------------------------------------------

CREATE TABLE `wo_userfields` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `fid_3` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `fid_1` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `wo_userfields`
--

INSERT INTO wo_userfields VALUES
("1","2","",""),
("2","3","",""),
("3","4","",""),
("4","5","","Lol"),
("5","6","","Hellop"),
("6","7","","Program sederhana"),
("7","8","","komputer");

-- ---------------------------------------------------------
--
-- Table structure for table : `wo_users`
--
-- ---------------------------------------------------------

CREATE TABLE `wo_users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(32) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `password` varchar(50) NOT NULL DEFAULT '',
  `first_name` varchar(60) NOT NULL DEFAULT '',
  `last_name` varchar(32) NOT NULL DEFAULT '',
  `avatar` varchar(100) NOT NULL DEFAULT 'upload/photos/d-avatar.jpg',
  `cover` varchar(100) NOT NULL DEFAULT 'upload/photos/d-cover.jpg',
  `background_image` varchar(100) NOT NULL DEFAULT '',
  `background_image_status` enum('0','1') NOT NULL DEFAULT '0',
  `relationship_id` int(11) NOT NULL DEFAULT '0',
  `address` varchar(100) NOT NULL DEFAULT '',
  `working` varchar(32) NOT NULL DEFAULT '',
  `working_link` varchar(32) NOT NULL DEFAULT '',
  `about` text,
  `school` varchar(32) NOT NULL DEFAULT '',
  `gender` varchar(32) NOT NULL DEFAULT 'male',
  `birthday` varchar(50) NOT NULL DEFAULT '0000-00-00',
  `country_id` int(11) NOT NULL DEFAULT '0',
  `website` varchar(50) NOT NULL DEFAULT '',
  `facebook` varchar(50) NOT NULL DEFAULT '',
  `google` varchar(50) NOT NULL DEFAULT '',
  `twitter` varchar(50) NOT NULL DEFAULT '',
  `linkedin` varchar(32) NOT NULL DEFAULT '',
  `youtube` varchar(100) NOT NULL DEFAULT '',
  `vk` varchar(32) NOT NULL DEFAULT '',
  `instagram` varchar(32) NOT NULL DEFAULT '',
  `language` varchar(31) NOT NULL DEFAULT 'english',
  `email_code` varchar(32) NOT NULL DEFAULT '',
  `src` varchar(32) NOT NULL DEFAULT 'Undefined',
  `ip_address` varchar(32) DEFAULT '',
  `follow_privacy` enum('1','0') NOT NULL DEFAULT '0',
  `friend_privacy` enum('0','1','2','3') NOT NULL DEFAULT '0',
  `post_privacy` varchar(255) NOT NULL DEFAULT 'ifollow',
  `message_privacy` enum('1','0') NOT NULL DEFAULT '0',
  `confirm_followers` enum('1','0') NOT NULL DEFAULT '0',
  `show_activities_privacy` enum('0','1') NOT NULL DEFAULT '1',
  `birth_privacy` enum('0','1','2') NOT NULL DEFAULT '0',
  `visit_privacy` enum('0','1') NOT NULL DEFAULT '0',
  `verified` enum('1','0') NOT NULL DEFAULT '0',
  `lastseen` int(32) NOT NULL DEFAULT '0',
  `showlastseen` enum('1','0') NOT NULL DEFAULT '1',
  `emailNotification` enum('1','0') NOT NULL DEFAULT '1',
  `e_liked` enum('0','1') NOT NULL DEFAULT '1',
  `e_wondered` enum('0','1') NOT NULL DEFAULT '1',
  `e_shared` enum('0','1') NOT NULL DEFAULT '1',
  `e_followed` enum('0','1') NOT NULL DEFAULT '1',
  `e_commented` enum('0','1') NOT NULL DEFAULT '1',
  `e_visited` enum('0','1') NOT NULL DEFAULT '1',
  `e_liked_page` enum('0','1') NOT NULL DEFAULT '1',
  `e_mentioned` enum('0','1') NOT NULL DEFAULT '1',
  `e_joined_group` enum('0','1') NOT NULL DEFAULT '1',
  `e_accepted` enum('0','1') NOT NULL DEFAULT '1',
  `e_profile_wall_post` enum('0','1') NOT NULL DEFAULT '1',
  `e_sentme_msg` enum('0','1') NOT NULL DEFAULT '0',
  `e_last_notif` varchar(50) NOT NULL DEFAULT '0',
  `status` enum('1','0') NOT NULL DEFAULT '0',
  `active` enum('0','1','2') NOT NULL DEFAULT '0',
  `admin` enum('0','1','2') NOT NULL DEFAULT '0',
  `type` varchar(11) NOT NULL DEFAULT 'user',
  `registered` varchar(32) NOT NULL DEFAULT '0/0000',
  `start_up` enum('0','1') NOT NULL DEFAULT '0',
  `start_up_info` enum('0','1') NOT NULL DEFAULT '0',
  `startup_follow` enum('0','1') NOT NULL DEFAULT '0',
  `startup_image` enum('0','1') NOT NULL DEFAULT '0',
  `last_email_sent` int(32) NOT NULL DEFAULT '0',
  `phone_number` varchar(32) NOT NULL DEFAULT '',
  `sms_code` int(11) NOT NULL DEFAULT '0',
  `is_pro` enum('0','1') NOT NULL DEFAULT '0',
  `pro_time` int(11) NOT NULL DEFAULT '0',
  `pro_type` enum('0','1','2','3','4') NOT NULL DEFAULT '0',
  `joined` int(11) NOT NULL DEFAULT '0',
  `css_file` varchar(100) NOT NULL DEFAULT '',
  `timezone` varchar(50) NOT NULL DEFAULT '',
  `referrer` int(11) NOT NULL DEFAULT '0',
  `balance` varchar(100) NOT NULL DEFAULT '0',
  `paypal_email` varchar(100) NOT NULL DEFAULT '',
  `notifications_sound` enum('0','1') NOT NULL DEFAULT '0',
  `order_posts_by` enum('0','1') NOT NULL DEFAULT '1',
  `social_login` enum('0','1') NOT NULL DEFAULT '0',
  `device_id` varchar(50) NOT NULL DEFAULT '',
  `web_device_id` varchar(100) NOT NULL DEFAULT '',
  `wallet` varchar(20) CHARACTER SET utf8mb4 NOT NULL DEFAULT '0.00',
  `lat` varchar(200) NOT NULL DEFAULT '0',
  `lng` varchar(200) NOT NULL DEFAULT '0',
  `last_location_update` varchar(30) NOT NULL DEFAULT '0',
  `share_my_location` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`),
  KEY `active` (`active`),
  KEY `admin` (`admin`),
  KEY `src` (`src`),
  KEY `gender` (`gender`),
  KEY `avatar` (`avatar`),
  KEY `first_name` (`first_name`),
  KEY `last_name` (`last_name`),
  KEY `registered` (`registered`),
  KEY `joined` (`joined`),
  KEY `phone_number` (`phone_number`) USING BTREE,
  KEY `referrer` (`referrer`),
  KEY `wallet` (`wallet`),
  KEY `friend_privacy` (`friend_privacy`),
  KEY `lat` (`lat`),
  KEY `lng` (`lng`),
  KEY `order1` (`username`,`user_id`),
  KEY `order2` (`email`,`user_id`),
  KEY `order3` (`lastseen`,`user_id`),
  KEY `order4` (`active`,`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wo_users`
--

INSERT INTO wo_users VALUES
("1","anjastechmedia","atsocial@anjastechmedia.com","f865b53623b121fd34ee5426c792e5c33af8c227","Admin","AT-Social","upload/photos/d-avatar.jpg","upload/photos/2018/08/TTeUhvykoYdERoVpr1pW_29_2e22c61ae4ffa3eb69b0d1c49728f884_cover.jpg","","0","0","Indonesia","Anjas Tech Media","https://Anjastechmedia.inc","I Am is Admin in there","None","male","0000-00-00","100","https://Anjastechmediathink.net","","","","","","","","indonesia","","Undefined","192.168.43.181","0","0","ifollow","0","1","1","0","0","1","1535565788","1","1","1","1","1","1","1","1","1","1","1","1","1","0","0","0","1","1","user","00/0000","1","1","1","1","0","","0","1","1530598631","4","1530524770","","","0","0","","0","1","0","","","1.100","-7.5360639","112.2384017","1535355440","1"),
("2","anjas123","anjas@mail.com","bd66b054ce305fa2ef9e4080b021f2f95121e82f","Anjas","Amar Pradana","upload/photos/2018/07/8uCaoyaKR33LhsJePQK6_03_8b60acdc709e3bf235afc73cda1f1290_avatar.jpg","upload/photos/2018/07/UMX2LD8UtNeSNK4EfSOZ_03_99c26c37d5aa02156ac3b8055974e0c5_cover.jpg","","0","0","Indinesia","Anjas tech media","Https://web.anjastechmedia.inc","Saya adalah seorang pekerja yang berprofesi sebagai co designer programmer di AT-Social","Udinus Semarang","male","1999-9-19","100","Https://web.anjastechdesign.net","","","","","","","","indonesia","59c14704c4371ed88082758880e153b2","site","192.168.43.1","0","1","nobody","0","0","1","0","0","1","1535564918","1","1","1","1","1","1","1","1","1","1","1","1","1","1","0","0","1","2","user","7/2018","0","0","0","1","0","","0","1","1530621603","4","1530596470","","","0","0","","0","1","0","","","0.00","-6.9790715","110.4078026","1534334465","1"),
("3","alyan123","ayan@mail.com","803726e7448c1f5147de87ad5c2140b617a2ddae","Alyan","Talena","upload/photos/2018/07/3XAERUpFgdNvrNpchB4D_03_a9ba42af649b8d590e054a23fdd96c8e_avatar.png","upload/photos/d-cover.jpg","","0","1","United States","","","","Anjas Tech University","female","0000-00-00","0","","","","","","","","","indonesia","33f8339616eae2ddf94aff93edd67d86","site","::1","0","0","ifollow","0","0","1","0","0","0","1535553259","1","1","1","1","1","1","1","1","1","1","1","1","1","0","0","0","1","0","user","7/2018","0","0","0","1","0","","0","0","0","0","1530618867","","","0","0","","0","1","0","","","0.00","0","0","0","1"),
("4","Faris","Faris@mail.com","89eaaf06212c4a51a0543af9aabe42a14814d3e1","Faris","HR","upload/photos/2018/07/vCIkBjWFECSWfDZvODBa_03_e0b6bbda0e2791e41827b0ab07a7f5e5_avatar.jpg","upload/photos/d-cover.jpg","","0","0","","","","","","male","1980-9-23","100","","","","","","","","","indonesia","5c1a58227fbd101e7bd31251ceb7b6b6","site","192.168.43.239","0","0","ifollow","0","0","1","0","0","0","1530631521","1","1","1","1","1","1","1","1","1","1","1","1","1","0","0","0","1","0","user","7/2018","1","1","1","1","0","","0","0","0","0","1530626399","","","0","0","","0","1","0","","","0.00","0","0","0","1"),
("5","alinzah","alinzah@mail.com","de515ae4f0849a0646666fb22bdee44e5186054f","Altelina","merdosa","upload/photos/d-avatar.jpg","upload/photos/d-cover.jpg","","0","0","","","","","","female","1999-9-19","199","","","","","","","","","indonesia","b9ad905c1887e479200be058732dd0f5","site","192.168.43.1","0","0","ifollow","0","0","1","0","0","0","1530681791","1","1","1","1","1","1","1","1","1","1","1","1","1","0","0","0","1","0","user","7/2018","1","1","1","1","0","","0","0","0","0","1530673706","","","0","0","","0","1","0","","","0.00","0","0","0","1"),
("6","franklin","Franklin@mail.com","05e0a77231c7b513930eb430274d740ca9e10ec2","Franklin","El diablo","upload/photos/2018/07/jl2L4HbcYDNmytEwsFyz_04_2d2fe8064a4eb91d488290b2a4f7fb88_avatar.jpg","upload/photos/d-cover.jpg","","0","0","United States","","","","","male","1989-8-10","1","","","","","","","","","indonesia","9c1f33ca0b1f1b1055c3144d69853927","site","192.168.43.1","0","0","ifollow","0","0","1","0","0","1","1532946468","1","1","1","1","1","1","1","1","1","1","1","1","1","0","0","0","1","0","user","7/2018","1","1","1","1","0","","0","1","1530716112","2","1530687104","","","0","0","","0","1","0","","","0.00","0","0","0","1"),
("7","Muh_Rofi","muhammad.rofi72@yahoo.co.id","d606784ef83b2622c4e41e565bd81a9422ad23bc","Muhammad","Rofi","upload/photos/2018/08/dgdOuiHlftKJBeK3xLWj_02_2182df8eeab833eaaa97fb0c65cc7f0b_avatar.png","upload/photos/d-cover.jpg","","0","0","","","","","","male","1997-11-6","100","","","","","","","","","indonesia","79206f52b504ee077a7ce7260bcc05e3","site","192.168.88.6","0","0","ifollow","0","0","1","0","0","0","1533205750","1","1","1","1","1","1","1","1","1","1","1","1","1","0","0","0","1","0","user","8/2018","1","1","1","1","0","","0","0","0","0","1533205667","","","0","0","","0","1","0","","","0.00","0","0","0","1");

-- ---------------------------------------------------------
--
-- Table structure for table : `wo_userschat`
--
-- ---------------------------------------------------------

CREATE TABLE `wo_userschat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `conversation_user_id` int(11) NOT NULL DEFAULT '0',
  `time` int(11) NOT NULL DEFAULT '0',
  `color` varchar(100) CHARACTER SET utf8 NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `conversation_user_id` (`conversation_user_id`),
  KEY `time` (`time`),
  KEY `order1` (`user_id`,`id`),
  KEY `order2` (`user_id`,`id`),
  KEY `order3` (`conversation_user_id`,`id`),
  KEY `order4` (`conversation_user_id`,`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wo_userschat`
--

INSERT INTO wo_userschat VALUES
("1","1","2","1530712902","#51bcbc"),
("2","2","1","1530712902","#51bcbc"),
("3","2","4","1530630733","#56c4c5"),
("4","4","2","1530630733","#56c4c5"),
("5","5","1","1530681739","#5462a5"),
("6","1","5","1530681739","#5462a5"),
("7","2","5","1530683411",""),
("8","5","2","1530683411",""),
("9","2","6","1530690921","#f2812b"),
("10","6","2","1530690921","#f2812b"),
("11","2","3","1530704259","#56c4c5"),
("12","3","2","1530704259","#56c4c5"),
("13","6","3","1530706361","#008484"),
("14","3","6","1530706361","#008484");

-- ---------------------------------------------------------
--
-- Table structure for table : `wo_userstory`
--
-- ---------------------------------------------------------

CREATE TABLE `wo_userstory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(50) NOT NULL DEFAULT '0',
  `title` varchar(100) NOT NULL DEFAULT '',
  `description` varchar(300) NOT NULL DEFAULT '',
  `posted` varchar(50) NOT NULL DEFAULT '',
  `expire` date DEFAULT NULL,
  `thumbnail` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `expires` (`expire`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ---------------------------------------------------------
--
-- Table structure for table : `wo_userstorymedia`
--
-- ---------------------------------------------------------

CREATE TABLE `wo_userstorymedia` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `story_id` int(30) NOT NULL DEFAULT '0',
  `type` varchar(30) NOT NULL DEFAULT '',
  `filename` text,
  `expire` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `expire` (`expire`),
  KEY `story_id` (`story_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ---------------------------------------------------------
--
-- Table structure for table : `wo_verification_requests`
--
-- ---------------------------------------------------------

CREATE TABLE `wo_verification_requests` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `page_id` int(11) NOT NULL DEFAULT '0',
  `message` text CHARACTER SET utf8,
  `user_name` varchar(150) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `passport` varchar(3000) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `photo` varchar(3000) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `type` varchar(32) NOT NULL DEFAULT '',
  `seen` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `page_id` (`page_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wo_verification_requests`
--

INSERT INTO wo_verification_requests VALUES
("1","3","0","Mohon di verifikasi donk mas Admin...","AlyanTalena","upload/photos/2018/07/7ZdmcYhIsOKkeZCRTOkZ_03_b3542812400d407d14cb9e004a9079fb_image.png","upload/photos/2018/07/9AV59zqYGFiQtZOhsIZ3_03_b3542812400d407d14cb9e004a9079fb_image.png","User","0");

-- ---------------------------------------------------------
--
-- Table structure for table : `wo_videocalles`
--
-- ---------------------------------------------------------

CREATE TABLE `wo_videocalles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `access_token` text,
  `access_token_2` text,
  `from_id` int(11) NOT NULL DEFAULT '0',
  `to_id` int(11) NOT NULL DEFAULT '0',
  `active` int(11) NOT NULL DEFAULT '0',
  `called` int(11) NOT NULL DEFAULT '0',
  `time` int(11) NOT NULL DEFAULT '0',
  `declined` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `to_id` (`to_id`),
  KEY `from_id` (`from_id`),
  KEY `called` (`called`),
  KEY `declined` (`declined`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ---------------------------------------------------------
--
-- Table structure for table : `wo_votes`
--
-- ---------------------------------------------------------

CREATE TABLE `wo_votes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `post_id` int(11) NOT NULL DEFAULT '0',
  `option_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `post_id` (`post_id`),
  KEY `option_id` (`option_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wo_votes`
--

INSERT INTO wo_votes VALUES
("1","2","8","3"),
("2","1","8","3"),
("3","3","8","2");

-- ---------------------------------------------------------
--
-- Table structure for table : `wo_wonders`
--
-- ---------------------------------------------------------

CREATE TABLE `wo_wonders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `post_id` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `post_id` (`post_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;