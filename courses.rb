require "./models/item"
require "./models/grocery_list"

grocery_list = Models::GroceryList.new
flag = true

while flag

    puts "1. Ajouter un article"
    puts "2. Supprimer un article"
    puts "3. Modifier un article"
    puts "4. Afficher la liste"
    puts "5. Rechercher un article"
    puts "6. Trier la liste"
    puts "7. Quitter"

    puts "Choisissez une option:"
    option = gets.chomp.to_i

    case option
    when 1
        puts "Entrez le nom de l'article:"
        name = gets.chomp
        puts "Entrez le prix de l'article:"   
        price = gets.chomp.to_i
        grocery_list.add_item(Models::Item.new(name, price))
    when 2
        puts "Entrez le nom de l'article à supprimer:"
        name = gets.chomp
        grocery_list.delete_item(name)
    when 3 
        puts "Entrez le nom de l'article à modifier:"
        name = gets.chomp
        puts "Entrez le nouveau prix:"
        price = gets.chomp.to_i
        grocery_list.edit_item(name)
    when 4
        grocery_list.get_list.each{|item| puts "#{item.get_name} - #{item.get_price}$"}
    when 5
        puts "Entrez le nom de l'article à rechercher:"
        name = gets.chomp
        grocery_list.get_items(name).each{|item| puts "#{item.get_name} - #{item.get_price}$"}
    when 6
        puts "1. Nom"
        puts "2. Prix"
        puts "Choisissez l'option avec laquelle vous souhaitez trier la liste:"
        sort_option = gets.chomp.to_i

        if sort_option == 1
            grocery_list.sort_by_name
            grocery_list.get_list.each{|item| puts "#{item.get_name} - #{item.get_price}$"}
        else
            grocery_list.sort_by_price
            grocery_list.get_list.each{|item| puts "#{item.get_name} - #{item.get_price}$"}
        end

    when 7 
        flag = false
    else
        puts "Choisissez l'une des options du menu ci-dessus"
    end

end



