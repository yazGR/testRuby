module Models
    class Item

        def initialize(name, price)
            @name = name
            @price = price
        end
    
        def get_name
            @name
        end
    
        def get_price
            @price
        end
    
        def set_name(name)
            @name = name
        end
    
        def set_price(price)
            @price = price
        end
    end
end
