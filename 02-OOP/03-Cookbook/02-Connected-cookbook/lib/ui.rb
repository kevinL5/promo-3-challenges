class UI

  def ask_display_recipes(recipes)
    recipes.each_with_index do |recipe, index|
      puts "#{index} - #{recipe[0]}, #{recipe[1]} / 5, #{recipe[2]}"
    end
  end

  def ask_add_recipe
    puts "Please, add a new recipe:"
    name = gets.chomp
    puts "Give a mark to your recipe:"
    mark = gets.chomp
    puts "Add a description of your recipe:"
    description = gets.chomp

    Recipe.new(name, mark, description)
  end

  def delete_a_recipe
    puts "Which recipe id do you want to delete ?"
    index = gets.chomp.to_i
    return index
  end

  def ask_scrapping_marmiton
    puts "Import recipes for which ingredient ?"
    ingredient = gets.chomp
    return ingredient
  end

end