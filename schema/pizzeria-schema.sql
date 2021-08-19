--* Creating and using our database
CREATE DATABASE pizzeria;
USE pizzeria; 

--? We need to create our tables
-- pizza_id
-- type
-- price (decimal)
-- vegetarian (boolean)

-- orders
-- order_id
-- date_booking
-- pizza_id

CREATE TABLE pizzas(
    pizza_id INT AUTO_INCREMENT,
    pizza_type VARCHAR(40) NOT NULL,
    price DECIMAL NOT NULL,
    vegetarian BOOLEAN NOT NULL,
    PRIMARY KEY (pizza_id)
);

CREATE TABLE orders(
    order_id INT AUTO_INCREMENT,
    date_booking DATETIME NOT NULL,
    fk_pizza_id INT,
    PRIMARY KEY (order_id),
    FOREIGN KEY (fk_pizza_id) REFERENCES pizzas(pizza_id)
);

