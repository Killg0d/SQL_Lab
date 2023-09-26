--Pizza_house(HouseCode, StreetNo, City) 
--Pizza_flavours(Itemcode, ItemName, Price) 
--Pizza_Flavours_Avaialble(HouseCode, Itemcode) 
--Pizza_Cust(Custid, CustName, Phone, StreetNo, City, Bonus_points) 
--Pizza_Order(Orderid, Custid, Itemcode, Order_date, Qty, Amount) 
--i. Find the HouseCodes at which pizza items with price more than 500 available. 
--ii. Add 10 bonus points to the customers who placed order for amount more than 1000 during Jan-2019 to May-2019. 
--iii. Find all the Pizza Houses and available Item Names in the location where customer with name 'Ajay' lives. 
--iv. List the name of customers who have placed highest total ordered amount during month of February 2021. 
--v. Find the Item names for which total sales quantity is more than 1000 during the year 2018. 
select h.housecode from pizza_house h,pizza_flavours f,pizza_Flavours_available a 
where
 a.housecode=h.housecode and f.itemcode=a.itemcode and f.price>11;

 Update pizza_Cust set bonus_points=bonus_points+10 where custid in 
 (select c.custid from Pizza_Cust c, Pizza_order o where o.custid=c.custid and o.amount>1000 and to_char(order_date,'mm-yyyy') between '01-2019' and '05-2019');

select * from pizza_house h
inner join pizza_flavours_available a on h.housecode=a.housecode 
inner join pizza_flavours f on f.itemcode=a.itemcode
inner join pizza_cust c on h.city=c.city
and custname='Ajay'
;

SELECT custname from pizza_cust c,pizza_order o where c.custid=o.custid and c.custid =
( select o.custid from pizza_order o where to_char(o.order_date,'mm-yy')='02-19'); 