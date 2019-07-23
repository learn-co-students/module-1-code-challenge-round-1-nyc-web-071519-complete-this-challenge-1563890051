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

