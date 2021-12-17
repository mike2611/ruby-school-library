require_relative './person'
require_relative './classroom'

class Student < Person
  attr_reader :classroom

  def initialize(age, name = 'Unknown', p_permission: true)
    super(age, name, parent_permission: p_permission)
  end

  def play_hooky
    '¯\(ツ)/¯'
  end

  def classroom=(classroom)
    @classroom = classroom
    classroom.students.push(self) unless classroom.students.includes?(self)
  end
end
