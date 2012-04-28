=begin

Binary Search
Author:
    ?
Collaborator:
    Pedro Henrique Pereira de Souza (predoff@gmail.com)
Type:
    Search
Description:
    In computer science, a binary search or half-interval search algorithm finds the 
    position of a specified value (the input "key") within a sorted array.[1][2] 
    In each step, the algorithm compares the input key value with the key value of the 
    middle element of the array. If the keys match, then a matching element has been 
    found so its index, or position, is returned. 
Complexity:  
    ?
Difficulty level:
    Easy
References: (optional)
    http://en.wikipedia.org/wiki/Binary_search_algorithm
License: (optional)
    
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
