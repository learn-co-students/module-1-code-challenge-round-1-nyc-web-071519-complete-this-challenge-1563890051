require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

cust1 = Customer.new("Andrew", 'Santos')
cust2 = Customer.new('Bruce', 'Jr')
cust3 = Customer.new('Customer', 'Three')
cust4 = Customer.new('Bruce', 'Jr')

rest1 = Restaurant.new("Wendy's")
rest2 = Restaurant.new("Arby's")
rest3 = Restaurant.new("Subway")

review1 = Review.new(rest1, cust1, 4, "This is pretty good")
review2 = Review.new(rest1, cust2, 3, "This is good")
review3 = Review.new(rest2, cust1, 2, "This is bad")
review4 = Review.new(rest2, cust2, 5, "This is great")
review5 = Review.new(rest2, cust3, 1, "Barf")
review6 = Review.new(rest3, cust1, 5, "This is very good")
review6 = Review.new(rest3, cust1, 5, "This is very good again!")



binding.pry
0 #leave this here to ensure binding.pry isn't the last line