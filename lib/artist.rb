class Artist

  attr_accessor :name, :songs
  @@artists = []

  def initialize
#    if @@artists.include?(self)
#    	@@artists
#    else
#    	@@artists << self
    @@artists << self #unless @@artists.include?(self)
    @songs = []
  end

  def self.reset_artists
    @@artists = []
  end

  def self.count
    @@artists.size
  end

  def self.all
    @@artists
  end

  def songs_count
    self.songs.size
  end

  def add_song(song)
    @songs << song
    Genre.add_artist(self, song) if song.genre
  end

  def genres
  	@songs.collect {|x| x.genre}
  end

  def to_binding
  	binding
  end
end
