-- DROP DATABASE
DROP DATABASE IF EXISTS ecommerce_db;

-- CREATE DATABASE
CREATE DATABASE ecommerce_db;

CREATE TABLE ecommerce_db.category (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY, 
    category_name VARCHAR(255) NOT NULL
);

CREATE TABLE ecommerce_db.product (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY, 
    product_name VARCHAR(255) NOT NULL, 
    price DECIMAL NOT NULL, 
    stock INT NOT NULL DEFAULT 10, 
    category_id INT,
    FOREIGN KEY (category_id) REFERENCES ecommerce_db.category(id)
); 

CREATE TABLE ecommerce_db.tag (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY, 
    tag_name VARCHAR(255)
);

CREATE TABLE ecommerce_db.productTag ( 
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY, 
    product_id INT, 
    FOREIGN KEY (product_id) REFERENCES ecommerce_db.product(id), 
    tag_id INT, 
    FOREIGN KEY (tag_id) REFERENCES ecommerce_db.tag(id)
);




