class Zoo

  attr_reader :name, :location

  @@all = []

  def initialize(name, location)
    @name = name
    @location = location
    Zoo.all << self
  end

  def self.all
    @@all
  end

  def animals # animals in zoo instance
    Animal.all.select {|animal| animal.zoo == self}
  end

  def find_by_species(species)
    animals.select {|animal| animal.species == species}
  end

  def animal_species
    unique = []
    animals.each do |animal|
      unique << animal.species if unique.include?(animal.species) == false
    end
    unique
  end

  def animal_nickname
    animals.collect {|animal| nicknames << animal.nickname}
  end

  def self.find_by_location(location)
    Zoo.all.select {|zoo| zoo.location == location}
  end

end
