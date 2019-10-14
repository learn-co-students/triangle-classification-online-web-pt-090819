class Triangle
  
  attr_reader :side_1, :side_2, :side_3, :sides
  
  def initialize(side_1, side_2, side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
    @sides = [side_3, side_2, side_1]
  end
  
  def kind
    
    # if any side < 0 or any two sides are less than the third side raise error
      if (@side_1 + @side_2 <= @side_3) || (@side_2 + @side_3 <= @side_1) || (@side_1 + @side_3 <= @side_2) || @sides.any? {|n| n <= 0}
        raise TriangleError
        
    # if all 3 sides have same length
    # :equilateral
        elsif @side_1 == @side_2 && @side_2 == @side_3
          :equilateral
         
    # if all 3 are different
    # :scalene
        elsif (@side_1 != @side_2 && @side_1 != @side_3 && @side_2 != @side_3)
          :scalene
          
    # if only 2 sides are equivalent 
    # :isosceles
        else :isosceles
      end
      
    end
    
  class TriangleError < StandardError
  end
end

  
