require './app/cash_register'

RSpec.describe CashRegister do
  context 'when receiving a product' do
    it 'adds it to the list' do
      cash_register = described_class.new
      cosmetic_product = double('Gloss', price: 8.0, category: 'Makeup')
      clothe_product = double('Skirt', size: 'medium', price: 22.90)
      expected_products = [cosmetic_product, clothe_product]

      cash_register.register_product(cosmetic_product)
      cash_register.register_product(clothe_product)

      expect(cash_register.products).to eq(expected_products)
    end
  end

  context 'when calculating total value of the products' do
    it 'sums their prices' do
      cash_register = described_class.new
      cosmetic_product = double('Gloss', price: 8.0, category: 'Makeup')
      clothe_product = double('Skirt', size: 'medium', price: 22.90)
      cash_register.register_product(cosmetic_product)
      cash_register.register_product(clothe_product)

      result = cash_register.sum_prices

      expect(result).to eq(30.90)
    end
  end
end

