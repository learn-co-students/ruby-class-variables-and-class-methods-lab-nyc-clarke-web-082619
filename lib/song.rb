require 'pry'

class Song

    @@count = 0
    @@artists = []
    @@genres = []


    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@artists.push(artist) 
        @@genres.push(genre)

    
    end

    attr_accessor :name, :artist, :genre

    def self.count
        @@count
    end

    def self.artists
        new_array = @@artists.uniq
    end

    def self.genres
        new_array = @@genres.uniq
    end

    def self.genre_count
        genre_counts = {}
        @@genres.each do |thing|
            if genre_counts.has_key?(thing)
               genre_counts[thing] += 1
            else
                genre_counts[thing] = 1
            end
        end
        genre_counts
    end

    def self.artist_count
        artist_counts = {}
        @@artists.each do |thing|
            if artist_counts.has_key?(thing)
               artist_counts[thing] += 1
            else
                artist_counts[thing] = 1
            end
        end
        artist_counts
    end
    
end