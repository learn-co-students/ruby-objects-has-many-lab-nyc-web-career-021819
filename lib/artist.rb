# Artist
#   #new
#     is initialized with a name (FAILED - 1)
#   #name
#     has an attr_accessor for name (FAILED - 2)
#   #songs
#     has many songs (FAILED - 3)
#   #add_song
#     takes in an argument of a song and associates that song with the artist by telling the song that it belongs to that artist (FAILED - 4)
#   #add_song_by_name
#     takes in an argument of a song name, creates a new song with it and associates the song and artist (FAILED - 5)
#   .song_count
#     is a class method that returns the total number of songs associated to all existing artists (FAILED - 6)

class Artist
    attr_accessor :name, :song
    @@artists = []

    def artists
        @@artists
    end

    def initialize(artist_name)
        self.name = artist_name
        self.artists << self
        @songs = []
    end

    def songs
        @songs
    end

    def add_song(new_song)
        self.songs << new_song
        puts self.songs.inspect
        new_song.artist = self
    end

    def add_song_by_name(song_name)
        #find song by song_name, add to self.song
        new_song = Song.new(song_name)
        self.songs << new_song
        new_song.name = song_name
        new_song.artist = self
    end

    def self.song_count
        #go through all artists 
        #go through all songs for artist
        #increement song count for each song orrrrrr 
        song_count = 0
        @@artists.each do |artist_o|
            artist_o.songs.each do |song|
                song_count += 1
            end
        end
        song_count
    end
end
