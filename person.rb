require_relative 'corrector'

class Person
  attr_accessor :name, :age, :rentals
  attr_reader :id

  def initialize(age:, name: 'Unknown', parent_permission: true)
    @id = Random.rand(1..1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
    @rentals = []
    @corrector = Corrector.new
  end

  def can_use_services?
    of_age? || @parent_permission
  end

  def validate_name
    @name = @corrector.correct_name(@name)
  end

  def add_rental(rental)
    @rentals << rental
  end

  private

  def of_age?
    @age >= 18
  end

  def to_s
    "Name: #{@name}, ID: #{@id}, Age: #{@age}"
  end
end
