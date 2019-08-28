class Song

    @@count = 0
    @@genres = []
    @@artists = []

    attr_accessor :name, :artist, :genre

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@genres << self.genre
        @@artists << self.artist
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
        @@genre_count = {}
       
         @@genres.group_by(&:itself).each {|k,v| @@genre_count[k] = v.count}
       
        return @@genre_count
    end

    def self.artist_count
        @@artist_count = {}
       
         @@artists.group_by(&:itself).each {|k,v| @@artist_count[k] = v.count}
       
        return @@artist_count
       end

end