With stg_customers AS (
   SELECT
      customer_id,
      CONCAT(first_name, ' ', last_name) as customer_name,
      email as email_address,
      address as billing_address
   FROM `aqueous-coder-463806-r3.1.Customers`

)

Select * from stg_customers