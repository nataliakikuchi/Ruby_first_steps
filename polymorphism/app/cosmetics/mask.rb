module Cosmetics
  class Mask
    attr_reader :price, :category

    def initialize(price:, category:)
      @price = price
      @category = category
    end
  end
end