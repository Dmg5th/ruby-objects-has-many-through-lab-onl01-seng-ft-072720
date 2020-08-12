class Genre 
    attr_accessor :name, :artist 
    
    @@all = []
    
    def initialize(name)
      @name = name 
      @@all << self 
    end 

    def self.all 
      @@all 
    end 
    
    def songs 
        Song.all
    end
    
    def artists
      self.all.select { |genres| genres.artist ==




end 