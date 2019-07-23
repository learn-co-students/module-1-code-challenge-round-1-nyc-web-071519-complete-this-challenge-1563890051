class Customer
  attr_reader :first_name, :last_name
  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  # Class Methods

  def self.all
    @@all
  end

  def self.find_by_name(name)
    Customer.all.find do |cust_inst|
      cust_inst.full_name == name
    end
  end

  def self.find_all_by_first_name(name)
    Customer.all.select do |cust_inst|
      cust_inst.first_name == name
    end
  end

  def self.all_names
    Customer.all.map do |cust_inst|
      cust_inst.full_name
    end
  end

  # Instance Methods

  def add_review(restaurant, content, rating)
    Review.new(self, restaurant, content, rating)
  end

  def cust_reviews # returns the reviews by an instance of Customer
    Review.all.select do |review_inst|
      review_inst.customer == self
    end
  end

  def num_reviews
    cust_reviews.length
  end

  def restaurants
    cust_reviews.map do |review_inst|
      review_inst.restaurant
    end
  end
end
