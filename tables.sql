CREATE SCHEMA nsq_assignment_1;
DROP SCHEMA IF EXISTS nsq_assignment_1;

SET SCHEMA 'nsq_assignment_1';

CREATE TABLE Customer
(
    customer_id SERIAL PRIMARY KEY,
    name        VARCHAR(255) NOT NULL,
    address     VARCHAR(255)
);

CREATE TABLE Author
(
    author_id SERIAL PRIMARY KEY,
    name      VARCHAR(255) NOT NULL
);

CREATE TABLE Category
(
    category_id        SERIAL PRIMARY KEY,
    parent_category_id INT,
    name               VARCHAR(255) NOT NULL,
    FOREIGN KEY (parent_category_id) REFERENCES Category (category_id)
);

CREATE TABLE Book
(
    book_id   SERIAL PRIMARY KEY,
    title     VARCHAR(255) NOT NULL,
    isbn      VARCHAR(20),
    price     DECIMAL(10, 2),
    copies_no INT
);
ALTER TABLE Book
    ADD COLUMN page_count INT;

CREATE TABLE BookAuthor
(
    book_id   INT,
    author_id INT,
    PRIMARY KEY (book_id, author_id),
    FOREIGN KEY (book_id) REFERENCES Book (book_id),
    FOREIGN KEY (author_id) REFERENCES Author (author_id)
);

CREATE TABLE BookCategory
(
    book_id     INT,
    category_id INT,
    PRIMARY KEY (book_id, category_id),
    FOREIGN KEY (book_id) REFERENCES Book (book_id),
    FOREIGN KEY (category_id) REFERENCES Category (category_id)
);

CREATE TABLE "Order"
(
    order_id    SERIAL PRIMARY KEY,
    customer_id INT,
    FOREIGN KEY (customer_id) REFERENCES Customer (customer_id)
);
ALTER TABLE "Order"
    ADD COLUMN total_price DECIMAL(10, 2);

CREATE TABLE OrderDetails
(
    order_id INT,
    book_id  INT,
    quantity INT,
    price    DECIMAL(10, 2) NOT NULL,
    PRIMARY KEY (order_id, book_id),
    FOREIGN KEY (order_id) REFERENCES "Order" (order_id),
    FOREIGN KEY (book_id) REFERENCES Book (book_id)
);