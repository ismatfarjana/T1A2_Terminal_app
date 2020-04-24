# frozen_string_literal: true

# this class will hold all the places with sign
require_relative 'place'
class Board
  attr_reader :places
  WINNING_PATTERNS = [
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9],
    [1, 4, 7],
    [2, 5, 8],
    [3, 6, 9],
    [1, 5, 9],
    [3, 5, 7]
  ].freeze
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
      Place.new(position: 9)

    ]
  end

  # it prints a board with sign on the terminal
  def display
    system('clear')
    border
    puts row_with_places(place(1), place(2), place(3))
    puts line
    puts row_with_places(place(4), place(5), place(6))
    puts line
    puts row_with_places(place(7), place(8), place(9))
    border
  end

  # it places players sign on the board
  # @param sign [String]
  # @param position [Integer]
  def place_sign(sign:, position:)
    # app will rescue this error
    # raise ArgumentError unless places[position - 1] == ''
    places[position - 1] = Place.new(sign: sign, position: position)
  end

  # @param sign [String]
  # @return [Boolean]
  def winning_pattern?(sign:)
    WINNING_PATTERNS.map do |winning_pattern|
      winning_pattern - sign_holding_places(sign: sign)
    end.include?([])
  end

  # @return [Array<Numeric>]
  def available_places
    sign_holding_places(sign: '')
  end

  # when board has empty place,
  # when board doesn't have a winner
  def continue_round?(player:, computer:)
    !available_places.empty? && !winning_pattern?(sign: player.sign) && !winning_pattern?(sign: computer.sign)
  end

  private

  def sign_holding_places(sign:)
    places.select { |place| place.sign == sign }.map(&:position)
  end

  def place(position)
    places[position - 1].sign
  end

  def show_place(position)
    " #{position} "
  end

  def row_with_places(first, second, third)
    "  #{show_place(first)}" + ' | ' + show_place(second) + ' | ' + show_place(third)
  end

  def border
    puts ''
    puts '🔥' * 24
    puts ''
  end

  def line
    ' ' + '-' * 15
  end
end
