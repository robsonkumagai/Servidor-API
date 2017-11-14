-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: servidorapi
-- ------------------------------------------------------
-- Server version	5.7.19-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2016_06_01_000001_create_oauth_auth_codes_table',2),(4,'2016_06_01_000002_create_oauth_access_tokens_table',2),(5,'2016_06_01_000003_create_oauth_refresh_tokens_table',2),(6,'2016_06_01_000004_create_oauth_clients_table',2),(7,'2016_06_01_000005_create_oauth_personal_access_clients_table',2);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_access_tokens`
--

DROP TABLE IF EXISTS `oauth_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_access_tokens`
--

LOCK TABLES `oauth_access_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_access_tokens` DISABLE KEYS */;
INSERT INTO `oauth_access_tokens` VALUES ('049b0cf31c8be17401d11799da07d7d8230b7424c47db936f59ffe424e82ee62357cd6ce2f264037',17,1,'MyApp','[]',0,'2017-11-13 19:49:09','2017-11-13 19:49:09','2018-11-13 17:49:09'),('04fb151f38ee392561b532aa2056cbd97d24aa01d5926770ab496bafbb96f6540143489791898f08',3,1,'MyApp','[]',0,'2017-11-14 00:26:05','2017-11-14 00:26:05','2018-11-13 22:26:05'),('058fe5493001b45144c8ffc0fb782d2555ace208c028f8f47de09e00a57ded4c88bd0b739f5d677f',23,1,'MyApp','[]',0,'2017-11-14 00:30:07','2017-11-14 00:30:07','2018-11-13 22:30:07'),('09e3e2e6c5410f6323b798cf73f02d82f9348040fd6f9b8427010dde8edcfc9e5c9755edf118b91a',27,1,'MyApp','[]',0,'2017-11-10 19:07:29','2017-11-10 19:07:29','2018-11-10 17:07:29'),('0bc487e8b25109ddbad294f739c7c51ea7b1929dbaae6d337ac5e1949c7b607c14d020acdd98ceb3',4,1,'MyApp','[]',0,'2017-11-08 21:39:29','2017-11-08 21:39:29','2018-11-08 19:39:29'),('0ecc66338b0b48477d1ba5e3384a5d4939401891feb87cbbb8dc3c1437d4f9d9b8d08c3a14e68056',5,1,'MyApp','[]',0,'2017-11-13 19:14:40','2017-11-13 19:14:40','2018-11-13 17:14:40'),('11c56ea6ad89c37a9feec2965c4c7f30645ff5788f21a896fc4bec03c9631e8f95e369db4af6c9ef',2,1,'MyApp','[]',0,'2017-11-08 22:51:30','2017-11-08 22:51:30','2018-11-08 20:51:30'),('1293da4299ddfdcebec6398db1440f238428c3b3772c2f43c07729f9ae32f5b2cc88264b00b2bf14',23,1,'MyApp','[]',0,'2017-11-14 00:29:49','2017-11-14 00:29:49','2018-11-13 22:29:49'),('13c0109c9200838c9e6fa9c1e782cdfb8fe15432037da5e4d3b29b7c7c619c3c1956f02d10691dd0',25,1,'MyApp','[]',0,'2017-11-10 18:33:51','2017-11-10 18:33:51','2018-11-10 16:33:51'),('17d27cd49f1c5ecfd80fdec1605ecb508a8c671d4b79709842fa72f905b6bdb714a8ab74dbd0364b',1,1,'MyApp','[]',0,'2017-11-10 19:27:19','2017-11-10 19:27:19','2018-11-10 17:27:19'),('20edfe70cc17529fadf75dca0bac0fc1fbb6de2575d97c345629f8ff85959d649c9065836891d62a',2,1,'MyApp','[]',0,'2017-11-08 23:15:10','2017-11-08 23:15:10','2018-11-08 21:15:10'),('210d429c124c5e1b4550e70dded7871e2fada9f3a5a594beca1830f6f4d35e7cab8e0dbe85b9a906',2,1,'MyApp','[]',0,'2017-11-09 00:08:42','2017-11-09 00:08:42','2018-11-08 22:08:42'),('23d6cecaf8c9f72fa6b97a95b35610220219931afde22d1f6554f7da6a126a9877ea09b9cbbf59a0',2,1,'MyApp','[]',0,'2017-11-08 22:47:07','2017-11-08 22:47:07','2018-11-08 20:47:07'),('2402403a2d4c95353fbb81bf68a981ea537364fbc28af772a56fc0c0515dcef05262ecf9442588f2',2,1,'MyApp','[]',0,'2017-11-10 18:30:55','2017-11-10 18:30:55','2018-11-10 16:30:55'),('24c4fb5aaabae8bf304a1e35442fa4f8d03000211c6759a9f61334f94a8fe0d1686632876eb230c3',3,1,'MyApp','[]',0,'2017-11-13 20:55:24','2017-11-13 20:55:24','2018-11-13 18:55:24'),('25271ec5cc6dc5282d577286d436bff20e7b7cb73188dce60ecefca2609508f8883a8c00866d0ef6',2,1,'MyApp','[]',0,'2017-11-10 18:54:31','2017-11-10 18:54:31','2018-11-10 16:54:31'),('264b6bb72eae3a9b50cb230e630b534536300c7428e211b126b5f3ec80626a7f70269daa8ecac672',3,1,'MyApp','[]',0,'2017-11-08 21:18:34','2017-11-08 21:18:34','2018-11-08 19:18:34'),('2afff29b4f56bf900cf1b3a25f8212d9de6ef796b52b14c98b5b52ae18d46aac8b003d4e91d86e2f',19,1,'MyApp','[]',0,'2017-11-13 20:00:37','2017-11-13 20:00:37','2018-11-13 18:00:37'),('2b95768cacb0e1afcd4c56aa5d7c992bacb0e5c4a5443b30475a50f3109c6ec443ecbf6cbeb3be88',2,1,'MyApp','[]',0,'2017-11-08 23:14:51','2017-11-08 23:14:51','2018-11-08 21:14:51'),('3122330a424bd2fae5c0f43d8b03a01b22bae40bc335a5f0e07948eeebdca98151bd17bcdacde01c',18,1,'MyApp','[]',0,'2017-11-13 19:52:49','2017-11-13 19:52:49','2018-11-13 17:52:49'),('33df9c391d9c3a077badec27aca3a1c0ea920f7e09051245e84d11ed0eeb73c6babc6b6e87aacbe0',17,1,'MyApp','[]',0,'2017-11-13 19:49:22','2017-11-13 19:49:22','2018-11-13 17:49:22'),('35533376c5443abeef93ba7ee6b0af1a061bd66f5290c088e47a651f9f93a416fd756726403672ce',2,1,'MyApp','[]',0,'2017-11-08 22:49:49','2017-11-08 22:49:49','2018-11-08 20:49:49'),('365a5b7090fca4622bb3ea1b22cc69019fb4a19acb2db4471f19771717067be56d4b84bdac3ad2dc',2,1,'MyApp','[]',0,'2017-11-08 23:28:42','2017-11-08 23:28:42','2018-11-08 21:28:42'),('369bbd4d3904fcc29c4d56bad4bb111ef592be0e28e358780018eca27373969938c3e09fbe44972e',4,1,'MyApp','[]',0,'2017-11-13 19:10:21','2017-11-13 19:10:21','2018-11-13 17:10:21'),('371d4afc156d757d7925f8ae209998094b6f1c91107819b1a4b318825f94f9c9ecfe6a843dd320dc',2,1,'MyApp','[]',0,'2017-11-09 00:12:02','2017-11-09 00:12:02','2018-11-08 22:12:02'),('39a231657a8b5287e6dffb4a3fae55b1abed3120629828fa3b8b943f2d4413830dac6d89e06695dc',4,1,'MyApp','[]',0,'2017-11-13 19:56:54','2017-11-13 19:56:54','2018-11-13 17:56:54'),('3ed0f3088040d2e971d61f56b9691dd4e004ba1644bb4406cc7d89fad1add1371aef3eebffdf25c9',9,1,'MyApp','[]',0,'2017-11-08 23:35:25','2017-11-08 23:35:25','2018-11-08 21:35:25'),('421ee2ba1426077298679f5ed58a23286a8ceed880cbb6f6d84ac60798741f915036d7dd669f6406',24,1,'MyApp','[]',0,'2017-11-10 18:32:08','2017-11-10 18:32:08','2018-11-10 16:32:08'),('43092095bd7543f8e9ed911975984d0c0017b9a0b9861ea3baf06a6f4ab2dd02cf4493a822eb0734',20,1,'MyApp','[]',0,'2017-11-13 20:55:40','2017-11-13 20:55:40','2018-11-13 18:55:40'),('45da4ca51235d986307cf3dc6425839bc48e2d0a6c7ed2286e1810d97b1fdb3dcad1361c79fd592e',13,1,'MyApp','[]',0,'2017-11-13 19:38:41','2017-11-13 19:38:41','2018-11-13 17:38:41'),('45fa2a921ec7cee86ad9f62bf7feee09d8adeafe30c0d7a6b98b1a84f6cfb0ddccf4f5591fee4811',4,1,'MyApp','[]',0,'2017-11-13 19:13:18','2017-11-13 19:13:18','2018-11-13 17:13:18'),('46fd01c6d356743331e5f34937915b3273187a0d26d81280814339e4aa869c15efd3678b4e67a96b',2,1,'MyApp','[]',0,'2017-11-08 21:09:05','2017-11-08 21:09:05','2018-11-08 19:09:05'),('47353b4a8501fe2f826be83a251f414a5500b248c814bb66db0374926fbeb33ecbbaf6bf149338f0',2,1,'MyApp','[]',0,'2017-11-08 23:15:40','2017-11-08 23:15:40','2018-11-08 21:15:40'),('4c3471ab5bbea86c7a67d0d6c62ef2d4ca282f088a54b9fad5d8170b28067ee4c6abe3c745709817',16,1,'MyApp','[]',0,'2017-11-13 20:11:43','2017-11-13 20:11:43','2018-11-13 18:11:43'),('4d445b6cc11ed67507164aaa1e554bac3cd42284fa269c540ef1cc0f66d96609bb59730a9f57c488',16,1,'MyApp','[]',0,'2017-11-13 19:46:43','2017-11-13 19:46:43','2018-11-13 17:46:43'),('53beafc0aef8129b47a7a08c24ac386a0ba3ce92cba98cbf2f56917dbde78ab529c3782c21e09db6',2,1,'MyApp','[]',0,'2017-11-08 23:21:13','2017-11-08 23:21:13','2018-11-08 21:21:13'),('562e9f357ab173f9b7a2f19aa5b59430da4fb6bdae595f37dfd7912bfba3d1c6847aa8ec8526ca2b',2,1,'MyApp','[]',0,'2017-11-08 23:13:10','2017-11-08 23:13:10','2018-11-08 21:13:10'),('5825e24a9730d3e1201b11b4583653676593e685d960201a2382dd3d568ebf4a99d09bae1e1628f9',2,1,'MyApp','[]',0,'2017-11-08 23:19:18','2017-11-08 23:19:18','2018-11-08 21:19:18'),('59edc615ffb05c0d71fa40b5a80793ad33d5f444f73ab489ca47bf49c7646941ceb838c5ec949466',2,1,'MyApp','[]',0,'2017-11-10 18:23:37','2017-11-10 18:23:37','2018-11-10 16:23:37'),('5a0c35007e330023df67f99442867637788e367c6b9108510c3d7f8f183007e8a02d5a96c426d77b',2,1,'MyApp','[]',0,'2017-11-08 23:17:26','2017-11-08 23:17:26','2018-11-08 21:17:26'),('5b91e72139bd808eb813d8b3827bf774476c23096ce60352b25fa9021076421cbaeb3c94b6f1b7c2',16,1,'MyApp','[]',0,'2017-11-13 19:47:57','2017-11-13 19:47:57','2018-11-13 17:47:57'),('5ca55f049e2d3243ee79bc7d6724bb0ffc01fdbeb1d8d4b975dd07e03ef6f6bdede2f659e24428a8',4,1,'MyApp','[]',0,'2017-11-13 18:41:22','2017-11-13 18:41:22','2018-11-13 16:41:22'),('5e871ca7728b014fb7994e1e3c7e3fff6e58cce6845200c6beda18f8a995036f1611da1848b7a845',8,1,'MyApp','[]',0,'2017-11-08 23:33:57','2017-11-08 23:33:57','2018-11-08 21:33:57'),('60c32d1006e893276dd0a1fcb1392dfbd22c4406e1f84ad7f5efdc6801800b5a1cac3b8d7da599fb',16,1,'MyApp','[]',0,'2017-11-13 19:44:19','2017-11-13 19:44:19','2018-11-13 17:44:19'),('61676e07b66e54f7cfd32f09919606ca5cadb8437c808287e86ab0bcb5d9a1b6be4d1445725ad5e1',4,1,'MyApp','[]',0,'2017-11-13 18:41:34','2017-11-13 18:41:34','2018-11-13 16:41:34'),('63097dba0b3bcb8ea0e1da411b16bb225156cfd96cfa7d57af31cb0dbc7469b53ad6131a2b4d8e6f',2,1,'MyApp','[]',0,'2017-11-09 00:06:55','2017-11-09 00:06:55','2018-11-08 22:06:55'),('637cc1775ffec35d6a9312d2341e749f43467efa1db7b769897199533b3f06046bbdfcf86b375a51',6,1,'MyApp','[]',0,'2017-11-08 21:41:18','2017-11-08 21:41:18','2018-11-08 19:41:18'),('63cbd7c08a018ac71c0082b0c27a08391e580fc85242509d2e50bc167cfa634eb6f2b3ff2b17b894',16,1,'MyApp','[]',0,'2017-11-13 19:46:01','2017-11-13 19:46:01','2018-11-13 17:46:01'),('65156e92751544c030ffd7fd27ef4edebe04b26c6d519babe53d96121d92ce468129b735df8571c9',3,1,'MyApp','[]',0,'2017-11-13 15:07:01','2017-11-13 15:07:01','2018-11-13 13:07:01'),('6893b8d76ddd5a9a6b7c7ff5c5237dd354a55458747c066ba0200dde702b1a6af8143051e8f2b65c',21,1,'MyApp','[]',0,'2017-11-08 23:51:29','2017-11-08 23:51:29','2018-11-08 21:51:29'),('69437b3f3d610b035d97d722bdc6d0254f9bd549adb581e3200b1bacc9f7ef639c7154830d297d94',2,1,'MyApp','[]',0,'2017-11-10 18:24:47','2017-11-10 18:24:47','2018-11-10 16:24:47'),('6d0d674720d892b2e38b7af313608343bbd56698ba9db6cde15ac7b1a53cb6b99667d91669f03cc0',16,1,'MyApp','[]',0,'2017-11-13 19:44:11','2017-11-13 19:44:11','2018-11-13 17:44:11'),('6d350b8cc5d2e52c4ae647c4ac18e67c7cb326396db95464845c23f755d0c1098e89235b77fcfc75',19,1,'MyApp','[]',0,'2017-11-08 23:49:51','2017-11-08 23:49:51','2018-11-08 21:49:51'),('6de63860318e034ae88b3ca3a4130b5a2e7bb0ea045da8491cab25aeedefe6ad95f171d54abdca7a',13,1,'MyApp','[]',0,'2017-11-08 23:43:51','2017-11-08 23:43:51','2018-11-08 21:43:51'),('70d6b67375962a717dbb037db99ef6b6b304222d774a113a92e0d81f0bfda3b5e573a6a33b06441a',2,1,'MyApp','[]',0,'2017-11-08 21:03:39','2017-11-08 21:03:39','2018-11-08 19:03:39'),('7115043e6b2193b2d96ed7f81f027339c0483c865a7002b7f0e01913e219a2063776d93dcb1431b9',2,1,'MyApp','[]',0,'2017-11-10 19:28:22','2017-11-10 19:28:22','2018-11-10 17:28:22'),('767f99978305b9d49322cdd56610617753f30ceaf27d5bac316278b93692a8307e69d24c6dc08ba1',12,1,'MyApp','[]',0,'2017-11-08 23:42:45','2017-11-08 23:42:45','2018-11-08 21:42:45'),('773921ee962ccc5a191f9554feaef701eeb7a93cd591b312b5d8c33f8cf97848e113fe628a4fab46',2,1,'MyApp','[]',0,'2017-11-08 23:10:47','2017-11-08 23:10:47','2018-11-08 21:10:47'),('7ae7282a0c2ce033ea343984288df77128b039d64d3ab02aeb7be3a2ecd51bb917f472b048c53eea',2,1,'MyApp','[]',0,'2017-11-10 18:26:00','2017-11-10 18:26:00','2018-11-10 16:26:00'),('7b036a4fa4812067ef9234276d61c9182347ad306844824c1e7d48e4afc2c1b9e5f7614e85b7a4fd',3,1,'MyApp','[]',0,'2017-11-13 21:03:42','2017-11-13 21:03:42','2018-11-13 19:03:42'),('7b51841b493f7e8f5a1a6b66e4bfd4e8fa481bf71cbcc96e6dbf7c0a83de4cf1da7c73e22c117acb',4,1,'MyApp','[]',0,'2017-11-13 19:11:17','2017-11-13 19:11:17','2018-11-13 17:11:17'),('7bb4898b5f69f18d9d65429b102cdafa224c286d3edd10ae14b17192a40f12b150ca3803bf5a8abf',2,1,'MyApp','[]',0,'2017-11-09 00:07:55','2017-11-09 00:07:55','2018-11-08 22:07:55'),('8087400f643e4c0b5a3478a2587d40ffd2ac2e29ba706e3fc8b2250bfd54d16a57a6a0c7d8efb0d6',2,1,'MyApp','[]',0,'2017-11-08 22:46:19','2017-11-08 22:46:19','2018-11-08 20:46:19'),('83e8a49c08ce4ae71263fec62e222a20f95198ca64b2dba5c0bb5bdd04e57a00f143f9ef232b2953',4,1,'MyApp','[]',0,'2017-11-13 19:50:53','2017-11-13 19:50:53','2018-11-13 17:50:53'),('83fb76552aba96d88734ddcd5d8958bb65b18233770d68eb13b6dca834e906e3103dd624717406bb',2,1,'MyApp','[]',0,'2017-11-08 22:52:43','2017-11-08 22:52:43','2018-11-08 20:52:43'),('89508795228d614abc9fe6545e5342f44026b0e862d36c5204888328830c694d5469f09b6362a56a',16,1,'MyApp','[]',0,'2017-11-13 19:48:42','2017-11-13 19:48:42','2018-11-13 17:48:42'),('8a0069f604e403f2bc5c40bd6a48258a5fe90f10f30893d6c0ecbd9a874e426aaae57e2b858d51d4',16,1,'MyApp','[]',0,'2017-11-13 19:47:31','2017-11-13 19:47:31','2018-11-13 17:47:31'),('8c8f342eff5a2e235cb57ff74389041e1cd3917dfda40559ceb7201eb489f6df7e81285ecd14da4e',1,1,'MyApp','[]',0,'2017-11-10 19:52:59','2017-11-10 19:52:59','2018-11-10 17:52:59'),('8cbd42c6af9be05ba572cff7ab157b088f28e979b163a63ca3a8d0d36e32e55a4456de89a2ae1217',23,1,'MyApp','[]',0,'2017-11-09 12:36:48','2017-11-09 12:36:48','2018-11-09 10:36:48'),('8dfc9b4678b3a8b40ddfdd0c9de1a5e77ad39afb6a805206d7ece5e66b676870508b34a7a34c79a2',20,1,'MyApp','[]',0,'2017-11-08 23:50:36','2017-11-08 23:50:36','2018-11-08 21:50:36'),('990e5efdb59641b44f91bbe98f0b0ab5099904ae2b70d765cd188e7c9302a2215b1c630273d6f4e0',2,1,'MyApp','[]',0,'2017-11-08 23:53:27','2017-11-08 23:53:27','2018-11-08 21:53:27'),('993224a8c8cfd137b6b4843513933de74a7b42e401675140f9cc7c54295bb32d8083d13660e17ebd',15,1,'MyApp','[]',0,'2017-11-08 23:45:02','2017-11-08 23:45:02','2018-11-08 21:45:02'),('9ace9a1c324814c8aa59e8f198c7771303488dd481cd78a8b71eba7f8a7582082c001dfbd86a4ea9',11,1,'MyApp','[]',0,'2017-11-08 23:40:52','2017-11-08 23:40:52','2018-11-08 21:40:52'),('9ea1fa4ba8f2e3c0c7a72040c5f35987bad58710a88045dcfa86513edb98301b855066d416f5dc9e',2,1,'MyApp','[]',0,'2017-11-10 18:26:48','2017-11-10 18:26:48','2018-11-10 16:26:48'),('9efc2ae1d9338424382b1dd45584b772a6c9450840ed7ba9af2dc4010eb886e934d823203a163ecf',4,1,'MyApp','[]',0,'2017-11-13 20:11:09','2017-11-13 20:11:09','2018-11-13 18:11:09'),('a4410f7b158f24d0cb95e362b148135674f491ffca2709361545c463c658709464847ffde51ec32e',2,1,'MyApp','[]',0,'2017-11-08 22:56:02','2017-11-08 22:56:02','2018-11-08 20:56:02'),('a4ed83c9c07c00d3158e81f4958222b4550babec004ab22b7cd471d799d4080d2e730cc56b7c6509',1,1,'MyApp','[]',0,'2017-11-10 19:27:08','2017-11-10 19:27:08','2018-11-10 17:27:08'),('aa9f4dde696ed5fab1b2ae4534af6e3f082841582dddf7145cf01e27408756a53d4971680043f1bf',2,1,'MyApp','[]',0,'2017-11-10 18:26:27','2017-11-10 18:26:27','2018-11-10 16:26:27'),('ae1a552fd373cb6e2c33e9dad220fa00b13126911b40edb68ba79b51ed52756e448d64b1550b78fb',2,1,'MyApp','[]',0,'2017-11-09 12:25:13','2017-11-09 12:25:13','2018-11-09 10:25:13'),('b085db5bbd4ce16beec5a0994df6cae8723e8e7af14c33a33699d1b8d7626d8abbaf349649774c6b',16,1,'MyApp','[]',0,'2017-11-13 20:14:24','2017-11-13 20:14:24','2018-11-13 18:14:24'),('b2b1f0ffff7cd03040809927ea9fbf6dd97ac379e9886c87bffe41babdf58b11d46e9d97b4fd95df',2,1,'MyApp','[]',0,'2017-11-10 19:22:08','2017-11-10 19:22:08','2018-11-10 17:22:08'),('b4a9b795a48c3d31037973ea9c4cdb3c48e0f2511b42d02012ae20177b704cf6dbbd90e9d1d2c694',16,1,'MyApp','[]',0,'2017-11-13 19:47:08','2017-11-13 19:47:08','2018-11-13 17:47:08'),('b57793835c8247940600b416841c73525a8d699f9e1aa2dbe7ed2cf04a8016c2916fb0c6a690186c',15,1,'MyApp','[]',0,'2017-11-13 19:40:33','2017-11-13 19:40:33','2018-11-13 17:40:33'),('b636295fa80bb122bf46b1e117ef66642bba3a0958c686bc59a6570a8176b0877c0ea705a738093c',4,1,'MyApp','[]',0,'2017-11-14 00:21:51','2017-11-14 00:21:51','2018-11-13 22:21:51'),('b78643e98e7692f5aa5f02f2650d017d69723918eb691aaa5d273b03ecc09339a48f9481f1ffba88',2,1,'MyApp','[]',0,'2017-11-08 22:49:51','2017-11-08 22:49:51','2018-11-08 20:49:51'),('be5f5695b69a1b0c7d3a17e4f9cce14bba75fe9ef026a36815e6e30d925ce6d10d2a1d59ac5ff5dc',22,1,'MyApp','[]',0,'2017-11-14 00:28:08','2017-11-14 00:28:08','2018-11-13 22:28:08'),('c34e00ea983184e1b6b6b9ae0804eb6f1937e34654600ba43ae169f12f974b8083b6339085c1aa6b',4,1,'MyApp','[]',0,'2017-11-13 19:11:16','2017-11-13 19:11:16','2018-11-13 17:11:16'),('c3a32fde5174604c820bb22ba03a9bbf6cb9002c1edf6d1893218c82169ed9344860d2dd46a8ac2a',2,1,'MyApp','[]',0,'2017-11-10 19:28:32','2017-11-10 19:28:32','2018-11-10 17:28:32'),('c6469c936eedc81b1f293d9f30d53780f559548d8bddefecae4179a3bfb5cc9da380ccec369dada2',3,1,'MyApp','[]',0,'2017-11-13 20:19:14','2017-11-13 20:19:14','2018-11-13 18:19:14'),('c68c66c8c7f21dbd6b44e417be710fe2fb85f3de99c9240175d7ebe627e8292045b825d2480deeb7',19,1,'MyApp','[]',0,'2017-11-13 20:00:26','2017-11-13 20:00:26','2018-11-13 18:00:26'),('c76c610b73a3e4413b47e0edfb34e412b3a123e7c7e7c84426998a8da0d7f019e61a1f11a9d8f995',16,1,'MyApp','[]',0,'2017-11-13 19:48:32','2017-11-13 19:48:32','2018-11-13 17:48:32'),('c86682eca8032cedff18fb2391e629687af89b74060193fcfe920395afe4416b5bce7f91650cd6bd',18,1,'MyApp','[]',0,'2017-11-13 19:52:58','2017-11-13 19:52:58','2018-11-13 17:52:58'),('c87d2547ce0afb8b67f4f2ef07f2ce25ee8fbf610c55108597be2121217fff9a700ee9a9b3cafb88',2,1,'MyApp','[]',0,'2017-11-10 18:26:16','2017-11-10 18:26:16','2018-11-10 16:26:16'),('c9f01f38d73503fee15058d31e0e1dbe64c70f25be4e63e6c00fff4d5f81ea34c9bebfc1a559ec2b',2,1,'MyApp','[]',0,'2017-11-08 23:14:32','2017-11-08 23:14:32','2018-11-08 21:14:32'),('cbe8c704d3e9df9483c95fe723a628628d3517d2203d7f39a2300811a03c090f32c08512debe5f2a',4,1,'MyApp','[]',0,'2017-11-14 00:21:49','2017-11-14 00:21:49','2018-11-13 22:21:49'),('cc4736a149e4f6a123aad2c35aff1614c5ab01000415015db0c56aaac257950c5d3e06715b975388',16,1,'MyApp','[]',0,'2017-11-13 20:13:56','2017-11-13 20:13:56','2018-11-13 18:13:56'),('cd973038866397adc5e05226e8823cb4febe4c818e6ab8df7da486f85a6f72ae1ba020164f460473',27,1,'MyApp','[]',0,'2017-11-10 19:07:41','2017-11-10 19:07:41','2018-11-10 17:07:41'),('cdca790f94ac674d2f33a40288e4f57c83535acc4b6c0103aabdd4a3bff086d048771ebdf4bc6bba',21,1,'MyApp','[]',0,'2017-11-13 23:38:27','2017-11-13 23:38:27','2018-11-13 21:38:27'),('ce5e0509a4807c7c83e6fc2fe2fb5a87a28ef2ef3f3f793e500b618519939158c6fbed4633cb9fa3',2,1,'MyApp','[]',0,'2017-11-10 18:31:36','2017-11-10 18:31:36','2018-11-10 16:31:36'),('cfa83abd5ab6bc520a0cd1399f69822f9bf56f65f8abb0b6dd8d8bc953bb6eab6cc0fe12de1912cf',2,1,'MyApp','[]',0,'2017-11-08 23:17:45','2017-11-08 23:17:45','2018-11-08 21:17:45'),('d084ebbabd8f7a3cc4c5db9e659de056e3739f9b8770b01d8a1226a2750b6ead7e65b61c6bb94524',18,1,'MyApp','[]',0,'2017-11-08 23:49:12','2017-11-08 23:49:12','2018-11-08 21:49:12'),('d31428ccb1f76b4f23252e594aeaa91755e7cdffdd81efd4c3b4c6d0ce1ebae8cd21debcd640e397',26,1,'MyApp','[]',0,'2017-11-10 18:34:43','2017-11-10 18:34:43','2018-11-10 16:34:43'),('d618b4526984bb8124347f3dc7979fac5b139a40a19348a059b52930e4493d8b93c84fe00a085277',17,1,'MyApp','[]',0,'2017-11-08 23:46:53','2017-11-08 23:46:53','2018-11-08 21:46:53'),('da3fb83795bcdd95387a6940f4073cc08b8b83a4bb46a972a256c4683f5aa0a940fdd2d4f73882f9',1,1,'MyApp','[]',0,'2017-11-13 13:06:52','2017-11-13 13:06:52','2018-11-13 11:06:52'),('db0207119277cecbfc634ef042ae7c1b505d7f84b9e69982032f68211ebb093925928e442f7f503d',21,1,'MyApp','[]',0,'2017-11-13 23:38:07','2017-11-13 23:38:07','2018-11-13 21:38:07'),('ddb81a304746b6785fe5986c25a650f7bc07045eba91f63c12b2d6ed30de77034a1064af9a3da6d6',2,1,'MyApp','[]',0,'2017-11-08 23:19:56','2017-11-08 23:19:56','2018-11-08 21:19:56'),('e34567b3ba87ae8f6bffedd3a25e24f14f4ac8f3ab3fa3197eacec89262edefbbd83dd9a44a0d915',4,1,'MyApp','[]',0,'2017-11-13 19:11:09','2017-11-13 19:11:09','2018-11-13 17:11:09'),('e54db726e954be953cb6b2cc589402de52d7ef571ca1ad5890faf63d1f2fea7240827058e489fa96',2,1,'MyApp','[]',0,'2017-11-08 23:16:09','2017-11-08 23:16:09','2018-11-08 21:16:09'),('e6fd89a8a82262b76124ca804cd09db5d887940aa8f71136508d3ef007910f7d7c5f1c21d816a8a8',22,1,'MyApp','[]',0,'2017-11-08 23:52:47','2017-11-08 23:52:47','2018-11-08 21:52:47'),('e8644eb5d63cba6f90660b374d6c4e166cf51d3070186935fd208e939f0389135f8510d64233a2ca',2,1,'MyApp','[]',0,'2017-11-09 00:12:35','2017-11-09 00:12:35','2018-11-08 22:12:35'),('eb8228c98163159ae0d3ec2c824948991b95e7f779108816b64b1981d68737dea321b0f50a56e5f7',2,1,'MyApp','[]',0,'2017-11-08 23:03:18','2017-11-08 23:03:18','2018-11-08 21:03:18'),('f0fad3d335a3fef0a9832f47b505dddce191332c9b7abadf8e6863198c78d958495bc40f9ce351f9',2,1,'MyApp','[]',0,'2017-11-08 23:11:07','2017-11-08 23:11:07','2018-11-08 21:11:07'),('f226f8762967e0829278f984ae7515d1e46e775204435384c8f86301bd6827d62ea2848ad66eccd7',2,1,'MyApp','[]',0,'2017-11-10 18:29:55','2017-11-10 18:29:55','2018-11-10 16:29:55'),('f2306c13b18ff7be139cc0ce23d6b488b87e397e05d679efc36d5e80c04e9b8e13f32eff7c40e6cd',3,1,'MyApp','[]',0,'2017-11-13 15:07:09','2017-11-13 15:07:09','2018-11-13 13:07:09'),('f373f359f1d45ce87b232549e88f72fe3cb0c358eb46c0ac52f0a5a5cd6ae22a86344abc298b7daf',4,1,'MyApp','[]',0,'2017-11-13 19:13:38','2017-11-13 19:13:38','2018-11-13 17:13:38'),('f3a3ea3dc0ba91548031d675913398ecfba07a910151aad24b803b4fca30e627f4c5dd1c41e3c7be',2,1,'MyApp','[]',0,'2017-11-10 18:28:25','2017-11-10 18:28:25','2018-11-10 16:28:25'),('fb5ee7e0c23447bdcba9332bce7ab3668af413aeb15cdce320a6c40d1352633fc9339bd8ff3dc720',14,1,'MyApp','[]',0,'2017-11-13 19:39:41','2017-11-13 19:39:41','2018-11-13 17:39:41'),('fb60d7fa12298bd4452b75611b8eede2920c4bde6bb772c8ea63d00098a5bf0c22546be259d07242',2,1,'MyApp','[]',0,'2017-11-08 22:49:06','2017-11-08 22:49:06','2018-11-08 20:49:06'),('fc872dec5d664ee4324d1edcd74f3fec7bfdc10eb2a7f5cc9cb54030959aa49cec3463dc12e45740',2,1,'MyApp','[]',0,'2017-11-10 18:22:01','2017-11-10 18:22:01','2018-11-10 16:22:01'),('fe4f8a842eca847c82b851d4b5947e00cf97b87777905e2ff518f35360536b8c334709999086e2d6',14,1,'MyApp','[]',0,'2017-11-08 23:44:28','2017-11-08 23:44:28','2018-11-08 21:44:28'),('ffd1d7d5e77a955493a472b4e4c8ce9f38f30c5ef50d17751d9eb06f17c2dfae277de97536eb64bd',2,1,'MyApp','[]',0,'2017-11-08 22:51:45','2017-11-08 22:51:45','2018-11-08 20:51:45');
/*!40000 ALTER TABLE `oauth_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_auth_codes`
--

DROP TABLE IF EXISTS `oauth_auth_codes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_auth_codes`
--

LOCK TABLES `oauth_auth_codes` WRITE;
/*!40000 ALTER TABLE `oauth_auth_codes` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_auth_codes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_clients`
--

DROP TABLE IF EXISTS `oauth_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_clients` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_clients`
--

LOCK TABLES `oauth_clients` WRITE;
/*!40000 ALTER TABLE `oauth_clients` DISABLE KEYS */;
INSERT INTO `oauth_clients` VALUES (1,NULL,'Laravel Personal Access Client','AkYuf2ruowvjowdE1ktZeF5946fvCRjB6GfIYTAU','http://localhost',1,0,0,'2017-11-08 20:27:04','2017-11-08 20:27:04'),(2,NULL,'Laravel Password Grant Client','UMtrNMIhbY3rXWMXaYd8fLD3jFEw606zz6S0E20g','http://localhost',0,1,0,'2017-11-08 20:27:04','2017-11-08 20:27:04');
/*!40000 ALTER TABLE `oauth_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_personal_access_clients`
--

DROP TABLE IF EXISTS `oauth_personal_access_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `client_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_personal_access_clients_client_id_index` (`client_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_personal_access_clients`
--

LOCK TABLES `oauth_personal_access_clients` WRITE;
/*!40000 ALTER TABLE `oauth_personal_access_clients` DISABLE KEYS */;
INSERT INTO `oauth_personal_access_clients` VALUES (1,1,'2017-11-08 20:27:04','2017-11-08 20:27:04');
/*!40000 ALTER TABLE `oauth_personal_access_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_refresh_tokens`
--

DROP TABLE IF EXISTS `oauth_refresh_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_refresh_tokens`
--

LOCK TABLES `oauth_refresh_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_refresh_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_refresh_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `guid` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (3,'Robson','robsonkumagai@gmail.com','$2y$10$CFrRsDa2lLnUWu.EWIU5FO7soB8vJT6rvNUgx0BH8RDVqAEsuuAt6',NULL,'2017-11-13 15:07:00','2017-11-13 15:07:00','d88df003fb98e987c4523ba19c3d5c7d'),(4,'Robson','rkumagai@foo.boo','$2y$10$dcqgn/sHB7/FZ8/eHpT1Meeqz3vkPet/bsA4FGX.sKpacg8AVJo7i',NULL,'2017-11-13 18:41:22','2017-11-13 18:41:22','62adae3f0b7a8ae0d6b80fba5088cab2'),(5,'Eidi','teste@foo.boo','$2y$10$kscNn.u7HGW66cXvpxRslOJ7AqDqP0fIoZtm7DJ8hvDGjg5ut5Ylm',NULL,'2017-11-13 19:14:39','2017-11-13 19:14:39','062d4b299f2f52ea54ca318bb6610fba'),(13,'Eidi','teste1@foo.boo','$2y$10$COm6X4BDQQeE4wJdM936SOPh2ZDgHXXVhBwGiwuIossOoKvQ9Pgtq',NULL,'2017-11-13 19:38:41','2017-11-13 19:38:41','8e1eba1f8e4a4028578025f06c151528'),(14,'Eidi','teste2@foo.boo','$2y$10$NRP8N4jOcn75L34/7L.nyeX8HQYtTK8B9mZTqk/xP/xI5QzwrInZ6',NULL,'2017-11-13 19:39:41','2017-11-13 19:39:41','b7c7d404d14fcc3a32615cb5fac119bc'),(15,'Eidi','teste3@foo.boo','$2y$10$EJRBUNUvcpgG7pEKg6acN.nxeclThGG74oKJnUUrA0Cr6cFckQL86',NULL,'2017-11-13 19:40:33','2017-11-13 19:40:33','c7551f78ae042c6abacc9d5bd018d966'),(17,'Eidi Robson','eidi@foo.boo','$2y$10$Io9sKceZp6A72Amn9ZjDJOtfA5aHezvH1g7g4hxYht3NbuwXVtqCy',NULL,'2017-11-13 19:49:08','2017-11-13 19:49:08','36687c792a233c5b9c33feed561ef811'),(18,'Opa','opa@foo.boo','$2y$10$0eIn.TvEWvrYHqjvJGCGtOtsIy48rnsdUFWR.l4JaFf6hBq8.n1P.',NULL,'2017-11-13 19:52:49','2017-11-13 19:52:49','588d31ac421eea14bb768b0cbe5be5ae'),(19,'12345','12345@foo.boo','$2y$10$AjOVu13Cyo.pIU7IsNLy.Oqd7VDkQ6HvTv4kK8apdfStx03TrbYG.',NULL,'2017-11-13 20:00:26','2017-11-13 20:00:26','faf871f17e37248fea4da2b0e0d59543'),(20,'Eidi','teste4@foo.boo','$2y$10$CRpRDBJ/6J/fZJG/oUUHWuMbZxQvI9pDTnxI5H8CD648Gi7wqkcny',NULL,'2017-11-13 20:55:40','2017-11-13 20:55:40','822c118e99c9aa07848f8ef880aed77a'),(21,'Murilo','murilo@foo.boo','$2y$10$dOcHNjx5sgOto4XRr.vwsucOHpc8Bn72tPeKnfDTEuAnMqKAjYDpa',NULL,'2017-11-13 23:38:07','2017-11-13 23:38:07','d5033a1e77ccff7a44ce4041c2bb147c'),(22,'Eidi','teste5@foo.boo','$2y$10$BGKJS7jVzI76xFFwAm/o8OoVycRM/fWxiVbWUpCShsKKGqnZ77EYO',NULL,'2017-11-14 00:28:08','2017-11-14 00:28:08','5a414ae876bca66134df1095ca0fc317'),(23,'Sabatine','sabatine@foo.boo','$2y$10$x91ahLWOHFlmYPYgIyieGuFKL5BUfK9qJ4FDv/OEd7HpzuubL2Ns6',NULL,'2017-11-14 00:29:49','2017-11-14 00:29:49','b6b5b3d00af6c8b0b762d64e7fb97ce4');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-11-14 10:01:10
