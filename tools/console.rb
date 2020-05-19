require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# ******** CAR OWNER INSTANCES *********
emilio = CarOwner.new("Emilio")
dieter = CarOwner.new("Dieter")

# ******** MECHANIC INSTANCES *********
billy = Mechanic.new("Billy", "Motors")
romulo = Mechanic.new("Romulo", "Motors")

# ******** CAR INSTANCES *********
Car.new(emilio, billy, "Ford", "Fiesta", "sedan")
Car.new(emilio, romulo, "Lambo", "Murcielago", "premium")

Car.new(dieter, billy, "Hyundai", "Sonata", "sedan")
Car.new(dieter, romulo, "Ford", "Fiesta", "sedan")



binding.pry
