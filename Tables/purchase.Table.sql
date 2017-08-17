--
-- Definition for table purchase
--
CREATE TABLE purchase (
  Id int(11) NOT NULL AUTO_INCREMENT,
  date datetime NOT NULL,
  store varchar(255) DEFAULT NULL,
  value double DEFAULT NULL,
  installments int(11) DEFAULT NULL,
  initialDiscount int(11) DEFAULT NULL,
  cardId int(11) NOT NULL,
  personId int(11) NOT NULL,
  Description varchar(150) NOT NULL,
  PRIMARY KEY (Id),
  INDEX cardId_idx (cardId),
  INDEX personId_idx (personId),
  CONSTRAINT cardId FOREIGN KEY (cardId)
  REFERENCES cards (Id) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT personId FOREIGN KEY (personId)
  REFERENCES person (Id) ON DELETE NO ACTION ON UPDATE NO ACTION
)
ENGINE = INNODB
AUTO_INCREMENT = 6
CHARACTER SET utf8
COLLATE utf8_general_ci
ROW_FORMAT = DYNAMIC;
