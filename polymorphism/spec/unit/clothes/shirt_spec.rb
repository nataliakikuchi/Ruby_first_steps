require './app/clothes/shirt'

RSpec.describe Clothes::Shirt do
  context 'when creating a shirt' do
    it 'returns its attributes' do
      size = 'large'
      price = 10.5

      subject = described_class.new(size: size, price: price)

      expect(subject.size).to eq(size)
      expect(subject.price).to eq(price)
    end
  end
end