require "pry"
class Song

    attr_reader :artist, :genre, :name 
    @@count = 0 
    @@artists = [ ]
    @@genres = [ ] 
    @@all = [ ]
    @@artists = [ ] 
    def initialize (name, artist, genre)
        @artist = artist
        @genre = genre
        @name = name 
        @@count +=1
        @@all<<self
        @@genres << genre 
        @@artists << artist 
    end

    def self.all
        @@all
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
        result = { }
       @@genres.each do |genre|
        if result.key?(genre)
            result[genre]+=1
        else
            result[genre]=1
        end
        end
    result 
    end
    def self.artist_count
        result = { }
        @@artists.each do |artist|
         if result.key?(artist)
             result[artist]+=1
         else
             result[artist]=1
         end
         end
     result 
    end
    
end 
    # binding.pry 
    #"end of pry"