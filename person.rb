class Person
  def initialize(age, name = "Unknown", parent_permission = true)
    @id = Random.rand(1..1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
  end
  attr_reader :id
  attr_reader :parent_permission
  attr_accessor :name
  attr_accessor :age

  def is_of_age?(person)
    if person.age >= 18
      return true
    end
      return false
  end

  def can_use_services?(person)
    if person.is_of_age?(person) || person.parent_permission
      return true
    end
      return false
  end
end