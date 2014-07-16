class OrangeTree
  # TODO: Implement all the specs defined in the README.md :)
  attr_reader :age, :fruits, :height, :dead

  def initialize
    @age = 0
    @fruits = 0
    @height = 0
    @dead = false
  end

  def one_year_passes!
    @age += 1

    @height += 1 if @age <= 10

    produce_fruits
    dead?

  end

  def years_passes!(num_years)
    num_years.times { one_year_passes! }
  end

  def produce_fruits
    @fruits = 0
    @fruits = 100 if (6..10).cover?(@age)
    @fruits = 200 if (11..15).cover?(@age)
  end

  def pick_a_fruit!
    @fruits = @fruits -= 1
  end

  def pick_fruits!(num_fruits)
    @fruits = @fruits - num_fruits
  end

  def dead?
    if @age > 50
      num = 100 - @age
      death_num = rand(0..num)
      if death_num == 0
        @dead = true
      end
    end
    dead
  end
end
