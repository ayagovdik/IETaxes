CREATE TABLE `currencies` (
  `code` int(11) NOT NULL,
  `symbol` varchar(3) NOT NULL DEFAULT '',
  `name` varchar(50) DEFAULT '',
  `sign` varchar(5) DEFAULT '',
  `sign_before` tinyint(1) DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `currencies` (`code`, `symbol`, `name`, `sign`, `sign_before`) VALUES
 ('840', 'USD', 'US Dollar',      '$', 1),
 ('978', 'EUR', 'Euro',           '€', 1),
 ('974', 'BYR', 'Belarus rouble', 'р', 0);

CREATE TABLE `clients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned NOT NULL,
  `name` varchar(128) NOT NULL DEFAULT '0',
  `address` varchar(255) DEFAULT '',
  `is_company` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `clients` (`id`, `name`) VALUES
 (1, 'Test Client One'),
 (2, 'Test Client Two');

CREATE TABLE `contracts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `client_id` int(11) unsigned NOT NULL,
  `number` smallint(5) unsigned DEFAULT NULL,
  `date_begin` date DEFAULT NULL,
  `date_end` date DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
