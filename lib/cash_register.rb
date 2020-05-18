class CashRegister
  attr_accessor :discount, :total, :items, :previous

  def initialize(discount =0)
    @total = 0
    @discount = discount
    @items = Array.new
  end

  def add_item(title, price, quantity=1)
    @total += (price * quantity)
    @previous = price
    quantity.times do
      @items << title
    end
  end

  def apply_discount()
    if @discount > 0
      @total -= (@total * (@discount.to_f / 100))
      "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction()
    @total -= @previous
    if @items.count < 1
      @total = 0 
    end
  end



end

# a = CashRegister.new(20)
# a.add_item("a", 100)
# puts a.total
# puts a.discount
# a.apply_discount()
# puts a.total
