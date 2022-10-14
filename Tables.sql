--customer table---QUERIES--
--ASSI_1--
Create Table Customer1
(Id int primary key not null,
FirstName nvarchar(40),
LastName nvarchar(40),
City nvarchar(40),
Country nvarchar(40),
Phone nvarchar(20));
--inserting values in customer table--
Insert Into Customer1 Values(1,'Rutuja','jadhav','Nashik','India',8845637890)
Insert Into Customer1 Values(2,'shahista','palepu','A.P','India',2345432567)
Insert Into Customer1 Values(3,'pranjal','pawar','nanded','India',5674893290)
Insert Into Customer1 Values(4,'neeta','desle','Nashik','India',8565637890)
Insert Into Customer1 Values(5,'ashu','naik','jamner','India',9945637890)
Insert Into Customer1 Values(6,'sachin','jadhav','aurangabad','India',9845637590)
insert into Customer1 Values(7,'prisha','jadhav','dhule','india',8845457890)
--queries upto 4 are covered before--
--query num-5--
select * from Customer1
--query num-6--
select * from Customer1 where Country Like 'I%';
select * from Customer1 where Country Like 'A%';
--query num-7--
select * from Customer1 where FirstName Like '__I%';
--index of customer table--
Create Index IndexCustomerName
ON Customer(FirstName , LastName);

--order table--
Create Table Orders2
(
Id int primary key not null,
OrdersDate datetime not null,
OrdersNumber nvarchar(10),
CustomerId int foreign key references Customer(Id),
TotalAmount decimal(12,2)
);
--inserting values into orders table--
Insert Into Orders2 Values(1,4567,6789,3456.00,3)
select*from Orders2;

--order_customer table--
Create Table Order_Cust
(Order_Id int primary key,
OrderDate Datetime not null,
OrderNumber nvarchar(10),
Customerid int,
TotalAmount decimal(12,2),
);
--inserting values in order customer table--
Insert Into Order_Cust values (1,14-10-2022,'456000',02,654.56)
Insert Into Order_Cust values (2,15-10-2022,'765000',03,654.52)
Insert Into Order_Cust values (3,16-10-2022,'112000',06,634.53)
Insert Into Order_Cust values (4,17-10-2022,'489000',06,654.56);
Insert Into Order_Cust values (5,18-10-2022,'40067000',08,654.55)
select * from Order_Cust

--index of orders table--
Create Index IndexCustomerId
ON Orders(CustomerId);

Create Index IndexOrdersDate
ON Orders(OrdersDate);

--product table--
Create Table Product2 
(
Id int primary key not null,
ProductName nvarchar(50),
UnitPrice decimal(12,2),
Package nvarchar(30),
Isdiscontinued bit
);
--inserting values in product table--
Insert Into Product2 Values(1,'laptop','40000.667','41000p',1)
select*from  Product2
Insert Into Product2 Values(2,'smartwatch','60000.123','71000p',2)
Insert Into Product2 Values(3,'tablet','34000.600','6500p',3)
Insert Into Product2 Values(4,'mobile','34500.347','12300p',4)
Insert Into Product2 Values(5,'charger','78900.000','89000p',5)
select * from Product2

--index of product table--
Create Index IndexProductSupplierId
ON Orders(ProductId);

Create Index IndexProductName
ON Orders(ProductName);

--Ordersitem table--
Create Table Ordersitem
Id int primary key not null,
OrdersId int foreign key references Orders(Id),
ProductId int foreign key references Product(Id),
UnitPrice decimal(12,2),
Quantity int
);

--index of ordersitem table--
Create Index IndexOrdersitemOrdersId
ON Ordersitem(Id);

Create Index IndexOrdersitemProductId
ON Ordersitem(Product Id);




