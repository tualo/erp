DELIMITER ;
CREATE TABLE IF NOT EXISTS `mengeneinheiten` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `symbol` varchar(20) NOT NULL,
  `faktor` decimal(15,6) DEFAULT 1.000000,
  PRIMARY KEY (`id`)
);

alter table  mengeneinheiten add column if not exists code varchar(5) default '';

call fill_ds_column('mengeneinheiten');
INSERT IGNORE INTO mengeneinheiten (id, name, symbol, faktor, code) values (1, 'STK', 'Stk.', 1.000000, 'STK','H84');