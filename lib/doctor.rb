class Doctor
  attr_accessor :name

  @@all = []

  def initialze(name)
    @name = name
    @@all << self
  end

end

  
