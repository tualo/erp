DELIMITER;
CREATE TABLE IF NOT EXISTS `brieffusstext` (
  `id` int(11) NOT NULL,
  `spalte_id` varchar(50) NOT NULL,
  `buchungskreis_id` varchar(10) NOT NULL,
  `wert` varchar(255) NOT NULL,
  `start_am` date DEFAULT '2000-01-01',
  `ende_am` date DEFAULT '2099-12-31',
  `position` int(11) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idx_brieffusstext_spalte_id` (`spalte_id`),
  KEY `idx_brieffusstext_buchungskreis_id` (`buchungskreis_id`),
  CONSTRAINT `fk_brieffusstext_buchungskreise` FOREIGN KEY (`buchungskreis_id`) REFERENCES `buchungskreise` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_brieffusstext_spalte_id` FOREIGN KEY (`spalte_id`) REFERENCES `brieffusstextspalten` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
);