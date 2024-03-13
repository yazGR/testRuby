module Models
    class GroceryList

        def initialize()
            @list = []
        end
    
        def get_list
            @list
        end

        def get_items(name)
            @list.select{|item| item.get_name.include?(name)}
        end
    
        def add_item(item)
            @list.push(item)
        end

        def edit_item(name)
            @list.map do |item| 
                if item.get_name == name
                    item.set_price(price)
                item               
                end
            end
        end   
    
        def delete_item(name)
            @list.map {|item| item.get_name == name}
        end

        def sort_by_name
            @list.sort! { |a,b| a.get_name <=> b.get_name }
        end

        def sort_by_price
            @list.sort! { |a,b| a.get_price <=> b.get_price }
        end

    end
end