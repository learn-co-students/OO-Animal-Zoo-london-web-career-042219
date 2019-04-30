class Zoo


attr_reader :name, :location

@@all = []

def initialize(name,location)
    @name = name
    @location = location
    @@all << self
end

def self.all
    @@all
end

def current_home
    Home.all.select { |home| home.zoo == self }
end

def animal
    current_home.map { |home| home.animal }
end

def animal_species  
    animal.map { |a| a.species }.uniq
end

def animal_nicknames
    animal.map { |a| a.nickname }
end

def animal_species(species)
    animal.select { |a| a.species.name == species }
end

def self.find_by_location(location)
    Home.all.select { |home| home.zoo.location == location }
end

end