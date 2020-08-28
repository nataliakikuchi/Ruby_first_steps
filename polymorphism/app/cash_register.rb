class CashRegister
  attr_reader :products

  def initialize
    @products = []
  end

  def register_product(product)
    @products << product
  end

  def sum_prices
    @products.map { |product| product.price }.reduce(:+)
  end
end