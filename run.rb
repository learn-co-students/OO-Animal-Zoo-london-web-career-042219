require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require_relative "lib/Species.rb"
require 'pry'

## Zoo Tests ##
whipsnade = Zoo.new("Whipsnade Zoo", "Whipsnade")
tongarra = Zoo.new("Tongarra Zoo", "Sydney")
central_park = Zoo.new("Central Park Zoo", "New York")
nyc = Zoo.new("New York Zoo", "New York")

## Species Tests ##
feline = Species.new("Feline")
whale = Species.new("Whale")
canine = Species.new("Canine")

## Animal Tests ##
zebra = Animal.new(canine, 50, "Zebra", whipsnade)
donkey = Animal.new(canine, 75, "Donky", whipsnade)
blue = Animal.new(whale, 1250, "Blue", tongarra)
humpback = Animal.new(whale, 1450, "Humpback", tongarra)
sperm = Animal.new(whale, 1700, "Sperm", tongarra)
orca = Animal.new(whale, 1000, "Orca", central_park)
tiger = Animal.new(feline, 650, "Tiger", tongarra)
lion = Animal.new(feline, 250, "Lion", central_park)
cheetah = Animal.new(feline, 350, "Cheetah", whipsnade)

binding.pry
puts "Mischief Managed!"
