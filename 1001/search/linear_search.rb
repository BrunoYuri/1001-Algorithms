=begin

Linear Search
Author:
  ?
Collaborator:
  Pedro Henrique Pereira de Souza (predoff@gmail.com)
Type:
  Search
Difficulty level:
  Easy
References: (optional)
  http://en.wikipedia.org/wiki/Linear_search
    
=end

def linear_search(array, value)
	array.each do |i|
		if(array[i] == value)
			return i
		end
	end
	
	return -1
end

list = [4, 2, 3]

puts linear_search(list, 3)
puts linear_search(list, 5)
