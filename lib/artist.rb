require_relative "song.rb"

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
    @songs << song
    song.artist = self
  end

  def add_song_by_name(name)
    song = Song.new(name)
    song.artist = self
    @songs << song
  end

  def self.song_count
    total_songs = []
    Song.all.each do |song|
      total_songs << song.artist.songs
    end
    total_songs.length
  end
end
