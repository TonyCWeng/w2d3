require_relative 'player'
require_relative 'hand'

class Game
  attr_reader :deck, :pool, :current_player
  def initialize(player1, player2)
    @deck = Deck.new
    @player1 = player1
    @player2 = player2
    @pool = 0
    @current_player = player1
    @players = []
  end

  def add_player(new_player)
    @players << new_player
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
    @current_player == Player1
  end

  def betting_round
    p "Fold, See, or Raise bet?"
    decision = gets.to_i
  end

  def draw_round
    p "Discard a card? (0-3)"
    decision = gets.to_i
    decison == 0 ? next : decision.times {@current_player.discard}
  end

  def play_round
    deal
    betting_round
    draw_round
    betting_round
    round_winner = evaluate_hands
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
