VALUES  = [
  :two,
  :three,
  :four,
  :five,
  :six,
  :seven,
  :eight,
  :nine,
  :ten,
  :jack,
  :queen,
  :king,
  :ace
]

SUITS = [
  :hearts,
  :spades,
  :diamonds,
  :clubs
]

class Card
  attr_reader :suit, :value


  def initialize(value, suit)
    @value = value
    @suit = suit
  end

  def rank
    VALUES.index(self.value)
  end

end
