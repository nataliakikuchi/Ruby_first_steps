module Clothes
  class Shirt
    attr_reader :size, :price

    def initialize(size:, price:)
      @size = size
      @price = price
    end
  end
end