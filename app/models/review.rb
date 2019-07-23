class Review
  
    attr_reader :restaurant, :customer, :rating
    attr_accessor :content

    @@all = []
    def initialize (restaurant, customer, rating, content)
        @restaurant = restaurant
        @customer = customer
        self.rating = rating
        @content = content
        Review.all << self
    end

    def self.all
        @@all
    end

    def rating= (value)
        if value.class != Integer
            return @rating = nil
        end
        if value < 1
            @rating = 1
        elsif value > 5
            @rating = 5
        else
            @rating = value
        end
    end


end

