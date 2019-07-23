require 'pry'
class Review
  attr_accessor :rating 
  attr_reader :customer, :restaurant 

  @@all = []

  def initialize (customer, restaurant, rating)
    @customer = customer
    @restaurant = restaurant 
    @rating = rating 
    Review.all << self
  end

#INSTANCE METHODS
  def content(customer, restaurant, rating) 
    "The customer is #{customer} and the restaurant is #{restaurant} and the rating is #{rating}."
  end #returns the review content, as a string, for a particular review 

#CLASS METHODS
  def self.all
    @@all
  end
end


