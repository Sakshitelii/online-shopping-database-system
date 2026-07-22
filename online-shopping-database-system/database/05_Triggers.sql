USE OnlineShoppingSystem;

-- Stock Cannot be Negative trigger 1


CREATE TRIGGER trigger_NoNegativeStock
ON Product
AFTER UPDATE
AS
BEGIN
    IF EXISTS (SELECT * FROM Product WHERE Stock < 0)
    BEGIN
        ROLLBACK;
        PRINT 'Error: Stock cannot be negative!';
    END
END;
GO

--Payment Amount Cannot be Negative trigger 2


CREATE TRIGGER trigger_NoNegativePayment
ON Payment
FOR INSERT, UPDATE
AS
IF EXISTS (SELECT * FROM Payment WHERE PaymentAmount < 0)
BEGIN
    ROLLBACK;
    PRINT 'Payment cannot be negative!';
END;
GO


