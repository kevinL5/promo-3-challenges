require 'csv'
require 'awesome_print'
require 'rubygems'
require 'nokogiri'
require 'open-uri'
require_relative 'recipe'

class Cookbook
  attr_reader :recipes

  def initialize(file)
    # TODO: Retrieve the data from your CSV file and store it in an instance variable
    @file = file
    @recipes = []
    retrieve
  end

  # TODO: Implement the methods to retrieve all recipes, create, or destroy recipes
  # TODO: Implement a save method that will write the data into the CSV
  # And don't forget to use this save method when you have to modify something in your recipes array.

  def retrieve
    CSV.foreach(@file) do |row|
      @recipes << [row[0], row[1], row[3]]
    end
  end

  def list_of_all_recipes
    @recipes
  end

  def add_recipe(recipe)
    @recipes << [recipe.name, recipe.mark, recipe.description]

    save
  end

  def add_recipes_marmiton(research_marmiton)
    @research_marmiton = research_marmiton
    @PAGE_URL = "http://www.marmiton.org/recettes/recherche.aspx?aqt=#{@research_marmiton}"

    parsing
  end

  def remove_recipe(index)
    @recipes.delete_at(index)

    save
  end

  def save
    CSV.open(@file, 'w', col_sep: ',') do |csv|
      @recipes.each do |recipe|
        csv << recipe
      end
    end
  end

  def parsing
    page = Nokogiri::HTML(open(@PAGE_URL))

    page.search('.m_search_result').each do |element|
      name = "#{element.search('.m_search_titre_recette > a').inner_text}"
      mark = element.search('.etoile1').size
      description = "#{element.search('.m_search_result_part4').inner_text.strip}"

      @recipes << [name, mark, description]
    end

    save
  end

end

#ap cookbook.list_recipes


