=begin

Euclidean algorithm
Author:
  ?
Collaborator:
  Pedro H. P. Souza (predoff@gmail.com)
Type:
  Math
Difficulty level:
  Easy
References: (optional)
  http://en.wikipedia.org/wiki/Euclidean_algorithm
    divisor = b
    dividend = a

    while dividend % divisor != 0

    end
=end

def euclides(a, b)
  if b == 0
    return a
  else
    return euclides(b, a % b)
  end
end

puts euclides(21, 6)