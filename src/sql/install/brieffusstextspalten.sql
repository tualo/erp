DELIMITER;
CREATE TABLE IF NOT EXISTS `brieffusstextspalten` (
  `id` varchar(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `aktiv` tinyint(4) DEFAULT 1,
  PRIMARY KEY (`id`)
);