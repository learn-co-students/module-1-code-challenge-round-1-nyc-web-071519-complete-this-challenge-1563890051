require_relative 'app/models/customer.rb'
require_relative 'app/models/restaurant.rb'
require_relative 'app/models/review.rb'
require 'pry'


c1 = Customer.new("Joe", "Dirt")
c2 = Customer.new("Tyler", "Knapp")
c3 = Customer.new("Customer", "3")
c4 = Customer.new("Joe", "Dirt")

res1 = Restaurant.new("nobu")
res2 = Restaurant.new("sushi of gari")

rev1 = Review.new("nobu", "Joe Dirt", "expensive", 5)
rev2 = Review.new("sushi of gari", "Joe Dirt", "not as good as nobu", 5)
rev3 = Review.new("nobu", "Tyler Knapp", "expensive, but best dinner ever", 3)
rev4 = Review.new("nobu", "Customer 3", "overrated", 4)


binding.pry
puts "sup"