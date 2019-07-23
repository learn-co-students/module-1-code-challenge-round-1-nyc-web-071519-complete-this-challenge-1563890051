require 'bundler/setup'
Bundler.require
require_rel '../app'


cust1 = Customer.new("Jack", "Sparrow")
cust2 = Customer.new("Ellen", "Fay")
cust3 = Customer.new("Seth", "Rogan")

rest1 = Restaurant.new("Sprinkles")
rest2 = Restaurant.new("Tomorrow")
rest3 = Restaurant.new("Elsewhere")

review1 = Review.new(customer_1, rest1, "good", 4)
review2 = Review.new(customer_3, rest1, "okay", 3)
review3 = Review.new(customer_2, rest3, "best", 4)