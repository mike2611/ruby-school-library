require "./person.rb"

class Teacher < Person
  def initialize(age, specialization, name = "Unknown")
    super(age, name, true)
    @specialization = specialization
  end

  def can_use_services?(person)
    true
  end
end
