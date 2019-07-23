class Restaurant
  attr_reader :name

  @@all = []
  def initialize(name)
    @name = name

    Restaurant.all << self
  end

  # Class methods

  def self.all
    @@all
  end

  # Instance methods

  def customers
    all_instances = Review.all.select do |cust_instance|
      cust_instance.customer
    end
    cust_array = all_instances.map do |cust_instance|
      cust_instance.customer.full_name
    end
    cust_array.uniq
  end 

  

end
