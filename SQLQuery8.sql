--A: Well, here is your problem...
-- CustomerName = Alejandra Camino -) Alejandra
-- google se	arch " How to extract first name from combined name tsql stactk overflow"
-- https://stackoverflow.com/questions/514791/extracting-first-name-and-last-name

SELECT t.CustomerID
, t.CustomerName
,t.ContactName
,dbo.udf_parse_first_name(t.ContactName) AS ContactName_first_name
,'' AS ContactName_last_name -- How to extract last name from contact name?
,t.Address
,t.City
,t.country
FROM dbo.t_w3_schools_customers AS t
ORDER BY 3;