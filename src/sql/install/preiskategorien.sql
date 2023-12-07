DELIMITER ;
CREATE TABLE IF NOT EXISTS `preiskategorien` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` tinyint(4) DEFAULT 0,
  `codx_schluessel` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) COMMENT='Preiskategorien für das ermitteln des Einzelpreises, dies kann im Bezugsstamm oder im Belege festgelegt werden.';

insert ignore into `preiskategorien` (`id`, `name`, `status`, `codx_schluessel`) values (1, 'Standard', 1, '00') ;

