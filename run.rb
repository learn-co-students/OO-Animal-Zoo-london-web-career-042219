require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require_relative "lib/ZooAttractions.rb"
require 'pry'

zoo1 = Zoo.new("Simba Safari", "Sao Paulo")
zoo2 = Zoo.new("Zoologico Municipal", "Sao Paulo")
zoo3 = Zoo.new("San Diego Zoo", "San Diego")

simba = Animal.new("Lion", 200, "Simba")
mufasa = Animal.new("Lion", 250, "Mufasa")
alex = Animal.new("Lion", 200, "Alex")
panda = Animal.new("Panda", 400, "Kung Fu Panda")
marty = Animal.new("Zebra", 150, "Marty")
melman = Animal.new("Giraffe", 200, "Melman")

za1 = Zooattraction.new(zoo1, simba)
za2 = Zooattraction.new(zoo1, mufasa)
za3 = Zooattraction.new(zoo2, alex)
za4 = Zooattraction.new(zoo2, marty)
za5 = Zooattraction.new(zoo2, melman)
za6 = Zooattraction.new(zoo3, panda)
#Test your code here
binding.pry
puts "#AvanteTricolor"
