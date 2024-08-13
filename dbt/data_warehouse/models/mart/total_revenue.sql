{{ config(
    materialized="table",
    schema="mart"
) }}

SELECT 
    TO_CHAR(payment_date, 'Month') AS Month,
    SUM(amount) AS total_revenue
FROM 
    {{ ref('fact_payment')}}
GROUP BY 1