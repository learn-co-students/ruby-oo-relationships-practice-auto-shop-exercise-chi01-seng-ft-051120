class CarOwner
  @@all = []
  attr_reader :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def cars
    Car.all.select {|c| c.car_owner == self}
  end

  def mechanics
    cars.map {|c| c.mechanic}
  end

  def self.average_number_of_cars
    (self.all.sum {|co| co.cars.length}) / self.all.count
  end

end
