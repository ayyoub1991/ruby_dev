require File.expand_path(File.dirname(__FILE__) + '/neo')

# You need to write the triangle method in the file 'triangle.rb'
require 'triangle.rb'

class AboutTriangleProject2 < Neo::Koan
  # The first assignment did not talk about how to handle errors.
  # Let's handle that part now.
  def triangle (a, b, c)
  	if a <= 0 || b <= 0 || c <= 0 || a + b <= c || a + c <= b || b + c <= a then
    raise TriangleError
  end

  if a == b && b == c then
    :equilateral
  elsif (a==b && a!=c) || (a==c && a!=b) || (b==c && b!=a) then
    :isosceles
  else
    :scalene
  end
  
  end
  def test_illegal_triangles_throw_exceptions
    assert_raise(TriangleError) do triangle(0, 0, 0) end
    assert_raise(TriangleError) do triangle(3, 4, -5) end
    assert_raise(TriangleError) do triangle(1, 2, 3) end
    assert_raise(TriangleError) do triangle(2, 4, 2) end
    # HINT: for tips, see http://stackoverflow.com/questions/3834203/ruby-koan-151-raising-exceptions
  end
end

