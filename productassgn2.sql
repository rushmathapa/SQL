SELECT * FROM product.product;
-- 1. list all the product name that contains MoMo.
SELECT * FROM product.product where category = 'MoMo';
-- 2. 
SELECT * FROM product.product WHERE category IN ('International Liquors', 'Domestic Liquors');
-- 3.?
UPDATE product.product SET category = 'null' where category = 'Not Defined';
-- 4 
DELETE FROM product.product where list_price <10;
-- 5
SELECT * FROM product.product WHERE list_price >500 AND category = 'Domestic Liquors';
-- 6
SELECT id, name, list_price FROM product.product WHERE list_price BETWEEN 200 AND 500;
