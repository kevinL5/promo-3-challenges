class DeliveryGuy < Employee

  attr_accessor :order_delivery

  def initialize(name, password, restaurant)
    super
    @order_delivery = []
  end

  def view_orders(employee_id)
    @restaurant.orders.find_all do |order|
      @order_delivery << order.employee_id == employee_id
    end
    @order_delivery
  end

  def mark_has_done(order_id, employee_id)
    @restaurant.orders.delete_if do |order|
       (order.id_number == order_id) && (order.employee_id == employee_id)
     end
  end

end