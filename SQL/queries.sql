-- Create the database
CREATE DATABASE IF NOT EXISTS w18b;
USE w18b;

-- Create the tables
CREATE TABLE customer (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) UNIQUE NOT NULL,
    password VARCHAR(50) NOT NULL,
    created_at DATETIME NOT NULL
);

CREATE TABLE item (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    price DECIMAL(10, 2) NOT NULL
);

CREATE TABLE purchase (
    id INT AUTO_INCREMENT PRIMARY KEY,
    purchase_time DATETIME NOT NULL,
    customer_id INT,
    item_id INT,
    FOREIGN KEY (customer_id) REFERENCES customer(id),
    FOREIGN KEY (item_id) REFERENCES item(id)
);

-- Insert at least 5 customers
INSERT INTO customer (username, password, created_at) VALUES ('user1', 'password1', NOW());
INSERT INTO customer (username, password, created_at) VALUES ('user2', 'password2', NOW());
INSERT INTO customer (username, password, created_at) VALUES ('user3', 'password3', NOW());
INSERT INTO customer (username, password, created_at) VALUES ('user4', 'password4', NOW());
INSERT INTO customer (username, password, created_at) VALUES ('user5', 'password5', NOW());

-- Insert at least 10 items
INSERT INTO item (name, price) VALUES ('item1', 10.99);
INSERT INTO item (name, price) VALUES ('item2', 15.49);
INSERT INTO item (name, price) VALUES ('item3', 7.99);
INSERT INTO item (name, price) VALUES ('item4', 12.50);
INSERT INTO item (name, price) VALUES ('item5', 9.99);
INSERT INTO item (name, price) VALUES ('item6', 14.20);
INSERT INTO item (name, price) VALUES ('item7', 11.35);
INSERT INTO item (name, price) VALUES ('item8', 6.99);
INSERT INTO item (name, price) VALUES ('item9', 13.75);
INSERT INTO item (name, price) VALUES ('item10', 5.45);

-- Insert at least 20 purchases (some with the same customer_id and purchase_time)
INSERT INTO purchase (purchase_time, customer_id, item_id) VALUES ('2024-08-15 10:00:00', 1, 1);
INSERT INTO purchase (purchase_time, customer_id, item_id) VALUES ('2024-08-15 10:00:00', 1, 2);
INSERT INTO purchase (purchase_time, customer_id, item_id) VALUES ('2024-08-15 11:00:00', 2, 3);
INSERT INTO purchase (purchase_time, customer_id, item_id) VALUES ('2024-08-15 11:00:00', 2, 4);
INSERT INTO purchase (purchase_time, customer_id, item_id) VALUES ('2024-08-15 12:00:00', 3, 5);
INSERT INTO purchase (purchase_time, customer_id, item_id) VALUES ('2024-08-15 13:00:00', 4, 6);
INSERT INTO purchase (purchase_time, customer_id, item_id) VALUES ('2024-08-15 14:00:00', 5, 7);
INSERT INTO purchase (purchase_time, customer_id, item_id) VALUES ('2024-08-15 14:00:00', 1, 8);
INSERT INTO purchase (purchase_time, customer_id, item_id) VALUES ('2024-08-15 14:00:00', 1, 9);
INSERT INTO purchase (purchase_time, customer_id, item_id) VALUES ('2024-08-15 15:00:00', 2, 10);
INSERT INTO purchase (purchase_time, customer_id, item_id) VALUES ('2024-08-15 15:00:00', 3, 1);
INSERT INTO purchase (purchase_time, customer_id, item_id) VALUES ('2024-08-15 16:00:00', 4, 2);
INSERT INTO purchase (purchase_time, customer_id, item_id) VALUES ('2024-08-15 16:00:00', 5, 3);
INSERT INTO purchase (purchase_time, customer_id, item_id) VALUES ('2024-08-15 16:00:00', 1, 4);
INSERT INTO purchase (purchase_time, customer_id, item_id) VALUES ('2024-08-15 17:00:00', 2, 5);
INSERT INTO purchase (purchase_time, customer_id, item_id) VALUES ('2024-08-15 17:00:00', 3, 6);
INSERT INTO purchase (purchase_time, customer_id, item_id) VALUES ('2024-08-15 17:00:00', 4, 7);
INSERT INTO purchase (purchase_time, customer_id, item_id) VALUES ('2024-08-15 18:00:00', 5, 8);
INSERT INTO purchase (purchase_time, customer_id, item_id) VALUES ('2024-08-15 18:00:00', 1, 9);
INSERT INTO purchase (purchase_time, customer_id, item_id) VALUES ('2024-08-15 18:00:00', 2, 10);
