require_relative '../corrector'

describe Corrector do
  before :each do
    @corrector = Corrector.new
  end

  describe '#correct_name' do
    it 'returns corrected name uppercased first letter' do
      expect(@corrector.correct_name('abrAHAM')).to eql 'Abraham'
    end
  end
end
