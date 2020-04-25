# frozen_string_literal: true
# this class maintain state of each place on the board
class Place
  attr_reader :sign, :position
  # @param sign [String]
  # @param position [Integer]
  def initialize(sign: ' ', position:)
    @sign = sign
    @position = position
  end
end