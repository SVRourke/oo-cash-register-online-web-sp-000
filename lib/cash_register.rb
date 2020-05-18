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
    # discount_value =
    @total -= (@total * (@discount.to_f / 100))
    "After the discount, the total comes to $#{@total.to_i}."
  end

end

# a = CashRegister.new(20)
# a.add_item("a", 100)
# puts a.total
# puts a.discount
# a.apply_discount()
# puts a.total
