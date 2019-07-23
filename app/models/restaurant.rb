class Restaurant
  attr_reader :name

  @@all = []
  def initialize(name)
    @name = name
    Restaurant.all << self
  end

  def self.all
    @@all
  end

  def reviews
    Review.all.select{|review|
      review.restaurant == self
    }
  end

  def customers
    reviews.map{|review|
      review.customer
  }.uniq
  end

  def average_star_rating
    reviews.map{|review|
      review.rating
    }.sum / reviews.length.to_f
  end

  def longest_review
    reviews.max_by{|review|
      review.content.length
  }.content
  end

  def self.find_by_name (name)
    all.find{|restaurant|
      restaurant.name == name
    }
  end


end
