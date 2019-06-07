class Home

attr_reader :zoo, :animal

@@all = []

def initialize(zoo,animal)
    @zoo = zoo
    @animal = animal
    @@all << self
end

def self.all
    @@all
end

end