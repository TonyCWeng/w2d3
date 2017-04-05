require 'card'

class Deck
  attr_reader :cards
  def initialize
    @cards = []
    add_cards
  end

  def add_cards
    VALUES.each do |value|
      SUITS.each do |suit|
        @cards << Card.new(value, suit)
      end
    end
    shuffle
  end

  def shuffle
    @cards.shuffle!
  end

  def count
    @cards.length
  end
end
