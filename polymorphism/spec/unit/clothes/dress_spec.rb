require './app/clothes/dress'

RSpec.describe Clothes::Dress do
  context 'when creating a dress' do
    it 'returns its attributes' do
      size = 'small'
      price = 20.0

      subject = described_class.new(size: size, price: price)

      expect(subject.size).to eq(size)
      expect(subject.price).to eq(price)
    end
  end
end