
class Song
  attr_reader :name
  attr_accessor  :artist
  @@all = []


  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
   @@all
  end


  def artist_name
    # knows the name of its artist (FAILED - 14)
    if self.artist != nil
      return self.artist.name
    else
   self.artist
    # knows the name of its artist (FAILED - 14)
    #   returns nil if the song does not have an artist (FAILED - 15)
  end
  end


end
