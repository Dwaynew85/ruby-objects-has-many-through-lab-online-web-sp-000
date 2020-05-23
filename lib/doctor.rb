class Doctor
  attr_accessor :name

  @@all = []

  def initialze(name)
    @name = name
    @@all << self
  end

  def new_appointment(date, patient)
    Appointment.new(date, patient, self)
  end

  def appointments
    Appointment.all.select {|appointment| appointment.name == self}
  end

  def patients
    self.appointments.map {|appointment| appointment.patient}
  end

end
