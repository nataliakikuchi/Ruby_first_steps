require './app/cosmetics/lipstick'

RSpec.describe Cosmetics::Lipstick do
  context 'when creating a lipstick' do
    it 'returns its attributes' do
      price = 7.89
      category = 'Makeup'

      subject = described_class.new(price: price, category: category)

      expect(subject.price).to eq(price)
      expect(subject.category).to eq(category)
    end
  end
end