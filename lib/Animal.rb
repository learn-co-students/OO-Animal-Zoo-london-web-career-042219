class Animal

attr_reader :species, :nickname
attr_accessor :weight, :zoo

@@all = []

  def initialize(species, weight, nickname, zoo)

    @species = species
    @weight = weight
    @nickname = nickname
    @zoo = zoo
    @@all << self

  end
# should return an array of all the animal instances.
def self.all
  @@all
end
 #
 # should return the zoo instance that the instance belongs to.
# def zoo
#   Zoo.all.select{|animal|animal.zoo == self}
# end


# should take in an animal's species as an argument and return an array of all the animals, which are of that species.
def self.find_by_species(species)

  all.select{|animal|animal.species == species}

end

end
