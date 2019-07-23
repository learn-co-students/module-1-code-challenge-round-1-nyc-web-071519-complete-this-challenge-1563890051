class Restaurant
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def customers
   my_cust = Review.all.select do |reviews|
    reviews.restaurant == self
   end
   my_cust do |reviews|
    reviews.my_cust 
   end
   
   
  end

  def reviews
 #return an array with .map
    Review.all.map do |reviews|
      if reviews.restaurant == self #go to join table and pull out all reviews with the restaurant itself
      return restaurant
      end
    end
  end

  def average_star_rating
    #take in reviews
    #make it to 
  end

  def longest_review
    longest_r = Revew.all.select do |reviews|
      reviews.restaurant == self
    end
    longest_r.map do |reviews|
      if reviews.content.length
  end

  def find_by_name(name)
    name = @name.find
    return name
  end


end