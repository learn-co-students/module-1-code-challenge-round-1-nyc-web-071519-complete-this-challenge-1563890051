require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
cust1 = Customer.new("John", "Toner", "It was good", 5)
cust2 = Customer.new("Jeff", "Bezos", "Was decent", 4)
cust3 = Customer.new("Bill", "Gates", "I won't be back.........................", 1)
cust4 = Customer.new("John", "Kennedy", "Maybe", 3)
cust5 = Customer.new("Andrew", "Cheon", "Great!", 5)



rest1 = Restaurant.new("Chipotle")
rest2 = Restaurant.new("Papa Johns")
rest3 = Restaurant.new("Pizza Hut")
rest4 = Restaurant.new("Taco Bell")

rev1 = Review.new(cust1, rest1)
rev2 = Review.new(cust2, rest1)
rev3 = Review.new(cust3, rest1)
rev4 = Review.new(cust1, rest2)
rev5 = Review.new(cust2, rest4)
rev6 = Review.new(cust5, rest3)
rev7 = Review.new(cust5, rest4)
rev8 = Review.new(cust5, rest2)



binding.pry
0 #leave this here to ensure binding.pry isn't the last line