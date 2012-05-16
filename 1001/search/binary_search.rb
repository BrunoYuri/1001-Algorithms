=begin

Binary Search
Author:
  ?
Collaborator:
  Pedro Henrique Pereira de Souza (predoff@gmail.com)
Type:
  Search
Difficulty level:
  Easy
References: (optional)
  http://en.wikipedia.org/wiki/Binary_search_algorithm
    
=end

def binary_search(array, value)
	if array.size == 0
		return nil
	end
	
	greater = array.size - 1
	lesser = 0
	
	while lesser < greater
		mid = lesser + ((greater - lesser) / 2);

		if value < array[mid]
			greater = mid
		elsif value > array[mid]
			lesser = mid + 1
		else
			return mid
		end
	end
	
	return -1
end

array = [0, 1, 2, 3, 4, 5, 6, 14, 18, 19]

puts binary_search(array, 14)
