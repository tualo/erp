delimiter ;

create table if not exists `machines` (
    `id` varchar(36) not null,
    `name` varchar(255) NOT NULL,
    `description` text,
    `active` tinyint(1) DEFAULT 1,
    PRIMARY KEY (`id`)
);

create table if not exists `machine_products` (
    `id` varchar(36) not null,
    `machine` varchar(36) NOT NULL,
    `product` varchar(255) NOT NULL,
    PRIMARY KEY (`id`),
    FOREIGN KEY (`machine`) REFERENCES `machines`(`id`) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (`product`) REFERENCES `artikelgruppen`(`gruppe`) ON DELETE CASCADE ON UPDATE CASCADE
);

call fill_ds('machines');
call fill_ds('machine_products');
call fill_ds_column('machines');
call fill_ds_column('machine_products');