require 'rspec'
require 'towers'
describe TowersOfHanoi do
  subject(:hanoi) {hanoi = TowersOfHanoi.new}

  describe 'Towers#initialize' do
    it 'generates three towers' do
      expect(hanoi.towers).to eq([[3,2,1],[], []])
    end
    it 'sets tower 0 to have 3 discs' do
      expect(hanoi.towers[0]).to eq([3,2,1])
    end
  end

  describe 'Towers#move' do
    it 'moves a disc from one tower to an empty tower' do
      expect(hanoi.move(0,2)).to eq([1])
      expect(hanoi.towers[0]).to eq([3,2])
    end
    # it 'raises an error if moving a larger disc onto a smaller disc' do
    #   other = TowersOfHanoi.new([[], [3], [2]])
    #
    #   expect{ other.move(1,2) }.to raise_error("Cannot place a larger disc ontop of a smaller disc!")
    # end
    it "raises an error if moving a disc from an empty tower" do
      expect{ hanoi.move(2,0) }.to raise_error("Tower 2 is empty!")
    end
  end

  describe 'Towers#game_over?' do
    it 'returns false if game is not over' do
      expect(hanoi).to_not be_won
    end
    it 'returns true if all discs are in tower 1 or 2' do
      hanoi.towers[0] = []
      hanoi.towers[1] = [3,2,1]
      expect(hanoi).to be_won
    end
  end


end
