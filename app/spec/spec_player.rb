require_relative '../player'

RSpec.describe Player do
  let(:player) { Player.new(name: 'Isabela', sign: 'X') } 

  describe '#name' do
    it 'returns players name' do

      expect(player.name).to eq('Isabela')
    end
  end

  describe '#sign' do
    it 'returns players sign' do

      expect(player.sign).to eq('X')
    end
  end

  describe '#scores' do
    context 'when no scores are provided' do
      it 'returns scores 0' do
        expect(player.scores).to eq(0)
      end
    end

    context 'when scores are provided' do
      it 'returns scores' do
        computer = Player.new(name: 'Computer', sign: 'O', scores: 3)

        expect(computer.scores).to eq(3)
      end
    end
  end

end

