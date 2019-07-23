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

  # given a **restaurant object**, some review content (as a string), and a star rating (as an integer)# creates a new review and associates it with that customer and restaurant.
  def add_review(restaurant, content, rating)
    Review.new(self, restaurant, review, rating)
  end

  #Returns the total number of reviews that a customer has authored
  def num_reviews
    cust_reviews = Review.all.select do |review_inst|
      review_inst.customer == self
    end

    cust_reviews.inject {|sum, review_inst| sum + review_inst}
    end
  end

    #Returns a **unique** array of all restaurants a customer has reviewed
    def restaurants
      cust_reviews = Review.all.select do |review_inst|
        review_inst.customer == self
      end

      cust_reviews.map do |review_inst|
        review_inst.review
      end

      #given a string of a **full name**, returns the **first customer** whose full name matches
      def self.find_by_name(name)
        Customer.all.find do |name|
        name.customer == name
      end
    end
   end

  




