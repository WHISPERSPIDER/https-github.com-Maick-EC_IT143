CREATE TRIGGER trg_hello_world_last_mod ON [dbo].[t_hello_World]

AFTER  UPDATE 
AS
/*************************************************************************************************************************************

NAME:   debo.trg_Hello_world_last_mod
PURPOSE: Hello word - Last Modifed By  Trigger


MODIFICATION LOG:
ver    Date      Author     Description
---    ----      -----      ----------------------------------------------
1.0    06/04/2022 WHISPER  1.Built this script for EC IT440

RUNTTIME:
1s

NOTES:
keep track of the last modified date for each row in the table

**************************************************************************/

UPDATE  [dbo].[t_Hello_World]
SET
last_modified_date = GETDATE()
WHERE my_message IN
(
SELECT DISTINCT
my_message
FROM Inserted
);

