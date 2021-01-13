require 'pry'
# class CashRegister
#     attr_accessor :total, :discount, :item, :price, :last_transaction
#     def initialize(discount = nil)
#         # @bill = bill
#         @total = 0
#         @discount = discount
#         @item = []
#     end
#     def add_item(title, price, quantity=1)
#         # last_transaction = self.total += price * quantity
#         last_transaction = price * quantity # same as saying self.total = self.total + price *num
#     #   last_transaction += self.total
#         # self.total += price * quantity
        
#         self.total += last_transaction.to_i
#         # binding.pry 
#             quantity.times do 
#             item << title
#             # total << price
#             # binding.pry 
#         end
# end
#     # def add_item(title, price, quantity=1)
#     #     last_transaction = self.total
#     #    self.total += self.total + price * quantity
#     #     quantity.times do 
#     #         item << title 
#     #     end
#     # end
#     def apply_discount
#         # if discount = 0
#         #     return "There is no discount to apply."
#     #    if discount = 0 
#     #     return "There is no discount to apply."
#     #    else discount > 0 
#     if discount != nil 
#         self.total = (total * (100 -discount.to_f)/100).to_i #discount .to_f and .to_i after
#         return "After the discount, the total comes to $#{total}." #why does it work with seld. and w/o
#     else 
#         return "There is no discount to apply."
#        end
#     end
#     def items
#         @item
#     end
#     def void_last_transaction
   
#        @total -= last_transaction
#     #    binding.pry 
#     #    @total - last_transaction
       
#     # @total = last_transaction - item
#     end
# end

class CashRegister
    attr_accessor :total, :discount, :item, :price, :last_transaction
    def initialize(discount = nil)
        @total = 0
        @discount = discount
        @item = []
    end
    
    def add_item(title, price, quantity=1)
        self.last_transaction = price * quantity
        self.total += self.last_transaction
        # binding.pry
        quantity.times do 
            item << title
        end
    end
    
    def apply_discount
    if discount != nil 
        self.total = (total * (100 -discount.to_f)/100).to_i 
         "After the discount, the total comes to $#{total}." 
    else 
         "There is no discount to apply."
        end
    end
    
    def items
        @item
    end
    
    def void_last_transaction
        
        @total -= last_transaction
        # binding.pry
    end
end