#link class


class Review

    attr_accessor :restaurant, :content, :rating, :customer

    @@all=[]

    def initialize(restaurant, content, rating, customer)

        @restaurant = restaurant
        @content = content
        @rating = rating
        @customer = customer
        
    
        @@all<<self
      end
  




      def self.all
        @@all
          
      end





      def content
       Review.all.select do |review_instance|
        review_instance == self
       end
    
       
        
          
      end



end

