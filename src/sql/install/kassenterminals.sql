DELIMITER;
CREATE TABLE IF NOT EXISTS `kassenterminals` (
  `id` varchar(36) NOT NULL,
  `name` varchar(100) NOT NULL,
  `kasse` int(11) NOT NULL,
  `lager` int(11) NOT NULL,
  `beleg` int(11) NOT NULL,
  `bs_auto_print` tinyint(4) DEFAULT 0,
  `bs_system` tinyint(4) DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uidx_kassenterminals_name` (`name`),
  KEY `fk_kassenterminal_hauptkassenbuecher` (`kasse`),
  KEY `fk_kassenterminal_lager` (`lager`),
  KEY `fk_kassenterminal_beleg` (`beleg`),
  CONSTRAINT `fk_kassenterminal_beleg` FOREIGN KEY (`beleg`) REFERENCES `blg_config` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_kassenterminal_hauptkassenbuecher` FOREIGN KEY (`kasse`) REFERENCES `hauptkassenbuecher` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_kassenterminal_lager` FOREIGN KEY (`lager`) REFERENCES `lager` (`id`) ON UPDATE CASCADE
);

