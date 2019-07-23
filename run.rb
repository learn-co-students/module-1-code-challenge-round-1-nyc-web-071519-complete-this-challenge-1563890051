require 'bundler/setup'
require "pry"
Bundler.require
require_rel './app'

cust1 = Customer.new("Matt", "Listor")
cust2 = Customer.new("Matt", "Smith")
cust3 = Customer.new("Ian", "Jones")

rest1 = Restaurant.new("Italian Place")
rest2 = Restaurant.new("Chinese Place")
rest3 = Restaurant.new("Mexican Place")

cust1.add_review(rest1, "Good! Really really Good!", 5)
cust1.add_review(rest2, "Listor hates Chinese", 1)
cust1.add_review(rest3, "Listor dislikes Mexican", 2)

cust2.add_review(rest1, "Eh...", 3)
cust2.add_review(rest2, "Smith hates Chinese so much holy moly this is so bad!", 1)
cust2.add_review(rest3, "Smith kinda enjoys Mexican", 3)

cust3.add_review(rest1, "Bad!", 2)
cust3.add_review(rest2, "Ian loves Chinese!", 5)
cust3.add_review(rest3, "Ian also loves Mexican", 2)

binding.pry
