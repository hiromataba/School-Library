require_relative '../book'

describe Book do
  before :each do
    @book = Book.new 'Martin Eden', 'Jack London'
  end

  describe '#new' do
    it 'takes two parameters and returns a Book object' do
      expect(@book).to be_an_instance_of(Book)
    end
  end

  describe '#author' do
    it 'returns correct author' do
      expect(@book.author).to eql 'Jack London'
    end
  end

  describe '#title' do
    it 'returns correct title' do
      expect(@book.title).to eql 'Martin Eden'
    end
  end

  describe '#to_s' do
    it 'returns correct value from to_s method' do
      expect(@book.to_s).to eql 'Title: "Martin Eden", Author: Jack London'
    end
  end
end
