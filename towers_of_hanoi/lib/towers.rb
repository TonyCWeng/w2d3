class TowersOfHanoi
  attr_reader :discs, :towers

  def initialize
    @towers = [[3,2,1],[], []]
  end

  def move(giver, receiver)
    raises "Tower #{giver} is empty!" if giver.empty?
    if @towers[receiver].last > @towers[giver].last
      raises "Cannot place a larger disc ontop of a smaller disc!"
    end

    @towers[receiver] << @towers[giver].pop
  end

  def play
    "Welcome to Towers of Hanoi"
    until game_over?
      play_turn
      "Pick a tower to take a disc from!"
      giver = gets.to_i
      "Pick a tower to receive the disc!"
      receiver = gets.to_i
      move(giver, receiver)
    end
  end

  def count
    @towers.length
  end

end
