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
    if !@discount.nil?
    @total -= @total * (@discount / 100.0)
    "After the discount, the total comes to $#{@total.to_i}."

  else
    "There is no discount to apply."
  end
    # @total -= @discount


  end
end
