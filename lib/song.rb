class Song
  attr_accessor :name, :artist
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all.select do |arrayElement|
      arrayElement.name
    end
  end

  def artist_name
      if self.artist
        self.artist.name
      else
        nil
      end
  end



end
