DELIMITER ;
CREATE TABLE IF NOT EXISTS `geschaeftsstatus` (
  `geschaeftsstatus` varchar(25) NOT NULL,
  `position` int(11) DEFAULT 0,
  `name` varchar(255) DEFAULT 'Normalkunde',
  `ia_kennung` char(2) DEFAULT '00',
  PRIMARY KEY (`geschaeftsstatus`)
);
insert ignore into `geschaeftsstatus`
 (`geschaeftsstatus`, `position`, `name`, `ia_kennung`) values ('00', 0, 'Normalkunde', '00') ;
