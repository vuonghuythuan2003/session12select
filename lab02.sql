select c.customerName, p.productName
from customer c 
join Oders o on c.customerId = o.customerId
join OderDetail od on o.orderId = od.orderId
join Product p on od.productId = p.productId

select c.customerName 
from customer c
left join Oders o on c.customerId = o.ordersId
where o.odersId is NULL

select o.oderId, o.orderDate, Sum(od.quantity * p.productPrice)
from oders o
join Orderdetail od on o.oderId = od.oderId
join Product p on od.productId = p.productId
Group by o.oderId, o.orderDate