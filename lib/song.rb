class Song

  attr_accessor :name, :genre, :artist
  @@songs = []

  def initialize
  	@@songs << self
  end

  def genre=(genre)
  	@genre = genre
  	Genre.add_song(self)
  end

  def self.all
    @@songs
  end

  def self.reset_songs
    @@songs = []
  end

  def artist=(artist)
  	@artist = artist
  end

  def to_binding
  	binding
  end
end
