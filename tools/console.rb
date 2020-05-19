require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

steven = CarOwner.new("Steven")
sarah = CarOwner.new("Sarah")
eric = CarOwner.new("Eric")
mike = CarOwner.new("Mike")
paul = CarOwner.new("Paul")

dan = Mechanic.new("Dan", "antique")
jeff = Mechanic.new("Jeff", "exotic")
pete = Mechanic.new("Pete", "clunker")
elle = Mechanic.new("Elle", "antique")
jen = Mechanic.new("Jen", "exotic")
jack = Mechanic.new("Jack", "clunker")
jill = Mechanic.new("Jill", "antique")

car_1 = Car.new("honda", "civic", "exotic", steven, jeff)
car_2 = Car.new("chevy", "cruze", "clunker", sarah, pete)
car_3 = Car.new("buick", "enclave", "antique", eric, elle)
car_4 = Car.new("ford", "fusion", "exotic", steven, jen)
car_5 = Car.new("jeep", "cherokee", "clunker", paul, jill)
car_6 = Car.new("nissan", "elantra", "antique", mike, dan)
car_7 = Car.new("chevy", "volt", "exotic", steven, jack)
car_8 = Car.new("chevy", "suburban", "clunker", mike, jill)
car_9 = Car.new("buick", "lesabre", "exotic", steven, jeff)

binding.pry
0