require './app/cosmetics/mask'

RSpec.describe Cosmetics::Mask do
  context 'when creating a mask' do
    it 'returns its attributes' do
      price = 22.5
      category = 'Skincare'

      subject = described_class.new(price: price, category: category)

      expect(subject.price).to eq(price)
      expect(subject.category).to eq(category)
    end
  end
end