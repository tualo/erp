DELIMITER ;
CREATE TABLE IF NOT EXISTS `zahlungsschluessel` (
  `id` varchar(10) NOT NULL,
  `beschreibung` varchar(255) DEFAULT NULL,
  `tage` int(11) NOT NULL DEFAULT 0,
  `skonto` int(11) NOT NULL DEFAULT 0,
  `skontotage` int(11) NOT NULL DEFAULT 0,
  `alternativtage` int(11) NOT NULL DEFAULT 0,

  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_zbt_t_s` (`tage`,`skonto`,`skontotage`)
)
COMMENT='Erlaubte Zahlweisen.';

insert ignore into `zahlungsschluessel` (`id`, `beschreibung`, `tage`, `skonto`, `skontotage`, `alternativtage`) 
values ('1', '30 Tage netto', 30, 0, 0, 0);