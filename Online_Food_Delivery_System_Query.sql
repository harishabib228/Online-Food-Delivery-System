-- =========================
-- BASIC QUERIES
-- =========================

-- JOIN
SELECT C.Name, O.Order_ID
FROM Customer C
JOIN Orders O ON C.Customer_ID = O.Customer_ID;

-- SUBQUERY
SELECT Name FROM Customer
WHERE Customer_ID IN (SELECT Customer_ID FROM Orders);

-- AGGREGATION
SELECT SUM(Total_Amount) FROM Orders;

-- =========================
-- COMPLEX QUERY
-- =========================

-- Find Top Customer (highest spending)
SELECT Customer_ID, SUM(Total_Amount) AS Total_Spent
FROM Orders
GROUP BY Customer_ID
HAVING SUM(Total_Amount) = (
    SELECT MAX(SUM(Total_Amount))
    FROM Orders
    GROUP BY Customer_ID
);

-- =========================
-- RUN PROCEDURE
-- =========================

BEGIN
    GetTotalOrders;
END;
/