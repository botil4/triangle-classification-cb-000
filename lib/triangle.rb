require 'pry'

class Triangle

  def initialize(side1, side2, side3)
    @a = side1
    @b = side2
    @c = side3
    @sides = [side1, side2, side3].sort

  end

  def kind

    if @sides.any? { |s| 0 >= s }
      raise TriangleError
    elsif @sides[2] >= (@sides[0] + @sides[1])
      raise TriangleError
    elsif @sides.any? { |s| @sides.count(s) == 3 }
      :equilateral
    elsif @sides.any? { |s| @sides.count(s) == 2 }
      :isosceles
    elsif @sides.all? { |s| @sides.count(s) == 1 }
      :scalene
    end

  end

end

class TriangleError < StandardError

end
