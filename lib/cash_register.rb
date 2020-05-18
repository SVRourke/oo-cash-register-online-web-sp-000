class CashRegister
  attr_accessor :discount, :total

  def initialize(discount =0)
    @total = 0
    @discount = discount
  end

  def add_item(title, price, quantity=1)
    @total += (price * quantity)
  end

  def apply_discount()
    percentage = @discount.to_f / 100
    # puts percentage
    discount_value = @total * percentage
    # puts discount_value
    @total -= discount_value
    # puts total
  end

end

# a = CashRegister.new(20)
# a.add_item("a", 100)
# puts a.total
# puts a.discount
# a.apply_discount()
# puts a.total
