--
-- Definition for table installment
--
CREATE TABLE installment (
  Id int(11) NOT NULL AUTO_INCREMENT,
  purchaseId int(11) DEFAULT NULL,
  expirationDate date DEFAULT NULL,
  number int(11) DEFAULT NULL,
  price double DEFAULT NULL,
  PRIMARY KEY (Id)
)
ENGINE = INNODB
AUTO_INCREMENT = 37
AVG_ROW_LENGTH = 1365
CHARACTER SET utf8
COLLATE utf8_general_ci
ROW_FORMAT = DYNAMIC;
