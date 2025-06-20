DELIMITER ;
CREATE TABLE IF NOT EXISTS `mengeneinheiten` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `symbol` varchar(20) NOT NULL,
  `faktor` decimal(15,6) DEFAULT 1.000000,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uidx_mengeneinheiten_name` (`name`)
);

INSERT IGNORE INTO mengeneinheiten (id, name, symbol, faktor) values (1, 'STK', 'Stk.', 1.000000);