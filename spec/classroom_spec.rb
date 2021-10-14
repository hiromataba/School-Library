require_relative '../classroom'

describe Classroom do
  before :each do
    @classrrom = Classroom.new(label: 'Full-stack Devs')
  end

  describe '#new' do
    it 'takes parameter and returns a classroom' do
      expect(@classroom).to be_an_instance_of(Classroom)
    end
  end
end
