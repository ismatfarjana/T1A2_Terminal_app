require_relative 'place'
class Board
  attr_reader :places
  WINNING_PATTERN = [
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9],
    [1, 4, 7],
    [2, 5, 8],
    [3, 6, 9],
    [1, 5, 9],
    [3, 5, 7],
  ]
  def initialize
    @places = [
      Place.new(position: 1),
      Place.new(position: 2),
      Place.new(position: 3),
      Place.new(position: 4),
      Place.new(position: 5),
      Place.new(position: 6),
      Place.new(position: 7),
      Place.new(position: 8),
      Place.new(position: 9),

    ]
  end
end