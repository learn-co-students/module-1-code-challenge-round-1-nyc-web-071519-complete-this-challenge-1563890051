class Restaurant
  attr_reader :name
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def reviews
    Review.all.select{|review| review.restaurant == self}
  end

  def customers
    reviews.map{|review| review.customer}.uniq
  end

  def average_star_rating
    ((reviews.map{|review| review.rating}.sum)/(reviews.count.to_f)).floor(2)

  end

  def longest_review #####NOT SURE ABOUT THIS ONE 
    reviews.map{|review| review.content}.max_by{|content| content.length}
  end

  def self.find_by_name(name)
    self.all.find{|restaurant| restaurant.name == name}
  end


end
