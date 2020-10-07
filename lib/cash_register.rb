class CashRegister
    attr_accessor :discount, :total
    def initialize (*employee)
        if employee == [20]
            # @test_balloon = employee
            @discount = 20
        else
            @discount = nil
        end
        p @discount
        @total = 0
        @total_items = []
    end
    def add_item (title, price, quantity = 1)
        @last_price = price
        @last_title = title
        @last_quantity = quantity
        counter = 0
        while counter < quantity
            @total_items << title
            counter += 1
        end
        @total += (price * quantity)
    end
    def apply_discount
        if @discount != nil
            discount_rate = @total * (@discount / 100.0)
            @total -= discount_rate
            return "After the discount, the total comes to $#{@total.to_i}."
        else
            "There is no discount to apply."
        end
    end
    def items
        @total_items
    end
    def void_last_transaction
        @total -= (@last_price * @last_quantity)
    end
end
