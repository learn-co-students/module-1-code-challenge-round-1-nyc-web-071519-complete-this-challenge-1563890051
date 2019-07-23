class Restaurant
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  # Class Methods

  def self.all
    @@all
  end

  def self.find_by_name(name)
    Restaurant.all.find do |rest_inst|
      rest_inst.name == name
    end
  end
  
  # Instance Methods

  def reviews # returns the reviews of an instance of Restaurant
    Review.all.select do |review_inst|
      review_inst.restaurant == self
    end
  end

  def customers
    reviews.map do |review_inst|
      review_inst.customer
    end
  end

  def average_star_rating
    rest_ratings = reviews.map do |review_inst|
      review_inst.rating
    end
    sum = 0
    rest_ratings.each do |rtg|
      sum += rtg
    end
    sum / rest_ratings.length
  end

  def longest_review
    contents = reviews.map do |review_inst|
      review_inst.content
    end
    contents.max_by do |cnt|
      cnt.length
    end
  end
end
