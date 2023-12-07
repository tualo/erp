DELIMITER ;
INSERT INTO `ds` (`table_name`, `title`, `reorderfield`, `use_history`, `searchfield`, `displayfield`, `sortfield`, `searchany`, `hint`, `overview_tpl`, `sync_table`, `writetable`, `globalsearch`, `listselectionmodel`, `sync_view`, `syncable`, `cssstyle`, `alternativeformxtype`, `read_table`, `class_name`, `special_add_panel`, `existsreal`, `character_set_name`, `read_filter`, `listxtypeprefix`, `phpexporter`, `phpexporterfilename`, `combined`, `default_pagesize`, `allowForm`, `listviewbaseclass`, `showactionbtn`, `modelbaseclass`) VALUES ('zahlungsarten','Zahlungsarten','',0,'bezeichnung','bezeichnung','bezeichnung',1,'','','','',0,'cellmodel','',0,'','','','ERP','',1,'','','listview','XlsxWriter','{GUID}',0,100,1,'Tualo.DataSets.ListView',1,'Tualo.DataSets.model.Basic') ON DUPLICATE KEY UPDATE title=VALUES(title), reorderfield=VALUES(reorderfield), use_history=VALUES(use_history), searchfield=VALUES(searchfield), displayfield=VALUES(displayfield), sortfield=VALUES(sortfield), searchany=VALUES(searchany), hint=VALUES(hint), overview_tpl=VALUES(overview_tpl), sync_table=VALUES(sync_table), writetable=VALUES(writetable), globalsearch=VALUES(globalsearch), listselectionmodel=VALUES(listselectionmodel), sync_view=VALUES(sync_view), syncable=VALUES(syncable), cssstyle=VALUES(cssstyle), alternativeformxtype=VALUES(alternativeformxtype), read_table=   VALUES(read_table), class_name=VALUES(class_name), special_add_panel=VALUES(special_add_panel), existsreal=VALUES(existsreal), character_set_name=VALUES(character_set_name), read_filter=VALUES(read_filter), listxtypeprefix=VALUES(listxtypeprefix), phpexporter=VALUES(phpexporter), phpexporterfilename=VALUES(phpexporterfilename), combined=VALUES(combined), default_pagesize=VALUES(default_pagesize), allowForm=VALUES(allowForm), listviewbaseclass=VALUES(listviewbaseclass), showactionbtn=VALUES(showactionbtn), modelbaseclass=VALUES(modelbaseclass);
INSERT  IGNORE INTO `ds_column` (`table_name`, `column_name`, `default_value`, `default_max_value`, `default_min_value`, `update_value`, `is_primary`, `syncable`, `referenced_table`, `referenced_column_name`, `is_nullable`, `is_referenced`, `writeable`, `note`, `data_type`, `column_key`, `column_type`, `character_maximum_length`, `numeric_precision`, `numeric_scale`, `character_set_name`, `privileges`, `existsreal`, `deferedload`, `hint`, `fieldtype`) VALUES ('zahlungsarten','belegid','',10000000,0,'',0,0,'','','YES','NO',1,'','int','','int(11)',NULL,10,0,NULL,'select,insert,update,references',1,0,NULL,''),
('zahlungsarten','bezeichnung','',10000000,0,'',0,0,'','','YES','NO',1,'','varchar','','varchar(255)',255,NULL,NULL,'utf8mb4','select,insert,update,references',1,0,NULL,''),
('zahlungsarten','id','{#serial}',10000000,1,'',1,0,'','','NO','NO',1,'','int','PRI','int(11)',NULL,10,0,NULL,'select,insert,update,references',1,0,NULL,''),
('zahlungsarten','referenzds','',10000000,0,'',0,0,'','','YES','NO',1,'','varchar','','varchar(255)',255,NULL,NULL,'utf8mb4','select,insert,update,references',1,0,NULL,''),
('zahlungsarten','status','1',10000000,0,'',0,0,'','','YES','NO',1,'','tinyint','','tinyint(4)',NULL,3,0,NULL,'select,insert,update,references',1,0,NULL,'');
INSERT  IGNORE INTO `ds_column_list_label` (`table_name`, `column_name`, `language`, `label`, `xtype`, `editor`, `position`, `summaryrenderer`, `renderer`, `summarytype`, `hidden`, `active`, `filterstore`, `grouped`, `flex`, `direction`, `align`, `listfiltertype`, `hint`) VALUES ('zahlungsarten','bezeichnung','DE','Bezeichnung','gridcolumn','',999,'','','',0,1,'',0,1.00,'ASC','left','',NULL),
('zahlungsarten','id','DE','ID','gridcolumn','',0,'','','',0,1,'',0,1.00,'ASC','left','',NULL),
('zahlungsarten','status','DE','Aktiv','gridcolumn','',999,'','','',0,1,'',0,1.00,'ASC','left','',NULL);
INSERT  IGNORE INTO `ds_column_form_label` (`table_name`, `column_name`, `language`, `label`, `xtype`, `field_path`, `position`, `hidden`, `active`, `allowempty`, `fieldgroup`, `flex`, `hint`) VALUES ('zahlungsarten','bezeichnung','DE','Bezeichnung','textfield','Allgemein',999,0,1,1,'',1.00,''),
('zahlungsarten','id','DE','ID','displayfield','Allgemein',0,0,1,1,'',1.00,''),
('zahlungsarten','status','DE','Aktiv','checkbox','Allgemein',999,0,1,1,'',1.00,'');
INSERT  IGNORE INTO `ds_dropdownfields` (`table_name`, `name`, `idfield`, `displayfield`, `filterconfig`) VALUES ('zahlungsarten','bezeichnung','bezeichnung','bezeichnung',''),
('zahlungsarten','id','id','bezeichnung','');
INSERT  IGNORE INTO `ds_access` (`role`, `table_name`, `read`, `write`, `delete`, `append`, `existsreal`) VALUES ('administration','zahlungsarten',0,0,0,0,0),
('_default_','zahlungsarten',1,0,0,0,1);