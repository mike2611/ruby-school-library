require_relative './corrector'
require_relative './rental'
require 'pry'

class Person
  attr_reader :id, :parent_permission, :rentals
  attr_accessor :name, :age

  def initialize(age, name = 'Unknown', parent_permission: true)
    @id = Random.rand(1..1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
    @correct_name = Corrector.new
    @rentals = []
  end

  def of_age?(person)
    return true if person.age >= 18

    false
  end

  def can_use_services?(person)
    return true if person.of_age?(person) || person.parent_permission

    false
  end

  def validate_name()
    @name = @correct_name.corrector_name(@name)
  end

  def add_rental(date, book)
    Rental.new(date, book, self)
  end
end
