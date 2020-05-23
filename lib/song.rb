class Song 
  attr_accessor :name, :genre 

  @@all = []

  def initialize(name, genre)
    @name = name 
    @gerne = genre 
    save 
  end 

  def save 
    @@all << self 
  end 

  def self.all 
    @@all 
  end 

end