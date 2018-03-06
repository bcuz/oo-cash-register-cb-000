class CashRegister

  attr_accessor :total
  attr_reader :discount

  def initialize(discount = nil)
    @total = 0
    @discount = discount

  end

  def add_item(title, price, quantity = nil)

    if quantity.nil?
      @total += price
    else
      @total += (price*quantity)
    end
  end

  def apply_discount
    # whut is discount
    @total * (1 - (@discount / 100.0) )
    @total - @discount

  end
end
