class Song

    @@count = 0
    @@artists = []
    @@genres = []
    @@genre_count = {}
    @@artist_count = {}

    def initialize(song_name, song_artist, song_genre)
        @artist = song_artist
        @genre = song_genre
        @name = song_name

        @@count += 1
        @@artists << song_artist 
        @@genres << song_genre 

        if @@genre_count[song_genre]
            @@genre_count[song_genre] += 1
        else
            @@genre_count[song_genre] = 1
        end

        if @@artist_count[song_artist]
            @@artist_count[song_artist] += 1
        else
            @@artist_count[song_artist] = 1
        end

    end

    attr_reader :name, :genre, :artist

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
        @@genre_count
    end

    def self.artist_count
        @@artist_count
    end



end