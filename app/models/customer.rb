require 'pry'
class Customer
  attr_reader :first_name, :last_name

  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    Customer.all << self
  end

  #CLASS METHODS

  def self.all
    @@all
  end

  def self.find_by_name(name)
    Customer.name do |customer_name|
      customer_name.find == self
    end 

  end #given a string of a first name, returns the first customer who matches --- use find method

  def self.find_all_by_first_name(name)
    Customer.name do |all_customers_with|
      all_customers_with.select == self 
    end
  end # given a string of a first name, returns an array containing ALL customers with that name---- this would be select method 

  def self.all_names

  end 
  #INSTANCE METHODS

  def add_review(restaurant, content, rating)
    Review.new(restaurant, content, rating)
  end 

  def num_reviews 
  
  end #returns the total number of reviews that a customer has authored 
  
  def restuarants

  end # returns a unique array of all restaurants of a customer has reviewed -- map method 
  #

  def full_name
    "#{first_name} #{last_name}"
  end
end
