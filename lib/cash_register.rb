require 'pry'

class CashRegister

  attr_accessor :total, :discount, :items, :last_transaction
  
  # initialize needs an arg
  def initialize(discount = 10)  
    @total = 0.0 
    @discount = discount
    @items = []
  end 
  
  def add_item(title, price, quant = 1)
    added_item = @total += price *= quant 
    items << title
  end 
  
  def apply_discount
    if discount != 0  
      total_after_discount = @total -= @total * @discount.to_f / 100 
      "After the discount, the total comes to $#{total_after_discount.to_i}."
    else 
      "There is no discount to apply."
    end 
    
  end
end
