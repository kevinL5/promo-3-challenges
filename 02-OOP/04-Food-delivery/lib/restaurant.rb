class Restaurant

  attr_reader :name, :adress, :phone, :orders
  attr_accessor :customers, :employees, :id_count

  def initialize(name, adress, phone)
    @name = name
    @adress = adress
    @phone = phone

    @employees = []
    @customers = []

    @orders = []

    @id_count = 0

  end

  def next_order_id
    @id_count += 1
  end


  def number_employees
    @employees.size
  end

  def number_customers
    @customers.size
  end

end
