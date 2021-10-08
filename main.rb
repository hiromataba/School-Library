require_relative 'person'
require_relative 'teacher'
require_relative 'student'
require_relative 'book'
require_relative 'rental'
require_relative 'classroom'

class App
  def initialize
    @classroom = Classroom.new('Full-stack Devs')
    @people = []
    @books = []
    @rentals = []
  end

  def run
    puts 'Welcome to School Library App!'

    loop do
      print_options

      option = gets.chomp

      break if option == '7'

      handle_option option
    end

    puts 'Thank you for using this app!'
  end

  private

  def handle_option(option)
    case option
    when '1'
      list_books
    when '2'
      list_people
    when '3'
      create_person
    when '4'
      create_book
    when '5'
      create_rental
    when '6'
      list_rentals_by_person_id
    else
      puts 'That is not a valid option'
    end
  end