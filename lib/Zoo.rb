
class Zoo

    attr_reader :name, :location
    attr_accessor 

    @@all = [] #all instances of Zoo

    def initialize(name, location)
        @name = name
        @location = location
        @@all.push(self)
    end

    def self.all
     @@all
    end

   def animals
    Animal.all.select { |animal| animal.zoo == self }
   end

    def self.find_by_location(my_location)
     self.all.select { |zoo| zoo.location == my_location }
    end

    def animal_species
     animals.map { |animal| animal.species }.uniq
    end

    def find_by_species(species_type)
     animals.select { |animal| animal.species == species_type }
    end

    def animal_nicknames
     animals.map { |animal| animal.nickname }
    end

 end

