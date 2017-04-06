require 'hand'

class Player
  attr_accessor :hand, :pot
  def initialize(hand = [], pot = 100)
    @hand = hand
    @pot = pot
  end

  def discard(card)
    @hand - card
    @hand << deck.pop
  end


  def fold
    #empties hand. If hand.size < 5, doesn't play
    @hand = []
    participants - self
  end

  def see(bet)
    raise "Not enough $ to see" if @pot < bet
    @pot - bet
  end

  def raise(see_value, bet)
    raise "Not enough $ to raise" if @pot < (see_value + bet)
    raise "Raise is less than see" if see_value > bet
    @pot - see_value - bet
  end


end
