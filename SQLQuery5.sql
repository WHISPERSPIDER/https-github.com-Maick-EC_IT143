---Q2: How to keep track of wen a record was last modified?
--A2: Maybe use an after update trigger

--Q3: Did it work?
--A3:well, lets see..yyup

--Remove stuff if it is already there
DELETE FROM [dbo].[t_hello_World]

WHERE my_message IN('Hello World2', 'Hello World', 'Hello World4');

-- Load test rows

INSERT INTO dbo.t_hello_world(my_message)

VALUES('Hello world2'), ('Hello World3');

--see if the trigger worked
SELECTt.*
FROM  FROM dbo.t_hello_world AS t;

--Try it again
UPDATE  FROM dbo.t_hello_world SET my_message='Hello World4'
WHERE my_message='Hello World3';


--see if the trigger worked 

SELECT t.*
FROM  [dbo].[t_hello_World] AS t;