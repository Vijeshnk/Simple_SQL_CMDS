--creating the table--
CREATE TABLE product (
product_name VARCHAR(200),
price INTEGER,
);

--adding the values to the created colums--
INSERT INTO product(product_name,price)
VALUES ('shirt',90);

--viewing the table by selecting the all the columns in the table product--
SELECT * FROM product; 

--filtering the values in the colum by adding the condition--
SELECT product_name,price 
FROM product 
WHERE price != 50

--updating the value --
UPDATE product
SET price = 150
WHERE product_name = 'Jeans'

-- deleting the row --
DELETE FROM product  
WHERE product_name = 'Jeans'

--adding the new column to the existing the table --
ALTER TABLE product
ADD COLUMN in_stock VARCHAR(3)

-- update the values for the selected colum name as yes --
UPDATE product 
SET in_stock ='YES'
WHERE product_name = 'apple'
OR product_name = 'bag'

--changing the data type of column --
UPDATE product 
SET in_stock = 10
WHERE product_name = 'apple'

UPDATE product
SET in_stock = 30
WHERE product_name = 'bag'

ALTER TABLE product
ALTER COLUMN in_stock TYPE INTEGER
USING in_stock::integer



