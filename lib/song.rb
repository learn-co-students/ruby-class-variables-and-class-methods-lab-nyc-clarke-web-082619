require "pry"
class Song
    @@count = 0
    @@artists = []
    @@genres = []
    @@artist_count = {}
    attr_accessor :name, :artist, :genre
    def initialize(name,artist,genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@artists << artist
        @@genres << genre
        if @@artist_count[artist]
            @@artist_count[artist] += 1
        else
        @@artist_count[artist] = 1
        end
    end
    def self.count
        @@count
    end

    def self.genre_count
        @@genres.reduce({}) do |memo, genre|
            memo[genre] ||= 0
            memo[genre] += 1
            memo
        end
    end 


    def self.artists
        @@artists.reduce([]) do |memo, artist|
            if !memo.include?(artist)
                memo << artist
                #binding.pry
            end
            memo
        end
    end

    def self.genres
        @@genres.reduce([]) do |memo, genre|
            if !memo.include?(genre)
                memo << genre
                #binding.pry
            end
            memo
        end
    end

    def self.artist_count
        @@artist_count
    end
end