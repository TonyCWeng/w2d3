require 'card'

class Deck
  attr_reader :deck
  def initialize
    @deck = []
    add_deck
  end

  def add_deck
    VALUES.each do |value|
      SUITS.each do |suit|
        @deck << Card.new(value, suit)
      end
    end
    shuffle
  end

  def shuffle
    @deck.shuffle!
  end

  def count
    @deck.length
  end
end
