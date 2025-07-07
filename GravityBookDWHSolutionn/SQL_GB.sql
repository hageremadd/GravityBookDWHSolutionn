select c.customer_id,first_name,last_name,email,country_name,street_number,street_name,city,address_status
from address_status aas inner join  customer_address ca
on aas.status_id=ca.status_id 
inner join customer c
on ca.customer_id=c.customer_id
inner join address a 
on ca.address_id=a.address_id
inner join country 
on a.country_id=country.country_id



select book.book_id,language_name,author_name,publisher_name,publication_date,title,isbn13,price
from order_line inner join book
on order_line.book_id=book.book_id
inner join book_author
on book.book_id=book_author.book_id
inner join author
on book_author.author_id=author.author_id
inner join book_language 
on book.language_id=book_language.language_id
inner join publisher
on book.publisher_id=publisher.publisher_id


select status_id,status_value
from order_status


select method_id,method_name
from shipping_method



select order_line.order_id,sum(price)books_cost,cost shipping_cost,sum(price) + shipping_method.cost total_cost,count(order_line.book_id) book_count,order_date

from order_line inner join cust_order
on order_line.order_id=cust_order.order_id
inner join shipping_method
on cust_order.shipping_method_id=shipping_method.method_id
group by order_line.order_id,cost,order_date







