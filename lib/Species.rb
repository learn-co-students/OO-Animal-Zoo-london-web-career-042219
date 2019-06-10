class Species

attr_reader :name

  @@all = []

  def initialize(name)

      @name = name
      @@all<< self

  end

  def self.all

    @@all

  end

  def animals
    Animal.all.select{|animal|animal.species == self}
  end


end
