require 'time'
require_relative 'restaurant'

class Order
  attr_reader :id_number, :time, :menu, :customer_id, :employee_id

  def initialize(menu, id_number, customer_id, employee_id)
    @menu = menu
    @id_number = id_number
    @customer_id = customer_id
    @employee_id = employee_id
    @time = Time.now
  end

end