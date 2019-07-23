require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

Customer1 = Customer.new("Nikole", "Hache")
Customer2 = Customer.new("Taylor", "Swift")
Customer3 = Customer.new("Kanye", "West")
Customer4 = Customer.new("Selena", "Gomez")

Restaurant1 = Restaurant.new("Burger King")
Resturant2 = Restaurant.new("McDonalds")
Restaurant3 = Restaurant.new("Dairy Queen")
Restaurant4 = Restaurant.new("Taco Bell")

Review1 = Review.new(Customer, Restaurant, "5")
Review2 = Review.new(Customer2, Restaurant2, "3")
Review3 = Review.new(Customer3, Restaurant3, "2")
Review4 = Review.new(Customer4, Restaurant4, "1")
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

binding.pry
0 #leave this here to ensure binding.pry isn't the last line