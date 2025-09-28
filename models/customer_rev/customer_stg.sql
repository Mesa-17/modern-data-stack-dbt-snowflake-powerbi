{{config(materialized='table')}}

select
    CUSTOMERID,
    FIRSTNAME,
    LASTNAME,
    EMAIL,
    PHONE,
    ADDRESS,
    CITY,
    STATE,
    ZIPCODE,
    UPDATED_AT,
    CONCAT(FIRSTNAME, ' ', LASTNAME) AS CustomerName
from 
{{source('dbt_proj','customers')}}
