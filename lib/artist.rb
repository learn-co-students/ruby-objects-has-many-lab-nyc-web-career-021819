class Artist

    attr_accessor :name

    def initialize(name)
        @name = name
        @songs = []
    end

    def songs
        @songs
    end

    def add_song(song)
        song.artist = self
        @songs.push(song)
    end

    def add_song_by_name(song_name)
        new_song = Song.new(song_name)
        new_song.artist = self
        @songs.push(new_song)
    end

    def self.song_count
        Song.all.length
    end
end
