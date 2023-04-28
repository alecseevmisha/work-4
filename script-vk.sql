#
# TABLE STRUCTURE FOR: media
#

DROP TABLE IF EXISTS `media`;

CREATE TABLE `media` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `media_type_id` bigint(20) unsigned DEFAULT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `filename` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `metadata` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`metadata`)),
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `media_type_id` (`media_type_id`),
  CONSTRAINT `media_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `media_ibfk_2` FOREIGN KEY (`media_type_id`) REFERENCES `media_types` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('1', '8', '1', 'Qui molestias aut sunt qui dolore unde. Dolor et nobis aliquam qui facilis id. Consequuntur aspernatur consequatur accusantium qui corrupti repellat.', 'nisi', 253922, NULL, '2020-05-29 16:45:24', '2007-12-11 11:01:23');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('2', '6', '2', 'Reprehenderit et fuga sit quos. Vel rem sapiente voluptas voluptas esse. Asperiores sit animi quae sunt aspernatur. Magnam non ut repudiandae incidunt ullam. Nam possimus et non deserunt maiores modi perspiciatis.', 'id', 490002, NULL, '1985-12-04 02:45:36', '2016-06-13 16:40:37');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('3', '2', '3', 'Doloribus deserunt animi velit aspernatur qui accusamus veritatis. Cupiditate et blanditiis dolore minus laborum nisi quis. Repudiandae nisi quae voluptatem similique molestiae ex.', 'laborum', 493789994, NULL, '2018-03-30 21:13:18', '2020-09-24 07:09:05');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('4', '2', '4', 'Qui fugiat adipisci consectetur distinctio dolorem aspernatur ea. Occaecati enim hic porro et. Et iusto quos repellat dolor nihil cum. Repudiandae voluptatem ut in rerum esse rerum ea.', 'accusamus', 9, NULL, '2005-04-19 19:28:56', '1976-03-05 08:54:33');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('5', '8', '5', 'Ut quisquam est fugiat adipisci id velit. Porro qui quia ut quidem maxime et ut ratione. Enim minima fugiat iusto aut.', 'distinctio', 747, NULL, '1973-07-27 17:26:10', '2011-02-28 19:07:30');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('6', '5', '6', 'Mollitia velit qui aperiam quia est dolores id. Est iusto ab quia nulla nostrum.', 'et', 638707, NULL, '2017-04-06 12:16:31', '2017-11-06 00:04:58');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('7', '6', '7', 'Sequi similique numquam et qui. Veritatis quae eum est reprehenderit nisi consectetur non. Quaerat incidunt necessitatibus sint.', 'aut', 2976, NULL, '1984-11-20 13:20:15', '1979-01-31 15:39:58');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('8', '9', '8', 'Sequi saepe aut eum sed corrupti. Omnis quia porro sunt sint quos aliquid voluptatem. Corporis beatae minus laudantium qui soluta.', 'et', 0, NULL, '2015-06-19 13:44:34', '2008-03-04 23:55:10');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('9', '4', '9', 'Animi alias quos a et. Cumque quisquam iure inventore veritatis debitis quis.', 'et', 782018676, NULL, '1981-06-08 21:28:23', '2002-06-04 08:29:27');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('10', '10', '10', 'Unde eius repellat consequuntur. Facilis aut aut eius eligendi. Voluptatem quam consequatur sunt odit assumenda harum tenetur sapiente.', 'molestiae', 2075, NULL, '1998-08-13 22:08:13', '1988-01-14 19:34:15');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('11', '8', '11', 'Ducimus ea autem incidunt asperiores natus similique nobis. Quidem facilis quia consequatur voluptatem. Delectus eum sed fuga ratione et. Ipsa consequatur doloribus et laudantium iure.', 'quia', 23849, NULL, '1973-07-25 20:29:37', '1983-08-25 06:03:32');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('12', '3', '12', 'Qui quos a possimus qui eos. Animi iure modi hic qui totam quo saepe. Autem iusto ab quia aut modi.', 'alias', 5773539, NULL, '2008-08-17 15:29:14', '1983-12-09 07:59:51');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('13', '3', '13', 'Qui excepturi et est rem. Voluptatem at fugit nam enim. Dicta sed aut incidunt exercitationem non animi molestias. Et aut labore eos neque velit.', 'laborum', 3976, NULL, '2020-05-10 01:21:53', '2007-08-12 19:51:12');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('14', '3', '14', 'Reiciendis voluptas odio laboriosam libero velit repellat quia. Consequatur enim sed dignissimos exercitationem saepe laborum. Natus repellat repellat aliquam alias.', 'error', 8899, NULL, '1981-04-07 00:09:45', '2008-08-25 01:03:55');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('15', '9', '15', 'Dolore quibusdam consequatur est ut. Sit tempora minus saepe omnis et vero sint. Praesentium sed exercitationem nobis in debitis.', 'vel', 12504, NULL, '2019-05-02 07:09:53', '1975-12-09 01:51:50');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('16', '3', '16', 'Necessitatibus dignissimos vitae recusandae et officiis. Libero omnis ratione ad magnam. Sint molestiae reiciendis qui explicabo autem eum. Reprehenderit repellendus enim tenetur qui commodi illo qui.', 'architecto', 427943165, NULL, '2016-07-26 17:14:56', '1993-04-06 23:53:45');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('17', '4', '17', 'Quos at ullam voluptatum omnis. Odio sed voluptatem voluptas id dolore corporis in error. Voluptatem sequi fugit harum ut est possimus.', 'architecto', 6727, NULL, '1978-12-16 08:14:46', '1983-05-02 10:39:21');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('18', '6', '18', 'Ullam illum est veniam quia et dicta. Quis voluptas consequuntur eligendi quis quidem qui dolorem. Deserunt sit doloremque ratione.', 'ut', 1, NULL, '1975-12-27 23:56:31', '2022-05-13 00:03:14');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('19', '6', '19', 'Ratione quos non architecto consequuntur voluptatem. At et qui nobis quia expedita dolorem odit consectetur. Dolorum et provident suscipit error omnis laboriosam.', 'suscipit', 738352589, NULL, '2003-03-03 08:38:04', '1981-03-07 17:05:43');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('20', '6', '20', 'Iusto soluta perferendis voluptatem voluptas eius vel at. Placeat incidunt pariatur adipisci. Et nihil non nostrum aut expedita.', 'molestiae', 0, NULL, '2019-07-10 03:51:33', '2004-04-09 02:42:09');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('21', '7', '21', 'Architecto labore aut ut qui non. Aliquid quod adipisci dolorem consequatur vitae aut ipsam. Quo tempora eos nulla voluptates iure.', 'cum', 87, NULL, '1993-01-22 01:06:43', '2007-06-07 01:36:38');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('22', '3', '22', 'Ea molestiae eum nulla doloremque. Voluptatem qui deserunt sed.', 'enim', 49, NULL, '1982-04-18 20:09:36', '2019-09-06 10:56:15');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('23', '9', '23', 'Delectus natus occaecati aliquid eos earum facere. Dicta omnis fuga iusto doloribus. Ut deserunt incidunt illum minima quisquam aperiam nisi.', 'ex', 350, NULL, '1974-12-17 11:45:42', '1999-07-21 15:04:29');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('24', '9', '24', 'Eum nam quaerat assumenda neque enim labore iure. Porro omnis eveniet aliquid et corrupti aut.', 'doloremque', 22, NULL, '2017-11-26 16:47:38', '1972-08-03 11:03:22');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('25', '6', '25', 'Est eum ratione voluptas. Facilis quisquam nihil omnis ipsum ut blanditiis dolor. Ut est qui accusantium dolores eos temporibus praesentium. Quasi ea expedita qui saepe.', 'eos', 3021, NULL, '1993-03-25 05:50:55', '2018-01-15 00:57:09');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('26', '6', '26', 'Laudantium adipisci necessitatibus et et aperiam et et. Qui expedita vel nihil nihil non non necessitatibus. Omnis blanditiis soluta ad aliquam nobis. Voluptatem tenetur voluptatem iure est aut.', 'eligendi', 87, NULL, '2017-09-16 22:35:31', '2001-03-03 07:03:11');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('27', '4', '27', 'Non aut nulla dolorem. Qui alias iusto et voluptatum culpa laborum et. Quia fuga aliquam perferendis quam. Illo dicta error rerum numquam ab.', 'eveniet', 62316350, NULL, '1989-01-16 10:55:02', '1998-11-25 03:59:08');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('28', '10', '28', 'Quia dolor voluptates qui eaque accusamus libero adipisci rerum. Quisquam laudantium aut sed ullam voluptates accusantium. Magni in sit rem eos.', 'rem', 81996387, NULL, '1980-01-20 04:39:42', '1982-04-11 05:58:38');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('29', '9', '29', 'Nam inventore ratione ut voluptatem sapiente. Quo architecto quo delectus odit unde natus omnis. Vero veniam est velit fugiat voluptates quam numquam. Sunt magni consequatur sed culpa voluptatum.', 'voluptas', 7544, NULL, '2012-08-13 18:52:00', '1979-10-01 19:53:42');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('30', '1', '30', 'Corporis consectetur consequatur nihil. Maiores ullam sint nihil ad repellendus qui. Autem optio voluptas omnis sunt voluptatum. Aut inventore nisi quam sequi atque illum accusamus.', 'autem', 6803, NULL, '1975-09-11 18:48:21', '1970-06-18 16:40:55');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('31', '8', '31', 'Exercitationem aut eius nihil distinctio non quis. Beatae nostrum culpa eaque aliquam ipsa totam et nisi. Aperiam voluptas nobis occaecati. Qui perspiciatis voluptatibus aspernatur officiis nesciunt esse cupiditate.', 'quibusdam', 3814079, NULL, '1970-10-10 05:47:20', '1998-01-15 16:00:57');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('32', '9', '32', 'Ut distinctio voluptates corporis odit modi sed. Laborum officiis laboriosam magni molestias voluptates voluptatem.', 'error', 35442, NULL, '1983-08-07 02:14:37', '1991-02-14 17:14:41');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('33', '9', '33', 'Eius illum consequatur eligendi dolorem et in quia. Consequatur rerum enim totam qui est. Quia sunt eos voluptatem consequatur.', 'sunt', 769, NULL, '2008-04-17 05:00:31', '1971-09-15 14:18:40');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('34', '9', '34', 'Magnam dolor voluptas culpa. Aut ratione iusto eum dolor. Est quaerat necessitatibus recusandae commodi eius. Suscipit ipsam vel soluta et inventore modi.', 'omnis', 2, NULL, '2016-10-04 04:19:33', '1978-08-01 14:21:30');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('35', '8', '35', 'Et excepturi optio fugit ex. Architecto qui et aliquid molestiae. Quod ex est voluptas dicta voluptates laboriosam autem nihil. Ab tenetur magnam enim iste corrupti quo autem.', 'consequatur', 22698, NULL, '2004-11-09 06:02:54', '2006-08-13 13:57:50');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('36', '6', '36', 'Est sit voluptatem omnis nam id sit rerum maiores. Harum sit est ut. Ut error ullam impedit earum consequuntur nemo.', 'voluptatem', 1, NULL, '2020-10-14 00:35:54', '1977-05-21 11:43:37');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('37', '1', '37', 'Fugit est animi doloremque. Ipsam ut aperiam veniam non. Accusantium tempore amet provident sit. Autem qui voluptatem maxime aspernatur fuga.', 'voluptatem', 65496, NULL, '1975-04-27 09:48:01', '1998-04-07 03:06:58');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('38', '5', '38', 'At vel sed eum ut. Et sunt omnis aut reprehenderit doloribus tempora. Eos dolores repudiandae expedita. Quia ratione qui ad reiciendis vitae.', 'vel', 19, NULL, '2019-01-05 15:49:34', '2021-03-12 22:12:47');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('39', '7', '39', 'Odit molestiae voluptas eveniet dolore. Voluptas dolor distinctio vero magni odit. Exercitationem distinctio dolorum quia.', 'dignissimos', 5025739, NULL, '2007-06-25 12:03:15', '1981-07-28 09:35:32');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('40', '8', '40', 'Asperiores commodi assumenda aliquid cum. Saepe enim ducimus vitae debitis libero possimus. Ipsa sed ut dolores est. Aspernatur voluptatem adipisci quia aut officiis omnis.', 'qui', 3, NULL, '1998-09-21 14:26:26', '1996-09-25 00:05:40');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('41', '1', '41', 'Laboriosam esse reiciendis autem repudiandae ut et corrupti. Omnis illo quis fuga quia. Sed itaque delectus quos consequatur explicabo qui est.', 'tempore', 96304, NULL, '1988-06-29 23:11:37', '2019-11-16 20:58:46');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('42', '8', '42', 'Laudantium a non totam praesentium. In magni dolorem consequatur eveniet quibusdam aut. Quo asperiores omnis sint nisi dolorum maiores. Nobis laboriosam vero voluptatem nisi.', 'voluptas', 148900994, NULL, '1987-09-08 00:24:41', '1984-06-09 02:27:00');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('43', '7', '43', 'Enim culpa aut et rerum. Et minus autem ipsa eos ut quia nemo. Maxime enim ipsum impedit minima.', 'consequatur', 0, NULL, '1992-10-22 06:20:51', '1977-03-09 22:04:25');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('44', '7', '44', 'Vel voluptatem sed qui sequi quas dolore debitis. Quis aut recusandae ea aliquam praesentium et. Quis sequi sint quo a facilis.', 'quasi', 4578, NULL, '2012-07-05 02:16:56', '1979-12-03 15:39:46');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('45', '7', '45', 'Velit recusandae voluptatum dolores quis. Ea assumenda ut temporibus consectetur eum ducimus soluta. Tempore maxime ipsa officia maiores cupiditate at earum assumenda. Sed ullam atque est asperiores.', 'dignissimos', 903462, NULL, '2016-02-10 21:02:55', '1995-05-11 12:22:59');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('46', '4', '46', 'Repudiandae id facere repellendus. Necessitatibus molestias commodi modi deleniti.', 'numquam', 2765294, NULL, '1978-10-26 02:56:13', '1978-10-23 20:18:21');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('47', '3', '47', 'Quas minus iste est qui vel harum consequatur. Voluptates et numquam omnis et ipsum voluptatibus eum non.', 'odio', 0, NULL, '1988-01-12 14:47:29', '2001-04-20 03:52:39');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('48', '9', '48', 'Ut sunt ducimus aperiam inventore repudiandae molestias. Nemo rerum sed non ut aliquid corrupti.', 'ut', 186, NULL, '2005-10-26 04:40:50', '2014-12-08 06:53:30');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('49', '1', '49', 'Rerum sapiente odit et occaecati ratione delectus. Maxime illum voluptas cumque necessitatibus aut quia pariatur. Unde commodi dolor saepe quia vitae ut autem.', 'labore', 50, NULL, '1988-12-18 13:57:20', '2007-09-04 17:40:04');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('50', '9', '50', 'Officiis fuga fuga quo aliquid. Accusantium quo ut tenetur facilis amet deleniti. Sunt corporis et ea et et. Qui dolorem rerum tempore totam assumenda qui.', 'facere', 181442, NULL, '1973-12-15 23:55:43', '2015-12-19 23:43:02');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('51', '6', '51', 'Accusamus qui nesciunt et aut facilis qui. Laborum dolor eos aspernatur inventore est et. Voluptate explicabo fugit necessitatibus ut possimus.', 'ullam', 0, NULL, '2006-07-10 09:52:35', '2006-12-20 15:57:46');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('52', '2', '52', 'Excepturi fugit cumque modi deserunt nihil. Maxime soluta illo totam fuga sed ipsa. Eaque eum hic dolorum quisquam quas id enim.', 'dolore', 9, NULL, '1971-03-15 20:59:41', '1984-09-16 11:46:50');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('53', '4', '53', 'Et architecto autem temporibus distinctio asperiores. Similique earum quo sit quibusdam consequatur est.', 'exercitationem', 69414850, NULL, '2021-04-10 23:03:11', '1982-01-02 01:52:30');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('54', '3', '54', 'Ut vel unde quae facere ut asperiores tenetur. Sapiente eum magni consectetur officia alias animi deleniti hic. Aspernatur amet repellat et nisi deleniti.', 'maiores', 59, NULL, '2018-06-25 15:19:42', '1995-09-07 02:09:18');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('55', '3', '55', 'Voluptate sed aliquam expedita maxime consequatur numquam. Minus quis sed delectus in dolor quia ducimus quia. Dolorem possimus qui vel aliquam eaque repudiandae animi eos. Veritatis aperiam quo sed voluptatem deleniti aut soluta.', 'illum', 188681, NULL, '1998-07-10 20:06:20', '2017-06-30 12:04:03');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('56', '5', '56', 'Rerum eos quia et sed explicabo. Minus magni eligendi assumenda beatae odit reprehenderit.', 'quasi', 60, NULL, '1991-11-27 00:05:14', '2013-05-03 20:39:46');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('57', '1', '57', 'Qui odio facilis ut aliquid eos. Dolorum odit sed consequatur architecto fugit quas atque praesentium. Vel a autem dolorem aut. Modi fugit commodi est itaque ut temporibus nihil.', 'vero', 0, NULL, '1993-02-28 11:28:50', '1974-08-09 03:52:01');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('58', '9', '58', 'Corporis rem modi unde aspernatur quis est dolores. Est dicta possimus exercitationem omnis tempore laborum animi velit. Et facere qui autem dolores et sint. Velit nesciunt dicta nesciunt perspiciatis deserunt atque.', 'ut', 15, NULL, '1974-07-19 08:11:29', '1980-11-21 05:09:47');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('59', '9', '59', 'Inventore vel dolor repudiandae dolores. Recusandae beatae sed saepe inventore est rem. Autem non excepturi blanditiis exercitationem aut repellendus.', 'nesciunt', 112842, NULL, '1991-09-18 21:49:01', '1999-06-06 21:54:05');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('60', '2', '60', 'Repudiandae libero aut totam ipsa optio. Culpa harum qui voluptatem harum. Unde cupiditate nulla qui reprehenderit eligendi amet autem ea. Aut earum est ratione.', 'nemo', 7002303, NULL, '1990-12-06 07:15:26', '1973-01-14 02:20:09');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('61', '5', '61', 'Occaecati ut inventore quia commodi. Eius eos labore omnis quas eum quia rerum libero. Molestias alias quo vitae. Suscipit voluptates in eos.', 'dolores', 0, NULL, '2022-11-19 23:12:03', '1988-08-29 00:57:59');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('62', '3', '62', 'Id dicta dolor fuga aut hic praesentium et. Culpa eaque nesciunt consequatur explicabo voluptatem. Sit unde modi dicta odit a modi.', 'ipsum', 92269, NULL, '1982-06-18 07:30:55', '2000-11-11 04:15:59');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('63', '6', '63', 'Minus eum sunt doloremque dolor a id ab. Soluta nostrum vel rem velit. Sint fugiat laudantium fuga vero et voluptatem sed. Quae nobis aut nemo. Veniam soluta est quis consequatur.', 'vitae', 358088, NULL, '2016-09-10 14:29:32', '2003-12-21 03:50:10');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('64', '5', '64', 'Est dolorum adipisci et corporis eligendi at laudantium. Ut quam ipsam non. Maiores enim blanditiis eligendi neque hic unde.', 'ullam', 946634, NULL, '2004-02-28 04:21:37', '2003-07-27 06:56:54');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('65', '7', '65', 'Sed rerum facilis dolorem autem. Error voluptas aut optio aut. Odio ducimus molestiae dolorem. Veniam illo et earum laborum.', 'odit', 968679455, NULL, '2012-11-18 21:43:42', '2021-05-09 01:24:47');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('66', '10', '66', 'Voluptatibus optio ut ullam aut aut eum nostrum. Et debitis sunt vel odit. Sit impedit qui ipsa iusto modi.', 'dolores', 38074, NULL, '1999-10-30 12:22:45', '2017-07-19 23:54:30');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('67', '9', '67', 'Esse libero quidem tempore voluptatum dolorum temporibus sit. Aliquam rerum voluptates reprehenderit vel. Ut dolores animi unde odit et dicta.', 'fugiat', 39870, NULL, '2004-08-15 01:49:21', '2022-06-16 08:18:06');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('68', '2', '68', 'Numquam ut debitis sint totam. Enim iusto eaque quaerat ex quam. Reiciendis quas eligendi voluptate excepturi suscipit exercitationem. Aliquid repellendus architecto placeat minus adipisci suscipit. Ullam tempore sed doloribus quis suscipit et molestiae.', 'debitis', 94902, NULL, '1970-03-03 06:46:05', '1997-06-06 13:55:19');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('69', '6', '69', 'Deserunt laborum perferendis est excepturi placeat. Sed autem saepe hic voluptas aut. Debitis eligendi ea reiciendis est sit perferendis veniam. Repellat exercitationem non sit delectus in distinctio.', 'facere', 71740, NULL, '2008-01-13 15:51:20', '2009-01-04 16:01:55');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('70', '7', '70', 'Necessitatibus saepe saepe numquam fugiat aut temporibus impedit. Aut est commodi laborum sed quo aut. Tempore enim suscipit rerum nisi voluptas. Explicabo eius sit enim commodi optio dolorem. Consectetur et rerum expedita quis possimus veniam voluptatem sapiente.', 'quisquam', 0, NULL, '1985-12-17 12:30:12', '2000-09-06 06:24:23');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('71', '3', '71', 'Ipsa ut quos iste adipisci consectetur. Tempore et provident in reiciendis autem.', 'velit', 5615926, NULL, '1990-02-16 14:37:16', '2005-12-28 13:23:58');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('72', '10', '72', 'Ducimus sit esse perferendis sint maxime laudantium odit. Ut deleniti vel dolores eveniet nihil quia non deleniti. Voluptas consectetur mollitia qui voluptates facere vel quidem. Corrupti et eius rerum quam et. Perferendis adipisci illum quis provident exercitationem.', 'distinctio', 97036136, NULL, '1981-11-15 19:17:52', '2000-11-23 19:13:14');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('73', '10', '73', 'Eius quia voluptatem eius voluptas eaque. Aut ratione eos earum nisi ea. Eius voluptas enim rem maiores error.', 'ex', 31686, NULL, '1999-10-05 17:38:49', '1994-07-20 09:32:02');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('74', '5', '74', 'Accusamus eum similique ut et quo. Maiores qui ut architecto ut.', 'rerum', 5499701, NULL, '1995-06-05 05:34:53', '1994-11-02 05:40:40');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('75', '5', '75', 'Illum dolor provident similique excepturi repudiandae. Perferendis iure sit et aliquam corporis voluptatem velit. Qui minus accusamus facilis ducimus veritatis aut suscipit. Nemo deleniti ipsa voluptate sequi.', 'deserunt', 8640247, NULL, '1996-08-09 21:38:15', '2007-06-26 21:39:01');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('76', '5', '76', 'Ut voluptate esse dolores est iste veniam esse. Ipsam id atque necessitatibus ipsum consectetur corporis veniam. Inventore nemo accusamus sequi laboriosam et quae et.', 'et', 4640358, NULL, '2001-07-08 05:39:05', '2005-10-07 14:16:43');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('77', '5', '77', 'Ut nemo commodi id voluptatem qui voluptatem. Consequatur id non quasi tempora enim optio provident iure. Qui aspernatur ducimus dolores fugit numquam aliquam. Illum consectetur maxime dolore quia debitis suscipit doloremque explicabo. Ut pariatur impedit provident quaerat.', 'odio', 58668, NULL, '1972-11-23 03:48:23', '1985-08-03 00:21:48');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('78', '9', '78', 'Et natus eum id et. Distinctio recusandae ut doloribus sit. Molestiae beatae magni temporibus deserunt quia modi eligendi. Aut fugiat voluptatem et asperiores cum ut.', 'autem', 0, NULL, '1988-11-24 01:34:16', '2002-10-05 20:34:35');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('79', '2', '79', 'Consequatur non repellendus cumque quia consequatur est eos. Aut quia facere unde voluptatibus autem dolores eligendi. Qui ea enim vel voluptate quaerat.', 'laboriosam', 43805, NULL, '1973-01-25 11:35:47', '2006-11-29 17:15:07');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('80', '3', '80', 'Excepturi dignissimos et dolorem accusantium autem. Debitis architecto molestias quidem ipsum. Voluptatem quia saepe nihil quos repellat voluptas ipsum nihil. Sunt et et et accusamus perspiciatis enim voluptatum. Laborum in id et pariatur.', 'tempora', 33685991, NULL, '1995-10-07 03:03:07', '2006-05-06 12:01:07');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('81', '2', '81', 'Deleniti ipsam aut aut ut. Ex ipsum excepturi voluptatem distinctio natus ratione.', 'debitis', 894959270, NULL, '2013-02-26 01:13:29', '1980-02-13 03:21:46');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('82', '5', '82', 'Ut voluptatem autem similique hic ab iusto. Possimus natus voluptas earum numquam est cum quisquam excepturi. Expedita quia impedit ut accusamus officiis modi. Veniam cumque laboriosam explicabo itaque sequi.', 'nemo', 1423, NULL, '2014-12-29 00:29:05', '1993-04-01 08:27:21');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('83', '9', '83', 'Rerum quidem veniam non sed. Commodi molestias aliquam ad. Quis ut voluptatibus quia et.', 'culpa', 1560, NULL, '1974-10-21 18:55:11', '1994-10-20 07:45:56');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('84', '6', '84', 'Neque vero labore enim quisquam. Animi et minima nihil numquam. Molestiae tempora aut architecto dolores ea perspiciatis amet occaecati. Ea accusamus molestiae dicta ut dolores ullam.', 'fugit', 562, NULL, '2019-08-20 09:41:08', '1981-05-17 14:29:48');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('85', '8', '85', 'Laborum dolor quia dolorum sed et autem vero aut. Delectus et assumenda molestiae autem in dolore aut. Provident ipsa pariatur alias sed unde recusandae.', 'deserunt', 45320267, NULL, '1974-08-04 08:37:39', '2004-03-08 16:14:30');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('86', '2', '86', 'Eos est aspernatur non impedit veniam atque dolor dolorem. Doloribus atque soluta nobis illo. Accusantium sed excepturi iusto alias.', 'placeat', 68764598, NULL, '2003-12-04 02:25:15', '1975-10-02 12:46:22');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('87', '6', '87', 'Non accusantium veniam temporibus et. Impedit est ut qui debitis ullam eligendi. Eveniet natus et similique exercitationem nulla beatae. Voluptas officiis aspernatur rem sed explicabo sed et.', 'occaecati', 0, NULL, '2003-01-11 17:19:53', '1981-04-27 11:45:31');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('88', '2', '88', 'Quos consequatur minima ut neque. Magni suscipit officiis quisquam amet in. Quia corporis necessitatibus blanditiis numquam voluptatem. Provident velit dignissimos aliquam voluptatibus. Natus distinctio inventore doloremque et.', 'est', 40425, NULL, '1987-11-12 14:55:44', '1978-10-11 20:31:25');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('89', '9', '89', 'Sunt quis rerum ullam laudantium voluptatem alias. Rem non commodi rerum ratione iusto reiciendis consequatur. Debitis culpa sequi ullam nostrum. Alias distinctio sunt qui molestiae et.', 'id', 67569, NULL, '1985-02-12 17:07:14', '1985-05-21 10:55:02');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('90', '10', '90', 'Eligendi reprehenderit amet veritatis repudiandae. Ad similique velit architecto amet voluptates adipisci. Libero quidem ut odio consequatur dignissimos tenetur. Non sint aut reiciendis eius culpa. Autem sunt velit autem occaecati.', 'delectus', 762, NULL, '1986-01-05 10:49:47', '1998-01-04 09:42:47');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('91', '6', '91', 'Soluta ut neque fuga. Quis vitae esse nobis velit. Autem est quasi incidunt nemo quo. Rerum est omnis iusto id culpa.', 'atque', 9, NULL, '2019-10-30 03:25:31', '2002-10-24 05:10:20');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('92', '9', '92', 'Aspernatur et quia autem perferendis. Animi molestiae facilis qui est et velit tenetur.', 'eos', 274, NULL, '2002-12-07 01:34:29', '1996-11-04 16:40:51');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('93', '7', '93', 'Consequatur necessitatibus inventore facere aut. Ipsum repellendus sed ratione eius rerum praesentium. Voluptate aliquid aut et.', 'saepe', 84001571, NULL, '1976-01-17 23:13:51', '2015-06-19 19:28:39');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('94', '10', '94', 'Praesentium natus tenetur itaque eum. Tempora maiores illum laboriosam quo deserunt doloribus voluptate quia. Repudiandae adipisci quidem autem numquam et officia est.', 'dolores', 5913017, NULL, '1992-10-10 22:27:00', '1980-07-11 00:55:12');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('95', '9', '95', 'Libero voluptatum sequi magni tenetur dicta. Et praesentium sunt adipisci reprehenderit repudiandae.', 'deleniti', 302484615, NULL, '1989-06-10 10:57:16', '1982-12-02 10:26:31');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('96', '3', '96', 'Non consequuntur voluptatibus omnis unde. Aut repudiandae assumenda occaecati rerum magnam. Esse consequuntur quaerat est dolorum voluptatem.', 'soluta', 5671256, NULL, '2021-05-11 10:02:04', '1976-04-21 23:03:07');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('97', '1', '97', 'Earum asperiores aut vitae ut iure ut. In quibusdam eius perspiciatis quo illo quia deleniti. Incidunt ducimus temporibus consequatur labore et. Aut dolorem aut molestiae hic similique.', 'minima', 7, NULL, '1982-01-04 23:39:48', '1993-08-24 03:25:04');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('98', '1', '98', 'Voluptas omnis explicabo asperiores unde provident. Ut dolorum unde ex modi. Enim et accusantium in illum in nihil dolores.', 'illo', 666, NULL, '1977-04-27 23:04:03', '1997-10-28 10:29:59');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('99', '8', '99', 'Veniam dolorem nostrum atque sed dignissimos et provident. Qui fugiat id laboriosam quaerat excepturi ratione. Tempore porro assumenda consequuntur fugit ea sit animi.', 'perspiciatis', 527658541, NULL, '2007-10-28 00:11:57', '1995-06-22 01:23:13');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('100', '4', '100', 'Nobis incidunt omnis vel dolorem voluptas autem repellendus. Minus sed consequatur sit est. Ex sint laboriosam dignissimos. Perspiciatis quod tempora aliquam iure aut.', 'possimus', 266126641, NULL, '2023-01-11 22:46:54', '1971-12-15 14:00:33');


#
# TABLE STRUCTURE FOR: media_types
#

DROP TABLE IF EXISTS `media_types`;

CREATE TABLE `media_types` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('1', 'sint', '1980-06-27 05:09:08', '1977-04-26 16:28:24');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('2', 'ullam', '2001-07-26 23:38:31', '2006-03-28 12:33:14');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('3', 'dolor', '2003-03-16 11:38:26', '1978-12-26 23:36:59');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('4', 'deleniti', '1979-03-21 14:13:04', '2022-11-25 06:21:46');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('5', 'molestiae', '2007-12-25 13:54:53', '1998-04-30 22:39:32');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('6', 'autem', '2014-09-28 04:02:01', '1973-12-28 10:46:17');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('7', 'magni', '2003-07-20 00:34:23', '2013-07-06 17:11:49');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('8', 'qui', '1993-09-29 00:09:25', '2014-02-10 19:55:44');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('9', 'id', '1987-07-09 05:39:26', '2002-09-26 09:10:51');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('10', 'aliquam', '1997-06-15 15:46:19', '1978-02-03 07:33:25');


#
# TABLE STRUCTURE FOR: messages
#

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `from_user_id` bigint(20) unsigned NOT NULL,
  `to_user_id` bigint(20) unsigned NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `from_user_id` (`from_user_id`),
  KEY `to_user_id` (`to_user_id`),
  CONSTRAINT `messages_ibfk_1` FOREIGN KEY (`from_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `messages_ibfk_2` FOREIGN KEY (`to_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('1', '1', '1', 'Quae alias autem et quaerat eum. Mollitia mollitia architecto voluptatem voluptatem tenetur. Repellat nemo rerum aut vel. Est provident earum tempora iure eum rerum quod.', '1982-12-07 13:18:01');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('2', '2', '2', 'Adipisci omnis architecto ut et non vero adipisci ducimus. Vel nemo ipsam vero. Dolorem incidunt culpa sit quibusdam dignissimos tenetur quas.', '1994-06-28 22:37:20');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('3', '3', '3', 'Ad occaecati id atque ut mollitia quo. Et nesciunt laudantium quidem id voluptatum.', '1997-01-08 01:32:42');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('4', '4', '4', 'Accusantium id ducimus maiores fugit nostrum sit. Architecto expedita sunt laborum quia quia quos. Qui voluptas et et quia harum eius quis.', '2020-06-29 04:00:16');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('5', '5', '5', 'Assumenda quidem odit et officia laudantium provident explicabo aliquam. Quisquam nihil labore necessitatibus quis et. Sint vero culpa itaque ut.', '2002-01-14 02:36:03');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('6', '6', '6', 'Reiciendis est sed quo autem recusandae beatae. Dolore exercitationem et et officiis tempora explicabo in corrupti. Dolorum nemo et asperiores aut laudantium. Aut quidem ut atque corrupti aspernatur.', '1997-10-11 08:45:33');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('7', '7', '7', 'Eveniet eaque doloremque sapiente sit vel vitae. Deleniti dolor fugiat non explicabo officiis odio. A provident ducimus dolor nihil. Ratione quia ut soluta sed nisi distinctio error.', '1988-02-15 11:21:58');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('8', '8', '8', 'Id delectus fugit animi omnis dolor repellat. Soluta itaque omnis repellendus recusandae fugit debitis quia. Unde sequi dolor officiis quia eligendi labore. Repellendus quia aspernatur facilis officiis ut aspernatur.', '1998-02-10 07:13:04');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('9', '9', '9', 'Hic vel animi dolor eos tempora. Labore repellendus accusantium non officiis libero id omnis. Temporibus a recusandae expedita est vitae nihil et. Vitae est libero autem ipsam similique sit. Aut numquam qui officia ut.', '1974-02-13 04:19:33');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('10', '10', '10', 'Iste sint maxime delectus quia aspernatur. Blanditiis doloremque pariatur eos ab similique necessitatibus. Minima quia quasi voluptate et consequatur nesciunt minima.', '1978-07-15 05:08:41');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('11', '11', '11', 'Nisi dolor ratione accusantium incidunt. Maxime inventore rem eos officiis laboriosam dicta est. Quo modi repellat nobis et nihil non fuga. Necessitatibus quia voluptate perferendis rerum non.', '2020-01-24 16:49:30');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('12', '12', '12', 'Magnam soluta sunt quis ut. Odit voluptas est voluptas unde aut ut architecto non. Laborum quo ex at natus corrupti ipsa. At adipisci ut consequatur autem sit et quia.', '1973-09-08 19:46:33');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('13', '13', '13', 'Minus et molestias quaerat reiciendis qui consectetur. Molestias necessitatibus corrupti nemo consequatur magnam iure. Non maiores non hic. Itaque ea repudiandae et.', '1984-11-04 15:30:06');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('14', '14', '14', 'Ab enim ut non et hic quia alias. Sequi qui quisquam architecto deleniti. Et et repudiandae soluta nisi neque. Consectetur ut dicta voluptatibus asperiores est voluptatem nam alias.', '1986-11-11 07:38:28');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('15', '15', '15', 'Qui et magni id ab voluptatum enim aut. Enim cumque corporis est officiis blanditiis eveniet nesciunt. Et est et cum placeat.', '2002-11-12 21:08:32');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('16', '16', '16', 'Quis corporis suscipit delectus et eveniet. Iste sed iusto veritatis et id ullam. Dolorem amet dolores officiis saepe nobis et. Et molestias saepe omnis. Eos aperiam unde necessitatibus.', '2014-02-08 21:03:00');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('17', '17', '17', 'Accusamus animi voluptatem et nobis eos molestiae consequuntur. Id earum rerum occaecati neque. Inventore maiores consequatur nostrum iste qui.', '1976-06-02 03:38:35');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('18', '18', '18', 'Vel deserunt nihil itaque. Exercitationem ut est error velit accusamus ut aut odit. Consequatur voluptatum distinctio eligendi nulla rem quia possimus unde.', '2006-07-10 19:24:46');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('19', '19', '19', 'Cum architecto enim ullam laboriosam cumque. Facere sequi consequuntur corporis non aut sunt excepturi. Odit voluptatem nesciunt aut iste quasi consequuntur. Animi labore repellendus deserunt illo quia facilis. Debitis qui ratione voluptate autem ut aut.', '2021-09-29 08:35:04');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('20', '20', '20', 'Vero est sunt quam natus voluptatem accusantium. Sit eos et aut itaque. Iusto tenetur nemo nesciunt et in. Eius ab vel quis incidunt. Consequatur et aperiam beatae qui.', '2004-05-09 15:32:52');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('21', '21', '21', 'Et ut fuga eaque aperiam eveniet tempore. Aut in qui occaecati non quidem voluptatum soluta saepe. Sit fuga provident et commodi aut qui debitis nam. Suscipit excepturi nulla veniam optio quo rerum illo.', '1989-06-11 23:04:46');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('22', '22', '22', 'Quaerat ipsam laboriosam nobis odio qui. Ullam suscipit similique iste sit rem illum. Qui voluptatibus omnis veniam reprehenderit ut.', '1973-08-08 02:13:40');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('23', '23', '23', 'Eum corporis nihil expedita animi est incidunt. Magni est nihil sunt et qui autem. Ad repellendus est sunt. Magni ut quo cum soluta corporis provident.', '1990-05-23 08:36:28');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('24', '24', '24', 'Ratione corrupti perferendis ea possimus fugiat quam rerum. Quia iste harum adipisci nihil dolor totam et quibusdam. Voluptas qui sed magni veritatis totam voluptatem iste assumenda. Ipsum illo nesciunt nobis velit minima explicabo.', '1976-09-02 10:34:14');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('25', '25', '25', 'Praesentium in et quidem laborum. Omnis voluptas rerum tenetur nihil necessitatibus voluptates. Eius minima quia ratione iusto ut sint sed.', '2016-10-18 22:54:36');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('26', '26', '26', 'Vel saepe est ut ut. Pariatur eaque esse nesciunt in. Ipsam consequatur voluptatibus et ut sit animi.', '1985-10-22 19:04:14');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('27', '27', '27', 'Est dolorem sequi velit voluptas sapiente. Cupiditate facilis culpa quia ut quia ut fugiat. Tempore asperiores ut vel dolorum error consectetur.', '1975-11-19 12:12:28');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('28', '28', '28', 'Dolor omnis atque nobis iure tempore. Recusandae doloribus non vero voluptates libero expedita dicta repellendus. Eos soluta unde veniam et facere. Et veritatis sunt id non.', '2007-08-16 04:38:09');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('29', '29', '29', 'Eaque ullam ad atque consequatur maxime enim accusamus. Molestias expedita vel iusto adipisci et. Blanditiis ea animi cumque occaecati fugiat et.', '1974-05-28 05:09:45');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('30', '30', '30', 'Asperiores dolor iste voluptatem quod natus. Similique sunt sit cum et ea incidunt vitae. Enim quo deleniti quia nobis quam in necessitatibus. Velit culpa esse itaque omnis.', '1984-07-24 11:44:16');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('31', '31', '31', 'Voluptas et ut tenetur qui. Aut sit ab modi dignissimos consequuntur ab. Nisi in perferendis repellendus ut quidem magni non. Nesciunt voluptas est et.', '2012-09-05 18:16:10');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('32', '32', '32', 'Dolorum iste tempora et sint et molestiae quia ut. Enim illum tempora repudiandae molestias necessitatibus. Debitis sunt aut est distinctio. Aut earum et unde.', '2012-09-21 01:28:16');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('33', '33', '33', 'Iure adipisci molestiae et consequatur perferendis tenetur. Corrupti ut dolore itaque necessitatibus sed aliquid. Ab molestiae est magnam in hic.', '1997-09-29 23:22:50');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('34', '34', '34', 'Similique aperiam quidem et perferendis et nisi minima. Totam quia doloribus sed cumque quis neque quae. Sunt rerum quibusdam repellat fugit. Fugit voluptatem dolorem quo. Sunt aliquid ducimus officia eveniet distinctio.', '2021-06-10 23:48:32');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('35', '35', '35', 'Sunt iusto molestiae nam iusto consequatur. Rerum aut in aut placeat illum in architecto maiores. Sunt rerum qui accusamus consequatur velit esse molestiae nisi. Iste fugit ea numquam ipsam vel doloremque qui. Iusto cum corrupti id adipisci dolores expedita ut.', '1979-02-24 22:08:08');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('36', '36', '36', 'Maiores placeat atque enim sit fugit. Aut harum nesciunt molestias asperiores ut. Repellat aliquid sit cum. Eius et magnam alias magni.', '1985-04-20 05:26:06');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('37', '37', '37', 'Alias error repellat illo. Dolores cupiditate optio autem pariatur qui. Veritatis voluptas nobis temporibus voluptatibus quis. At hic ut ab qui.', '1994-08-30 11:02:19');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('38', '38', '38', 'Eaque culpa maxime sit placeat enim non. Magnam corporis et in. Aperiam natus explicabo et ut.', '1989-01-04 03:38:06');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('39', '39', '39', 'Consequuntur consequatur nihil dolores et. Fugiat pariatur earum sed quam odit voluptatem. Deleniti labore quo repudiandae consequuntur iste culpa. Maiores magnam nisi labore quis consequuntur occaecati.', '2010-02-22 12:46:16');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('40', '40', '40', 'Voluptas molestias earum reprehenderit quis incidunt alias temporibus. Mollitia ut perspiciatis et omnis omnis suscipit eveniet. Omnis cupiditate id commodi vitae veritatis iure dolores. A quis nihil delectus nostrum. Enim numquam vitae quidem quae tempore rem molestiae.', '1979-11-12 17:23:36');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('41', '41', '41', 'Voluptatibus et commodi sit. Repellat tempore est in voluptatibus. Voluptatibus repellat aliquam repellendus ducimus.', '2012-09-18 05:48:42');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('42', '42', '42', 'Sed et voluptas est provident ab. Eaque ut voluptatem error quam et vel. Reiciendis voluptatem repudiandae dolorum iure molestias voluptas omnis.', '1999-08-27 01:19:39');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('43', '43', '43', 'Incidunt reiciendis enim enim sed. Ut veniam iure rerum eaque et consectetur. Eum qui officia et dolorum commodi reiciendis. Molestiae voluptatem at alias suscipit quia sint.', '1989-09-16 13:58:25');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('44', '44', '44', 'Iusto qui eos cum error blanditiis et. Et totam quas eum. Rerum et quibusdam ullam qui qui iste voluptatem. Ipsa aut cupiditate ab quos.', '1989-12-28 17:17:28');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('45', '45', '45', 'Itaque et quae corrupti quia voluptas sunt ipsum aperiam. Sed pariatur omnis tempore ipsum rerum. Ut rerum aliquid at nostrum nobis aperiam id at. Voluptatem animi dignissimos exercitationem dolorum sunt voluptate.', '2016-08-02 08:27:18');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('46', '46', '46', 'Consequatur id est veritatis sed sed. Fugiat sit cupiditate ut quod eligendi aut odio. Cupiditate est voluptate illum. Voluptatibus perspiciatis inventore at omnis et.', '2011-07-09 22:24:20');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('47', '47', '47', 'Est et qui odit minima nisi quibusdam. Repudiandae et quia culpa officia cum. Tenetur et sint et eius.', '2001-09-16 14:16:43');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('48', '48', '48', 'Ab officia a eaque quidem provident ut fugit saepe. Quas maxime corporis sed tempore quis reiciendis nisi iure. Doloremque aut nesciunt ipsam quasi. Repellendus voluptate provident earum repellat minus eaque deleniti.', '1972-10-05 03:12:57');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('49', '49', '49', 'Sequi omnis quas iste veritatis facilis. Qui vero vel excepturi voluptatem. Consequatur voluptatem quos qui voluptates. Impedit itaque nam cumque recusandae. Harum non placeat facilis fugit.', '2011-03-25 07:57:14');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('50', '50', '50', 'Alias et minima doloremque rerum modi vel. Incidunt asperiores corporis qui enim magni laboriosam aliquam. Praesentium qui aliquam odit exercitationem laborum temporibus sit.', '2006-08-15 05:57:30');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('51', '51', '51', 'Nesciunt dolor molestiae rem itaque eum. Eum illo assumenda est consequuntur natus. Quisquam eveniet voluptatem laborum officia reprehenderit quisquam. Beatae ad exercitationem nulla quo ea impedit et.', '1983-02-22 07:59:00');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('52', '52', '52', 'Nemo quis ipsam nobis eos consequuntur beatae libero. Nihil accusamus eius omnis rem sint. Ut eaque aut eum quos modi quia.', '1982-09-11 20:46:20');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('53', '53', '53', 'Ea officia molestias mollitia dolorem reprehenderit sunt. Et quod possimus omnis maiores quo eum esse. Natus adipisci recusandae enim soluta aspernatur et ut. Quisquam praesentium suscipit enim est laborum praesentium qui. Iusto nihil qui ducimus tempora.', '2014-02-22 10:14:38');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('54', '54', '54', 'Dolorem inventore non et. In delectus et odio magni iste eveniet aspernatur aut. Fugit adipisci adipisci dolor accusantium molestias. Sed non fugiat velit cupiditate.', '2010-02-19 06:25:49');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('55', '55', '55', 'Praesentium quisquam iste deleniti ut. Eveniet assumenda nam recusandae fugiat aut. Dolorum autem rerum illo deleniti maxime ut sapiente.', '1984-02-15 16:53:27');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('56', '56', '56', 'Quia optio id est molestias. Itaque repellat iusto autem nemo. Qui dolorem itaque odio. Ut impedit inventore veniam ab qui et.', '2021-07-30 18:38:42');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('57', '57', '57', 'Quae et et animi. Aut sit atque animi eaque placeat et. Labore repellendus temporibus dolor ea nobis.', '1976-01-10 07:18:09');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('58', '58', '58', 'Molestiae eos et ipsam dolorem pariatur sapiente velit deleniti. Libero quas animi rerum assumenda illo numquam ipsum. Iure pariatur quia dolorem laborum voluptatum.', '2004-03-17 08:56:46');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('59', '59', '59', 'Sint unde facilis iste itaque. Dolorum quis nam quia quasi qui error.', '2005-06-30 09:35:45');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('60', '60', '60', 'Rem sed et rerum asperiores numquam ut. Perspiciatis qui quia sed ullam ad doloremque eaque. Dolores similique ut enim doloremque consectetur dicta quod enim.', '1989-07-27 21:26:59');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('61', '61', '61', 'Fugit eum sed illo voluptatibus odit dolores maxime. Quia inventore dolor enim voluptatem velit at. Ipsa minus fugiat quia eos eligendi quia reiciendis.', '1994-05-16 05:32:49');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('62', '62', '62', 'Similique et veritatis officiis. Nostrum vero qui error nihil est atque.', '2002-04-06 17:57:49');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('63', '63', '63', 'Ut cupiditate aut illum et est aperiam. Eum voluptatem ipsam adipisci in mollitia veniam. Magnam eligendi veritatis dicta impedit.', '1971-07-28 19:34:06');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('64', '64', '64', 'Sint blanditiis sit dolor sit dolores. Aut blanditiis velit ut dolor fuga. Repudiandae quia deleniti ratione aspernatur iure esse velit. Eius et aut dolorem dolor vero.', '1997-12-10 16:26:27');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('65', '65', '65', 'Autem nobis est aut. Blanditiis eaque quos rerum sequi. Quisquam earum illo voluptas. Nisi reiciendis adipisci ut. Iure consectetur et est omnis quibusdam.', '1986-02-25 09:48:56');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('66', '66', '66', 'Omnis qui dolorum necessitatibus. Ut voluptates delectus et nemo expedita ut. Magni modi repudiandae eum facere voluptatem beatae voluptatem inventore. Expedita libero quas consequatur aliquam sunt omnis.', '2006-06-22 08:27:43');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('67', '67', '67', 'Nam autem soluta voluptatem dolores quae. Et sint aut id soluta aut sit repellendus. Eum ducimus aut aut tempore culpa cum. Aperiam sequi sint vel nihil vel nam eveniet. Voluptatem expedita libero enim nulla dolore.', '1994-04-09 13:17:27');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('68', '68', '68', 'Nihil sint optio pariatur sit et eaque qui magni. Vitae dolorem ipsa maiores omnis. Vero aspernatur voluptatem dolor alias voluptatum et voluptas.', '2022-10-15 07:12:13');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('69', '69', '69', 'Modi repellat quidem sunt voluptatibus quod. Distinctio et a rem ut. Voluptatem qui sed numquam error sed cumque. Et quia dolores saepe error commodi.', '2012-09-11 05:05:53');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('70', '70', '70', 'Sed dolore et ab eius. Optio delectus libero quis et omnis qui. Aut maiores est et sed minima. Numquam rerum blanditiis accusamus dolorem similique mollitia dolores commodi. Placeat maiores fugiat deleniti.', '1999-09-29 09:15:47');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('71', '71', '71', 'Tempora molestiae est quia ad modi excepturi. Minima et dicta magnam voluptatem doloribus accusantium. Commodi repellendus dolor iusto voluptatem.', '1988-04-30 00:29:21');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('72', '72', '72', 'Officia omnis eum et eaque velit. Eum quos quaerat ipsum et voluptatum molestiae. Perspiciatis aliquid quaerat explicabo voluptas et voluptas sequi.', '1984-12-02 05:56:14');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('73', '73', '73', 'Quis sit porro aliquam maiores. Minus amet qui in quia est. Voluptatem facilis facere dolorem ut est expedita omnis. Et consequatur sit tempore et inventore.', '1973-09-05 11:57:24');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('74', '74', '74', 'Vel molestiae culpa magni velit aut ea minus dolorum. Sint et optio ut nulla recusandae. Odio dolore quod temporibus sint.', '2022-11-29 07:01:41');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('75', '75', '75', 'Deleniti iure et suscipit culpa ipsa saepe magnam numquam. Est corporis eos enim qui. Magnam qui quam aliquam dolores quibusdam.', '1978-03-18 21:52:55');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('76', '76', '76', 'Ut suscipit ad ducimus voluptatem itaque fugiat. Ab dolore fugiat qui voluptates. Modi voluptatem eveniet at qui exercitationem aliquid. Vel rem nulla eos sint et non et ratione. Vero sunt aut inventore velit libero.', '1993-06-30 07:39:41');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('77', '77', '77', 'Libero expedita ducimus dolores unde voluptates corporis. Quisquam sint at sunt qui. Iusto aperiam quisquam nihil dolorum.', '1988-05-24 12:49:33');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('78', '78', '78', 'Accusamus laboriosam enim sed iure. Voluptatem qui accusamus incidunt tempore. Quidem facere repellendus et consequuntur.', '1977-07-23 02:15:22');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('79', '79', '79', 'Vel excepturi quas vero qui. Temporibus est natus odit quod quis. Repellendus minus et non optio perferendis dolorum. A iusto corporis magnam cumque non vel velit.', '1994-01-01 07:51:27');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('80', '80', '80', 'Optio commodi repudiandae qui commodi velit excepturi aut ducimus. Non veniam omnis debitis qui voluptatem. Maiores quia nisi eligendi veniam sint. Expedita totam nesciunt nulla.', '1992-08-26 21:12:13');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('81', '81', '81', 'Ea ut ullam perferendis sed. Quisquam vel rerum eum ut sunt dolores et. Ipsum molestias ex natus dolorem. Cum et quod voluptas perspiciatis consequatur.', '2014-07-05 09:10:53');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('82', '82', '82', 'Quia aut eos suscipit incidunt vero. Omnis qui quo dolor esse. Exercitationem minus a nihil nostrum nemo fugit. Repudiandae iure natus vero impedit.', '2013-11-10 10:52:13');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('83', '83', '83', 'Ut voluptas est accusamus rerum. Eum dolores possimus ipsa et. Quia et reiciendis dolor est vitae. A perspiciatis quas deserunt autem eum ipsa.', '1979-10-19 08:44:51');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('84', '84', '84', 'Qui eos exercitationem provident repudiandae ipsa et. Velit id quas eligendi quisquam sed. Libero commodi dolor culpa velit exercitationem aspernatur. Earum ut est dolorem ad suscipit ratione delectus quis. Tempora occaecati alias ad porro.', '1988-09-04 07:49:04');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('85', '85', '85', 'Dolor molestias unde veniam. Ab dolores minus non vel. Voluptatem aut enim ab quam.', '1983-10-01 00:26:56');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('86', '86', '86', 'Repellat aperiam sequi dolore ipsa eos ut. Eius ut voluptates rem animi. Ducimus impedit assumenda perferendis ipsum in consequatur occaecati accusamus. Nemo maiores repellendus dolores ea sint molestias est.', '2012-12-14 08:43:00');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('87', '87', '87', 'Deleniti est quia eaque modi magnam. Quo laudantium laudantium sit et assumenda ducimus ipsa voluptates. Totam maiores dicta cupiditate qui unde. Commodi voluptas aspernatur et facilis qui voluptas.', '2012-03-20 18:19:14');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('88', '88', '88', 'Numquam doloremque quam distinctio omnis nisi consequuntur quibusdam officia. Non explicabo reiciendis qui occaecati consectetur et qui.', '2002-06-17 22:01:31');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('89', '89', '89', 'Ab et aut libero et sunt. Ipsam quod sed quam vero ut praesentium. Et quas ducimus ut excepturi esse aut a.', '2005-01-17 04:56:37');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('90', '90', '90', 'Itaque repellat architecto porro nemo assumenda molestias rem. Omnis error vitae voluptatem illum culpa sit. Incidunt minus fuga repudiandae est quia nobis. Tempora blanditiis eligendi quidem non voluptate ullam.', '1983-06-11 04:18:13');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('91', '91', '91', 'Aliquid suscipit hic maiores possimus sint et dolore. Aut labore sit autem est. Et atque culpa alias in dolorem. Laboriosam fugiat pariatur accusamus esse.', '1986-07-22 04:55:57');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('92', '92', '92', 'Velit sed delectus et quia. Illum et corrupti in deserunt. Ullam est ut fuga quisquam recusandae. Nulla error facilis veritatis consequuntur repudiandae.', '2002-11-20 07:02:09');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('93', '93', '93', 'Et eos eos quos autem. Tempore unde commodi labore suscipit. Eum eligendi enim tenetur rerum dicta.', '2007-05-02 13:53:05');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('94', '94', '94', 'Enim magni ut perferendis unde. Cum nulla et facere veniam ipsum cupiditate.', '2008-06-06 12:39:57');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('95', '95', '95', 'Impedit voluptatibus amet praesentium qui exercitationem reprehenderit. Voluptate ut fugiat molestiae voluptatem autem enim id magni. Totam quis et vero est odit saepe sit. Sed recusandae placeat aspernatur aliquid cumque perferendis.', '2005-02-23 10:22:51');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('96', '96', '96', 'Ut sit velit et maiores sint sit recusandae. Ipsa nostrum temporibus quas molestias. Sed natus quam consequatur expedita voluptatem ullam. Veniam quam libero quia magni.', '2014-09-06 01:19:06');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('97', '97', '97', 'Sunt enim iusto labore incidunt laborum. Rerum cupiditate quia sunt sunt modi quis sit. Error excepturi consequuntur dolor non assumenda. Qui soluta et commodi dolor sed incidunt.', '1981-03-05 10:48:08');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('98', '98', '98', 'Enim laborum itaque illum vel. Quidem porro fuga explicabo ipsa quo rem dolores reprehenderit. Quod temporibus eveniet a debitis et fugit sit. Eos necessitatibus velit sit laborum sequi debitis quia quia.', '1998-05-01 17:46:37');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('99', '99', '99', 'Ea ex in officia quisquam perferendis consequatur architecto. Quaerat et veritatis esse aut expedita. Sed minima sed velit beatae modi.', '1974-12-04 09:58:17');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('100', '100', '100', 'Numquam officiis quas dolores nisi sed harum. Et ducimus beatae harum ipsam. Ab inventore suscipit et. Est esse voluptatem voluptates ab provident ipsa.', '2011-11-29 13:09:47');


#
# TABLE STRUCTURE FOR: photo_albums
#

DROP TABLE IF EXISTS `photo_albums`;

CREATE TABLE `photo_albums` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `photo_albums_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('1', 'labore', '27');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('2', 'possimus', '51');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('3', 'omnis', '80');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('4', 'voluptas', '66');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('5', 'et', '100');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('6', 'omnis', '59');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('7', 'culpa', '27');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('8', 'eos', '63');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('9', 'iusto', '62');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('10', 'perspiciatis', '45');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('11', 'voluptates', '67');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('12', 'sit', '25');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('13', 'nihil', '98');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('14', 'voluptas', '21');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('15', 'magnam', '27');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('16', 'blanditiis', '33');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('17', 'harum', '12');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('18', 'porro', '21');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('19', 'nobis', '22');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('20', 'temporibus', '98');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('21', 'quo', '58');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('22', 'et', '88');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('23', 'veniam', '66');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('24', 'et', '43');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('25', 'quia', '16');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('26', 'et', '86');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('27', 'aliquam', '64');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('28', 'magni', '8');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('29', 'soluta', '27');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('30', 'ipsum', '42');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('31', 'ut', '13');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('32', 'voluptas', '81');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('33', 'quia', '41');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('34', 'fugit', '71');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('35', 'eos', '44');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('36', 'ut', '36');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('37', 'iure', '77');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('38', 'quod', '64');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('39', 'eum', '77');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('40', 'dolores', '81');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('41', 'excepturi', '2');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('42', 'et', '85');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('43', 'et', '99');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('44', 'aut', '78');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('45', 'minima', '12');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('46', 'illum', '88');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('47', 'ut', '62');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('48', 'possimus', '54');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('49', 'quia', '78');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('50', 'tempora', '24');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('51', 'rem', '61');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('52', 'quis', '92');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('53', 'illum', '4');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('54', 'sapiente', '99');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('55', 'qui', '33');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('56', 'est', '72');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('57', 'veritatis', '6');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('58', 'maxime', '8');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('59', 'commodi', '52');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('60', 'nihil', '21');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('61', 'consectetur', '42');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('62', 'perspiciatis', '99');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('63', 'aliquam', '75');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('64', 'neque', '14');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('65', 'est', '43');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('66', 'eos', '76');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('67', 'necessitatibus', '82');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('68', 'qui', '67');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('69', 'dolores', '62');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('70', 'provident', '40');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('71', 'suscipit', '28');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('72', 'voluptatem', '93');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('73', 'porro', '65');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('74', 'earum', '99');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('75', 'id', '68');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('76', 'ipsa', '29');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('77', 'necessitatibus', '28');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('78', 'placeat', '21');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('79', 'dolore', '8');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('80', 'atque', '54');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('81', 'illo', '63');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('82', 'quia', '55');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('83', 'qui', '11');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('84', 'nihil', '95');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('85', 'quis', '92');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('86', 'odit', '98');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('87', 'voluptatem', '6');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('88', 'pariatur', '61');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('89', 'atque', '69');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('90', 'sit', '90');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('91', 'voluptatem', '66');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('92', 'quia', '22');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('93', 'suscipit', '31');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('94', 'iure', '60');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('95', 'facilis', '65');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('96', 'placeat', '71');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('97', 'quos', '54');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('98', 'unde', '38');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('99', 'tenetur', '46');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('100', 'nesciunt', '35');


#
# TABLE STRUCTURE FOR: photos
#

DROP TABLE IF EXISTS `photos`;

CREATE TABLE `photos` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `album_id` bigint(20) unsigned NOT NULL,
  `media_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `album_id` (`album_id`),
  KEY `media_id` (`media_id`),
  CONSTRAINT `photos_ibfk_1` FOREIGN KEY (`album_id`) REFERENCES `photo_albums` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `photos_ibfk_2` FOREIGN KEY (`media_id`) REFERENCES `media` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('1', '71', '1');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('2', '81', '2');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('3', '12', '3');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('4', '3', '4');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('5', '30', '5');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('6', '34', '6');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('7', '77', '7');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('8', '67', '8');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('9', '41', '9');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('10', '75', '10');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('11', '9', '11');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('12', '70', '12');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('13', '47', '13');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('14', '21', '14');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('15', '8', '15');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('16', '34', '16');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('17', '27', '17');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('18', '7', '18');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('19', '40', '19');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('20', '68', '20');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('21', '6', '21');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('22', '94', '22');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('23', '9', '23');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('24', '39', '24');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('25', '68', '25');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('26', '81', '26');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('27', '16', '27');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('28', '21', '28');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('29', '40', '29');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('30', '82', '30');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('31', '87', '31');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('32', '23', '32');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('33', '34', '33');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('34', '81', '34');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('35', '66', '35');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('36', '31', '36');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('37', '26', '37');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('38', '85', '38');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('39', '12', '39');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('40', '54', '40');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('41', '89', '41');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('42', '93', '42');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('43', '69', '43');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('44', '54', '44');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('45', '47', '45');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('46', '60', '46');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('47', '59', '47');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('48', '86', '48');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('49', '83', '49');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('50', '10', '50');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('51', '91', '51');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('52', '71', '52');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('53', '49', '53');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('54', '94', '54');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('55', '58', '55');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('56', '94', '56');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('57', '4', '57');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('58', '65', '58');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('59', '76', '59');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('60', '93', '60');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('61', '80', '61');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('62', '36', '62');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('63', '29', '63');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('64', '86', '64');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('65', '99', '65');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('66', '89', '66');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('67', '65', '67');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('68', '75', '68');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('69', '37', '69');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('70', '86', '70');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('71', '9', '71');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('72', '38', '72');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('73', '61', '73');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('74', '55', '74');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('75', '12', '75');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('76', '38', '76');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('77', '47', '77');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('78', '98', '78');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('79', '8', '79');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('80', '20', '80');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('81', '66', '81');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('82', '34', '82');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('83', '100', '83');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('84', '49', '84');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('85', '21', '85');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('86', '89', '86');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('87', '31', '87');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('88', '10', '88');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('89', '54', '89');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('90', '23', '90');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('91', '59', '91');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('92', '75', '92');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('93', '96', '93');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('94', '20', '94');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('95', '21', '95');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('96', '54', '96');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('97', '15', '97');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('98', '8', '98');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('99', '72', '99');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('100', '50', '100');


#
# TABLE STRUCTURE FOR: profiles
#

DROP TABLE IF EXISTS `profiles`;

CREATE TABLE `profiles` (
  `user_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `gender` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `photo_id` bigint(20) unsigned DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `hometown` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  KEY `fk_photo_id` (`photo_id`),
  CONSTRAINT `fk_photo_id` FOREIGN KEY (`photo_id`) REFERENCES `photos` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `fk_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('1', 'f', '1989-12-09', '83', '2006-03-16 09:52:30', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('2', 'm', '1993-12-28', '52', '1974-12-07 08:29:03', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('3', 'f', '1981-05-26', '35', '1987-11-10 01:23:20', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('4', 'm', '1982-05-16', '94', '2009-04-27 10:39:11', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('5', 'm', '1970-10-24', '74', '1970-06-26 11:27:40', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('6', 'm', '2003-06-10', '37', '1985-06-25 03:42:56', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('7', 'f', '1982-02-14', '51', '1998-03-10 14:20:29', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('8', 'm', '2012-02-22', '76', '2002-06-28 05:27:39', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('9', 'f', '2020-02-24', '55', '1978-07-23 09:33:11', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('10', 'f', '2008-08-19', '72', '1980-07-25 06:37:28', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('11', 'm', '1974-12-17', '46', '2004-06-21 02:24:18', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('12', 'm', '1971-11-01', '15', '2009-01-31 03:37:20', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('13', 'f', '2009-05-10', '57', '2016-04-11 10:31:45', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('14', 'f', '1987-07-06', '23', '2009-03-22 14:22:49', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('15', 'm', '2006-08-13', '59', '2007-11-23 08:18:24', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('16', 'f', '2007-03-18', '61', '1986-09-04 04:45:40', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('17', 'm', '2018-12-16', '41', '1993-11-03 22:00:13', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('18', 'f', '2011-02-22', '19', '2015-08-31 20:56:22', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('19', 'f', '2009-06-16', '42', '2005-12-20 04:49:34', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('20', 'f', '1997-03-11', '29', '1989-04-24 16:35:51', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('21', 'm', '2003-07-28', '50', '2019-01-07 05:09:51', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('22', 'f', '2011-04-12', '35', '1984-03-27 13:37:36', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('23', 'm', '2018-07-10', '85', '2005-01-28 03:08:57', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('24', 'f', '2018-08-11', '37', '1999-06-11 12:29:27', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('25', 'm', '1980-06-30', '51', '1978-06-25 19:29:36', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('26', 'f', '2018-12-24', '95', '1972-12-23 04:37:05', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('27', 'f', '2021-11-13', '62', '1994-12-04 02:37:55', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('28', 'f', '2004-10-11', '63', '1997-02-27 00:09:55', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('29', 'f', '1975-09-21', '74', '1991-11-27 02:59:52', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('30', 'f', '1998-03-26', '62', '1983-08-03 02:04:40', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('31', 'f', '1987-08-21', '27', '2002-09-03 23:30:07', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('32', 'm', '2007-07-29', '40', '2004-10-03 06:13:01', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('33', 'm', '2009-11-25', '94', '1990-03-16 05:54:09', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('34', 'm', '1999-09-28', '64', '2018-09-23 03:53:41', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('35', 'f', '2022-12-19', '81', '2017-12-13 21:57:05', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('36', 'f', '2018-07-27', '36', '1990-12-21 06:02:47', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('37', 'm', '1987-09-19', '82', '2015-01-21 16:42:00', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('38', 'f', '1974-10-20', '11', '1992-10-11 02:46:18', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('39', 'f', '1974-11-23', '91', '1999-04-16 08:40:35', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('40', 'm', '1978-12-12', '96', '2007-01-01 05:04:30', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('41', 'f', '1982-04-12', '83', '1978-02-21 05:06:08', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('42', 'f', '1978-12-13', '27', '2006-04-15 01:04:54', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('43', 'f', '2007-06-26', '24', '1984-08-21 20:33:01', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('44', 'm', '1990-12-22', '26', '1981-06-05 05:39:05', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('45', 'm', '1979-10-23', '90', '1977-05-09 14:03:55', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('46', 'f', '2017-03-13', '36', '1993-10-24 18:43:21', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('47', 'm', '2020-07-29', '74', '1971-12-07 18:02:02', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('48', 'f', '1985-06-30', '5', '1972-06-21 04:02:02', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('49', 'm', '1992-06-08', '22', '2016-05-19 15:34:28', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('50', 'm', '2004-12-18', '43', '1974-05-08 18:17:48', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('51', 'm', '2010-03-17', '1', '1983-09-03 20:06:10', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('52', 'm', '2019-06-01', '95', '1978-05-19 19:11:13', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('53', 'm', '2013-05-16', '88', '1989-07-02 02:13:19', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('54', 'm', '2003-01-01', '74', '1975-02-24 10:03:58', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('55', 'f', '1973-02-20', '71', '1975-02-24 00:00:53', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('56', 'f', '1976-08-02', '16', '1993-11-15 23:57:32', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('57', 'f', '2002-06-01', '86', '1970-08-01 06:53:17', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('58', 'f', '2012-06-12', '85', '1993-10-18 14:16:13', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('59', 'f', '2000-04-12', '44', '1989-06-28 01:46:28', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('60', 'f', '1997-10-08', '32', '2013-04-28 06:12:45', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('61', 'm', '2011-01-05', '22', '1971-06-09 14:06:50', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('62', 'm', '1990-01-18', '31', '1988-02-12 12:58:16', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('63', 'm', '1977-10-04', '100', '1973-12-12 23:29:56', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('64', 'm', '1971-06-05', '64', '1976-01-26 21:19:31', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('65', 'f', '1986-12-13', '2', '1984-06-04 18:32:08', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('66', 'f', '1982-06-13', '41', '1997-03-31 17:56:24', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('67', 'm', '2016-02-09', '13', '1993-02-17 16:39:23', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('68', 'f', '2012-08-30', '97', '2004-10-23 10:29:39', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('69', 'm', '2015-05-05', '95', '1985-07-25 00:11:54', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('70', 'm', '2007-07-09', '21', '1982-06-02 12:36:29', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('71', 'f', '1971-09-16', '77', '1989-10-15 05:23:56', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('72', 'm', '2012-06-19', '65', '2004-02-19 00:56:04', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('73', 'm', '1983-02-04', '43', '2019-04-12 20:01:38', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('74', 'm', '1990-06-08', '45', '2014-09-13 14:45:45', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('75', 'f', '1975-12-10', '90', '2012-10-19 07:22:41', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('76', 'f', '2023-03-04', '65', '1992-01-27 18:46:03', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('77', 'f', '1984-10-19', '59', '2014-11-28 11:26:27', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('78', 'f', '1970-04-06', '50', '2013-12-11 15:51:45', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('79', 'm', '2006-05-22', '31', '1972-07-21 20:50:20', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('80', 'm', '1970-04-19', '85', '2005-06-17 10:36:27', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('81', 'm', '2006-02-24', '3', '1976-02-03 12:30:49', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('82', 'f', '2019-12-18', '31', '1981-05-20 18:55:40', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('83', 'f', '1986-04-21', '22', '1977-05-11 21:42:07', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('84', 'm', '1980-08-31', '52', '2017-02-26 00:20:45', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('85', 'f', '2023-01-25', '54', '2008-12-01 07:42:47', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('86', 'f', '1972-01-06', '32', '2013-05-09 08:49:14', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('87', 'm', '2022-10-08', '23', '1996-11-29 21:21:56', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('88', 'm', '2022-09-04', '97', '1971-12-20 03:07:19', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('89', 'f', '1994-11-03', '23', '1978-07-26 17:12:17', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('90', 'f', '1984-07-06', '39', '1991-02-13 07:18:22', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('91', 'f', '1973-04-29', '68', '1980-03-18 04:00:57', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('92', 'm', '2021-05-30', '35', '2013-12-21 11:24:09', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('93', 'm', '1975-06-13', '1', '2015-07-05 05:40:00', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('94', 'm', '1992-09-18', '8', '1970-06-24 07:01:40', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('95', 'm', '2010-06-08', '28', '2007-03-09 05:17:21', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('96', 'f', '2004-09-14', '4', '1993-12-25 07:24:14', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('97', 'f', '2003-09-17', '76', '2002-04-18 19:59:03', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('98', 'f', '1985-09-06', '48', '1980-10-17 03:34:18', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('99', 'f', '1981-02-04', '49', '1987-10-09 18:05:20', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('100', 'f', '1976-02-21', '38', '2002-03-12 12:19:38', NULL);


#
# TABLE STRUCTURE FOR: users
#

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastname` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Фамилия',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password_hash` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` bigint(20) DEFAULT NULL,
  `is_deleted` bit(1) DEFAULT b'0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  KEY `users_firstname_lastname_idx` (`firstname`,`lastname`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('1', 'Mavis', 'Goodwin', 'norwood95@example.org', 'edd3d878b47827bf5f5e9479117ad0c435e7cc5d', '317', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('2', 'Clara', 'Nienow', 'jaskolski.joel@example.net', 'a97ecb032fed4662d62ad7d74d6ce2193aca4ba7', '0', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('3', 'Destiny', 'Botsford', 'jaylan08@example.net', '81e25e82b4fb31076166f05e091b1135dd28ba93', '85022', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('4', 'Camren', 'Rowe', 'jedidiah.kirlin@example.com', '99e928562f8e868c8edf80c0d2afd5463b52df00', '1', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('5', 'Creola', 'Kirlin', 'wmarks@example.org', 'c3400d3a8638e1c66f0660c044bf229858848d5f', '1', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('6', 'Otto', 'Champlin', 'cordia.skiles@example.com', '3be1bcc1ee8a84ad39e4de578559a8fc70260d57', '2030592407', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('7', 'Keyon', 'Toy', 'mjaskolski@example.net', '9ca13eba90736a7b2c742dc969979e6df611dd9b', '81', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('8', 'Watson', 'Purdy', 'nickolas.kessler@example.org', '7ae836a7a47defd22728388ccf75c6cf726352b1', '0', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('9', 'Adelbert', 'Huel', 'aaliyah38@example.com', '2d824f3d840e51728d23d1b9305337d25609063f', '104029', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('10', 'Nannie', 'Schuppe', 'hauck.serenity@example.net', '942d0b70504959b34519f9a5913099b223c4209a', '1', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('11', 'Lucinda', 'Conroy', 'vicente.jakubowski@example.org', '240572343b37916836c48f30aba5e32f2309a858', '6809940191', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('12', 'Daniela', 'Herman', 'major87@example.com', '0910d24abf704671de5a8293dc4ad4689836e86c', '768297384', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('13', 'Madilyn', 'Pfeffer', 'leopold38@example.com', '08207466c7fc15c05b274fdfa558ac7e74a2c294', '8233727761', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('14', 'Perry', 'Stracke', 'cwindler@example.net', '084441485b5711ac25dc726712954cb1f80cd660', '85', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('15', 'Kelley', 'Stark', 'hazle92@example.org', '7a451fe75293e1e7c27c746159b0e5624acf280c', '662167', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('16', 'Felix', 'McGlynn', 'fflatley@example.org', '8a4df77be88a323e00591b2626151df930d6f402', '365401', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('17', 'Stephen', 'Runolfsson', 'oschinner@example.com', 'aaae90406cff73b872d722a24a876d11dc0e6641', '0', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('18', 'Kolby', 'Strosin', 'fhudson@example.com', '875bdabb49e54498669859137ef94719424055cf', '330572', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('19', 'Jacynthe', 'Weber', 'nbrakus@example.com', '4b5ac519ebf0b22725875f0a4ba91a81d97639c2', '692881', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('20', 'Emilia', 'Hansen', 'amani08@example.org', '107d8c7d2a17a0525e1f77999ba5480edcb3a68e', '343480', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('21', 'Gilda', 'Lehner', 'reyes44@example.net', 'bedf82daf00716e0758a3e54c7c64a4e26401dee', '655', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('22', 'Casandra', 'Keeling', 'jesse09@example.org', 'a675b633aa6c75a9d583101c6cd748b52c81e080', '1', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('23', 'Rozella', 'Schmidt', 'jaleel42@example.net', 'c32cfe58f9ebb4ebf2f19ed500a0112b23609439', '11', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('24', 'Ned', 'Johnston', 'vweber@example.org', '8a5d288c8c3bbc26c65587e04ae9dd51dc77d4f0', '164', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('25', 'Mathias', 'Kozey', 'chandler49@example.com', 'fecf6b08d0df8a9cb5059bcf97c9c6ccf921865e', '342', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('26', 'Maurine', 'Feeney', 'twindler@example.com', 'f58e4e5e3ca3bdc139f43528b3c75406e75dde06', '0', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('27', 'Anibal', 'Gislason', 'jacinthe69@example.com', 'df928546338b3cc956b50271ef623fde71962d87', '0', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('28', 'Solon', 'Ernser', 'jazmyn04@example.net', 'e5dd70326b97eb62bfb3aff36fc3b1e4fd086215', '229', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('29', 'Fidel', 'Torphy', 'iwalsh@example.org', '0a9803dc0d4aead6ff34be324b7e0f1b9aa11b2b', '759721', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('30', 'Arnoldo', 'Rolfson', 'ccarter@example.net', '817608d4c8954880a3caf7250cdd6600103dd098', '1', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('31', 'Lou', 'Funk', 'jfeil@example.net', '0c1d78cf4d5a93263edb47f2002eba5eb031b2d4', '0', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('32', 'Otis', 'Hermiston', 'elza.zieme@example.net', '59d796381bf48b318e38a34d204e10c6110d1222', '776', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('33', 'Emilia', 'Green', 'eliseo.botsford@example.com', '8ea9973681facfc3ce5a0490cf4b4fa1fdd46d20', '0', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('34', 'Orie', 'Lang', 'tessie.considine@example.com', 'e900d6784c570db64d55f8c8c30443d02911f8fa', '0', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('35', 'Delaney', 'Kshlerin', 'liam.romaguera@example.com', '9814e9b6d6851dabcd97c8798d1c5abcec0ab1af', '3122', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('36', 'Alfredo', 'Stokes', 'qpouros@example.com', '48649f1d94b7347387ef56bbaa63b02c02048b46', '123', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('37', 'Austin', 'Gibson', 'sadie.corwin@example.org', '02a60fd43e01aa96d470de9a713d723a76cc8ef1', '637', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('38', 'Loyal', 'Bode', 'carlotta.o\'keefe@example.com', 'd28dad9c19c91a24e5c6b6bccc9aad95ac45c5a6', '1', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('39', 'Orville', 'Lakin', 'alyce08@example.org', 'da71d50a46efbb6f3183507df61550ae0540ddf6', '54', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('40', 'Bianka', 'Rodriguez', 'herzog.jennifer@example.com', 'a9c2c94bea6361b612c9f2c07f37dea31a00b5e0', '0', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('41', 'Mozell', 'Stark', 'susanna.kassulke@example.net', '6ec4dfecec674d0e8bc9ea35fa270adcd3054461', '947', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('42', 'Karine', 'Lueilwitz', 'eulalia.parker@example.net', '1233c83983176442d34d717c24a2a44971f759aa', '3', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('43', 'Ambrose', 'Adams', 'tia59@example.org', '60b43ce8644408f8e3439eeb3c0c19825a8a59ee', '417258', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('44', 'Wilbert', 'Olson', 'alverta83@example.net', '7d5a89c5055887d47fbe12d4af69a094b93a91ee', '7261490268', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('45', 'Percy', 'Corkery', 'vinnie.graham@example.com', '3d9e5c2b576092df576a9a33ccf63ee79e017c3c', '0', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('46', 'Kelvin', 'Collins', 'juliana99@example.com', '2e814432ab5ea68b47671aed49ed662e4ebf1113', '38', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('47', 'Marilyne', 'Christiansen', 'sophie72@example.com', 'df1e06139b008fe24ed0b5ca4426740fc4f54ea1', '877', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('48', 'Shana', 'Schamberger', 'hortense58@example.net', '5293a5203065787e48d3a68418b6f034c87c8361', '748480', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('49', 'Anahi', 'Jerde', 'amosciski@example.net', 'abf181db2808589d9d5dc0c29e1bda2fe60ca29a', '0', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('50', 'Susan', 'Pfeffer', 'west.hailee@example.net', '2844033b43ca3cdf85abc869a2e0c5606486ae43', '95', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('51', 'Napoleon', 'Reichel', 'rodger42@example.org', '69f8e78bc3771c26a35282f74279344c2121447a', '13', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('52', 'Candida', 'Carter', 'wellington.considine@example.com', '728f659df82a0d1329e2678ea4ae7da95b0425c5', '527', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('53', 'Carlo', 'Luettgen', 'jaskolski.dax@example.org', '6305ec8db66391095e1748c974af91a61b9537c9', '448035', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('54', 'Vernice', 'Block', 'kkuvalis@example.org', 'eda15cacc8c2ea7064d3324043018046834738d8', '980050', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('55', 'Xander', 'Pagac', 'claude94@example.net', '989c75dca789b90ea43c8864c0a737d6f8bc6698', '0', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('56', 'Roslyn', 'Smith', 'pwiza@example.com', '5996df535ab99b6b1789bf2ca78696ad67f14e3d', '1', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('57', 'Aubrey', 'Boyer', 'ggaylord@example.org', '0535a4798f994367ac6a97f6661df9168e1585f8', '182684', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('58', 'Brando', 'Wolf', 'madisyn65@example.com', 'e2dfda118d2b1d1c260a6e8ec24f7a7fd6bfe029', '489', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('59', 'Lolita', 'Witting', 'uschuppe@example.net', 'ad96c87eb2d5961d4a243777f79e8cc41aa76a56', '1', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('60', 'August', 'Marks', 'nella.o\'connell@example.com', 'db38ad2522904a0e360f9357abd9e30c75ce5841', '877', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('61', 'Leonor', 'Graham', 'cara.kuhn@example.net', '8534c2bbe1de5103b337b449c4b8db88de29a454', '949916', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('62', 'Ladarius', 'Hackett', 'okey55@example.com', 'a399cf46d2f30db45e7bd11ea3221e89257541bb', '1', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('63', 'Franz', 'Jones', 'kristoffer92@example.com', '4e569a4031d260c6da8259b3e53923bb294d6d39', '79', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('64', 'Janae', 'Muller', 'konopelski.thalia@example.org', '4de4c3bcea9f1c13129b3e0cf53a061849f788ef', '576', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('65', 'Ewald', 'Nitzsche', 'mcclure.madaline@example.com', 'e3775d5e069faec7e26aa5434c8cf442d5ae866a', '1', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('66', 'Clementina', 'Kutch', 'vwolff@example.net', 'b974147b2f513f7a9503e3a5f20736fbf06d32d7', '1', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('67', 'Adell', 'Senger', 'odie.jacobi@example.org', '9d74127153d1fcde4f2d7a1d4c87ba1125dc74a1', '0', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('68', 'Randy', 'Thiel', 'lonzo57@example.org', '270fafb2d45b593f16ac1047410c69c8b7e90f37', '94816', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('69', 'Francesca', 'Leannon', 'edgardo.parker@example.net', 'dff97280e7610273a7c325a8bcf9d6bfa7795c9d', '859', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('70', 'Luz', 'Adams', 'emilie.anderson@example.com', 'e6228af6d715ff6927e3d24150fdab031da8b90b', '905835', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('71', 'Willa', 'Kuhn', 'erich07@example.com', 'd187d55e72bc116a6e337eb921fae8bddf5f4496', '39760', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('72', 'Hershel', 'Kautzer', 'sandy98@example.org', '4bbf8dd5926c02c474137c6fe69ae61e7751a7aa', '0', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('73', 'Avery', 'Schroeder', 'frami.horacio@example.org', '386db42ac89a3b5f2adfb7f7b811967c91e7104b', '0', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('74', 'Warren', 'Zieme', 'rolando.torphy@example.org', '5a926df941502b8b30ada4af6f7cfce3d12b7b0c', '1', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('75', 'Nya', 'Beahan', 'elvie91@example.com', 'ec33b39d66c80c677a4e5b48d5b054530ef8e1ec', '0', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('76', 'Josiane', 'Mosciski', 'miller.wisozk@example.com', '9709cbf1779f34c098e92a5c5e474965ae6bfd4d', '1', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('77', 'Brittany', 'Hagenes', 'russel.dixie@example.net', '24e188305af311db42f594f7b9feac73f1badf1f', '1', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('78', 'Drew', 'Hamill', 'pnolan@example.net', '9f8e159a789dd32d49cc12415b0266d6f9035a53', '1', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('79', 'Mac', 'Barton', 'destini.thompson@example.net', '11aa54dcd4aad0d38dc38da11f7badc195329986', '519338', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('80', 'Neil', 'Wintheiser', 'everardo60@example.net', '9ec4a3128de7704747ddc2f6bfd2a7b83e811905', '861', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('81', 'Johann', 'Johnston', 'erick.lebsack@example.com', '9b33835d63723639645b5a9300b968267b7a7f1e', '73516', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('82', 'Tia', 'Lehner', 'abby.aufderhar@example.com', '41fc17e6dd2f0172eb3708d8eec45a26ce2aa1ac', '0', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('83', 'Luella', 'Stehr', 'estella.o\'conner@example.org', '3b60ce172430b981b60784a84aa54e0411c6a89e', '460', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('84', 'Elva', 'Mann', 'rstiedemann@example.org', '1dc9b0a06e514556062201033bf5a01d23bbd2ed', '0', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('85', 'Thelma', 'Lynch', 'raymundo92@example.com', 'c2f2041847627a59d2d6dd7034da5417b831657d', '60', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('86', 'Dawson', 'Moore', 'cummerata.cristopher@example.com', '423daff579573334b7cdb6584ad40dcef64e6fc0', '348', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('87', 'Judge', 'Tremblay', 'cemard@example.com', '7abea9e766e87f387bd0b673e3f22aab4d7b73e7', '789', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('88', 'Lavada', 'Adams', 'layne.von@example.net', '1bae3a6a4a3a36592a48ef89cec06fc0e6a42488', '0', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('89', 'Ima', 'Goyette', 'robel.bettye@example.org', 'be4512d43c9f613d74a1565a5f0ac34f005d838d', '1', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('90', 'Joe', 'Abernathy', 'hilpert.breana@example.net', 'b744dd363ddebbd31b26833ed88b9d5a44fdb0c7', '449654', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('91', 'Elza', 'Kunze', 'raheem62@example.net', '23611b420c982076dfd67a3db1be9276b9060f54', '1', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('92', 'Melyssa', 'Schoen', 'derrick.beahan@example.net', 'aca2dcc516e8c28a676b5c76af53cb143d92aa18', '0', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('93', 'Tillman', 'Kris', 'uboehm@example.net', 'ea8a5fa80bf182c3989ef87c3f49ac14582bc473', '1', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('94', 'Vicenta', 'Dicki', 'gwillms@example.net', '81d4ac95adc815b7644da5693329a1e4d04dc1f9', '631', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('95', 'Hilda', 'Hand', 'ikassulke@example.org', '04c7532da6279c70c7865edca8b85e94dd8b5ad1', '164', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('96', 'Scotty', 'Smith', 'bharvey@example.com', '118e15c943d73247959dc6bfc8fe87d3510aba84', '1', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('97', 'Mose', 'Murphy', 'evandervort@example.net', '099d786bc7cf360a0608370853ffb11cf3048e32', '490', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('98', 'Marjolaine', 'Harvey', 'mschowalter@example.org', 'bc2b44be16f90fef5d6634e74e50b4a7dc8badf8', '0', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('99', 'Megane', 'Blanda', 'muriel51@example.org', '6245a5f733b63c5d066834aa71445d4c8495fddd', '942100', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('100', 'Edythe', 'Fay', 'nader.amanda@example.org', '042e5114ce426d06e7a048b18c5a58d6b1fe18bb', '0', '1');


