require 'pry'

class Triangle

  def initialize(side1, side2, side3)
    # @side1 = side1
    # @side2 = side2
    # @side3 = side3
    @sides = [side1, side2, side3]
    binding.pry
  end

  def kind

    case @sides
    when @sides.count{|s| s == @sides[0]} == 3 
      :equilateral
    end

  end

end

class TriangleError < StandardError

end
