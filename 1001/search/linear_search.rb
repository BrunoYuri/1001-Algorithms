=begin

Linear Search
Author:
    ?
Collaborator:
    Pedro Henrique Pereira de Souza (predoff@gmail.com)
Type:
    Search
Description:
    Consists of checking every one of a list elements, one at a time and in sequence, 
    until the desired one is found and return your position.
Complexity:  
    ?
Difficulty level:
    Easy
References: (optional)
    http://en.wikipedia.org/wiki/Linear_search
License: 
    
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