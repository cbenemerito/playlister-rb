class Artist

  attr_accessor :name, :songs
  @@artists = []

  def initialize
    @@artists << self
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
    self.songs << song
  end
end
