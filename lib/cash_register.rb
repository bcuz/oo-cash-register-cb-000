class CashRegister

  attr_accessor :total
  attr_reader :discount

  def initialize(discount = nil)
    @total = 0
    @discount = discount

  end
end
