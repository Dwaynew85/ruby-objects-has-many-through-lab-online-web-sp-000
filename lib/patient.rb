class Patient
  attr_accessor :name

  @@all = []

  def initialze(name)
    @name = name
    @@all << self
  end

  def new_appointment(date, doctor)
    Appointment.new( date, self, doctor)
  end

  def appointments
    Appointment.all.select {|appointment| appointment.name == self}
  end

  def doctors
    self.appointments.map {|appointment| appointment.doctor}
  end

end

  
