class Song

    attr_accessor :name, :artist, :genre

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@artists << artist
        @@count += 1
        @@genres << genre
    end

    @@artists = []
    @@count = 0
    @@genres = []


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
        genres_hash = { }
        @@genres.each do |unique_genre|
            genres_hash[unique_genre] ? genres_hash[unique_genre] += 1 : genres_hash[unique_genre] = 1
        end
        genres_hash
    end

    def self.artist_count
        artists_hash = { }
        @@artists.each do |unique_artist|
            artists_hash[unique_artist] ? artists_hash[unique_artist] += 1 : artists_hash[unique_artist] = 1
        end
        artists_hash
    end


end
