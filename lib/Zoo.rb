class Zoo
    @@all = []

    attr_reader :name, :location

    def initialize(name, location)
        @name = name
        @location = location
        @@all << self
    end

    def self.all
        return @@all
    end

    def animals
        return Animal.all.select{ |animal| animal.zoo == self }
    end

    def animal_count
        return animals.count
    end

    def underweight?
        animals.any? { |animal| animal.weight < 5 }
    end

    def species
        return animals.map { |animal| animal.species }.uniq
    end

    def animal_species
        return species.map { |species| species.name }
    end

    def find_by_species(species)
        return animals.select { |animal| animal.species == species}
    end

    def animal_nicknames
        return animals.map { |animal| animal.nickname }
    end

    def self.find_by_location(location)
        return all.select { |zoo| zoo.location == location }
    end

    def self.most_diverse
        return all.max_by { |zoo| zoo.species.count }
    end

    def self.number_of_animals
        return all.sum { |zoo| zoo.animal_count }/all.count
    end

    def self.cause_for_concern
        all.select { |zoo| zoo.underweight? }
    end
end
