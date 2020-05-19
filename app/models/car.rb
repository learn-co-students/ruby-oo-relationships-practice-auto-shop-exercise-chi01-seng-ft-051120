class Car
  @@all = []
  attr_reader :make, :model, :car_owner, :mechanic, :classification

  def initialize(car_owner, mechanic, make, model, classification)
    @make = make
    @model = model
    @classification = classification
    @car_owner = car_owner
    @mechanic = mechanic
    @@all << self
  end

  def self.all
    @@all
  end

  def self.classifications
    (self.all.map {|c| c.classification}).uniq
  end

  def self.find_mechanics(classification)
    mechanics = []
    self.all.select do |c| 
      if c.mechanic.specialty == classification
        mechanics << c.mechanic
      end
    end
    mechanics.uniq
  end

end
