class Review
    attr_reader :customer, :restaurant, :content, :rating
    @@all = []
    def initialize(customer, restaurant, content, rating)
        @customer = customer
        @restaurant = restaurant
        @content = content
        @rating = rating
        Review.all << self
    end
    #class methods
    def self.all
        @@all
    end
    #end class methods
    #instance methods

    #end instance methods

end