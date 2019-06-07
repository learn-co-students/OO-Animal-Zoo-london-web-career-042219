class Zoo

  @@all = []

  attr_reader :name, :location

  def initialize(name, location)
    @name = name
    @location = location
    @@all << self
  end

  def self.all
    @@all
  end

  def animals
    # should return all the animals that a specific instance of a zoo has.
    Animal.all.select{|animal| animal.zoo == self}
  end

  def animal_species
    # should return an array of all the species (as strings) of the animals in the zoo. However, if you have two dogs, it should only return one "Dog" string (aka an unique array).
    animals.map{|animal| animal.species.name}.uniq
  end

  def find_by_species(species_string)
    # should take in an animal's species as an argument and return an array of
    #all the animals in that zoo, which are of that species.
    animals.select{|animal| animal.species == species_string}
  end

  def animal_nicknames
    #should return an array of all the nicknames of animals that
    # a specific instance of a zoo has.
    animals.map{|animal| animal.nickname}
  end

  def self.find_by_location(location_string)
    # should take in a location as an argument and return an array
    # of all the zoos within that location.
    all.select{|zoo| zoo.location == location_string}
  end
end
