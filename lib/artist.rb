require 'pry'
require_relative './song.rb'

class Artist

  attr_accessor :name
  @@artists = []
  def initialize(name)
    @name = name
    @songs = []
    @@artists << self
  end


  def add_song(song)
    @songs << song
    song.artist = self
  end

  def songs
    @songs
  end


  def add_song_by_name(title)
    song = Song.new(title)
    @songs << song
    song.artist = self
  end

  def self.song_count
    counter = 0
    @@artists.each do |name|
      counter += name.songs.length
    end
    counter
  end

end
