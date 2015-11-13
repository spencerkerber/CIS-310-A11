-- Spencer Kerber
-- cis31018
-- CIS 310-01
-- A11
-- 4/19/15

-- Part 1

CREATE TABLE PRICE
(
	PRICE_CODE	nvarchar(15) NOT NULL,
	PRICE_DESCRIPTION	nvarchar(15) NOT NULL,
	PRICE_RENTFEE	INTEGER NOT NULL,
	PRICE_DAILYLATEFEE	INTEGER NOT NULL
)

Create table Movie
(
	MOVIE_NUM VARCHAR (50) NOT NULL,
	Movie_Title Varchar (50) NOT NULL,
	Movie_Year Varchar (20) NOT NULL,
	Movie_cost Varchar (40) NOT NULL,
	Movie_Genre Varchar (20) NOT NULL,
	Price_Code Varchar (40) NOT NULL
	)

Create table MEMBERSHIP
(
	MEM_NUM INTEGER NOT NULL,
	MEM_FNAME VARCHAR (15),
	MEM_LNAME VARCHAR (20) NOT NULL,
	MEM_STREET VARCHAR (30),
	MEM_CITY VARCHAR (20),
	MEM_STATE VARCHAR (2),
	MEM_ZIP VARCHAR (9),
	MEM_BALANCE DECIMAL (6,2)
)

Create table RENTAL
(
	RENT_NUM INTEGER NOT NULL,
	RENT_DATE VARCHAR (15) NOT NULL,
	MEM_NUM INTEGER NOT NULL
)

CREATE TABLE VIDEO
(
	VID_NUM INTEGER NOT NULL,
	VID_INDATE Varchar (10) NOT NULL,
	MOVIE_NUM Varchar (10) NOT NULL
)

CREATE TABLE DETAILRENTAL
(
	RENT_NUM INTEGER NOT NULL,
	VID_NUM	INTEGER NOT NULL,
	DETAIL_FEE VARCHAR(15) NOT NULL,
	DETAIL_DUEDATE VARCHAR(15) NOT NULL,
	DETAIL_RETURNDATE VARCHAR(20),
	DETAIL_DAILYLATEFEE VARCHAR(15) NOT NULL
)

Alter Table PRICE
add CONSTRAINT PRICE_PK PRIMARY KEY (PRICE_CODE)

Alter Table MOVIE
add CONSTRAINT MOVIE_PK PRIMARY KEY (MOVIE_NUM)

Alter Table MOVIE
add CONSTRAINT MOVIE_FK FOREIGN KEY (PRICE_CODE) REFERENCES PRICE(PRICE_CODE)

Alter Table MEMBERSHIP
add CONSTRAINT MEMBERSHIP_PK PRIMARY KEY (MEM_NUM)

Alter Table RENTAL
add CONSTRAINT RENTAL_PK PRIMARY KEY (RENT_NUM)

Alter Table RENTAL
add CONSTRAINT RENTAL_FK FOREIGN KEY (MEM_NUM) REFERENCES MEMBERSHIP (MEM_NUM)

Alter Table VIDEO
add CONSTRAINT VIDEO_PK PRIMARY KEY (VID_NUM)

Alter Table VIDEO
add CONSTRAINT VIDEO_FK FOREIGN KEY (MOVIE_NUM) REFERENCES MOVIE(MOVIE_NUM)

Alter Table DETAILRENTAL 
add CONSTRAINT DETAILRENTAL_PK PRIMARY KEY (RENT_NUM, VID_NUM) 

Alter Table DETAILRENTAL
add CONSTRAINT DETAILRENTAL_FK1 FOREIGN KEY (RENT_NUM) REFERENCES RENTAL(RENT_NUM)

Alter Table DETAILRENTAL
add CONSTRAINT DETAILRENTAL_FK2 FOREIGN KEY (VID_NUM) REFERENCES VIDEO (VID_NUM)

-- Part 2

Insert into PRICE values ('1', 'Standard', '2.0', '1.0');
Insert into PRICE values ('2', 'New Release', '3.5', '3.0');
Insert into PRICE values ('3', 'Discount', '1.5', '1.0');
Insert into PRICE values ('4', 'Weekly Special', '1.0', '0.5');

Insert into MOVIE values ('1234', 'The Cesar Family Christmas', '2011', '39.95', 'FAMILY', '2')
Insert into MOVIE values ('1235', 'Smokey Mountain Wildlife', '2008', '59.95', 'ACTION', '1')
Insert into Movie values ('1236', 'Richard Goodhope', '2012', '59.95', 'DRAMA', '2')
Insert into MOVIE values ('1237', 'Beatnik Fever', '2011', '29.95', 'COMEDY', '2')
Insert into MOVIE values ('1238', 'Constant Companion', '2012', '89.95', 'DRAMA', '2')
Insert into MOVIE values ('1239', 'Where Hope Dies', '2002', '25.49', 'DRAMA', '3')
Insert into MOVIE values ('1245', 'Time to Burn', '2009', '45.49', 'ACTION', '1')
Insert into MOVIE values ('1246', 'What He Doesn"t Know', '2010', '58.29', 'COMEDY', '1')

Insert into VIDEO values ('34341', '22-Jan-11', '1235')
Insert into VIDEO values ('34342', '22-Jan-11', '1235')
Insert into VIDEO values ('34366', '02-Mar-13', '1236')
Insert into Video values ('34367', '02-Mar-13', '1236')
Insert into VIDEO values ('34368', '02-Mar-13', '1236')
Insert into VIDEO values ('34369', '02-Mar-13', '1236')
Insert into VIDEO values ('44392', '21-Oct-12', '1237')
Insert into VIDEO values ('44397', '21-Oct-12', '1237')
Insert into VIDEO values ('54321', '18-Jun-12', '1234')
Insert into VIDEO values ('54324', '18-Jun-12', '1234')
Insert into VIDEO values ('54325', '18-Jun-12', '1234')
Insert into VIDEO values ('59237', '14-Feb-13', '1237')
Insert into VIDEO values ('61353', '28-Jan-10', '1245')
Insert into VIDEO values ('61354', '28-Jan-10', '1245')
Insert into VIDEO values ('61367', '30-Jul-12', '1246')
Insert into VIDEO values ('61369', '30-Jul-12', '1246')
Insert into VIDEO values ('61388', '25-Jan-11', '1239')

Insert into MEMBERSHIP values ('102', 'Tami', 'Dawson', '2632 Takli Circle', 'Norene', 'TN', '37136', '11')
Insert into MEMBERSHIP values ('103', 'Curt', 'Knight', '4025 Cornell Court', 'Flatgap', 'KY', '41219', '6')
Insert into MEMBERSHIP values ('104', 'Jamal', 'Melendez', '788 East 145th Avenue', 'Quebeck', 'TN', '38579', '0')
Insert into MEMBERSHIP values ('105', 'Iva', 'McClain', '6045 Muskett Ball Circle', 'Summit', 'KY', '42783', '15')
Insert into MEMBERSHIP values ('106', 'Miranda', 'Parks', '4469 Maxwell Place', 'Germantown', 'TN', '38183', '0')
Insert into MEMBERSHIP values ('107', 'Rosario', 'Elliott', '7578 Danner Avenue', 'Columbia', 'TN', '38402', '5')
Insert into MEMBERSHIP values ('108', 'Mattie', 'Guy', '4390 Evergreen Street', 'Lily', 'KY', '40740', '0')
Insert into MEMBERSHIP values ('109', 'Clint', 'Ochoa', '1711 Elm Street', 'Greenville', 'TN', '37745', '10')
Insert into MEMBERSHIP values ('110', 'Lewis', 'Rosales', '4524 SouthWind Circle', 'Counce', 'TN', '38326', '0')
Insert into MEMBERSHIP values ('111','Stacy', 'Mann', '2789 East Cook Avenue', 'Murfreesboro', 'TN', '37132','8')
Insert into MEMBERSHIP values ('Luis', 'Trujillo', '7267 Melvin Avenue',  'Heiskell', 'TN', '37754', '3')
Insert into MEMBERSHIP values ('Minnie', 'Gonzales', '6430 Vasili Drive', 'Williston', 'TN', '38076', '0')

Insert into DETAILRENTAL values ('1001', '34342', '2', '04-Mar-13', '02-Mar-13', '1')
Insert into DETAILRENTAL values ('1001', '34366', '3.5', '04-Mar-13', '02-Mar-13', '3')
Insert into DETAILRENTAL values ('1001', '61353', '2', '04-Mar-13', '03-Mar-13', '1')
Insert into DETAILRENTAL values ('1002', '59237', '3.5', '04-Mar-13', '04-Mar-13', '3')
Insert into DETAILRENTAL values ('1003', '54325', '3.5', '04-Mar-13', '09-Mar-13', '3')
Insert into DETAILRENTAL values ('1003', '61369', '2', '06-Mar-13', '09-Mar-13', '1')
Insert into DETAILRENTAL values ('1003', '61388', '0', '06-Mar-13', '09-Mar-13', '1')
Insert into DETAILRENTAL values ('1004', '34341', '2', '07-Mar-13', '07-Mar-13', '1')
Insert into DETAILRENTAL values ('1004', '34367', '3.5', '05-Mar-13', '07-Mar-13', '3')
Insert into DETAILRENTAL values ('1004', '44392', '3.5', '05-Mar-13', '07-Mar-13', '3')
Insert into DETAILRENTAL values ('1005', '34342', '2', '07-Mar-13', '05-Mar-13', '1')
Insert into DETAILRENTAL values ('1005', '44397', '3.5', '05-Mar-13', '05-Mar-13', '3')
Insert into DETAILRENTAL values ('1006', '34366', '3.5', '05-Mar-13', '04-Mar-13', '3')
Insert into DETAILRENTAL values ('1006', '61367', '2', '07-Mar-13', 'NULL', '1')
Insert into DETAILRENTAL values ('1007', '34368', '3.5', '05-Mar-13', 'NULL', '3')
Insert into DETAILRENTAL values ('1008', '34369', '3.5', '05-Mar-13', '05-Mar-13', '3')
Insert into DETAILRENTAL values ('1009', '54324', '3.5', '05-Mar-13', 'NULL', '3')

--Part 3

--44 
ALTER TABLE DETAILRENTAL 
ADD DETAIL_DAYSLATE INTEGER



--45 

ALTER TABLE VIDEO 

ADD VID_STATUS VARCHAR(4) DEFAULT 'IN' NOT NULL 

CHECK (VID_STATUS IN ('IN', 'OUT', 'LOST'));



--46 

UPDATE VIDEO 

SET VID_STATUS = 'OUT' 

WHERE VID_NUM IN 

(SELECT VID_NUM FROM DETAILRENTAL WHERE DETAIL_RETURNDATE IS NULL);



--47 

ALTER TABLE PRICE 

ADD PRICE_RENTDAYS INTEGER DEFAULT 3 NOT NULL;



--48 

UPDATE PRICE 

SET PRICE_RENTDAYS = 5 

WHERE PRICE_CODE IN (1, 3); 

UPDATE PRICE 

SET PRICE_RENTDAYS = 7 

WHERE PRICE_CODE = 4; 




--52 

CREATE PROCEDURE PRC_NEW_RENTAL (MEM_NUM_TEMP IN MEMBERSHIP.MEM_NUM%TYPE) AS 

MEM_NUM_COUNT NUMBER; 

PREV_MEM_BALANCE MEMBERSHIP.MEM_BALANCE%TYPE; 

BEGIN 

SELECT Count(*) 

INTO MEM_NUM_COUNT 

FROM MEMBERSHIP 

WHERE MEM_NUM = MEM_NUM_TEMP

IF MEM_NUM_COUNT = 0 THEN 

Dbms_Output.PUT_LINE( 'No Membership with number: ' || MEM_NUM_TEMP || ' exists.')

ELSE 

SELECT MEM_BALANCE 

INTO PREV_MEM_BALANCE 

FROM MEMBERSHIP 

WHERE MEM_NUM = MEM_NUM_TEMP

Dbms_Output.PUT_LINE('Previous balance: ' || To_Char(PREV_MEM_BALANCE, '$999,999,990.99')); 

INSERT INTO RENTAL (RENT_NUM, RENT_DATE, MEM_NUM) 

VALUES (RENT_NUM_SEQ.NEXTVAL, SYSDATE, MEM_NUM_TEMP); 

END IF 

END

/