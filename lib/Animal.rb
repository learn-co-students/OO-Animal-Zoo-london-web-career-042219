class Animal

  @@all = []

  attr_reader :species, :weight, :nickname, :zoo
  attr_writer :weight

  def initialize(species, weight, nickname, zoo)
    @species = species
    @weight = weight
    @nickname = nickname
    @zoo = zoo
    @@all << self
  end

  def self.all
    @@all
  end

  def zoos
    #  should return the zoo instance that the instance belongs to.
    Animal.all.select{|animal| animal == self}.map{|animal| animal.zoo}
  end

  def self.find_by_species(species_string)
    # should take in an animal's species as an argument and return an array
    # of all the animals, which are of that species.
    Animal.all.select{|animal| animal.species == species_string}
  end
end
