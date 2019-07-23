class Review
  attr_reader :customer, :restaurant, :review, :rating

  @@all = []

  def initialize(customer, restaurant, review, rating)
    @customer = customer
    @restaurant = restaurant
    @review = review
    @rating = rating
    @@all << self
  end

  def self.all
    @@all
  end

  #- returns the customer object for that given review
  def customer
    .all.select do |review|
        

  end



  
end

