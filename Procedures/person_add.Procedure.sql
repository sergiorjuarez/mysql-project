DELIMITER $$

--
-- Definition for procedure person_add
--
CREATE PROCEDURE person_add (IN pName varchar(50), IN pPhone varchar(50), IN pEmail varchar(80))
BEGIN

  INSERT INTO billing.person (name, phone, Email, LastChangedOn)
    VALUE (pName, pPhone, pEmail, CURRENT_DATE());

END
$$
DELIMITER ;

