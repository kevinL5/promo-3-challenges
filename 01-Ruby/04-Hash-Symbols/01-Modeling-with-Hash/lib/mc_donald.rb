
def poor_calories_counter(burger, side, beverage)
  #TODO: return number of calories for this mcDonald order
  domc = {
    "Cheese Burger" => 290,
    "Big Mac" => 300,
    "Mc Bacon" => 400,
    "Royal Cheese" => 130,
    "French fries" => 130,
    "Potatoes" => 130,
    "Coca" => 160,
    "Sprite" => 170
}

  calories = domc[burger] + domc[side] + domc[beverage]
end


def calories_counter(*orders)
  #TODO: return number of calories for a less constrained order

  domc = {
    "Cheese Burger" => 290,
    "Big Mac" => 300,
    "Mc Bacon" => 400,
    "Royal Cheese" => 130,
    "French fries" => 130,
    "Potatoes" => 130,
    "Coca" => 160,
    "Sprite" => 170,
    "Happy Meal" => poor_calories_counter("Cheese Burger", "French fries", "Coca"),
    "Best Of Big Mac" => poor_calories_counter("Big Mac", "French fries", "Coca"),
    "Royal Cheese" => poor_calories_counter("Royal Cheese", "Potatoes", "Sprite")
    }

  product_calories = 0

  orders.each do |product|
    product_calories += domc[product]
  end
  product_calories
end

puts poor_calories_counter("Big Mac", "French fries", "Coca")
puts calories_counter("Coca", "Happy Meal")









