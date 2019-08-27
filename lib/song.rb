class Song
    @@count = 0
    @@artists = []
    @@genres = []
    @@genre_count = {}
    @@artist_count = {}

    attr_accessor :name, :artist, :genre

    def initialize(name,artist,genre)
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

    def self.artists
        @@artists.uniq
    end

    def self.genres
        @@genres.uniq
    end

    def self.genre_count
        @@genres.each{|x|
            # if @@genre_count.key?(x)
            #     @@genre_count[x] += 1
            # else
            #     @@genre_count[x] = 1
            # end
            if @@genre_count.key?(x)
                @@genre_count[x] += 1
            else
                @@genre_count[x] = 1
            end
        }
        @@genre_count
    end

    def self.artist_count
        @@artists.each{|x|
            if @@artist_count.key?(x)
                @@artist_count[x] += 1
            else
                @@artist_count[x] = 1
            end
        }
        @@artist_count
    end


end
