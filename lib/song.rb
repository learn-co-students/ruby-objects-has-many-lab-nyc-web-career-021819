require_relative "artist.rb"
require "pry"

class Song
  attr_accessor :artist
  attr_reader :name

  @@all = []

  def initialize(title)
    @name = title
    @@all << self
  end

  def self.all
    @@all
  end

  def artist_name
    if self.artist == nil
       nil
    else
      self.artist.name
    end
  end

end
