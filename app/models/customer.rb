require 'pry'
class Customer
  attr_reader :first_name, :last_name
  attr_accessor :content, :rating
  @@all = []
  def initialize(first_name, last_name, content, rating)
    @first_name = first_name
    @last_name  = last_name
    @content = content
    @rating = rating
    Customer.all << self
  end

  #"INSTANCE METHOD"
  def add_review(first_name, last_name, restaurant, content, rating)
    Review.new(first_name: first_name, last_name: last_name, customer: self, restaurant: restaurant, content: content, rating: rating)
  end

  def num_reviews
    Review.all.map do |cust_review|
      cust_review.customer
    end
  end


  def restaurants
    Review.all.map do |reviewed_rest|
      reviewed_rest.restaurant = customer
    end
  end

  def full_name
    "#{first_name} #{last_name}"
  end


  def self.all
    @@all
  end

  def self.find_by_name
    Customer.all.find do |the_name|
      the_name.full_name
    end
  end

  def self.find_by_first_name
    Customer.all.select do |find_first_name|
      find_first_name.first_name
    end
  end

  def self.all_names
    Customer.all.select do |all_names|
      all_names.full_name
    end
  end




end
