require './app/cash_register'
require './app/cosmetics/lipstick'
require './app/clothes/dress'

RSpec.describe CashRegister do
  context 'when calculating total value of the products' do
    it 'sums their prices' do
      cash_register = described_class.new
      cosmetic_product = Cosmetics::Lipstick.new(price: 8.0, category: 'Makeup')
      clothe_product = Clothes::Dress.new(size: 'small', price: 22.90)
      cash_register.register_product(cosmetic_product)
      cash_register.register_product(clothe_product)

      result = cash_register.sum_prices

      expect(result).to eq(30.90)
    end
  end
end

