
#order for each weekday
SELECT 
  DAYNAME(order_date) AS weekday,
  COUNT(DISTINCT order_id) AS total_orders
FROM pizza_sales
GROUP BY weekday
ORDER BY 
  FIELD(weekday, 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday');
  
  
 #percentage for each pizza category
 SELECT pizza_category , SUM(total_price) * 100 / (SELECT SUM(total_price) from pizza_sales) as total_sales
 FROM pizza_sales
 GROUP BY pizza_category;
 
 
  #percentage for each pizza category
 SELECT pizza_size ,SUM(total_price) AS total, SUM(total_price) * 100 / (SELECT SUM(total_price) from pizza_sales) as total_sales
 FROM pizza_sales
 GROUP BY pizza_size
 ORDER BY total DESC;
 
 
 #top 5 best selling pizza
 SELECT pizza_name , sum(total_price) as tp FROM pizza_sales
 GROUP BY pizza_name 
 ORDER BY tp DESC 
 limit 5 ;
 
  #top 5 lowest selling pizza
 SELECT pizza_name , sum(total_price) as tp FROM pizza_sales
 GROUP BY pizza_name 
 ORDER BY tp  
 limit 5 ;
 
  #top 5 best selling pizza by quantity
 SELECT pizza_name , sum(quantity) as tp FROM pizza_sales
 GROUP BY pizza_name 
 ORDER BY tp DESC 
 limit 5 ;
 
  #top 5 lowest selling pizza by quantity
 SELECT pizza_name , sum(quantity) as tp FROM pizza_sales
 GROUP BY pizza_name 
 ORDER BY tp
 limit 5 ;
 
 SELECT @@hostname AS server_name, @@port AS server_port;

 
 
 
 
 




