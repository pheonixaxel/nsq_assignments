-- INSERT DATA --

INSERT INTO Customer (customer_id, name, address)
VALUES (1, 'Cindi Maginot', 'Suite 51');
INSERT INTO Customer (customer_id, name, address)
VALUES (2, 'Karlens Pilfold', 'Suite 19');
INSERT INTO Customer (customer_id, name, address)
VALUES (3, 'Dionis Mitchelhill', '2nd Floor');
INSERT INTO Customer (customer_id, name, address)
VALUES (4, 'Brigida Clinch', 'Apt 1150');
INSERT INTO Customer (customer_id, name, address)
VALUES (5, 'Jorie MacKay', 'Suite 6');
INSERT INTO Customer (customer_id, name, address)
VALUES (6, 'Vivie Bulcroft', 'Room 1025');
INSERT INTO Customer (customer_id, name, address)
VALUES (7, 'Phillie Loney', 'Suite 72');
INSERT INTO Customer (customer_id, name, address)
VALUES (8, 'Logan Daltry', '5th Floor');
INSERT INTO Customer (customer_id, name, address)
VALUES (9, 'Desirae Cuncliffe', 'Room 1379');
INSERT INTO Customer (customer_id, name, address)
VALUES (10, 'Libbey Kelberer', 'Suite 36');

INSERT INTO Author (author_id, name)
VALUES (1, 'Lynna Pummery');
INSERT INTO Author (author_id, name)
VALUES (2, 'Pryce Connue');
INSERT INTO Author (author_id, name)
VALUES (3, 'Nanon Halson');
INSERT INTO Author (author_id, name)
VALUES (4, 'Eydie Cowdry');
INSERT INTO Author (author_id, name)
VALUES (5, 'Clifford Garatty');
INSERT INTO Author (author_id, name)
VALUES (6, 'Fleurette Sproule');
INSERT INTO Author (author_id, name)
VALUES (7, 'Ahmad MacArthur');
INSERT INTO Author (author_id, name)
VALUES (8, 'Kassia Goodanew');
INSERT INTO Author (author_id, name)
VALUES (9, 'Barri Tongue');
INSERT INTO Author (author_id, name)
VALUES (10, 'Tracie Oppy');

INSERT INTO Book (book_id, title, isbn, price, copies_no)
VALUES (1, 'Cool, Calm and Collected (Calmos)', '978244078-7', 6.3, 19);
INSERT INTO Book (book_id, title, isbn, price, copies_no)
VALUES (2, 'Barber, The', '343403280-0', 91.09, 37);
INSERT INTO Book (book_id, title, isbn, price, copies_no)
VALUES (3, 'Young One, The', '421716345-2', 103.1, 79);
INSERT INTO Book (book_id, title, isbn, price, copies_no)
VALUES (4, 'Thunderbolt (Pik lik feng)', '775636378-7', 484.81, 26);
INSERT INTO Book (book_id, title, isbn, price, copies_no)
VALUES (5, 'Way Down East', '814857999-7', 479.82, 63);
INSERT INTO Book (book_id, title, isbn, price, copies_no)
VALUES (6, 'Face to Face (Faccia a faccia)', '673828186-2', 501.74, 78);
INSERT INTO Book (book_id, title, isbn, price, copies_no)
VALUES (7, 'Something Is Happening (Kuch Kuch Hota Hai)', '427386426-6', 301.3, 9);
INSERT INTO Book (book_id, title, isbn, price, copies_no)
VALUES (8, 'Stay Tuned', '341330812-2', 404.31, 6);
INSERT INTO Book (book_id, title, isbn, price, copies_no)
VALUES (9, 'Instructions Not Included (No se Aceptan Devoluciones)', '922129787-X', 532.53, 20);
INSERT INTO Book (book_id, title, isbn, price, copies_no)
VALUES (10, 'Drunk Stoned Brilliant Dead: The Story of the National Lampoon', '536195296-6', 325.0, 66);

UPDATE Book
SET page_count = 100 + (random() * 4000)::int
WHERE book_id = 1;
UPDATE Book
SET page_count = 100 + (random() * 2000)::int
WHERE book_id = 2;
UPDATE Book
SET page_count = 100 + (random() * 1000)::int
WHERE book_id = 3;
UPDATE Book
SET page_count = 100 + (random() * 1500)::int
WHERE book_id = 4;
UPDATE Book
SET page_count = 100 + (random() * 3400)::int
WHERE book_id = 5;
UPDATE Book
SET page_count = 100 + (random() * 100)::int
WHERE book_id = 6;
UPDATE Book
SET page_count = 100 + (random() * 300)::int
WHERE book_id = 7;
UPDATE Book
SET page_count = 100 + (random() * 700)::int
WHERE book_id = 8;
UPDATE Book
SET page_count = 100 + (random() * 11000)::int
WHERE book_id = 9;
UPDATE Book
SET page_count = 100 + (random() * 1234)::int
WHERE book_id = 10;

INSERT INTO Category (name)
VALUES ('Crime, Thrillers & Mystery');
INSERT INTO Category (name)
VALUES ('Children''s Books');
INSERT INTO Category (name)
VALUES ('History');
INSERT INTO Category (name)
VALUES ('Science Fiction & Fantasy');
INSERT INTO Category (name)
VALUES ('Biography');
INSERT INTO Category (name)
VALUES ('Literature & Fiction');
INSERT INTO Category (name)
VALUES ('Romance');
INSERT INTO Category (name)
VALUES ('Food & Drink');

INSERT INTO Category (name, parent_category_id)
VALUES ('British Detectives', 1);
INSERT INTO Category (name, parent_category_id)
VALUES ('Mystery, Thriller & Suspense', 1);
INSERT INTO Category (name, parent_category_id)
VALUES ('Psychological', 1);

INSERT INTO Category (name, parent_category_id)
VALUES ('Literature & Fiction', 2);
INSERT INTO Category (name, parent_category_id)
VALUES ('Early Learning', 2);
INSERT INTO Category (name, parent_category_id)
VALUES ('Fairy Tales, Folk Tales & Myths', 2);

INSERT INTO Category (name, parent_category_id)
VALUES ('Military History', 3);
INSERT INTO Category (name, parent_category_id)
VALUES ('Historical Biographies', 3);
INSERT INTO Category (name, parent_category_id)
VALUES ('Ancient History & Civilisation', 3);

INSERT INTO Category (name, parent_category_id)
VALUES ('Science Fiction', 4);
INSERT INTO Category (name, parent_category_id)
VALUES ('Fantasy', 4);

INSERT INTO Category (name, parent_category_id)
VALUES ('Historical', 5);
INSERT INTO Category (name, parent_category_id)
VALUES ('Film, Television & Music', 5);
INSERT INTO Category (name, parent_category_id)
VALUES ('Women', 5);

INSERT INTO Category (name, parent_category_id)
VALUES ('Crime, Thrillers & Mystery', 6);
INSERT INTO Category (name, parent_category_id)
VALUES ('Romance', 6);
INSERT INTO Category (name, parent_category_id)
VALUES ('Literary Fiction', 6);

INSERT INTO Category (name, parent_category_id)
VALUES ('Erotica', 7);
INSERT INTO Category (name, parent_category_id)
VALUES ('Romantic Comedy', 7);
INSERT INTO Category (name, parent_category_id)
VALUES ('Contemporary', 7);

INSERT INTO Category (name, parent_category_id)
VALUES ('Diets * Healthy Eating', 8);
INSERT INTO Category (name, parent_category_id)
VALUES ('Restaurant Cookbooks', 8);
INSERT INTO Category (name, parent_category_id)
VALUES ('Quick & Easy Meals', 8);

INSERT INTO BookCategory (book_id, category_id)
VALUES (1, 5);
INSERT INTO BookCategory (book_id, category_id)
VALUES (1, 20);
INSERT INTO BookCategory (book_id, category_id)
VALUES (2, 4);
INSERT INTO BookCategory (book_id, category_id)
VALUES (2, 18);
INSERT INTO BookCategory (book_id, category_id)
VALUES (3, 8);
INSERT INTO BookCategory (book_id, category_id)
VALUES (3, 30);
INSERT INTO BookCategory (book_id, category_id)
VALUES (4, 7);
INSERT INTO BookCategory (book_id, category_id)
VALUES (4, 27);
INSERT INTO BookCategory (book_id, category_id)
VALUES (5, 4);
INSERT INTO BookCategory (book_id, category_id)
VALUES (5, 18);
INSERT INTO BookCategory (book_id, category_id)
VALUES (6, 2);
INSERT INTO BookCategory (book_id, category_id)
VALUES (6, 12);
INSERT INTO BookCategory (book_id, category_id)
VALUES (7, 1);
INSERT INTO BookCategory (book_id, category_id)
VALUES (7, 11);
INSERT INTO BookCategory (book_id, category_id)
VALUES (8, 7);
INSERT INTO BookCategory (book_id, category_id)
VALUES (8, 28);
INSERT INTO BookCategory (book_id, category_id)
VALUES (9, 1);
INSERT INTO BookCategory (book_id, category_id)
VALUES (9, 11);
INSERT INTO BookCategory (book_id, category_id)
VALUES (10, 6);
INSERT INTO BookCategory (book_id, category_id)
VALUES (10, 24);

INSERT INTO BookAuthor (book_id, author_id)
VALUES (1, 5);
INSERT INTO BookAuthor (book_id, author_id)
VALUES (1, 9);
INSERT INTO BookAuthor (book_id, author_id)
VALUES (2, 6);
INSERT INTO BookAuthor (book_id, author_id)
VALUES (2, 7);
INSERT INTO BookAuthor (book_id, author_id)
VALUES (3, 2);
INSERT INTO BookAuthor (book_id, author_id)
VALUES (4, 4);
INSERT INTO BookAuthor (book_id, author_id)
VALUES (5, 2);
INSERT INTO BookAuthor (book_id, author_id)
VALUES (5, 8);
INSERT INTO BookAuthor (book_id, author_id)
VALUES (6, 6);
INSERT INTO BookAuthor (book_id, author_id)
VALUES (6, 2);
INSERT INTO BookAuthor (book_id, author_id)
VALUES (7, 2);
INSERT INTO BookAuthor (book_id, author_id)
VALUES (7, 1);
INSERT INTO BookAuthor (book_id, author_id)
VALUES (8, 10);
INSERT INTO BookAuthor (book_id, author_id)
VALUES (9, 10);
INSERT INTO BookAuthor (book_id, author_id)
VALUES (10, 3);

-- Question 4 --
-- 1. Sell a book to a customer --
insert into "Order" (customer_id)
values (1);
insert into OrderDetails (order_id, book_id, quantity, price)
values (1, 1, 1, 6.3);
update OrderDetails
set price = (select price from Book where book_id = 1) * quantity
where book_id = 1;
update "Order"
set total_price = (select sum(price) from OrderDetails where order_id = 1)
where order_id = 1;
update Book
set copies_no = copies_no - 1
where book_id = 1;

-- 2. Change the address of a customer. --
update Customer
set address = 'Suite 51, 1234 New Address'
where customer_id = 2;

-- 3.Add an existing author to a book. --
insert into BookAuthor (book_id, author_id)
values (5, 5);

-- 4. Retire the "Psychological" category and assign all books
-- from that category to the parent category.
-- Do not assume you know an id of the parent category. --
select *
from Book
where book_id in (select book_id
                  from BookCategory
                  where category_id in (select category_id
                                        from Category
                                        where name = 'Psychological'));
select parent_category_id, category_id
from Category
where name = 'Psychological';

DELETE
FROM BookCategory
WHERE category_id = (SELECT category_id
                     FROM Category
                     WHERE name = 'Psychological')
  AND book_id IN (SELECT bc.book_id
                  FROM BookCategory bc
                           JOIN Category c ON bc.category_id = c.category_id
                  WHERE c.parent_category_id = (SELECT category_id
                                                FROM Category
                                                WHERE name = 'Psychological'));

update BookCategory
set category_id = (select parent_category_id
                   from Category
                   where name = 'Psychological')
where category_id = (select category_id
                     from Category
                     where name = 'Psychological');


-- 5. Sell 3 copies of one book and 2 of another in a single order. --
insert into "Order" (customer_id)
values (5);
insert into OrderDetails (order_id, book_id, quantity, price)
values (2, 1, 3, -1);
update OrderDetails
set price = (select price from Book where book_id = 1) * quantity
where book_id = 1;
update Book
set copies_no = copies_no - 3
where book_id = 1;
insert into OrderDetails (order_id, book_id, quantity, price)
values (2, 2, 2, -1);
update OrderDetails
set price = (select price from Book where book_id = 2) * quantity
where book_id = 2;
update Book
set copies_no = copies_no - 2
where book_id = 1;
update "Order"
set total_price = (select sum(price) from OrderDetails where order_id = 2)
where order_id = 2;


-- Query data --
-- 1.	All books by an author. --
select *
from Book
where book_id in (select book_id
                  from BookAuthor
                  where author_id in (select author_id
                                      from Author
                                      where name = 'Lynna Pummery'));

-- 2.	Total price of an order. --
select total_price
from "Order"
where order_id = 1;

-- 3.	Total sales to a customer --
select sum(price)
from OrderDetails
where order_id in (select order_id
                   from "Order"
                   where customer_id in (select customer_id
                                         from Customer
                                         where name = 'Cindi Maginot'));

-- 4.	Books that are categorized as neither science fiction nor fantasy
-- (note: A book can have more categories. Make sure you don’t return books
-- that are fantasy romance, for instance.)
select *
from Book
where book_id in (select book_id
                  from BookCategory
                  where category_id in (select category_id
                                        from Category
                                        where name not in ('Science Fiction', 'Fantasy')));

-- 5.	Average page count by category --
select avg(page_count) as Page_Average, Category.name as Genre
from Book
         join BookCategory on Book.book_id = BookCategory.book_id
         join Category on BookCategory.category_id = Category.category_id
group by Category.name;

-- 6.	Categories that have no sub-categories --
select *
from Category
where category_id not in (select parent_category_id
                          from Category);

-- 7.	ISBN numbers of books with more than one author --
select isbn
from Book
where book_id in (select book_id
                  from BookAuthor
                  group by book_id
                  having count(author_id) > 1);

-- 8.	ISBN numbers of books that sold at least X copies (you decide the value for X) --
select isbn, Book.book_id, OD.order_id
from Book
         join OrderDetails OD on Book.book_id = OD.book_id
where OD.quantity > 1
group by Book.book_id, isbn, OD.order_id;

-- 9.	Number of copies of each book sold – unsold books should show as 0 sold copies.
select b.title, coalesce(sum(OD.quantity), 0)
from book b
         left join OrderDetails OD on b.book_id = OD.book_id
group by title;

-- 10.	Best-selling books: The top 10 selling books ordered in descending order by number of sales.
select b.title, coalesce(sum(OD.quantity), 0) as sales
from book b
         left join OrderDetails OD on b.book_id = OD.book_id
group by title
order by sales desc
limit 10;

-- 11.	Best-selling genres: The top 3 selling genres ordered in descending order by number of sales.
select c.name                        AS Genre,
       COALESCE(SUM(od.quantity), 0) AS Total_Sales
from Category c
         left join
     BookCategory bc ON c.category_id = bc.category_id
         left join
     Book b ON bc.book_id = b.book_id
         left join
     OrderDetails od ON b.book_id = od.book_id
group by c.name
order by Total_Sales desc
limit 3;
