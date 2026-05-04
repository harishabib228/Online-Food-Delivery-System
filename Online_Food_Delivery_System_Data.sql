-- =========================
-- SAMPLE DATA INSERTS
-- =========================

INSERT INTO Customer VALUES (1, 'Ali', 'ali@gmail.com', '0300');
INSERT INTO Restaurant VALUES (1, 'Pizza Hut', 'Karachi');
INSERT INTO Menu VALUES (1, 1, 'Pizza', 1500);
INSERT INTO Orders VALUES (1, 1, SYSDATE, 0);
INSERT INTO Order_Details VALUES (1, 1, 1);
INSERT INTO Payment VALUES (1, 1, 'Cash', 'Paid');

INSERT INTO Customer VALUES (2, 'Ahmed', 'ahmed@gmail.com', '0311');
INSERT INTO Restaurant VALUES (2, 'KFC', 'Lahore');
INSERT INTO Menu VALUES (2, 2, 'Zinger Burger', 800);
INSERT INTO Orders VALUES (2, 2, SYSDATE, 0);
INSERT INTO Order_Details VALUES (2, 2, 1);
INSERT INTO Payment VALUES (2, 2, 'Card', 'Paid');

INSERT INTO Customer VALUES (3, 'Sara', 'sara@gmail.com', '0322');
INSERT INTO Restaurant VALUES (3, 'McDonalds', 'Islamabad');
INSERT INTO Menu VALUES (3, 3, 'Big Mac', 900);
INSERT INTO Orders VALUES (3, 3, SYSDATE, 0);
INSERT INTO Order_Details VALUES (3, 3, 1);
INSERT INTO Payment VALUES (3, 3, 'Online', 'Paid');

INSERT INTO Customer VALUES (4, 'Usman', 'usman@gmail.com', '0333');
INSERT INTO Restaurant VALUES (4, 'Hardees', 'Karachi');
INSERT INTO Menu VALUES (4, 4, 'Chicken Burger', 850);
INSERT INTO Orders VALUES (4, 4, SYSDATE, 0);
INSERT INTO Order_Details VALUES (4, 4, 1);
INSERT INTO Payment VALUES (4, 4, 'Cash', 'Pending');

INSERT INTO Customer VALUES (5, 'Ayesha', 'ayesha@gmail.com', '0344');
INSERT INTO Restaurant VALUES (5, 'Dominos', 'Lahore');
INSERT INTO Menu VALUES (5, 5, 'Cheese Pizza', 1300);
INSERT INTO Orders VALUES (5, 5, SYSDATE, 0);
INSERT INTO Order_Details VALUES (5, 5, 1);
INSERT INTO Payment VALUES (5, 5, 'Card', 'Paid');

INSERT INTO Customer VALUES (6, 'Bilal', 'bilal@gmail.com', '0355');
INSERT INTO Restaurant VALUES (6, 'Subway', 'Islamabad');
INSERT INTO Menu VALUES (6, 6, 'Sandwich', 700);
INSERT INTO Orders VALUES (6, 6, SYSDATE, 0);
INSERT INTO Order_Details VALUES (6, 6, 1);
INSERT INTO Payment VALUES (6, 6, 'Online', 'Paid');

INSERT INTO Customer VALUES (7, 'Hina', 'hina@gmail.com', '0366');
INSERT INTO Restaurant VALUES (7, 'Biryani House', 'Karachi');
INSERT INTO Menu VALUES (7, 7, 'Chicken Biryani', 500);
INSERT INTO Orders VALUES (7, 7, SYSDATE, 0);
INSERT INTO Order_Details VALUES (7, 7, 1);
INSERT INTO Payment VALUES (7, 7, 'Cash', 'Paid');

INSERT INTO Customer VALUES (8, 'Zain', 'zain@gmail.com', '0377');
INSERT INTO Restaurant VALUES (8, 'BBQ Tonight', 'Karachi');
INSERT INTO Menu VALUES (8, 8, 'BBQ Platter', 2000);
INSERT INTO Orders VALUES (8, 8, SYSDATE, 0);
INSERT INTO Order_Details VALUES (8, 8, 1);
INSERT INTO Payment VALUES (8, 8, 'Card', 'Pending');

INSERT INTO Customer VALUES (9, 'Fatima', 'fatima@gmail.com', '0388');
INSERT INTO Restaurant VALUES (9, 'Al Baik', 'Lahore');
INSERT INTO Menu VALUES (9, 9, 'Fried Chicken', 950);
INSERT INTO Orders VALUES (9, 9, SYSDATE, 0);
INSERT INTO Order_Details VALUES (9, 9, 1);
INSERT INTO Payment VALUES (9, 9, 'Online', 'Paid');

INSERT INTO Customer VALUES (10, 'Hamza', 'hamza@gmail.com', '0399');
INSERT INTO Restaurant VALUES (10, 10, 'Pizza Point', 'Islamabad');
INSERT INTO Menu VALUES (10, 10, 'Pepperoni Pizza', 1400);
INSERT INTO Orders VALUES (10, 10, SYSDATE, 0);
INSERT INTO Order_Details VALUES (10, 10, 1);
INSERT INTO Payment VALUES (10, 10, 'Cash', 'Paid');