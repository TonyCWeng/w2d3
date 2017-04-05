require 'rspec'
require 'card'

describe Card do
  let(:ace) {Card.new(:ace, :hearts)}
  describe 'Card#initialize' do
    it 'assigns a suit' do
      expect(ace.suit).to eq(:hearts)
    end
    it 'assigns a value' do
      expect(ace.value).to eq(:ace)
    end
  end

  describe 'Card#rank' do
    it 'determines card hierarchy' do
      #ace = Card.new(:hearts, :ace)
      expect(ace.rank).to eq(12)
    end
  end
# end
end
