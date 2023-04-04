 How many movies contain the special feature of 'Behind the Scences'?
 
 SELECT COUNT(*) FROM film WHERE 'Behind the Scenes'=ANY(special_features)
 
 CREATE TABLE Employee(
Employee_id Serial PRIMARY KEY,
Employee_account_name VARCHAR(20) UNIQUE,
First_name VARCHAR (50),
Last_name VARCHAR(50) DEFAULT'Not specified',
Date_of_birth Date,
Address_id Int REFERENCES address (address_id))
