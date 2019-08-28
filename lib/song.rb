class Song
    attr_accessor :name, :artist, :genre

    @@count = 0
    @@artists = []
    @@genres = []

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@artists << artist
        @@genres << genre
    end

    def self.count
        @@count
    end

    def self.genres
        @@genres.uniq
    end

    def self.artists
        @@artists.uniq
    end

    def self.genre_count
     genre_hash = {}
        @@genres.each do |key, value|
            if genre_hash[key]
               genre_hash[key] += 1
            else 
               genre_hash[key] = 1
            end
        end
        genre_hash
    end

    def self.artist_count
        artist_count = {}
        @@artists.each do |key|
            if artist_count[key]
               artist_count[key] += 1
            else
                artist_count[key] = 1
            end
        end
        artist_count
    end

end
