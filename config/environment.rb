require 'bundler/setup'
Bundler.require
require_rel '../app'


cust1 = Customer.new("Last", "Action Hero")
cust2 = Customer.new("Gomez",  "Addams")
cust3 = Customer.new("Boris", "Johnson")
cust4 = Customer.new("My", "dad")
cust5 = Customer.new("Jabber", "Jaw")

rest1 = Restaurant.new("Absolutely Turrible")
rest2 = Restaurant.new("Jack Rabbit Slims")
rest3 = Restaurant.new("One for the Road")
rest4 = Restaurant.new("If Only's")
rest5 = Restaurant.new("Bushwick Food Poisoning")

review1 = Review.new(cust1, rest3, 5, "Explosive")
review2 = Review.new(cust4, rest3, 4, "I ate it all")
review3 = Review.new(cust2, rest1. 2, "They weren't lying")
review4 = Review.new(cust3, rest2, 3, "Milkshake was overpriced")
review5 = Review.new(cust5, rest5, 1, "Come here if you want to die")