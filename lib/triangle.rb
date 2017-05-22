class Triangle
  # write code here
  attr_accessor :equilateral, :isosceles, :scalene

  def initialize(side1, side2, side3)
    if side1 >= (side2 + side3) || side2 >= (side1 + side3) || side3 >= (side1 + side2)
      raise TriangleError
    end

    if side1 <= 0 || side2 <= 0 ||side3 <= 0
      raise TriangleError
    end

    if side1 == nil || side2 == nil ||side3 == nil
      raise TriangleError
    end
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def kind
    if @side1 == @side2 && @side2==@side3
      :equilateral
    elsif @side1 ==@side2 || @side2==@side3 || @side3 == @side1
      :isosceles
    else
      :scalene
    end
  end

end

class TriangleError < StandardError
  "Each side must be larger than zero and sum of the lengths of any two sides of a triangle always exceeds the length of the third side"
end
