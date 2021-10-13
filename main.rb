require_relative 'classroom'
require_relative 'school_handlers'

class App
  include SchoolHandlers
  def initialize
    @classroom = Classroom.new('Full-stack Devs')
    @people = []
    @books = []
    @rentals = []
  end

  def run
    puts 'Welcome to School Library App! 😀'

    loop do
      print_options

      option = gets.chomp

      if option == '7'
        save_data
        break
      end

      handle_option option
    end

    puts 'Thank you for using this app! 😊'
  end

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
    when '7'
      save_data
    else
      puts 'That is not a valid option ❌'
    end
  end

  def print_options
    puts
    puts ['Please choose an option by entering a number: 😊',
          '1 - List all books 📖 ',
          '2 - List all people 👪',
          '3 - Create a person 👨',
          '4 - Create a book 📖 ',
          '5 - Create a rental 🏠',
          '6 - List all rentals for a given person id 👨',
          '7 - Exit 🚫']
  end
end

def main
  app = App.new
  app.parse_books
  app.parse_people
  app.parse_rentals
  app.run
end

main
