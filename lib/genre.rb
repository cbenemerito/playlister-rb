class Genre

  attr_accessor :name
  @@genres = []
  @@songs_per_genre = {}
  @@artists_per_genre = {}
  @@genre_hash = {}

  def initialize
  	@@genres << self
  end

  #def initialize(song = nil)
  #	self.add_song(song) if song
  #end

  #def add_song(song)
  #	if @@songs_per_genre[self.name]
  #		@@songs_per_genre[self.name] << song
  #	else
  #		@@songs_per_genre[self.name] = [song]
  #	end
  #end

  def self.add_song(song)
  	if @@songs_per_genre[song.genre.name.to_sym]
  		@@songs_per_genre[song.genre.name.to_sym] << song
  	else
  		@@songs_per_genre[song.genre.name.to_sym] = [song]
  	end
  end

  def self.add_artist(artist, song)
  	if @@artists_per_genre[song.genre.name.to_sym]
  		if @@artists_per_genre[song.genre.name.to_sym].include?(artist)
  			@@artists_per_genre[song.genre.name.to_sym]
  		else
  			@@artists_per_genre[song.genre.name.to_sym] << artist
  		end
  	else
  		@@artists_per_genre[song.genre.name.to_sym] = [artist]
  	end
  end

  def self.songs_per_genre
  	@@songs_per_genre
  end

  def self.artists_per_genre
  	@@artists_per_genre
  end

  def songs
  	@@songs_per_genre[self.name.to_sym]
  end

  def artists
  	@@artists_per_genre[self.name.to_sym]
  end

  def self.reset_genres
    @@genres = []
  end

  def self.all
    @@genres
  end

  def self.reset_hashes
  	@@songs_per_genre = {}
  	@@artists_per_genre = {}
  end

  def self.add_genre_to_genre_hash
  	@@genre_hash[genre.name] << self
  end

  def to_binding
  	binding
  end
end
