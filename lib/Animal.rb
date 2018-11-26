class Animal

  attr_reader :species, :nickname
  attr_accessor :weight, :zoo

  @@all = []

  def self.all
    @@all
  end

  def initialize(species, weight, nickname)
    @species = species
    @weight = weight
    @nickname = nickname
    Animal.all << self
  end

  def self.find_by_species(species)
    Animal.all.select { |animal| animal.species == species }
  end


end
