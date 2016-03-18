--1. Get all customers and their addresses.
SELECT * FROM customers CROSS JOIN addresses;
--2. Get all orders and their line items.
SELECT * FROM orders INNER JOIN line_items ON orders.id = line_items.order_id;
--3. Which warehouses have cheetos?
SELECT DISTINCT warehouse FROM warehouse JOIN warehouse_product ON warehouse.id = warehouse_product.warehouse_id JOIN products ON products.description = 'cheetos';
--4. Which warehouses have diet pepsi?
SELECT DISTINCT warehouse FROM warehouse JOIN warehouse_product ON warehouse.id = warehouse_product.warehouse_id JOIN products ON products.description = 'diet pepsi';
--5. Get the number of orders for each customer. NOTE: It is OK if those without orders are not included in results.
SELECT orders.total, addresses.customer_id, customers.first_name, customers.last_name FROM orders JOIN addresses ON orders.address_id = addresses.id JOIN customers ON addresses.customer_id = customers.id;
--6. How many customers do we have?
SELECT count(id) FROM customers;
--7. How many products do we carry?
SELECT count(id) FROM products;
--8. What is the total available on-hand quantity of diet pepsi?
SELECT sum(on_hand) FROM warehouse_product JOIN products ON products.id = warehouse_product.product_id WHERE products.description = 'diet pepsi';
