require_relative 'player'
require_relative 'hand'

class Game
  attr_reader :deck, :pool, :current_player, :participants
  def initialize(player1, player2)
    @deck = Deck.new
    @burned_cards = []
    @player1 = player1
    @player2 = player2
    @pool = 0
    @current_player = player1
    @participants = []
  end

  def roster
    @participants << @player1
    @participants << @player2
  end

  def update_pool(current_bet)
    @pool += current_bet
  end

  def deal
    @players.each do |player|
      player.hand << @deck.pop(5)
    end
  end

  def switch_player
    @players.rotate(1)
    @current_player = @players[0]
  end

  def betting_round
    p "Fold, See, or Raise bet?"
    decision = gets.to_i
    @current_player.decision
  end

  def draw_round
    p "Discard a card? (0-3)"
    decision = gets.to_i
    decision.times {@current_player.discard}
  end

  def play_round
    deal

    @participants.each do
      betting_round
    end

    @participants.each do
      draw_round
    end

    @participants.each do
      betting_round
    end
    
    round_winner = evaluate_hands(@participants)
    winnings(round_winner, @pool)
  end

  def evaluate_hands
    round_winner = nil
    largest_hand = 0
    @players.each do |player|
      if player.hand.hand_rank > largest_hand
        largest_hand = player.hand.hand_rank
        round_winner = player
      end
    end
    round_winner

  end

  def winnings(round_winner,pool)
    self.pot += pool
    @pool = 0
  end

end
