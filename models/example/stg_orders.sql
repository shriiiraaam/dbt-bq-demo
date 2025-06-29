-- Use the `ref` function to select from other models-

SELECT
    o.Order_ID,
    c.Customer_ID,
    c.Customer_Name,
    p.Product_ID,
    p.Product_Name,
    o.Quantity,
    o.Order_Date
FROM
    `aqueous-coder-463806-r3.1.Orders` o
JOIN
    {{ ref("stg_customers") }} c ON o.Customer_ID = c.Customer_ID
JOIN
    `aqueous-coder-463806-r3.1.Products` p ON o.Product_ID = p.Product_ID