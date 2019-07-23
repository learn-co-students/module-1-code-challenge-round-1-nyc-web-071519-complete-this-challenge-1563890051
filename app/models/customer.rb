class Customer
  attr_reader :first_name, :last_name

  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def self.all
    @@all
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def add_review(rest_inst, raing, content)
    #first 
    Customer.new(self, rest_inst, rating, content)
  end

  def num_reviews
    Review.all.select do |reviews|
    reviews.restaurant == self
    end.map
  end

  def unique_restaurants
    Reviews.all.select do |review|
    review.customer == self
    end.map
  end

  def find_by_name(name)
    name = full_name.find
    return name
  end

  def find_all_by_first_name(name)
    name = first_name.find
    return name
  end

  def all_names
    @@all.map
  end
end