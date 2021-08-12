CREATE TABLE users (
	user_id SERIAL PRIMARY KEY,
  name VARCHAR(30),
  email VARCHAR(50)
);


CREATE TABLE products (
	product_id SERIAL PRIMARY KEY,
  name VARCHAR(30),
  price NUMERIC(8, 2)
);


CREATE TABLE cart (
  cart_id SERIAL PRIMARY KEY,
  user_id INT NOT NULL REFERENCES users(user_id),
  product_id INT NOT NULL REFERENCES products(product_id),
  quantity INTEGER
);


INSERT INTO users (name, email)
VALUES ('Sam', 'sam@gmail.com'), ('Bronson', 'bronson@gmail.com'), ('Eric', 'eric@gmail.com');


INSERT INTO products (name, price)
VALUES ('iPhone', 1199.99), ('MacBook', 1299.99), ('Keyboard', 129.99), ('Mouse', 69.99), ('airPods', 179.99);


INSERT INTO cart (user_id, product_id, quantity)
VALUES (1, 1, 1),(1, 2, 1),(2, 1, 2),(2, 2, 1),(3, 1, 2),(3, 5, 2);


SELECT *
FROM products
WHERE product_id IN (
  SELECT product_id
  FROM cart
  WHERE user_id IN (
    SELECT user_id
    FROM users
    WHERE user_id = 1
  )
);


SELECT p.name AS "Product", u.* AS "User" 
FROM users u
JOIN cart c
ON u.user_id = c.user_id
JOIN products p
ON c.product_id = p.product_id;


SELECT u.name AS "User", SUM(p.price) AS "Total"
FROM products p
JOIN cart c
ON p.product_id = c.product_id
JOIN users u
ON c.user_id = u.user_id
GROUP BY u.name;


UPDATE cart
SET quantity = 6
WHERE user_id = 2 AND product_id = 1;