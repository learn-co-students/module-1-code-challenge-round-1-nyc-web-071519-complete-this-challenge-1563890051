class Review
  
    attr_reader :restaurant, :customer
    attr_accessor :rating, :content

    @@all = []
    def initialize (restaurant, customer, rating, content)
        @restaurant = restaurant
        @customer = customer
        @rating = rating
        @content = content
        Review.all << self
    end

    def self.all
        @@all
    end

end

