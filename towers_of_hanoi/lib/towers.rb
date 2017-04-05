class TowersOfHanoi
  attr_reader :towers

  def initialize(towers = nil)
    @towers ||= [[3,2,1],[], []]
  end

  def move(giver, receiver)
    raise "Tower #{giver} is empty!" if towers[giver].empty?
    raise "Cannot place a larger disc ontop of a smaller disc!" unless valid_move?(giver, receiver)


    @towers[receiver] << @towers[giver].pop
  end

  def valid_move?(giver, receiver)
    return false unless [giver, receiver].all? {|tower| tower.between?(0,2)}

    !@towers[giver].empty? && @towers[receiver].empty? ||
    @towers[receiver].last > @towers[giver].last
  end

  def play
    p "Welcome to Towers of Hanoi"
    turns = 0
    until won?
      render
      p "Pick a tower to take a disc from! (0-2)"
      giver = gets.to_i
      p "Pick a tower to receive the disc (0-2)!"
      receiver = gets.to_i
      if valid_move?(giver, receiver)
        move(giver, receiver)
        turns += 1
      else
        "invalid move!"
      end
    end
    p "You won in #{turns} moves!"
  end

  def won?
    @towers[0] == [] && @towers[1] == [3,2,1] || @towers[2] == [3,2,1]
  end

  def render
    p "#{towers[0]}    #{towers[1]}   #{towers[2]}"
  end

end

if __FILE__ == $PROGRAM_NAME
  towers = TowersOfHanoi.new
  towers.play
end
