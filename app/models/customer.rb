class Customer
  attr_reader :first_name, :last_name

  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def self.all
    @@all
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def add_review
  end

  def num_reviews
  end

  def unique_restaurants
  end

  def find_by_name(name)
  end

  def find_all_by_first_name(name)
  end

  def all_names
  end

end