require_relative '../student'
require_relative '../classroom'

describe Student do
  before :each do
    javascript = Classroom.new('JavaScript')
    @student = Student.new(age: 33, classroom: javascript, name: 'Julia')
  end

  describe '#name' do
    it 'returns correct name' do
      expect(@student.name).to eql 'Julia'
    end
  end

  describe '#id' do
    it 'returns id of student' do
      expect(@student.id).to be_kind_of Numeric
    end
  end

  describe '#classroom' do
    it 'returns classroom of student' do
      expect(@student.classroom.label).to eql 'JavaScript'
    end
  end

  describe '#to_s' do
    it 'returns student info' do
      expect(@student.to_s).to be_kind_of String
    end
  end
end
