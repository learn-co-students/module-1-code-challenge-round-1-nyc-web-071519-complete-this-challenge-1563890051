class Review

    def initialize(customer, restaurant)
        @customer = customer
        @restaurant = restaurant
    end  

    # returns the customer object for that given review
    # Once a review is created, I should not be able to change the author
    
    def customer (review) # take in review parameter

        # for that review parameter that has been entered, 
        # search for customer associated with it - using any/all/find
        # 'finalize' the review

    end

    # returns the restaurant object for that given review
    # Once a review is created, I should not be able to change the restaurant

    def restaurant(review)

        # for that review parameter that has been entered, 
        # search for restarurant associated with it - using any/all/find
        # 'finalize' the restaurant

    end

    # returns the star rating for a restaurant. This should be an integer from 1-5
    def rating(restaurant)

        # find star rating for associated parameted

    end 

    # returns the review content, as a string, for a particular review
    def content(review)

        # find/any string/comment for that review parameter entered

    end

end

