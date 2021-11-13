create schema  labassgment1;
use labassgment1;

create table Supplier(SUPP_ID int  auto_increment primary key,SUPP_NAME varchar(250),SUPP_CITY varchar(50),SUPP_PHONE bigint);
 create table Customer(CUS__ID int auto_increment primary key,CUS_NAME varchar(250),CUS_PHONE bigint,CUS_CITY varchar(50),
 CUS_GENDER varchar(1));
 create table Category(CAT_ID  int primary key,CAT_NAME varchar(250));
 
 create table Product(PRO_ID int primary key,PRO_NAME varchar(50) ,PRO_DESC varchar(50), CAT_ID int,
 foreign key(CAT_ID)references Category(CAT_ID));
 
 create table ProductDetails(PROD_ID int primary key,PRO_ID int,SUPP_ID int,PRICE int,
 foreign key(PRO_ID)references Product(PRO_ID), foreign key(SUPP_ID)references Supplier(SUPP_ID));
 
 create table Orders(ORD_ID int primary key,ORD_AMOUNT int,DATE date,CUS__ID int,PROD_ID int,
 foreign key(CUS__ID)references Customer(CUS__ID), foreign key(PROD_ID)references ProductDetails(PROD_ID));
 
 create table Rating(RAT_ID int primary key, CUS__ID int, SUPP_ID int, RAT_RATSTARS int,
 foreign key(CUS__ID)references Customer(CUS__ID), foreign key(SUPP_ID) references Supplier(SUPP_ID));

insert into Supplier (SUPP_ID,SUPP_NAME,SUPP_CITY,SUPP_PHONE) values(1,'Rajesh Retails', 'Delhi', 1234567890);
insert into Supplier (SUPP_ID,SUPP_NAME,SUPP_CITY,SUPP_PHONE) values(2, 'Appario Ltd.', 'Mumbai', 2589631470);
insert into Supplier (SUPP_ID,SUPP_NAME,SUPP_CITY,SUPP_PHONE) values(3, 'Knome products', 'Banglore', 9785462315);
insert into Supplier (SUPP_ID,SUPP_NAME,SUPP_CITY,SUPP_PHONE) values(4, 'Bansal Retails', 'Kochi', 8975463285);
insert into Supplier (SUPP_ID,SUPP_NAME,SUPP_CITY,SUPP_PHONE) values(5, 'Mittal Ltd.','Lucknow', 7898456532);

insert into Customer(CUS__ID,CUS_NAME,CUS_PHONE,CUS_CITY,CUS_GENDER) values(1, 'AAKASH', 9999999999, 'DELHI','M');
insert into Customer(CUS__ID,CUS_NAME,CUS_PHONE,CUS_CITY,CUS_GENDER) values(2, 'AMAN', 9785463215,'NOIDA','M');
insert into Customer(CUS__ID,CUS_NAME,CUS_PHONE,CUS_CITY,CUS_GENDER) values(3 ,'NEHA', 9999999999, 'MUMBAI', 'F');
insert into Customer(CUS__ID,CUS_NAME,CUS_PHONE,CUS_CITY,CUS_GENDER) values(4, 'MEGHA', 9994562399, 'KOLKATA', 'F');
insert into Customer(CUS__ID,CUS_NAME,CUS_PHONE,CUS_CITY,CUS_GENDER) values(5, 'PULKIT', 7895999999, 'LUCKNOW', 'M');

insert into Category(CAT_ID,CAT_NAME) values(1 ,'BOOKS');
insert into Category(CAT_ID,CAT_NAME) values(2 ,'GAMES');
insert into Category(CAT_ID,CAT_NAME) values(3 ,'GROCERIES');
insert into Category(CAT_ID,CAT_NAME) values(4 ,'ELECTRONICS');
insert into Category(CAT_ID,CAT_NAME) values(5 ,'CLOTHES');

insert into Product(PRO_ID,PRO_NAME,PRO_DESC,CAT_ID) values(1 ,'GTA V', 'DFJDJFDJFDJFDJFJF', 2);
insert into Product(PRO_ID,PRO_NAME,PRO_DESC,CAT_ID) values(2,'TSHIRT', 'DFDFJDFJDKFD',5);
insert into Product(PRO_ID,PRO_NAME,PRO_DESC,CAT_ID) values(3, 'ROG LAPTOP', 'DFNTTNTNTERND', 4);
insert into Product(PRO_ID,PRO_NAME,PRO_DESC,CAT_ID) values(4 ,'OATS','REURENTBTOTH', 3);
insert into Product(PRO_ID,PRO_NAME,PRO_DESC,CAT_ID) values(5,'HARRY POTTER', 'NBEMCTHTJTH', 1);

insert into ProductDetails(PROD_ID,PRO_ID,SUPP_ID,PRICE) values(1 ,1 ,2 ,1500);
insert into ProductDetails(PROD_ID,PRO_ID,SUPP_ID,PRICE) values(2, 3, 5, 30000);
insert into ProductDetails(PROD_ID,PRO_ID,SUPP_ID,PRICE) values(3 ,5, 1, 3000);
insert into ProductDetails(PROD_ID,PRO_ID,SUPP_ID,PRICE) values(4, 2 ,3, 2500);
insert into ProductDetails(PROD_ID,PRO_ID,SUPP_ID,PRICE) values(5, 4, 1 ,1000);

insert into Orders(ORD_ID,ORD_AMOUNT,DATE,CUS__ID,PROD_ID) values(20, 1500, '2021-10-12', 3, 5);
insert into Orders(ORD_ID,ORD_AMOUNT,DATE,CUS__ID,PROD_ID) values(25 ,30500 ,'2021-09-16', 5 ,2);
insert into Orders(ORD_ID,ORD_AMOUNT,DATE,CUS__ID,PROD_ID) values(26, 2000, '2021-10-05', 1 ,1);
insert into Orders(ORD_ID,ORD_AMOUNT,DATE,CUS__ID,PROD_ID) values(30, 3500, '2021-08-16', 4 ,3);
insert into Orders(ORD_ID,ORD_AMOUNT,DATE,CUS__ID,PROD_ID) values(50, 2000, '2021-10-06', 2, 1);

insert into Rating(RAT_ID,CUS__ID,SUPP_ID,RAT_RATSTARS) values(1 ,2, 2 ,4);
insert into Rating(RAT_ID,CUS__ID,SUPP_ID,RAT_RATSTARS) values(2 ,3, 4 ,3);
insert into Rating(RAT_ID,CUS__ID,SUPP_ID,RAT_RATSTARS) values(3 ,5, 1 ,5);
insert into Rating(RAT_ID,CUS__ID,SUPP_ID,RAT_RATSTARS) values(4 ,1, 3 ,2);
insert into Rating(RAT_ID,CUS__ID,SUPP_ID,RAT_RATSTARS) values(5 ,4, 5 ,4);

-- qus3
select P.CUS_GENDER, count(P.CUS_GENDER) from (select c.CUS__ID, c.CUS_GENDER, o.ORD_AMOUNT from Customer c inner join Orders o 
on c.CUS__ID = o.CUS__ID) as P
where P.ORD_AMOUNT >3000
group by P.CUS_GENDER;

-- qus4.
select * from product where PRO_ID in 
(select PRO_ID from productdetails where PROD_ID in 
(select PROD_ID from orders where CUS__ID = 2));

-- qus5
select * from supplier
where SUPP_ID in (select SUPP_ID from productdetails
group by SUPP_ID
having count(SUPP_ID)>1);

-- qus6.
select * from category where CAT_ID in 
(select CAT_ID from product where PRO_ID in 
(select PRO_ID from productdetails where PROD_ID in 
(select PROD_ID from orders where ORD_AMOUNT in 
(select min(ORD_AMOUNT) from orders))));

-- qus7
select Q.PRO_ID, p.PRO_NAME, Q.DATE from product p inner join 
(select o.DATE, o.PROD_ID, pd.PRO_ID from orders o inner join productdetails pd on o.PROD_ID = pd.PROD_ID) as Q 
on Q.PRO_ID = p.PRO_ID
where Q.DATE>'2021-10-05';

-- qus8 
-- rate.
select Q.SUPP_NAME, Q.SUPP_ID, Q.RAT_RATSTARS, c.CUS_NAME from customer c inner join 
(select s.SUPP_NAME, s.SUPP_ID, r.RAT_RATSTARS, r.CUS__ID from rating r inner join supplier s on r.SUPP_ID = s.SUPP_ID) as Q 
on c.CUS__ID = Q.CUS__ID
order by Q.RAT_RATSTARS desc
limit 3;

-- qus9
select CUS_NAME, CUS_GENDER from customer where CUS_NAME like'A%' or CUS_NAME like'%A';

-- qus10
select sum(o.ORD_AMOUNT)as total_males_order_amt from customer c inner join orders o on o.CUS__ID = c.CUS__ID
where c.CUS_GENDER = 'M'
group by c.CUS_GENDER;

-- qus11
select c.CUS_NAME, c.CUS_GENDER, c.CUS_CITY, c.CUS_PHONE from customer c left outer join orders o on c.CUS__ID = o.CUS__ID;

-- qus12 

CREATE PROCEDURE RatingVerdict()
BEGIN
select s.SUPP_ID, s.SUPP_NAME, r.RAT_RATSTARS,
case
when r.RAT_RATSTARS > 4 then 'Genuine '
when r.RAT_RATSTARS > 2 then 'Average '
else 'Supplier should not be considered'
end as verdict from rating r inner join supplier s on r.SUPP_ID = s.SUPP_ID
END
call e_commerce.RatingVerdict();
