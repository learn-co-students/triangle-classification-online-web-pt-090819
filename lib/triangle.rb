class Triangle
  attr_accessor :a, :b, :c
  
  def initialize(a, b, c)
    @a = a 
    @b = b 
    @c = c 
  end
  
  def kind 
    triangle_validation
    if a == b && b == c 
      :equilateral
    elsif a == b || a == c || b == c 
      :isosceles
    else 
      :scalene
    end
  end
      
    def triangle_validation
      valid_triangle = [(a + b >c), (a + c > b), (b + c > a)]
      [a,b,c].each {|i| valid_triangle << false if i <= 0}
      raise TriangleError if valid_triangle.include?(false)
    end
    
    class TriangleError < StandardError
    end
end
