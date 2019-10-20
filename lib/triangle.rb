require 'pry'
class Triangle
  attr_accessor :equilateral, :isosceles, :scalene, :side_1, :side_2, :side_3
  
  def initialize(side_1, side_2, side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
  end 
  
  def valid 
    if side_1 > 0 && side_2 > 0 && side_3 > 0
      if 
        (side_1 + side_2) > side_3
        if (side_1 + side_3) > side_2
          if (side_2 + side_3) > side_1
            true
          end
        end 
      end 
    end 
  end 
  
  def kind 
    if !valid
      
      #begin
        raise TriangleError
      #rescue TriangleError => error 
        #puts error.message
      #end 
      
    else 
      
      if side_1 == side_2 && side_1 == side_3
        :equilateral
      elsif side_1 == side_2 || side_1 == side_3 || side_2 == side_3
        :isosceles
      else
        :scalene
      end

    end 
    
  end 
  
  class TriangleError < StandardError
    def message
      "The triagle is invalid"
    end 
  end
  
end


