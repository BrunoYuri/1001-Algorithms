=begin

Factorial
Autor:
    ?
Collaborator:
    Pedro Henrique Pereira de Souza (predoff@gmail.com)
Type:
    Math
Description:
    In mathematics, the factorial of a non-negative integer n, denoted by n!, 
    is the product of all positive integers less than or equal to n. For example,
    5! = 5 x 4 x 3 x 2 x 1 = 120
Complexity: 
    ?
Difficulty level:
    Easy
References:
    http://en.wikipedia.org/wiki/Factorial
License:
	
=end


def factorial(v)
	if v <= 1
		return v
	end
	
	v * factorial(v-1)
end

puts factorial(5)

