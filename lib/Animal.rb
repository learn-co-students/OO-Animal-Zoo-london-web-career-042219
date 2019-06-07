class Animal

    attr_reader :species, :nickname
    attr_accessor :weight

    @@all = []

def initialize(species,weight,nickname)
    @species = species
    @weight = weight
    @nickname = nickname
    @@all << self
end

def self.all
    @@all
end

def current_home
    Home.all.select { |home| home.animal == self }
end

def current_zoo
    current_home.map { |home| home.zoo }
end

def zoo
    current_zoo.map { |zoo| zoo.name }
end

def self.find_by_species(species)
    Home.all.select { |home| home.animal.species == species }
end

end
