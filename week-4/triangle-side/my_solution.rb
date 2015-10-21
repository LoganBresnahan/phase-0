# I worked on this challenge [by myself, with: ].


# Your Solution Below


def valid_triangle?(a, b, c)
x = (a * b) * 0.5
y = (a * c) * 0.5
z = (b * c) * 0.5
  if (a <= 0) || (b <= 0) || (c <= 0)
    false
  else
    if (x == y) && (y == z) && (x == z)
      true
  	elsif (a + b) > (c) && (c + b) > (a) && (a + c) > (b)
      true
    else
      false
    end
  end
end
