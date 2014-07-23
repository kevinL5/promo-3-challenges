require_relative 'view'
require_relative 'restaurant'
require_relative 'employee'
require_relative 'manager'
require_relative 'delivery_guy'
require_relative 'customer'
require_relative 'order'

class Controller

  def initialize
    @view = View.new
    @restaurant = Restaurant.new('RubyShop', 'Rue du Rails', '+666')

    @manager = Manager.new('joe', 'password', @restaurant)
    @speedy = DeliveryGuy.new('speedy', 'password', @restaurant)
    @tortue = DeliveryGuy.new('tortue', 'password', @restaurant)
    @bob = Customer.new('bob', '12 rue des petites ecuries')
    @bob.id = 0

    @restaurant.employees << @manager
    @restaurant.employees << @speedy
    @restaurant.employees << @tortue
    @restaurant.customers << @bob
  end

  def list_customers
    customers = @manager.list_customers
    @view.ask_list_customers(customers)
  end

  def add_customers
    customer = @view.ask_add_customers
    @manager.add_customer(customer)
  end

  def view_orders
    customer_id = @view.ask_view_orders
    orders = @manager.find_orders(customer_id)
    @view.display_orders(orders)
  end

  def add_order
    order = @view.ask_add_order
    @manager.add_order(order)
  end

  def remove_order
    order_id = @view.ask_remove_order
    @manager.remove_order(order_id)
  end

  def list_employee
    employees = @manager.list_employees
    @view.ask_list_employee(employees)
  end

end