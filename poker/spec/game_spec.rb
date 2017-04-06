require 'rspec'
require 'game'

describe Game do
  describe 'Game#initialize' do
    it 'should initialize a deck'
    it 'should initialize with 2 players'
    it 'should initialize with a default pool of 0'
    it 'should set current player to player1'
  end

  describe 'Game#deal' do
    it 'should deal 5 cards to every player'
  end

  describe 'Game#switch_player' do
    it 'should switch current_player'
  end

  describe 'Game#betting_round' do
    it 'should allow every player to see or raise bet'
    it 'should update betting pool accordingly'
  end

  describe 'Game#draw_round' do
    it 'should allow every player to discard and draw'
  end

  describe 'Game#evaluate' do
    it 'should determine who won the round'
  end

  describe 'Game#winnings' do
    it 'should add betting pool to winner\'s pot'
    it 'should reset the betting pool to 0'
  end
end
