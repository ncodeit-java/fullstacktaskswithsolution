/*
Open SQL work bench and in the navigator on the left hand side, right click on click on Create schema 
and give the name of the schema as 'springjdbc'.
*/

create table springjdbc.students (
	studentId int NOT NULL AUTO_INCREMENT ,
	studentName varchar(30),
	email varchar(100),
	address varchar(100),
	primary key (studentId)
	);
insert into springjdbc.students values ("Anu Jain","AnuJain@gmail.com","Agni House");
insert into springjdbc.students values ("Mohit Sharma","AnuJain@gmail.com","Vayu House");
insert into springjdbc.students values ("K.P.Gupta","gupta@gmail.com","Jal House");
insert into springjdbc.students values ("Ajit Kumar","AjitKumar@gmail.com","Bhoomi House");
insert into springjdbc.students values ("Nandini Sharma","NandiniSharma@gmail.com","Agni House");
insert into springjdbc.students values ("Rohan Sharma","RohanSharma@gmail.com","Vayu House");

/*
Create Procedure
*/

DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `getStudent`(IN studId INT)
BEGIN
SELECT * FROM students where customerId=studId;
END$$
DELIMITER ;