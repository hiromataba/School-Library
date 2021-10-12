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
end
