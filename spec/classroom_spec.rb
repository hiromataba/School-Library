require_relative '../classroom'
require_relative '../student'

describe Classroom do
  before :each do
    @classroom = Classroom.new('JavaScript')
  end

  describe '#classroom' do
    it "returns classroom label" do
      expect(@classroom.label).to eql "JavaScript"
    end
  end

  describe '#add_student' do
    it "adds new student" do
      student = Student.new(age: 22, classroom: @classroom, name: 'Alex')
      @classroom.add_student student
      expect(@classroom.students).to include(student)
    end
  end

  describe '#classroom' do
    it "check classroom of newly added student" do
      student = Student.new(age: 22, classroom: @classroom, name: 'Alex')
      @classroom.add_student student
      expect(student.classroom).to eql(@classroom)
    end
  end
end