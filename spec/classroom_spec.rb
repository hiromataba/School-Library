require_relative '../classroom'

describe Classroom do
  before :each do
    @classrrom = Classroom.new(label: 'Full-stack Devs')
  end

  describe '#label' do
    it 'returns correct label' do
      expect(@classroom.label).to eql 'Full-stack Devs'
    end
  end
end
