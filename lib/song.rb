require 'pry'

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
        @@genres << genre
        @@artists << artist
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

    def genre_count
        @genres_count = {}
        @@genres.each do |genre|
            if @genres_count[genre]
                @genres_count[genre] += 1
            else
                @genres_count[genre] = 1
            end
    end

    binding.pry
end