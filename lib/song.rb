class Song
  attr_accessor :name,:artist, :genre

  @@all = []

  def initialize(name, genre)
    @name = name
    @genre = genre
    @@all << self
  end

  def self.all
    @@all
  end

end
