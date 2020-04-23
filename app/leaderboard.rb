# frozen_string_literal: true

# this class maintain players scores
class Leaderboard
  attr_reader :players
  # @params players [Array<Player>]
  def initialize(players:)
    @players = players
  end

  # returns [Array<Player>]
  def top_scored_players
    players.sort_by(&:scores).reverse
  end

  # returns [String]
  def winners_name
    top_scored_players.first.name
  end

  # returns [Boolean]
  def has_winner?
    scores = players.map(&:scores)
    scores.uniq.length != 1
  end
end
