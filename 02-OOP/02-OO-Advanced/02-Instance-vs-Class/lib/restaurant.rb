class Restaurant
  #TODO add relevant accessors if necessary
  attr_reader :average_rating
  attr_accessor :city, :name

  def initialize(city, name)
    #TODO: implement constructor with relevant instance variables
    @city = city
    @name = name
    @rate_array = []
    @average_rating = 0
  end

  #TODO: implement #filter_by_city and #rate methods

  def self.filter_by_city(restaurants, city)
    restos_temp = []

    restaurants.each do |restaurant|
      if restaurant.city == city
        restos_temp << restaurant
      end
    end
    restos_temp
  end

  def rate(mark)
    @rate_array << mark
    @average_rating = @rate_array.inject(:+) / @rate_array.size
  end

end

