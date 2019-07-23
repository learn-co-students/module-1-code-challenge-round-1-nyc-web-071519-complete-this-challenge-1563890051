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

  #Returns a **unique** list of all customers who have reviewed a particular restaurant.
  def customers
    Review.all.select do |customer_inst|
      customer_inst.restaurant == self
    end
  end

  #returns an array of all reviews for that restaurant
  def reviews
    Review.all.select do |review_inst|
      review_inst.restaurant == self
    end
  end

  #given a string of restaurant name, returns the first restaurant that matches
  def self.find_by_name(name)
    Restaurant.all.find do |name|
      name.restaurant == self
    end
  end

end
