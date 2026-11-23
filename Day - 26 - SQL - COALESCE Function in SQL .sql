
SELECT * FROM products;

--dicount-price ko delet karna colmn ko 
 alter table products
 drop discount_price;


--new coloum add kanr ka liy a

alter table products
add column discount_price numeric(10,2);



update products
set discount_price=null
where product_name in('Laptop','Desk');


--discount_price me price ka 90 % discount dikhne ka liya 

update products
set discount_price= price*0.9
where product_name not in('Laptop','Desk');

--product_name,price,discount_price dkho 

select product_name,price,discount_price
from products;


--null ki jgha hame bina discoutn wala price replace chaiya jaise price me jiseper discount nhi hai use replace kar ke  discount _price wala null value par 
select product_name,
   coalesce(discount_price,price)AS Final_price
   
   from products;








