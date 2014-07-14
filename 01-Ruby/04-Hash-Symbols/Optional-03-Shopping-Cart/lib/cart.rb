# This file contains methods related to your shopping cart.
# You should complete it according to the instructions in the TODO comments

def add_to_cart(cart, product)
  # TODO: you get a cart and a product. Add the product to the cart!

    #count = 1
  #if cart[product].is_a? Integer
    #count += 1
    #cart[product].map do |element, price|
      #cart["#{element} x#{count}"] = price * count
    #end

  #else

    store_items.each do |element, price|
      if element == product
        cart << element
      end
    end
end

def cart_to_s(cart)
  # TODO: you get a cart, return a coma-separated String list of the contained products
  cart.each { |product| "#{product}" }.join(", ")

end

def cart_total_price(cart, store_items)
  # TODO: you get a cart and the store items with their prices. Return the total
  # price of the shopping cart
  total = 0

  cart.each do |product|
    total += store_items[product]
  end
  total
end
