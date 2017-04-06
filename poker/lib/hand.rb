require 'deck'
HAND_VALUES = {
  five_of_a_kind: 1_000_000_000,
  straight_flush: 100_000_000,
  four_of_a_kind: 10_000_000,
  full_house: 1_000_000,
  flush: 100_000,
  straight: 10_000,
  three_of_a_kind: 1000,
  two_pair: 100,
  one_pair: 10,
  high_card: 1
}

class Hand

  def initialize
    @hand = []
  end

  def hand_rank
    @hand.values.each do |value|

    end
  end



end
