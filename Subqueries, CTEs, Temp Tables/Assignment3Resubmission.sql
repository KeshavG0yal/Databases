-- Part 1
SELECT 
    DATEPART(HOUR, o.OrderTime) AS OrderHour,
    COUNT(DISTINCT o.OrderID) AS NumberOfOrders,
    SUM(od.Price * od.Quantity) AS Revenue,
    SUM(od.Price * od.Quantity) * 100.0 / (SELECT SUM(Price * Quantity) 
                                           FROM OrderDetails 
                                           JOIN Orders ON OrderDetails.OrderID = Orders.OrderID
                                           WHERE DATEPART(MONTH, Orders.OrderDate) = 7 
                                             AND DATEPART(YEAR, Orders.OrderDate) = 2015) AS PercentOfTotalSales
FROM 
    Orders o
JOIN 
    OrderDetails od ON o.OrderID = od.OrderID
WHERE 
    DATEPART(MONTH, o.OrderDate) = 7 AND DATEPART(YEAR, o.OrderDate) = 2015
GROUP BY 
    DATEPART(HOUR, o.OrderTime)
ORDER BY 
    PercentOfTotalSales DESC;


-- Part 2
SELECT TOP 10 i.IngredientName
INTO #ChickenIngredients
FROM Ingredients i
JOIN PizzaIngredients pi ON i.IngredientID = pi.IngredientID
JOIN Pizzas p ON pi.PizzaID = p.PizzaID
JOIN Categories c ON p.CategoryID = c.CategoryID
WHERE c.CategoryName = 'Chicken'
AND i.IngredientID NOT IN (
    SELECT i.IngredientID
    FROM Ingredients i
    JOIN PizzaIngredients pi ON i.IngredientID = pi.IngredientID
    JOIN Pizzas p ON pi.PizzaID = p.PizzaID
    JOIN Categories c ON p.CategoryID = c.CategoryID
    WHERE c.CategoryName = 'Classic'
)
GROUP BY i.IngredientName
ORDER BY COUNT(pi.PizzaID) DESC;
SELECT TOP 10 i.IngredientName
INTO #VeggieIngredients
FROM Ingredients i
JOIN PizzaIngredients pi ON i.IngredientID = pi.IngredientID
JOIN Pizzas p ON pi.PizzaID = p.PizzaID
JOIN Categories c ON p.CategoryID = c.CategoryID
WHERE c.CategoryName = 'Veggie'
AND i.IngredientID NOT IN (
    SELECT i.IngredientID
    FROM Ingredients i
    JOIN PizzaIngredients pi ON i.IngredientID = pi.IngredientID
    JOIN Pizzas p ON pi.PizzaID = p.PizzaID
    JOIN Categories c ON p.CategoryID = c.CategoryID
    WHERE c.CategoryName = 'Supreme'
)
GROUP BY i.IngredientName
ORDER BY COUNT(pi.PizzaID) DESC;

SELECT DISTINCT IngredientName
FROM (
    SELECT IngredientName FROM #ChickenIngredients
    UNION
    SELECT IngredientName FROM #VeggieIngredients
) AS CombinedIngredients;

DROP TABLE #ChickenIngredients;
DROP TABLE #VeggieIngredients;


-- Part 3
SELECT DISTINCT i.IngredientName
FROM Ingredients i
JOIN PizzaIngredients pi ON i.IngredientID = pi.IngredientID
JOIN Pizzas p ON pi.PizzaID = p.PizzaID
JOIN Categories c ON p.CategoryID = c.CategoryID
WHERE c.CategoryName IN ('Classic', 'Supreme')
AND i.IngredientID NOT IN (
    SELECT i.IngredientID
    FROM Ingredients i
    JOIN PizzaIngredients pi ON i.IngredientID = pi.IngredientID
    JOIN Pizzas p ON pi.PizzaID = p.PizzaID
    JOIN Categories c ON p.CategoryID = c.CategoryID
    WHERE c.CategoryName IN ('Chicken', 'Veggie')
);


-- Part 4
WITH PizzaIngredientCount AS (
    SELECT 
        p.PizzaName,
        COUNT(DISTINCT pi.IngredientID) AS NumberOfIngredients
    FROM 
        Pizzas p
    JOIN 
        PizzaIngredients pi ON p.PizzaID = pi.PizzaID
    GROUP BY 
        p.PizzaName
),
AverageIngredientCount AS (
    SELECT AVG(CAST(NumberOfIngredients AS FLOAT)) AS AvgIngredients
    FROM PizzaIngredientCount
)
SELECT 
    pic.PizzaName,
    pic.NumberOfIngredients
FROM 
    PizzaIngredientCount pic
CROSS JOIN 
    AverageIngredientCount aic
WHERE 
    pic.NumberOfIngredients > aic.AvgIngredients;