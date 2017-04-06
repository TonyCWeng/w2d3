require 'rspec'
require 'player'

describe Player do
  describe 'Player#initialize' do
    it 'assigns a default pot value'
    it 'has a hand'
  end

  describe 'Player#discard' do
    it 'allows player to replace 1-3 cards in their hand'
    it 'adds cards  to hand equal in number to discarded cards'
  end

  describe 'Player#fold' do
    it 'should empty player\'s hand'
  end

  describe 'Player#see' do
    it 'should reduce player\'s pot by see value'
  end

  describe 'Player#raise' do
    it 'should reduce player\'s pot by see AND raise values'
  end
end
