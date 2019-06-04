class Animal

  @@all = []

  attr_reader :specie, :nickname
  attr_accessor :weight

  def initialize(specie, weight, nickname)
    @specie = specie
    @weight = weight
    @nickname = nickname
    @@all << self
  end

  def self.all
    @@all
  end

  def nickname
    @nickname
  end

  def weight
    @weight
  end

  def species
    @specie
  end

  def all_zoos
    Zooattraction.all.select {|zoo| zoo.animal == self}
  end

  def zoo
    all_zoos.map {|animal| animal.zoo}
  end

  def self.find_by_species(specie)
    @@all.select {|animal| animal.specie == specie}
  end

end
