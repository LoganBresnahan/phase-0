# Factorial

# I worked on this challenge [by myself, with: ].


def factorial(number)
  x = 1
  i = 1
  while i<=number
    x = x * i
    i+=1
  end
  return x
end

factorial(5)