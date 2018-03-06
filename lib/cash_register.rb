class CashRegister

  attr_accessor :total
  attr_reader :discount, :items

  # not a class variable
  # @@items = []

  def initialize(discount = nil)
    @items = []
    @total = 0
    @discount = discount

  end

  def add_item(title, price, quantity = nil)

    if quantity.nil?
      @total += price
      @items << title
    else
      @total += (price*quantity)
      quantity.times {@items << title}
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
  end

  def void_last_transaction

  end
end
