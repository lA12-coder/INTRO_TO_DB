CREATE DATABASE IF NOT EXISTS alx_book_store
USE alx_book_store;

CREATE TABLE IF NOT EXISTS Authors (
    author_id INT AUTO_INCREMENT PRIMARY KEY,
    author_name VARCHAR(215) NOT NULL
);

CREATE TABLE IF NOT EXISTS Books(
    book_id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(130) NOT NULL,
    price DOUBLE,
    publication_date DATE,
    author_id INT,
    FOREIGN KEY(author_id) REFERENCES Authors(author_id)
);
CREATE TABLE IF NOT EXISTS Customers(
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_name VARCHAR(215) NOT NULL,
    email VARCHAR(215) UNIQUE,
    address TEXT
) 

CREATE TABLE IF NOT EXISTS Orders(
    order_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
    order_date DATE

)
CREATE TABLE IF NOT EXISTS Order_Details(
    order_detail_id INT PRIMARY KEY AUTO_INCREMENT,
    order_id INT,
    book_id INT,
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (book_id) REFERENCES Books(book_id),
    quantity DOUBLE
)