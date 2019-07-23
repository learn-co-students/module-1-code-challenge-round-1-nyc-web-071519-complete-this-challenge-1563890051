require 'pry'
class Restaurant
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    Restuarant.all << self
  end

  #CLASS METHODS

  def self.all
    @@all
  end

  def self.find_by_name(name)
    Restaurant.name do |restaurant_name|
      restaurant_name.find == self
    end 
  end 
  #   Restaurant.name do |restaurant|
  #   restaurant.find end 
  # end #given a string of restaurant name, returns the FIRST restaurant that matches --- use find--

  #INSTANCE METHODS
  def customers

  end # returns a unique list of all customers who have reviewed a particular restaurant -- use map---

  def reviews
    Restaurant.all.select do |restaurant_reviews|
  end #returns an array of all reviews for that restaurant--- isn't this the all method already?? do I need this??

  def average_star_rating
    Review.rating do |average_rating|
      average_rating
    end
  end #returns the average star rating for a restaurant based on it's reviews 

  def longest_review
    Review.length do |review_length|
      review_length 
    end
  end #returns the longest review content for a given restaurant -- do .length method 
end
