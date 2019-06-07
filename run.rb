require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require_relative "lib/Species.rb"
require_relative "lib/Home.rb"
require 'pry'


londonzoo = Zoo.new("London Zoo", "London")
pariszoo = Zoo.new("Paris Zoo", "Paris")
milanzoo = Zoo.new("Milan Zoo", "Milan")

lion = Species.new("Lion")
zebra = Species.new("Zebra")
tiger = Species.new("Tiger")
bird = Species.new("Bird")

an1 = Animal.new(lion, 80, "Lilly Lion")
an2 = Animal.new(zebra, 100, "Zizi Zebra")
an3 = Animal.new(tiger, 40, "Tilly Tiger")
an4 = Animal.new(bird, 5, "Billy Bird")
an5 = Animal.new(bird, 8, "Bob Bird")

home1  = Home.new(londonzoo, an1)
home2 = Home.new(pariszoo, an2)
home3 = Home.new(milanzoo, an3)
home4 = Home.new(londonzoo, an4)
home5  = Home.new(londonzoo, an5)

binding.pry
puts "done"
