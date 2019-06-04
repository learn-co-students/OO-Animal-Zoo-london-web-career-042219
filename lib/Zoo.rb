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

  def location
    @location
  end

  def name
    @name
  end

  def all_animals
    Zooattraction.all.select {|animals| animals.zoo == self}
  end

  def animals
    all_animals.map {|specie| specie.animal}
  end

  def animal_species
    animals.map {|animal| animal.specie}.uniq
  end

  def find_by_species(specie)
    animals.select {|animal| animal.specie == specie }
  end

  def animal_nicknames
    animals.map {|animal| animal.nickname}
  end

  def self.find_by_location(location)
    @@all.select {|zoo| zoo.location == location}
  end
end
