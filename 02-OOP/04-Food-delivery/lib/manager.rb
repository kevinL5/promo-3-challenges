require_relative 'restaurant'
require_relative 'customer'
require_relative 'employee'
require_relative 'delivery_guy'
require_relative 'order'

class Manager < Employee

  def list_customers
    @restaurant.customers
  end

  def add_customer(customer)
    @restaurant.customers << customer
    customer.id = @restaurant.customers.index(customer)
  end

  def find_orders(customer_id)

    @restaurant.orders.find_all do |order|
      order.customer_id == customer_id
    end
  end

  def add_order(order)
    @restaurant.orders << Order.new(order[0], @restaurant.next_order_id, order[1], order[2])
  end

  def remove_order(order_id)
    @restaurant.orders.delete_if do |order|
       order.id_number == order_id
     end
  end

  def list_employees
    @restaurant.employees
  end

end





