Create table country (Id int not null primary key, Country_name varchar(15) not null,
Population int not null,Area int not null );

desc country;

create table Persons(Id int not null primary key,Fname varchar(15) not null ,
Lname varchar(15)not null,Population int not null ,Rating float not null ,
Country_id varchar(5) not null,Country_name varchar(20)not null );

desc persons;

#Insert 10 rows to Table Country

insert into Country(Id,Country_name,Population,Area)values
(200,'China' , 1400000, 9600000 ),
 ( 201,'India', 1400000,  3300000) ,
( 202,'United States', 335000 , 9800000 ),
( 203,'Indonesia',  277000 , 1900000 ),
( 204,'Brazil',  215000, 8400000),
 (205,'Pakistan',  2350000 , 881913 ),
 (206,'Nigeria',21800, 923768 ),
  (207,'Bangladesh',80000, 148571) ,
 (208,'Russia',1440000, 17125191 ),
(209,'Australia',260000,7692024 );

select * from country;

insert into persons(Id,Fname,Lname,Population,Rating,Country_id,Country_name)values
(205,'John', 'Doe', 10000 , 4.5 ,'US' ,'United states'),
( 206 ,'Jane', 'Smith',  9000 , 3.8 , 'CA', 'Canada' ),
( 207 ,'Michael', 'Johnson', 800000, 4.2 ,' AU','Australia' ),
(208,'Emily', 'Davis' ,7000,  4.0 , 'CA', 'Canada'),
( 209,'Ethan ','Lee',9000 , 4.7,  'CN  ','China'),
( 210,'Olivia',  'Martinez' ,600000,3.9,'US','United states'), 
 (211,'Ava','Williams' ,12000,4.8,'UK','UK'),
(212,'Sophia','Alex' , 400000 , 3.7,'IN', 'India'),
(213,'Isabella','Jones', 15000 , 4.9,'JP', 'Japan'),
( 214,'Liam', 'Miller',  30000  ,3.6,'MX','Mexico');

SELECT * FROM PERSONS;


-- (1)Perform inner join, Left join, and Right join on the tables

-- inner join
select c.Id,c.Country_name,c.Population,p.Id,p.Fname,p.Population,p.Rating from country as c inner join 
persons as p on c.Id=p.Id;

-- left join
select c.Id,c.Country_name,c.Population,p.Id,p.Fname,p.Country_name,p.Rating from country as c left join 
persons as p on c.Country_name=p.Country_name;

-- right join
select c.Id,c.Country_name,c.Population,p.Id,p.Fname,p.Country_name,p.Rating from country as c right join 
persons as p on c.Country_name=p.Country_name;

-- (2)List all distinct country names from both the Country and Persons tables. 
select Country_name from country  union 
select Country_name   from persons;

-- (3)List all country names from both the Country and Persons tables, including duplicates.
select Id,Country_name from country union all
select Id,Country_name from persons;

-- (4)Round the ratings of all persons to the nearest integer in the Persons table.
select Fname,Lname,Rating ,round(Rating,0 ) as Rounded_rating from persons;



