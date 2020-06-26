class Song
  attr_accessor :name, :artist, :genre
  
   @@count = 0
   @@artists = []
   @@genre = []
  
  def initialize(name, artist, genre)
    @name = name
    @genre = genre
    @artist = artist
    @@count +=1
    @@genre << genre
    @@artists << artist
    
  end
  
    def self.artists
      @@artists
    end

    def self.count
      @@count
    end

    def self.name
      @@name
    end 

    def self.genre
    @@genre.uniq
    end

end