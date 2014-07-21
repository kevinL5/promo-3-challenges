require_relative 'cookbook'
require_relative 'ui'

class Controller

  def initialize(cookbook)
    @cookbook = cookbook
    @ui = UI.new
  end

  def list
    recipes = @cookbook.list_of_all_recipes
    @ui.ask_display_recipes(recipes)
  end

  def create
    recipe = @ui.ask_add_recipe
    @cookbook.add_recipe(recipe)
  end

  def destroy
    index = @ui.delete_a_recipe
    @cookbook.remove_recipe(index)
  end

  def marmiton
    ingredient = @ui.ask_scrapping_marmiton
    @cookbook.add_recipes_marmiton(ingredient)
  end

end

