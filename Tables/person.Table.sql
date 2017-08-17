--
-- Definition for table person
--
CREATE TABLE person (
  Id int(11) NOT NULL AUTO_INCREMENT,
  Name varchar(45) DEFAULT NULL,
  Phone varchar(45) DEFAULT NULL,
  Email varchar(95) DEFAULT NULL,
  LastChangedOn datetime DEFAULT NULL,
  PRIMARY KEY (Id)
)
ENGINE = INNODB
AUTO_INCREMENT = 305
AVG_ROW_LENGTH = 8192
CHARACTER SET utf8
COLLATE utf8_general_ci
ROW_FORMAT = DYNAMIC;
