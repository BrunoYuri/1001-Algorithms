=begin

Average
Author:
  ?
Collaborator:
  Pedro H. P. Souza (predoff@gmail.com)
Type:
  Math
Difficulty level:
  Easy
References: (optional)
  http://en.wikipedia.org/wiki/Average
    
=end

def average(array)
	soma = 0
	
	for i in (0..array.size-1)
    soma = soma + array[i]
  end
	
	return soma/array.size
end

puts average([6,2,4,4,16])