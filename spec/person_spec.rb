require_relative '../person'

describe Person do
  before :each do
    @person1 = Person.new(age: 25, name: 'Albert')
    @person2 = Person.new(age: 15, name: 'Albert', parent_permission: false)
  end

  describe '#new' do
    it 'takes parameters and returns a Person object' do
      expect(@person1).to be_an_instance_of(Person)
    end
  end

  describe '#name' do
    it 'returns correct name' do
      expect(@person1.name).to eql 'Albert'
    end
  end

  describe '#id' do
    it 'returns id of person' do
      expect(@person1.id).to be_kind_of Numeric
    end
  end

  describe '#can_use_services?' do
    it 'returns boolean value: true' do
      expect(@person1.can_use_services?).to be true
    end
  end

  describe '#can_use_services?' do
    it 'returns boolean value: false' do
      expect(@person2.can_use_services?).to be false
    end
  end
end
