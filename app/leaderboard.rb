class Leaderboard
  attr_reader :players
  def initialize(players:)
    @players = players
  end

  def top_scored_players
    players.sort_by {|player| player.scores}.reverse
  end

  def winners_name
    top_scored_players.first.name
  end

  def has_winner?
    scores = players.map {|player| player.scores}
    scores.uniq.length != 1
  end
end
  