class Artist
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_song(name, genre)
    new_song = Song.new(name, genre)
    new_song.name = self
  end

  def songs
    Song.all.select {|song| song.artist == self}
  end

  def genres
    self.all.select {|artist| artist.genre}
  end

end
