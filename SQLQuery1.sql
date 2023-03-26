CREATE DATABASE AddressBook_Service

CREATE TABLE AddressBook_DB(PersonId INT PRIMARY KEY IDENTITY(1,1),
FirstName VARCHAR(30) NOT NULL,
LastName VARCHAR(30) NOT NULL,
Address VARCHAR(100) NOT NULL,
City VARCHAR(20) NOT NULL,
State VARCHAR(20) NOT NULL,
Zip INT NOT NULL,
PhoneNumber BIGINT NOT NULL,
Email VARCHAR(50) NOT NULL
);
SELECT * FROM  AddressBook_DB

INSERT INTO  AddressBook_DB (FirstName,LastName,Address,City,State,Zip,PhoneNumber,Email)
VALUES
	('Aarti','Pundalik','Location','Pune','Maharastra',411044,1234567890,'aarti.pundalik@gmail.com'),
('Tanvi','Shinde','Location','Pune','Maharastra',411044,1234567890, 'tanvi.shinde@gmail.com'),
('Aditya','Roy Kapoor','Location','Mumbai','Maharastra',411044,1234567890,'aditya.roykapoor@gmail.com')
