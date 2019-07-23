require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console



c1 = Customer.new("Johnny", "Cash")
c2 = Customer.new("Johnny", "Bravo")
c3 = Customer.new("Tony", "Stark")
c4 = Customer.new("Biel", "Zebub")

rest1 = Restaurant.new("Stinky Pizza")
rest2 = Restaurant.new("Okayish Pizza")
rest3 = Restaurant.new("Hell")
rest4 = Restaurant.new("Soggy Pizza")

r1 = Review.new(c1, rest1, "The pizza was pretty Stinky", 1)
r2 = Review.new(c1, rest2, "This was Okayish", 2)
r3 = Review.new(c3, rest4, "The pizza was soggy", 2)
r4 = Review.new(c4, rest3, "The food was hot!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!", 5)
r5 = Review.new(c2, rest3, "The food was much too hot", 3)




binding.pry
0 #leave this here to ensure binding.pry isn't the last line
