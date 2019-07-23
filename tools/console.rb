require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

# CUSTOMERS
alice = Customer.new("Alice", "Parks")
jack = Customer.new("Jack", "Dawson")
tool = Customer.new("Maynard", "Keenan")

# RESTAURANTS
pizza = Restaurant.new("Spumoni")
sushi = Restaurant.new("Kura")
ukr = Restaurant.new("Taras Bulba")

# REVIEWS
rev1 = Review.new(alice, pizza, 3, "Pizza is so-so")
rev2 = Review.new(tool, sushi, 5, "The best ever")
rev1 = Review.new(tool, ukr, 5, "Just like in the motherland")
rev1 = Review.new(jack, pizza, 4, "I like!")
rev1 = Review.new(jack, ukr, 2, "Blah")




binding.pry
0 #leave this here to ensure binding.pry isn't the last line