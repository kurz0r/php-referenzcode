CREATE TABLE `token` (
    `id` INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY ,
    `wert` VARCHAR(128) NOT NULL , `ip_addr` VARCHAR(39) NOT NULL ,
    `erstellt` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE = InnoDB;

CREATE TABLE `adressen` (
    `id` INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY ,
    `token_id` INT UNSIGNED NOT NULL ,
    `wert` VARCHAR(512) NOT NULL , `ip_addr` VARCHAR(39) NOT NULL ,
    `erstellt` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ,
    CONSTRAINT `foreignKeyTokenId`
        FOREIGN KEY (token_id) REFERENCES token(id)
    	ON DELETE CASCADE
    	ON UPDATE RESTRICT
) ENGINE = InnoDB;