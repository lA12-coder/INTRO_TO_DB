CREATE DATABASE IF NOT EXISTS alx_book_store
USE alx_book_store

CREATE TABLE Authors(
    author_id PRIMARY KEY INT AUTO_INCREMENT,
    author_name VARCHAR(215) NOT NULL,
)

CREATE TABLE Books(
    book_id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(130) NOT NULL,
    price DOUBLE,
    publication_date DATE,
    FOREIGN KEY(author_id) REFERENCES Authors(author_id),
)

CREATE TABLE Customers(
    customer_id PRIMARY KEY INT AUTO_INCREMENT,
    customer_name VARCHAR(215) NOT NULL,
    email VARCHAR(215) UNIQUE,
    address TEXT,
) 

CREATE Orders(
    order_id PRIMARY KEY INT AUTO_INCREMENT,
    FOREIGN KEY(customer_id) REFERENCES Customers(customer_id),
    order_date DATE,

)
CREATE TABLE Order_Details(
    order_detail_id PRIMARY KEY INT AUTO_INCREMENT,
    FOREIGN KEY(order_id) REFERENCES Orders(order_id),
    FOREIGN KEY(book_id) REFERENCES Books(book_id),
    quantity DOUBLE
)