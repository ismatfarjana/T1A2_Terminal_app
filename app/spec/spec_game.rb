require_relative '../game'

RSpec.describe Game do
  let(:game) { Game.new(rounds: 3) }

  describe '#rounds' do
    it 'returns rounds number' do
      
      expect(game.rounds).to eq(3)
    end
  end

  describe '#round_left?' do
    context 'when more rounds left' do
      it 'returns true' do
        expect(game.round_left?).to eq(true)
      end
    end

    context 'when no rounds left' do
      it 'returns false' do
        game1 = Game.new(rounds: 0)

        expect(game1.round_left?).to eq(false)
      end
    end
  end

  describe '#reduce_round' do
    it 'reduce round number and returns updated round number when round is used on game' do
      
      game.reduce_round
      expect(game.rounds).to eq(2)
    end
  end
end

