class Customer
  attr_reader :first_name, :last_name
  @@all = []
  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    Customer.all << self
  end
  #class methods
  def self.all
    @@all
  end

  def self.all_names
    self.all.map{|customer| customer.full_name}
  end

  def self.find_by_name(name)
    self.all.find{ |customer| customer.full_name == name}
  end

  def self.find_all_by_first_name(first_name)
    self.all.select{ |customer| customer.first_name == first_name}
  end

  #end class methods
  #class accessors
  def reviews
    Review.all.select{ |review| review.customer == self}
  end
  def restaurants
    reviews.map { |review| review.restaurant}
  end
  # end

  #end class accessors
  #instance methods
  def full_name
    "#{first_name} #{last_name}"
  end

  def add_review(restaurant, content, rating)
    Review.new(self, restaurant, content, rating)
  end

  def num_reviews
    reviews.count
  end


  
  #end instance methods
end



