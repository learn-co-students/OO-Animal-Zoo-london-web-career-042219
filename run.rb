require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require_relative "lib/Species.rb"
require 'pry'


#Test your code here
newyork = Zoo.new("Bronx Zoo", "New York City")
seattle = Zoo.new("Woodland Park Zoo", "Seattle")
london = Zoo.new("London Zoo", "London")

orangutan = Species.new("Orangutan")
pig = Species.new("Pig")
dog = Species.new("Dog")
chimp = Species.new("Chimpanzee")
catfish = Species.new("Catfish")
panda = Species.new("Panda")

frankie = Animal.new(orangutan, 22,"Frankie",newyork)
louis = Animal.new(pig,15,"Frankie",newyork)
spunky = Animal.new(dog,9,"Spunky",newyork)
frazzle = Animal.new(chimp,19,"Frazzle",seattle)
yeti = Animal.new(orangutan,30,"Yeti",seattle)
silver = Animal.new(orangutan,29,"Silver",seattle)
snort = Animal.new(pig,35,"Snort",seattle)
cheesemo = Animal.new(catfish,4,"Cheesemo",london)
chaz = Animal.new(panda,41,"Chaz",london)
felipe = Animal.new(panda,41,"Felipe",london)

binding.pry
puts "done"
