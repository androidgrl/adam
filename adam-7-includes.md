__Includes__
When you want to list the name of the customer for each order:

orders = Order.all
orders.each do |o|
  puts o.customer.name
end

This makes 1 query to get all the orders and n queries one for each order, n+1

So if you do includes

orders = Order.includes(:customers)
orders.each do |o|
  puts o.customer.name
end

That's only 2 queries, 1 to get all orders and another to collect the names from the addresses that were included.

__Joins__
Say that I didn't want to display any attribute from customer, I just wanted to search by an attribute.
For example if I only wanted to see the orders for customers from TX.

orders = Order.all
orders.each do |o|
  puts o if o.customer.state == 'TX'
end

Instead of using includes which would load both the order and customer, a join would just load the Customer:

orders = Order.joins(:customers).where(:customers => { state: 'TX'}).all
