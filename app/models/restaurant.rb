require 'pry'
class Restaurant
  attr_reader :name
  @@all = []
  def initialize(name)
    @name = name
    Restaurant.all << self
  end

  def customers 
    Restaurant.all.find_all do |visited_cust|
      visited_cust.customer
    end
  end

  def reviews
    Review.all.select do |revs|
      revs.restaurant == self
    end
  end

  def average_star_rating

  end

  def longest_review
    Review.all.max_by do |rev_max_length|
      rev_max_length.customer.content == self
    end
  end


  #CLASS METHODS
  def self.all
    @@all
  end


  def self.find_by_name
    Restaurant.all.find do |first_rest|
      first_rest.name
    end
  end
end
