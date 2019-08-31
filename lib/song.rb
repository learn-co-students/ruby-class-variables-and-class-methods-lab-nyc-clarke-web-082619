class Song
    @@count = 0
    @@artists = []
    @@genres = []
    
    attr_accessor :artist, :genre, :name

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre

    @@count += 1
    @@artists << @artist
    @@genres << @genre
    end

     def self.count
         @@count
     end

     def self.artists
        @@artists.uniq
     end

     def self.genres
        @@genres.uniq
     end

     def self.genre_count
      @@genres.uniq.map {|genre| [ genre, @@genres.count(genre)]}.to_h
     end
     
     def self.artist_count
        @@artists.uniq.map {|artist| [ artist, @@artists.count(artist)]}.to_h
    end
    

end
