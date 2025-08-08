DELIMITER ;

CREATE TABLE IF NOT EXISTS `bfkonten` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT '',
  PRIMARY KEY (`id`)
);

CREATE TABLE IF NOT EXISTS `bfkonten_steuersatz` (
  `id` int(11) NOT NULL,

  `gueltig_von` date NOT NULL  DEFAULT '2000-01-01',
  `gueltig_bis` date NOT NULL DEFAULT '2099-12-31',

  PRIMARY KEY (`id`, `gueltig_von`),

  KEY `idx_bfkonten_steuersatz_bfkonten` (`id`),
  KEY `idx_bfkonten_steuersatz_konto` (`konto`),

  `konto` varchar(100) NOT NULL,
  `steuer` decimal(15,2) NOT NULL DEFAULT 0.00,
  `sap_schluessel` varchar(5) NOT NULL DEFAULT 'A',

  CONSTRAINT `fk_bfkonten_steuersatz_bfkonten` FOREIGN KEY (`id`) REFERENCES `bfkonten` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_bfkonten_steuersatz_konto` FOREIGN KEY (`konto`) REFERENCES `buchungskonten` (`konto`) ON DELETE RESTRICT ON UPDATE CASCADE

);


/*
CREATE TABLE IF NOT EXISTS `bfkonten` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT '',
  `konto` varchar(100) DEFAULT NULL,
  `steuer` decimal(15,2) DEFAULT 0.00,
  `sap_schluessel` varchar(5) DEFAULT 'A',
  
  `konto_1` varchar(100) DEFAULT NULL,
  `steuer_1` decimal(15,2) DEFAULT 0.00,
  `sap_schluessel_1` varchar(5) DEFAULT NULL,
  
  `konto_10` varchar(100) DEFAULT NULL,
  `steuer_10` decimal(15,2) DEFAULT 0.00,
  `sap_schluessel_10` varchar(5) DEFAULT NULL,
  `konto_2` varchar(100) DEFAULT NULL,
  `steuer_2` decimal(15,2) DEFAULT 0.00,
  `sap_schluessel_2` varchar(5) DEFAULT NULL,
  `konto_3` varchar(100) DEFAULT NULL,
  `steuer_3` decimal(15,2) DEFAULT 0.00,
  `sap_schluessel_3` varchar(5) DEFAULT NULL,
  `konto_4` varchar(100) DEFAULT NULL,
  `steuer_4` decimal(15,2) DEFAULT 0.00,
  `sap_schluessel_4` varchar(5) DEFAULT NULL,
  `konto_5` varchar(100) DEFAULT NULL,
  `steuer_5` decimal(15,2) DEFAULT 0.00,
  `sap_schluessel_5` varchar(5) DEFAULT NULL,
  `konto_6` varchar(100) DEFAULT NULL,
  `steuer_6` decimal(15,2) DEFAULT 0.00,
  `sap_schluessel_6` varchar(5) DEFAULT NULL,
  `konto_7` varchar(100) DEFAULT NULL,
  `steuer_7` decimal(15,2) DEFAULT 0.00,
  `sap_schluessel_7` varchar(5) DEFAULT NULL,
  `konto_8` varchar(100) DEFAULT NULL,
  `steuer_8` decimal(15,2) DEFAULT 0.00,
  `sap_schluessel_8` varchar(5) DEFAULT NULL,
  `konto_9` varchar(100) DEFAULT NULL,
  `steuer_9` decimal(15,2) DEFAULT 0.00,
  `sap_schluessel_9` varchar(5) DEFAULT NULL,
  `gueltig` date NOT NULL DEFAULT '2099-12-31',
  `gueltig_von` date DEFAULT '2000-01-01',
  PRIMARY KEY (`id`,`gueltig`),
  KEY `fk_bfkonten_konto` (`konto`),
  KEY `fk_bfkonten_konto_1` (`konto_1`),
  KEY `fk_bfkonten_konto_10` (`konto_10`),
  KEY `fk_bfkonten_konto_2` (`konto_2`),
  KEY `fk_bfkonten_konto_3` (`konto_3`),
  KEY `fk_bfkonten_konto_4` (`konto_4`),
  KEY `fk_bfkonten_konto_5` (`konto_5`),
  KEY `fk_bfkonten_konto_6` (`konto_6`),
  KEY `fk_bfkonten_konto_7` (`konto_7`),
  KEY `fk_bfkonten_konto_8` (`konto_8`),
  KEY `fk_bfkonten_konto_9` (`konto_9`),
  KEY `idx_bfkonten_name` (`name`),
  CONSTRAINT `fk_bfkonten_konto` FOREIGN KEY (`konto`) REFERENCES `buchungskonten` (`konto`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `fk_bfkonten_konto_1` FOREIGN KEY (`konto_1`) REFERENCES `buchungskonten` (`konto`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `fk_bfkonten_konto_10` FOREIGN KEY (`konto_10`) REFERENCES `buchungskonten` (`konto`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `fk_bfkonten_konto_2` FOREIGN KEY (`konto_2`) REFERENCES `buchungskonten` (`konto`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `fk_bfkonten_konto_3` FOREIGN KEY (`konto_3`) REFERENCES `buchungskonten` (`konto`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `fk_bfkonten_konto_4` FOREIGN KEY (`konto_4`) REFERENCES `buchungskonten` (`konto`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `fk_bfkonten_konto_5` FOREIGN KEY (`konto_5`) REFERENCES `buchungskonten` (`konto`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `fk_bfkonten_konto_6` FOREIGN KEY (`konto_6`) REFERENCES `buchungskonten` (`konto`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `fk_bfkonten_konto_7` FOREIGN KEY (`konto_7`) REFERENCES `buchungskonten` (`konto`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `fk_bfkonten_konto_8` FOREIGN KEY (`konto_8`) REFERENCES `buchungskonten` (`konto`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `fk_bfkonten_konto_9` FOREIGN KEY (`konto_9`) REFERENCES `buchungskonten` (`konto`) ON DELETE SET NULL ON UPDATE CASCADE
);
*/