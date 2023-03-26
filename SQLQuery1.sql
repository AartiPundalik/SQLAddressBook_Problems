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

-- UC4 Edit Contact
UPDATE AddressBook_DB SET LastName = 'Pundalik' WHERE FirstName = 'Aarti'
UPDATE AddressBook_DB SET Address = 'Nigdi ' WHERE FirstName = 'Aarti'
UPDATE AddressBook_DB SET City = 'Pune' WHERE FirstName = 'Aarti'

-- UC5 Delete contact
DELETE FROM AddressBook_DB WHERE FirstName = 'Aarti'

-- UC6 Retrive By City or State
SELECT * FROM AddressBook_DB WHERE City = 'Pune'
SELECT * FROM AddressBook_DB WHERE State = 'Maharastra'

-- UC7 Size of Address book 
SELECT COUNT (*) FROM AddressBook_DB GROUP BY City 
SELECT COUNT (*) FROM AddressBook_DB GROUP BY State

SELECT COUNT (*) FROM AddressBook_DB WHERE City = 'Pune' GROUP BY City
SELECT COUNT (*) FROM AddressBook_DB WHERE State = 'Maharastra' GROUP BY State

SELECT COUNT (*) AS CityCount,City FROM AddressBook_DB GROUP BY City
SELECT COUNT (*) AS StateCount,State FROM AddressBook_DB GROUP BY State

-- UC8 Sort By First Name For City
SELECT * FROM AddressBook_DB WHERE City = 'Pune' ORDER BY FirstName

-- UC9 Add coloum to Address Book Table
ALTER TABLE AddressBook_DB ADD AddressBookTYPE VARCHAR(50)
ALTER TABLE AddressBook_DB ADD AddressBookNAME VARCHAR(50)

UPDATE AddressBook_DB
SET AddressBookTYPE = 'Archana'
WHERE City = 'Pune'

UPDATE AddressBook_DB
SET AddressBookTYPE = 'Profession'
WHERE City = 'Pune'

UPDATE AddressBook_DB
SET AddressBookNAME = 'Aarsheen'
WHERE City = 'Pune'

UPDATE AddressBook_DB
SET AddressBookNAME = 'Rohit'
WHERE City = 'Pune'

UPDATE AddressBook_DB
SET AddressBookNAME = FirstName + LastName
WHERE City = 'Pune'

-- UC10 get number of contact persons
SELECT AddressBookTYPE , COUNT (AddressBookTYPE) AS NoOfContactPresent FROM AddressBook_DB GROUP BY AddressBookTYPE

-- UC11 add person to both Friend and Family
INSERT INTO AddressBook_DB(FirstName,LastName,Address,City,State,Zip,PhoneNumber,Email,AddressBookTYPE,AddressBookNAME)
VALUES ('Sucheta','Sangita','Yogen','Pune','Maharastra',411044,1234512345,'sangita.gmail.com','Friend','Sucheta'),
('Anil','Sunil','Mangesh','Mumbai','Maharastra',411044,1234512345,'sunil.gmail.com','Family','Anil')