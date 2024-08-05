delimiter //
CREATE OR REPLACE PROCEDURE `addForeignKeyIfNotExists`(
    IN in_table_name VARCHAR(128), 
    IN in_referenced_table_name VARCHAR(128), 
    IN in_constraint_name VARCHAR(128),
    
    IN in_foreign_key VARCHAR(255),
    IN in_referenced_key VARCHAR(255),
    
    IN in_update_rule varchar(10),
    IN in_delete_rule varchar(10)
)
    MODIFIES SQL DATA
BEGIN
    
    IF NOT EXISTS(
      SELECT
        RC.TABLE_NAME
      FROM
        INFORMATION_SCHEMA.REFERENTIAL_CONSTRAINTS RC
      WHERE 
        RC.CONSTRAINT_SCHEMA=database()
        AND RC.CONSTRAINT_NAME = in_constraint_name
    ) THEN

      SET @ddl = CONCAT('
        ALTER TABLE `in_table_name`
        ADD CONSTRAINT `in_constraint_name`
        FOREIGN KEY (in_foreign_key) REFERENCES `in_referenced_table_name` (in_referenced_key)
        ON DELETE in_delete_rule
        ON UPDATE in_update_rule
      ');
      SET @ddl = REPLACE(@ddl, 'in_table_name', in_table_name);
      SET @ddl = REPLACE(@ddl, 'in_constraint_name', in_constraint_name);
      SET @ddl = REPLACE(@ddl, 'in_foreign_key', in_foreign_key);
      SET @ddl = REPLACE(@ddl, 'in_referenced_table_name', in_referenced_table_name);
      SET @ddl = REPLACE(@ddl, 'in_referenced_key', in_referenced_key);
      SET @ddl = REPLACE(@ddl, 'in_delete_rule', in_delete_rule);
      SET @ddl = REPLACE(@ddl, 'in_update_rule', in_update_rule);


      PREPARE stmt FROM @ddl;
      EXECUTE stmt;
      DEALLOCATE PREPARE stmt;

    END IF;

END // 