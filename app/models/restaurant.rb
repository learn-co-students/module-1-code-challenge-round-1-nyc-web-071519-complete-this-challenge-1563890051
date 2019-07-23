class Restaurant
  attr_reader :name
  @@all = []
  def initialize(name)
    @name = name
    Restaurant.all << self
  end
  #class methods
  def self.all
    @@all
  end

  def self.find_by_name(name)
    self.all.find{ |restaurant| restaurant.name == name}
  end
  #end class methods
  #class accessors
  def reviews
    Review.all.select{ |review| review.restaurant == self}
  end

  def customers
    reviews.map { |review| review.customer}
  end
  #end class accessors
  #instance methods

  def average_star_rating
    star_ratings = reviews.map{ |review| review.rating}
    star_ratings.sum / star_ratings.length
  end

  def longest_review
    reviews.map{ |review| review.content}.max_by(&:length)
  end
  
  #end instance methods
end
