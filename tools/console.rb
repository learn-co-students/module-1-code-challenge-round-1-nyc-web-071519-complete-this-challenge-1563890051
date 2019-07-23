require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console



r1 = Restaurant.new("pizza place")
r2 = Restaurant.new("salad bar")
r3 = Restaurant.new("pita palace")
r4 = Restaurant.new("burgers and more")
r5 = Restaurant.new("Taco mix")



c1 = Customer.new("miguel", "flores")
c2 = Customer.new("linda", "polanco")
c3 = Customer.new("max", "slim")
c4 = Customer.new("tim", "migs")
c5 = Customer.new("samule", "brown")




rw1 = Review.new(r1, "perfec", 4, c1)
rw2 = Review.new(r2, "perfect", 5, c3)
rw3 = Review.new(r3, "love it ", 5, c1)
rw4 = Review.new(r4, "my fav", 3, c4)
rw5 = Review.new(r4, "love it ", 5, c1)






















binding.pry
0 #leave this here to ensure binding.pry isn't the last line