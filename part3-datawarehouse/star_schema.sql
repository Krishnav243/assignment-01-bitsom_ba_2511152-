
CREATE TABLE dim_date (
    date_id INT PRIMARY KEY,
    full_date DATE,
    month INT,
    year INT
);

CREATE TABLE dim_store (
    store_id INT PRIMARY KEY,
    store_name VARCHAR(100),
    city VARCHAR(50)
);

CREATE TABLE dim_product (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50)
);

CREATE TABLE fact_sales (
    sale_id INT PRIMARY KEY,
    date_id INT,
    store_id INT,
    product_id INT,
    quantity INT,
    revenue INT,
    FOREIGN KEY (date_id) REFERENCES dim_date(date_id),
    FOREIGN KEY (store_id) REFERENCES dim_store(store_id),
    FOREIGN KEY (product_id) REFERENCES dim_product(product_id)
);



INSERT INTO dim_date VALUES
(1, '2023-01-01', 1, 2023),
(2, '2023-02-01', 2, 2023),
(3, '2023-03-01', 3, 2023);


INSERT INTO dim_store VALUES
(1, 'Store A', 'Mumbai'),
(2, 'Store B', 'Delhi'),
(3, 'Store C', 'Bangalore');


INSERT INTO dim_product VALUES
(1, 'Laptop', 'ELECTRONICS'),
(2, 'T-Shirt', 'CLOTHING'),
(3, 'Milk', 'GROCERIES');


INSERT INTO fact_sales VALUES
(1, 1, 1, 1, 2, 100000),
(2, 1, 2, 2, 5, 5000),
(3, 1, 3, 3, 10, 600),
(4, 2, 1, 2, 3, 3000),
(5, 2, 2, 1, 1, 50000),
(6, 2, 3, 3, 8, 480),
(7, 3, 1, 3, 6, 360),
(8, 3, 2, 2, 4, 4000),
(9, 3, 3, 1, 2, 100000),
(10, 3, 1, 2, 2, 2000);
