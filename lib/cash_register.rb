class CashRegister
  attr_accessor :total, :discount, :items

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, amount, quantity=1)
    self.total += amount * quantity
    quantity.times do
      items << title
    end
  end

  def apply_discount
    if discount != 0
      self.total = (total * ((100.00 - discount)/100)).to_i
      "After the discount, the total comes to $#{@total}."
    end
  end

end
