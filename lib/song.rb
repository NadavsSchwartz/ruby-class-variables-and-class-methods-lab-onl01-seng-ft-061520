class Song
  attr_accessor :name, :artist, :genre
  
   @@count = 0
   @@artists = []
   @@genres = []
  
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
    
      def self.genre_count
    genre_count = {}
    @@genres.each do |genre|
      if genre_count[genre]
        genre_count[genre] += 1 
      else
        genre_count[genre] = 1
      end
    end
    genre_count
  end

end