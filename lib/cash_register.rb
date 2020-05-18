class CashRegister
  attr_accessor :discount, :total, :items, :previous

  def initialize(discount =0)
    @total = 100
    @discount = discount
    @items = Array.new
  end

  def add_item(title, price, quantity=1)
    @total += (price * quantity)
    @previous = [title, price, quantity]
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
    puts @previous
    @previous[2].times {
      @items.pop
      if @items.length > 0
        @total -= @previous[1].to_f
      else
        @total = 0.0
      end
    }
    # if @items.length >= 1
    #   @total -= @previous[1].to_f
    # else
    #   @total = 0.0
    # end
  end



end

a = CashRegister.new(20)
puts a.total
a.add_item("a", 100, 1)
a.add_item("b", 100, 3)
# puts a.total
a.void_last_transaction
puts "_"
puts a.items
puts a.total
# puts a.discount
# a.apply_discount()
# puts a.total
