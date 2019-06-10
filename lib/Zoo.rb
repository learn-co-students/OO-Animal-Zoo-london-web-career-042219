class Zoo

attr_reader :name, :location

@@all = []

# A zoo should be initialized with a name and a location, which should both be passed as strings.
  def initialize(name, location)
    @name = name
    @location = location
    @@all<< self
  end

  def location
    @location
  end

  def name
    @name
  end

  def self.all
    @@all
  end

  def animals
#  should return all the animals that a specific instance of a zoo has.
    Animal.all.select {|animal|animal.zoo == self}

  end

  def animal_species
# should return an array of all the species (as strings) of the animals in the zoo.
    animals.map {|animals|animals.species}.uniq

  end

  def find_by_species(species)
# should take in an animal's species as an argument and return an array of all the animals in that zoo, which are of that species.
    animals.select{|animal| animal.species == species}


  end

  def animal_nicknames
#should return an array of all the nicknames of animals that a specific instance of a zoo has.
    animals.map {|animal|animal.nickname}

  end

  def self.find_by_location(location)
# Zoo.find_by_location should take in a location as an argument and return an array of all the zoos within that location.

    all.select{|zoo|zoo.location == location}

  end





end
