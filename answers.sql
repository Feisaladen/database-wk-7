CREATE TABLE orderdetails (
    orderdetails_id INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT,
    customer_name VARCHAR(50),
    product VARCHAR(50)
);

INSERT INTO orderdetails (order_id, customer_name, product) VALUES
(1, 'john Doe', 'laptop'),
(1, 'john Doe', 'mouse'),
(2, 'jane smith', 'tablet'),
(2, 'jane smith', 'keyboard'),
(2, 'jane smith', 'mouse'),
(3, 'emily klark', 'phone');
  -- question 2 --
  CREATE TABLE orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_name VARCHAR(50)
);
CREATE TABLE orderdetails (
    orderdetails_id INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT,
    product VARCHAR(50),
    FOREIGN KEY (order_id) REFERENCES orders(order_id)
);
-- Customers + orders
INSERT INTO orders (customer_name) VALUES
('john Doe'),
('jane smith'),
('emily klark');

-- Order line items
INSERT INTO orderdetails (order_id, product) VALUES
(1, 'laptop'),
(1, 'mouse'),
(2, 'tablet'),
(2, 'keyboard'),
(2, 'mouse'),
(3, 'phone');
