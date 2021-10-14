require_relative '../person'

describe Person do
  before :each do
    @person1 = Person.new(age: 25, name: 'Albert')
    @person2 = Person.new(age: 15, name: 'Albert', parent_permission: false)
  end

  describe '#new' do
    it "takes parameters and returns a Person object" do
      expect(@person1).to be_an_instance_of(Person)
    end
  end

  describe '#name' do
    it "returns correct name" do
      expect(@person1.name).to eql "Albert"
    end
  end

  describe '#id' do
    it "returns id of person" do
      expect(@person1.id).to be_kind_of Numeric
    end
  end

end