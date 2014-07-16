class Diving
  attr_reader :depth
  attr_reader :air

  def initialize(air)
    @depth = 0
    @air = air
  end

  def down
    @depth -= 10
    @air -= 5

    security
  end

  def top
    @depth += 10
    @air -= 10

    security
  end

  def security
    if (@air - 15) < (-@depth) && @depth < 0
      puts "Il faut remonter !"
    end
  end
end
