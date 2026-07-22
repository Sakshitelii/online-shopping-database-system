USE OnlineShoppingSystem;

-- Create XML
SELECT ProductID, ProductName, Price, Brand, ProductDetails
FROM Product
FOR XML AUTO;

-- Retrieve XML

SELECT 
ProductID,
ProductDetails.value ( '(/Product/Brand)[1]', 'VARCHAR(50)' ) AS Brand
FROM Product;


-- Modify XML

UPDATE Product
SET ProductDetails.modify('replace value of (/Product/Material/text())[1] with "Cotton"')
WHERE ProductID = 1;


-- Search XML

SELECT *
FROM Product
WHERE ProductDetails.value(
'(/Product/Material)[1]', 'VARCHAR(50)'
) = 'Mesh';
