class Customer
  attr_reader :first_name, :last_name

  # @@all = []

  def initialize(first_name, last_name)
    # @first_name = first_name
    # @last_name  = last_name
    # @@all << first_name
  end

  # self.all
  #   @@all
  # end

  def full_name
    "#{first_name} #{last_name}"
  end


  # 1. given a **restaurant object**, some review 
  #content (as a string), and a star rating (as an integer), creates a new review and associates it with that customer and restaurant.

  def add_review(restaurant, content, rating)

    # @restaurant = restaurant
    # @content = content
    # @rating = rating     
    
  end

  # 2. Returns the total number of reviews that a customer has authored

  def num_review

    # get the total count of intance (self) and call on the method count to set it equal to the total

  end

  # 3. Returns a **unique** array of all restaurants a customer has reviewed

  def restaurants 

   # need to iterate over all restaruants for a particular instance of a customer
   # as we iterate over, return the name of the restaurant
   # get the unique values calling unique

  end

end