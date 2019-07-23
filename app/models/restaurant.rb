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

end
