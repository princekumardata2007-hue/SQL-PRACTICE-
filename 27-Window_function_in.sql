SELECT * FROM products;


-- Assign a unique row number to each product within the same category using row_number
select product_name,category,price,
   row_number()over(partition by category order by price desc)AS NEW_row
   from products;

   
-- Assign a unique row number to each product within the same category using -densk_ranking


SELECT product_name, category, price,
		DENSE_RANK() OVER(PARTITION BY category ORDER BY price DESC) AS Ranking
FROM products;
--running total  calculate a price

SELECT product_name, category, price,
		sum(price) OVER(ORDER BY price ASC) AS Running_Total
FROM products;

--running total  calculate a price with partiction
select product_name,category,price,
 sum(price) over(partition by category order by price asc)AS Running_Total
from products;

--running avg  avg a price with partiction
select product_name,category,price,
avg(price) over (partition by category order by price)AS Running_Avg
from products;




