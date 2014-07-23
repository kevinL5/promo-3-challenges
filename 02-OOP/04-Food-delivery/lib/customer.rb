class Customer

  attr_reader :name, :adress
  attr_accessor :id

  def initialize(name, adress)
    @name = name
    @adress = adress
  end

end