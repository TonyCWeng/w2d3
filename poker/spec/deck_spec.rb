require 'deck'
require 'rspec'

describe Deck do
  let(:new_deck) { Deck.new }
  describe 'Deck#initialize' do
    it 'creates a 52-card deck' do
      expect(new_deck.count).to eq(52)
    end
    it 'starts off unshuffled' do
      expect(new_deck.cards[0].value).to_not eq(:two)
    end
  end

  describe 'Deck#shuffle' do
    it 'shuffles the deck' do
      current_card = new_deck.cards[0].value
      reshuffled =new_deck.shuffle
      expect(current_card).to_not eq(reshuffled[0].value)
    end
  end

end
