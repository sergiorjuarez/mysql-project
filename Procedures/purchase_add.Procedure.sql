DELIMITER $$

--
-- Definition for procedure purchase_add
--
CREATE PROCEDURE purchase_add (IN pPersonId int, IN pDate date, IN pStore varchar(45), IN pValue double,
IN pInstallments int, IN pDiscountPercent int, IN pCardId int, IN pFirstExpDate date, IN pDescription varchar(150))
BEGIN

  INSERT INTO `billing`.`purchase` (`date`, `store`, `value`, `installments`, `initialDiscount`, `cardId`, `personId`, `Description`)
    VALUES (pDate, pStore, pValue, pInstallments, pDiscountPercent, pCardId, pPersonId, pDescription);

  SET @NewPurchaseId = LAST_INSERT_ID();
  SET @i = 0;
  SET @installmentValue = pValue / pInstallments;
  WHILE @i < pInstallments DO

    INSERT INTO `billing`.`installment` (`purchaseId`, `expirationDate`, `number`, `price`)
      VALUES (@NewPurchaseId, adddate(pFirstExpDate, INTERVAL @i MONTH), @i + 1, @installmentValue);

    SET @i = @i + 1;
  END WHILE;



END
$$
DELIMITER ;

