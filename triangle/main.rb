def triangle(a, b, c)
    array = [a,b,c].sort
  if a > 0 and b >0 and c > 0 and array[0] + array[1] > array[2]
      if a==b and b==c
        :equilateral
      elsif a==b or b==c or a==c
        :isosceles
      elsif a!=b and b!=c
        :scalene
      end
  else
    raise ArgumentError
  end
end
