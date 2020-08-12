require 'pry'
class Genre 
    
    attr_accessor :name, :song

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end 

    def name 
        @name
    end 

    def songs 
        Song.all.select { |songs| songs.genre == self }
    end
    
    def genres 
      self.all.collect { |genres| genres.artist == self }
    end 

    def self.all 
        @@all 
    end 

    
end 