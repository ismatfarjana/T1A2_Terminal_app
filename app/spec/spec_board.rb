# frozen_string_literal: true

require_relative '../board'
require_relative '../player'

RSpec.describe Board do
  let(:board) { Board.new }
  let(:isabela) { Player.new(name: 'Isabela', sign: 'X') }
  let(:computer) { Player.new(name: 'Computer', sign: 'O') }

  describe '#places' do
    it 'returns all the places in the board' do
      expect(board.places.length).to eq(9)
    end
  end

  describe '#place_sign' do
    it 'places sign on the board' do
      board.place_sign(sign: isabela.sign, position: 4)
      expect(board.places[3].sign).to eq(isabela.sign)
    end
  end

  describe '#winning_pattern?' do
    context 'when player has no winning pattern' do
      it 'returns false' do
        board.place_sign(sign: isabela.sign, position: 1)
        board.place_sign(sign: isabela.sign, position: 8)
        board.place_sign(sign: isabela.sign, position: 4)

        expect(board.winning_pattern?(sign: isabela.sign)).to eq(false)
      end
    end

    context 'when player has winning pattern' do
      it 'returns true' do
        board.place_sign(sign: isabela.sign, position: 1)
        board.place_sign(sign: isabela.sign, position: 3)
        board.place_sign(sign: isabela.sign, position: 4)
        board.place_sign(sign: isabela.sign, position: 2)

        expect(board.winning_pattern?(sign: isabela.sign)).to eq(true)
      end
    end
  end
end
