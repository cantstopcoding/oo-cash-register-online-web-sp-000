require 'pry'

class CashRegister

  attr_accessor :total, :discount, :items, :last_transaction
  
  # initialize needs an arg
  def initialize(discount = 10)  
    @total = 0
    @discount = discount
    @items = []
  end 
  
  def add_item(title, price, quant = 1)
    self.total += price *= quant 
    quant.times do 
      items << title
    end 
    self.last_transaction = price * quant
  end 
  
  def apply_discount
    if discount != 0
      self.total = (total * ((100.0 - discount.to_f)/100)).to_i
      "After the discount, the total comes to $#{self.total}."
    else
      "There is no discount to apply."
    end
  end
  
  def void_last_transaction
    self.total = self.total - self.last_transaction
  end 
end
