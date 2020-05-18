class CashRegister
  attr_accessor :discount, :total

  def initialize(discount =0)
    @total = 0
    @discount = discount
  end

  def add_item(title, price, quantity=1)
    @total += (price * quantity)
  end

  def apply_discount(discount)
    percentage = @discount / 100
    discount_value = @discount * percentage
    @discount = @discount - discount_value
  end

end
