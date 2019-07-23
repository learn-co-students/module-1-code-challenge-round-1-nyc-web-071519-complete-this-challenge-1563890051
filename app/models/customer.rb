class Customer
  attr_reader :first_name, :last_name

  @@all = []
  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name

    Customer.all << self
  end

  # Class methods

  def self.all
    @@all
  end

  # Instance methods

  def full_name
    "#{first_name} #{last_name}"
  end

  def add_review(restaurant, content, rating)
    Review.new(self, restaurant, content, rating)
  end

  def num_reviews
    # all review instances
    Review.all.select do |review_instance|
      review_instance.customer == self
    end.count
  end

  def restaurants
    # get all instances
    all_instances = Review.all.select do |rest_instance|
      rest_instance.customer == self
    end
    rest_array = all_instances.map do |rest_instance|
      # return an array of names of restaurants
      # that a customer has reviewed.
      # rest_instance.restaurant returns restairants with IDs
      rest_instance.restaurant.name
    end
    # get rid of duplicates if they exist (customer can leave several reviewes
    # for the same restaurant)
    rest_array.uniq
  end

end
