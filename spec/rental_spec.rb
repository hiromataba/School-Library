require_relative '../rental'
require_relative '../student'
require_relative '../book'

describe Rental do
  before :each do
    @person = Student.new(age: 17, classroom: '', name: 'Bob')
    @book = Book.new('Martin Eden', 'Jack London')
    @rental = Rental.new('2021/10/10', @book, @person)
  end

  describe '#new' do
    it 'takes 3 parameters and returns a Rental object' do
      expect(@rental).to be_an_instance_of Rental
    end

    it 'should set the correct date' do
      expect(@rental.date).to eql '2021/10/10'
    end

    it 'should set the correct person' do
      expect(@rental.person).to eql @person
    end

    it 'should set the correct book' do
      expect(@rental.book).to eql @book
    end

    context '#person' do
      it 'should have the correct rental' do
        expect(@person.rentals).to include(@rental)
      end
    end

    context '#book' do
      it 'should have the correct rental' do
        expect(@book.rentals).to include(@rental)
      end
    end
  end
end
