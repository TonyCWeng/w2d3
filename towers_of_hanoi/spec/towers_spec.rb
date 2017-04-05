require 'rspec'
require 'towers'

describe TowersOfHanoi do
  subject(:hanoi) {hanoi = TowersOfHanoi.new}

  describe 'Towers#initialize' do
    it 'generates three towers' do
      expect(hanoi.count).to eq(3)
    end
    it 'sets tower 0 to have 3 discs' do
      expect(hanoi.towers[0]).to eq([3,2,1])
    end
  end

  describe 'Towers#move' do
    it 'moves a disc from one tower to an empty tower'
    it 'cannot move a larger disc onto a tower with a smaller disc'
    it "raises an error if moving a disc from an empty tower"
  end

  describe "Towers#play" do
    it 'plays the game until game_over'
  end

  describe 'Towers#game_over?' do
    it 'returns true if all discs are in tower 1 or 2'
    it 'returns false if game is not over'
  end

end
