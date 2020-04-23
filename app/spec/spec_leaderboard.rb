# frozen_string_literal: true

require_relative '../player'
require_relative '../leaderboard'

RSpec.describe Leaderboard do
  let(:player1) { Player.new(name: 'Roboman', sign: 'X', scores: 2) }
  let(:player2) { Player.new(name: 'Isabela', sign: 'O', scores: 4) }
  let(:leaderboard) { Leaderboard.new(players: [player2, player1]) }

  describe '#top_scored_players' do
    it 'returns desending order sorted array of players' do
      expect(leaderboard.top_scored_players).to eq([player2, player1])
    end
  end

  describe '#winners_name' do
    it 'returns the name of winner' do
      expect(leaderboard.winners_name).to eq('Isabela')
    end
  end

  describe '#has_winner?' do
    context 'when there is a winner' do
      it 'returns true' do
        expect(leaderboard.has_winner?).to eq(true)
      end
    end

    context 'when there is no winner / it is a draw' do
      let(:player1) { Player.new(name: 'Roboman', sign: 'X', scores: 2) }
      let(:player2) { Player.new(name: 'Isabela', sign: 'O', scores: 2) }
      let(:leaderboard) { Leaderboard.new(players: [player2, player1]) }
      it 'returns false' do
        expect(leaderboard.has_winner?).to eq(false)
      end
    end
  end
end
