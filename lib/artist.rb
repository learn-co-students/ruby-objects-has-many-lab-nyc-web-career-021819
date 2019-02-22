class Artist

  attr_accessor :name, :songs    #macro for #name and #songs

  def initialize(name)
    @name = name          #initialize name
    @songs = []           #new array to store songs
  end

  def add_song(song)
    @songs << song        #pushes song into the array
    song.artist = self    #set song's artist to self
  end

  def add_song_by_name(name)
    song = Song.new(name)         #create new song
    @songs << song                #push song into array
    song.artist = self            #set song to artist
  end

  def self.song_count           #count all songs to each artist
    Song.all.count              #takes class, gets all, counts
  end

end
