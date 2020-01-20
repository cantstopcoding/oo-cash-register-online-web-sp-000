require 'pry'

class CashRegister

  attr_accessor :total, :discount, :items, :last_transaction
  
  # initialize needs an arg
  def initialize(discount = 0)  
    @total = 0
    @discount = discount
    @items = []
  end 
  
  def add_item(title, amount, quantity=1)
    self.total += amount * quantity
    quantity.times do
      items << title
    end
    self.last_transaction = amount * quantity
  end
  
  def apply_discount
    if discount != 0  
      total_after_discount = @total -= @total * @discount.to_f / 100 
      "After the discount, the total comes to $#{total_after_discount.to_i}."
    else 
      "There is no discount to apply."
    end 
  end
  
  def void_last_transaction
    self.total = self.total - self.last_transaction
  end 
end
