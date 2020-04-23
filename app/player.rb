# frozen_string_literal: true

# this class represent players participating the game
class Player
  attr_reader :name, :sign, :scores
  # @param name [String]
  # @param sign [String]
  # @param scores [Integer]
  def initialize(name:, sign:, scores: 0)
    @name = name
    @sign = sign
    @scores = scores
  end

  # increases players score when it is called
  def increase_scores
    @scores += 1
  end
end
