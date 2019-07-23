class Restaurant
  attr_reader :name


  @@all =[]

  def initialize(name)
    @name = name

    @@all<<self
  end


def self.all
  @@all
  
end



def customers
Review.all.select do |review_instance|
  review_instance.restaurant == self
end.map do |ri|
  ri.customer
end
end



def reviews
  Review.all.select do |review_instance|
    review_instance.restaurant == self
  end
  
end


def average_star_rating
  x=reviews.map do |ri|
    ri.rating
  end
  x.sum/reviews.length
  
end


end
