=begin

Binary Search
Author:
    ?
Collaborator:
    Pedro Henrique Pereira de Souza (predoff@gmail.com)
Type:
    Search
Description:
    O que este algoritmo faz? Serve pra que? Tente explicar
    da melhor forma possivel, ja que este projeto tem como
    publico-alvo os iniciantes.
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
		return false
	end
	
	med = array.size/2

	if value < array[med]
		return binary_search(array.shift(med), value)
	elsif value > array[med]
		array.shift(med)
		return binary_search(array, value)
	end
	
	return med
end

array = [0, 1, 2, 3, 4, 5, 6, 14, 18, 19]
puts binary_search(array, 14)
