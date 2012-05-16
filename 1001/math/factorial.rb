=begin

Factorial
Autor:
    ?
Collaborator:
  Pedro Henrique Pereira de Souza (predoff@gmail.com)
Type:
  Math
Difficulty level:
  Easy
References:
  http://en.wikipedia.org/wiki/Factorial
	
=end


def factorial(v)
	if v <= 1
		return v
	end
	
	v * factorial(v-1)
end

puts factorial(5)

