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
      Song.all.map { |song| song.genre }
    end 

    def self.all 
        @@all 
    end 

    
end 