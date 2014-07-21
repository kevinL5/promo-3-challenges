class Recipe

  attr_reader :name, :mark, :description

  def initialize(name, mark, description)
    @name = name
    @mark = mark
    @description = description
  end

end