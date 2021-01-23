require 'pry'
class CashRegister
    attr_accessor :total, :discount, :items, :price, :last_transaction
    attr_accessor :void_last_transaction

    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @items = []
    end


def add_item(title, price, quantity = 1)

    self.total += price * quantity
    quantity.times do
        @items << (title)
        @items
    end
    @last_transaction = price * quantity
    @items
end

def apply_discount(*)
    if self.discount == 20
    self.total -= self.total * self.discount.to_f/100
        "After the discount, the total comes to $#{self.total.to_i}."
    else
        self.discount == 0
        "There is no discount to apply."
    end
    end
def void_last_transaction
    self.total -= @last_transaction
  end
end