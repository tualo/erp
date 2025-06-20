delimiter ;
CREATE TABLE IF NOT EXISTS `vertriebsregion` (
  `region` char(1) NOT NULL DEFAULT '0',
  `name` varchar(255) DEFAULT '',
  PRIMARY KEY (`region`)
);

insert ignore into vertriebsregion (region,name) values ('0','');
