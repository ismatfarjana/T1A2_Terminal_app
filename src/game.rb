# frozen_string_literal: true

# this class keeps count of the rounds left in the game
# @returns [Integer]
class Game
  attr_reader :rounds
  # @params rounds [Integer]
  def initialize(rounds:)
    @rounds = rounds
  end

  # returns [Boolean]
  def round_left?
    rounds != 0
  end

  # reduce round when it is called
  def reduce_round
    @rounds = (@rounds - 1)
  end
end
