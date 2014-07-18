class UI

  def ask_display_recipes(recipes)
    recipes.each_with_index do |recipe, index|
      puts "#{index + 1} - #{recipe}"
    end
  end

  def ask_add_recipe
    puts "Please, add a new recipe:"
    recipe = gets.chomp
    return recipe
  end

  def delete_a_recipe
    puts "Which recipe id do you want to delete ?"
    index = gets.chomp.to_i
    return index
  end
end

array_test = ['Fish & Chips', 'Paela', 'Hamburger']
ui = UI.new
ui.display_recipes(array_test)

