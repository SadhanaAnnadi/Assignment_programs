create database agnmt_programs
use agnmt_programs
create table Category(id int not null primary key identity(1,1),
name varchar(64) not null,
tax decimal)
insert into Category values('category5',1)
select * from Category
---------------------------------------------------
create table Product(id int not null primary key identity(1,1),
name varchar(64) not null,
open_stock decimal not null,
cur_stock decimal not null,
sale_price decimal not null,
category int foreign key references Category(id))
insert into Product values('product5',15,12,1000,4)
select * from Product 
------------------------------------------------------------
create table Customer(id int not null primary key identity(1,1),
name varchar(32) not null,
mobile varchar(15)not null,
open_bal decimal not null default 0,
is_active bit not null default 'true')
insert into Customer values('customer5',5625437365,default,'false')
select * from Customer
----------------------------------------------------------
create table SalesHead(sale_inv_no int not null primary key identity(1,1),
sale_date date not null,
customer int not null foreign key references Product(id),
type char(15))
alter table SalesHead
ADD CONSTRAINT FK_sales_customer
FOREIGN KEY (customer) REFERENCES Customer(id);
set dateformat dmy
insert into SalesHead values('08-06-2020',1,'credit')
select * from SalesHead
-------------------------------------------------------------
create table SalesDetail(sale_inv_no int not null foreign key references SalesHead(sale_inv_no),
product_id int not null foreign key references Product(id),
qty decimal not null,
rate decimal not null)
insert into SalesDetail values(11,5,15,5000)
select * from SalesDetail
---------------------------------------------------------------
select p.name,c.name, p.cur_stock from Category c ,Product p where c.id=p.category
select name from Customer where is_active='true'
select name,open_bal from Customer
select p.name from Product p inner join SalesDetail s on p.id=s.product_id where s.qty=(select max(qty) from SalesDetail)
select p.name from Product p inner join SalesDetail s on p.id=s.product_id where s.qty=(select min(qty) from SalesDetail)
select name,rate from Customer c inner join SalesHead sh on c.id=sh.customer inner join SalesDetail sd on sd.sale_inv_no=sh.sale_inv_no  
select * from SalesDetail s, SalesHead sh where s.sale_inv_no=sh.sale_inv_no and sh.sale_date='08-06-2020'

