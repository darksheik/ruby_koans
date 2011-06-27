# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#
def triangle(a, b, c)
   equal_sides = 0
   
   if (a <= 0 || b <= 0 || c <= 0)
     raise TriangleError.new("You have sides that are zero or less, dummy.")
   end
   if (a+b <= c) || (a+c <= b) || (b+c <= a)
     raise TriangleError.new("Two sides must add up to more than the third.")
   end
   
   if (a == b) && (b == c)
     equal_sides = 3
   end
   if ((b == c) && (a != b)) || ((a == c) && (a != b)) || ((a == b) && (b != c))
     equal_sides = 2
   end
   
   #puts a.to_s + " " + b.to_s + " " + c.to_s + " es: " + equal_sides.to_s
   if equal_sides == 3
     :equilateral
   elsif equal_sides == 2
     :isosceles
   else
     :scalene
   end

end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
