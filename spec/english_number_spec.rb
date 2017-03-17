require './english_number'

describe EnglishNumber do
  subject(:english_number){ EnglishNumber.new }

  context '< 20' do
    it 'returns the correct number' do
      expect( subject.in_english(0) ).to eq('zero')
      expect( subject.in_english(5) ).to eq('five')
      expect( subject.in_english(15) ).to eq('fifteen')
    end
  end

  context '20 - 99' do
    it 'returns the correct number with hyphen' do
      expect( subject.in_english(22) ).to eq('twenty-two')
      expect( subject.in_english(50) ).to eq('fifty')
      expect( subject.in_english(99) ).to eq('ninety-nine')
    end
  end

  context 'decimal number' do
    it 'rounds up' do
      expect( subject.in_english(24.5) ).to eq('twenty-five')
    end
  end

  context '>= 100' do
    it 'returns nil' do
      expect( subject.in_english(100) ).to be_nil
      expect( subject.in_english(999999) ).to be_nil
    end
  end

  context 'negative number' do
    it 'prepends "negative" ' do
      expect( subject.in_english(-22) ).to eq('negative twenty-two')
    end
  end

end
