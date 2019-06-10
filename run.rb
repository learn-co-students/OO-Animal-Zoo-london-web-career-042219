require_relative 'lib/zoo.rb'
require_relative 'lib/animal.rb'
require_relative 'lib/species.rb'
require 'pry'


zoo1 = Zoo.new("Belfast Zoo", "Northern Ireland")

zoo2 = Zoo.new("London Zoo", "England")

zoo3 = Zoo.new("Manchester Zoo", "Manchester")

cat = Species.new("cat")

dog = Species.new("dog")

lion = Species.new("lion")

animal1 = Animal.new(cat, "10kg", "cat", zoo1)

animal2 = Animal.new(dog, "20kg", "doggy", zoo2)

animal3 = Animal.new(lion, "200kg", "simba", zoo3)

animal4 = Animal.new(cat, "5kg", "kitty", zoo2)

animal5 = Animal.new(dog, "15kg", "puppy", zoo3)

animal6 = Animal.new(lion, "150kg", "roar", zoo1)


binding.pry
0
