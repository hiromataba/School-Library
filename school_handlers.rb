require_relative 'person'
require_relative 'teacher'
require_relative 'student'
require_relative 'book'
require_relative 'rental'

module SchoolHandlers
  def list_books
    @books.each { |book| puts book }
  end

  def list_people
    @people.each { |person| puts person }
  end

  def create_person
    print 'Do you want to create a student (1) or a teacher (2) ❓ [Input the number]: '
    option = gets.chomp

    case option
    when '1'
      create_student
    when '2'
      create_teacher
    else
      puts 'That is not a valid input ❌'
      return
    end

    puts 'Person created successfully ✅'
  end

  def create_student
    print 'Age: '
    age = gets.chomp

    print 'Name: '
    name = gets.chomp

    print 'Has parent permission ❓ [Y/N]: '
    parent_permission = gets.chomp.downcase == 'y'

    student = Student.new(name: name, age: age, parent_permission: parent_permission, classroom: @classroom)
    @people.push(student)
  end

  def print_options
    puts
    puts 'Please choose an option by entering a number: 😊'
    puts '1 - List all books 📖 '
    puts '2 - List all people 👪'
    puts '3 - Create a person 👨'
    puts '4 - Create a book 📖 '
    puts '5 - Create a rental 🏠'
    puts '6 - List all rentals for a given person id 👨'
    puts '7 - Exit 🚫'
  end
end
