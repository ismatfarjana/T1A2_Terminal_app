class Game
  attr_reader :rounds
  def initialize(rounds:)
    @rounds = rounds
  end

  def round_left?
    rounds != 0 
  end

  def reduce_round
    @rounds = (@rounds - 1)
  end
end