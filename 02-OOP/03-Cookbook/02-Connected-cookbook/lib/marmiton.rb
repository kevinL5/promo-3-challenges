require 'rubygems'
require 'nokogiri'
require 'open-uri'

class Marmiton

  def initialize(research_marmiton)
    @research_marmiton = research_marmiton
    @PAGE_URL = "http://www.marmiton.org/recettes/recherche.aspx?aqt=#{@research_marmiton}"
    puts @PAGE_URL

    parsing
  end

  def parsing
    page = Nokogiri::HTML(open(@PAGE_URL))

    page.search('.m_search_result').each do |element|
      puts "#{element.search('.m_search_titre_recette > a').inner_text}"
      puts "Rating : #{element.search('.etoile1').size} / 5"
      puts "Description : #{element.search('.m_search_result_part4').inner_text.strip} \n "
    end
  end

end

test = Marmiton.new('fraise')
test2 = Marmiton.new('chantilly')

