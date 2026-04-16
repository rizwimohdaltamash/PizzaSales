use pizzadb;



#total pizza sales
SELECT SUM(total_price) AS Total_Sales
FROM pizza_sales;

#SALES PER ORDER
SELECT SUM(total_price)/COUNT(distinct order_id) AS Average_Order_Value
FROM pizza_sales;

#total pizza sold
SELECT SUM(quantity) as Total_pizza_sold
FROM pizza_sales;


#total orders
SELECT COUNT(distinct order_id) as Total_orders
FROM pizza_sales;


#avg pizza per order
SELECT SUM(quantity)/ COUNT(distinct order_id) as Total_orders
FROM pizza_sales;






