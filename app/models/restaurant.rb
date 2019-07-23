class Restaurant
  attr_reader :name

  @@all = [] # all of the instances of restaurant

  def initialize(name)
    @name = name
    @@all << name
  end

  self.all
    @@all
  end

  # Returns a **unique** list of all customers who have reviewed a particular restaurant.

  def customers
  
    Customer.self.all = 
    # point to an instance variable of a particular restaurant - from the list of all restaurant
    # select an index/position in the array for a particular restaruant
    # match all the customers that reviews for that restaurant 
    # return the array list for the customers

  end 

  # returns an array of all reviews for that restaurant
  def reviews
   
    # sort out all the unique restaurants
    # point to the first restaurant in the unique array
    # select that restaurant and return all the values/reviews for the restaurant

  end

  # returns the average star rating for a restaurant based on its reviews

  def agerage_star_rating

    # sort out all the unique restaurants
    # point to the first restaurant in the unique array
    # sum_of_all_reviews = sum all of the reviews for that restaurant
    # count all off the reviews
    # avg = sum/total_num_reviews
  
  end

  # returns the longest review content for a given restaurant

  def longest_review(restaruant) # take in a restaurant name as parameter

    # iterate over the reviews
    # set a variable, longest_review, initialized to empty string
    # for each review, call on the size method
    # for the current restaurant with largest size (of review), set that to be the longest_review
    # return the longest_review

  end

  # given a string of restaurant name, returns the first restaurant that matches

  def Restaurant.find_by_name(name)
    
    # search through (iterate) all of the instances of the restaurant in the class
    # return the first match using find

  end

end
