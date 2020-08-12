require 'pry'
class Genre 
    
    attr_accessor :name, :song
   

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end 

     def self.all 
        @@all 
    end 

    def songs 
        Song.all.select { |songs| songs.genre == self }
    end
    
       def genres
        Song.all.map do |song|
            song.genre
        end
    end 

  

    
end 