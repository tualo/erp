DELIMITER ;
CREATE TABLE IF NOT EXISTS `preisorientierung` (
  `id` int(11) NOT NULL,
  `name` varchar(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_preisorientierung_name` (`name`)
);
insert ignore into `preisorientierung` (`id`, `name`) values (1, 'netto') ;
insert ignore into `preisorientierung` (`id`, `name`) values (2, 'brutto') ;
