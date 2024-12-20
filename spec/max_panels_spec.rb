require './lib/max_panels'

describe 'Max Panels' do
  describe '#calculate_fit' do
    it 'returns the maximum number of panels considering both panel orientations' do
      expect(calculate_fit(3, 5, 1, 2)).to eq(7)
      expect(calculate_fit(3, 5, 2, 1)).to eq(5)
    end

    it 'returns 0 when the panel cannot fit within the roof dimensions' do
      expect(calculate_fit(5, 1, 3, 3)).to eq(0)
    end
  end

  describe '#get_max_panels' do
    it 'returns the maximum number of panels' do
      expect(get_max_panels(1, 2, 2, 4)).to eq(4)
      expect(get_max_panels(1, 2, 3, 5)).to eq(7)
    end

    it 'returns 0 when the panel cannot fit within the roof dimensions' do
      expect(get_max_panels(2, 2, 1, 10)).to eq(0)
    end
  end
end
