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
    total_points = 0
    
  end

  def flush?
    all_suits
    @hand.each do |card|
      all_suits << card.suit
    end
    all_suits.uniq.length == 5
  end

  def straight?
    all_values
    @hand.each do |card|
      all_values << card.value
    end
    all_values.sort.each_cons(2).all? {|a,b| b = a + 1}
  end

  def same_value?
    all_values
    @hand.each do |card|
      all_values << card.value
    end

  end
end
