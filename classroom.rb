class Classrom
  attr_accessor :label
  attr_reader :students

  def initialized(label)
    @label = label
    @students = []
  end

  def add_student(student)
    @students.push(student)
    @students.classroom = self
  end
end