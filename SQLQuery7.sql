--A: Well, here is your problem...
-- CustomerName = Alejandra Camino -) Alejandra
-- google se	arch " How to extract first name from combined name tsql stactk overflow"
-- https://stackoverflow.com/questions/514791/extracting-first-name-and-last-name


WITH  s1 -- use a common Table Expression and compare first_name to first_name2

AS (SELECT t.ContactName
, LEFT(t.ContactName, CHARINDEX(' ', t.ContactName + ' ') - 1) AS first_name
,dbo.udf_parse_first_name(t.ContactName) AS first_name2
FROM dbo.t_w3_schools_customers AS t)
SELECT s1.*
FROM s1
WHERE s1.first_name <>.first_name2; -- Expected result is 0 rows