require_relative 'restaurant'

class View

  def ask_and_get(param)
    puts "Please, enter #{param}"
    return gets.chomp
  end

  def ask_list_customers(customers)
    customers.each_with_index do |customer, index|
      puts "#{index} - #{customer.name} (#{customer.id})"
    end
  end

  def ask_add_customers
    name = ask_and_get("name")
    adress = ask_and_get("address")
    Customer.new(name, adress)
  end

  def ask_view_orders
    puts "Please enter a customer ID:"
    customer_id = gets.chomp.to_i
  end

  def ask_add_order
    puts "Witch menu ?"
    menu = gets.chomp
    puts "For witch ID customer ?"
    customer_id = gets.chomp.to_i
    puts "Who is in charge of the delivery ?"
    employee_id = gets.chomp.to_i

    [menu, customer_id, employee_id]
  end

  def ask_remove_order
    puts "Please, enter a ID order: "
    order_id = gets.chomp
  end

  def ask_list_employee(employees)
    employees.each_with_index do |employee, index|
      puts "#{index} - #{employee.name}"
    end
  end

  def display_orders(orders)
    orders.each do |order|
      puts "#{order.menu} ordered by customer n° #{order.customer_id}, has to be delivered by employee n° #{order.employee_id}"
    end
  end

  def ask_view_order_delivery

  end

end