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

  def helper
    Review.all.select {|i| i.restaurant == self.name}
  end

  def customers
    helper.map{|i| i.customer}
  end

  def reviews
    helper.map{|i| i}
  end

  def helper_count
    helper.count
  end
  
  def average_star_rating
    rating_array = helper.map{|i| i.rating}
    sum = rating_array.reduce(:+)
    average_rating = sum / helper_count
  end

  def longest_review
    reviews_array = helper.map{|i| i.content.split(" ")}.max_by{|i| i.count}.join(' ') 
  end

  def self.find_by_name(name)
    self.all.find{ |i| i.name }
  end

end
