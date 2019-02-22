class Song

  attr_accessor :name, :artist  #macro for #name #artist
  @@all = []        #class variable set to array

  def initialize(name)
    @name = name
    @artist = artist
    @@all << self
  end

  def self.all
    @@all         #returning array where all songs are
  end

  def artist_name
    if artist                  #if artist is present
      return artist.name      #return artist's name
      else nil                #if not, return nil
    end
  end



end
