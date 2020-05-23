class Appointment
  attr_accessor :date, :patient, :doctor

  @@all = []

  def initialze(date, patient, doctor)
    @date = date
    @patient = patient
    @doctor = doctor
    @@all << self
  end

  def self.all
    @@all
  end

end
