require_relative '../place'


RSpec.describe Place do
  let(:place) {Place.new(position: 1)}
  describe '#sign' do
  
    context 'when default' do
      it 'returns empty string' do
      
      expect(place.sign).to eq('')
     end
    end
    context 'when initialized with sign' do
      it 'returns choosen sign' do
        place1 = Place.new(sign: 'X', position: 1)
      
      expect(place1.sign).to eq('X')
     end
    end
  end

  describe '#position' do
    it 'returns the position for sign' do

      expect(place.position).to eq(1)
    end
  end
end