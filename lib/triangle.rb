cdef kind
if @equilateral != @isosceles || @equilateral != @scalene || @isosceles != @scalene
begin
raise TriangleError
rescue TriangleError => error
puts error.message
end
end

class TriangleError < StandardError
  def message
    'this is custom error'
  end
end
end