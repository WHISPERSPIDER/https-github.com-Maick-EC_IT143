DELETE FROM dbo.t_hello_world
WHERE my_message IN('Hello World2', 'Hello World', 'Hello World4');
-- Load test rows
INSERT INTO dbo.t_hello_world(my_message)
VALUES('Hello world2'), ('Hello World3');

--see if the trigger worked
SELECT t.*
FROM  FROM dbo.t_hello_world AS t;

--Try it again
UPDATE  FROM dbo.t_hello_world SET my_message='Hello World4'
WHERE my_message='Hello World3';


--see if the trigger worked 

SELECT t.*
FROM  FROM dbo.t_hello_world AS t;



--QA: How to keep track of who last modified a record?
--A4: This works  for server user and the initial INSERT...

ALTER TABLE  dbo.t_hello_world
ADD last_modified_by VARCHAR(50)  DEFAULT SUSER_NAME()