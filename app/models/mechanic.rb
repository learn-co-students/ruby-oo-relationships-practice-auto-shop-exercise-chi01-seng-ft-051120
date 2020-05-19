class Mechanic

  attr_reader :name, :specialty

  @@all = []

  def initialize(name, specialty)
    @name = name
    @specialty = specialty

    @@all << self
  end

  def self.all 
    @@all
  end 

  def cars 
    Car.all.select do |car|
      car.mechanic == self 
    end 
  end

  def car_owners 
    my_owners = cars.map do |car|
      car.car_owner
    end
    my_owners.uniq 
  end 

  def car_owners_names 
    car_owners.map do |car_owner|
      car_owner.name 
    end
  end 

end
