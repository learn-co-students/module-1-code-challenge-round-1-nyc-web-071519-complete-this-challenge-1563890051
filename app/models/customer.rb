class Customer
  attr_reader :first_name, :last_name
  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.all
    @@all
  end

  def add_review(restaurant, content, rating)
    Review.new(restaurant, self, content, rating)
  end

  def num_reviews
    Review.all.select{|i| i.customer == self.full_name}.count
  end

  def helper
    Review.all.select{|i| i.customer == self.full_name}
  end

  def restaurants
    helper.map{|i| i.restaurant}
  end

  def self.find_by_name(name)
    self.all.select{|i| i.full_name == name}
  end

  def self.find_all_by_first_name(name)

    self.all.select{|i| i.first_name == name}
  end

  def self.all_names
    self.all.select{|i| i}.map{|i|i.full_name}
  end

end
