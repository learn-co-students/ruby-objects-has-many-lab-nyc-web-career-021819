class Artist

  attr_reader :name
  attr_accessor :artist

  def initialize(name)
    @name = name
    @song = []
  end

  def songs
    @song
  end

  def add_song(song)
    song.artist = self
    @song << song
  end

  def add_song_by_name(name)
    song = Song.new(name)
    @song << song
    song.artist = self
  end


  def self.song_count
    Song.all.count
  end


 end
