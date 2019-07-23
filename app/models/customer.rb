class Customer
  attr_reader :first_name, :last_name

  @@all=[]

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name

    @@all<<self
  end

  def full_name
    "#{first_name} #{last_name}"
  end




  def self.all
    @@all
  end




  def add_review(restaurant, content, rating)
    Review.new(restaurant, content, rating, self)
    
  end


  def num_reviews
    Review.all.select do |review_instance|
      review_instance.customer == self
    end.count
    
  end


def restaurants

  Review.all.select do |review_instance|
    review_instance.customer == self
  end.map do |ri|
    ri.restaurant
  end


end




end
