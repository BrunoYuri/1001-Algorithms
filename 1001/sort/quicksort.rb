=begin

Quick Sort
Author:
  C.A.R. Hoare
Collaborator:
  Pedro Henrique Pereira de Souza (predoff@gmail.com)
Type:
  Sorting
Difficulty level:
  Easy
References:
  http://en.wikipedia.org/wiki/Quicksort

=end

def quicksort(vetor)
	if vetor.length <= 1
		return vetor
	end
	
	lesser, greater, pivot = [],[],[]
	pivot << vetor[0]
	
	for i in 1..vetor.length-1
		if vetor[i] <= pivot[0]
			lesser << vetor[i]
		else
			greater << vetor[i]
		end
	end
	
	return (quicksort(lesser) + pivot + quicksort(greater))
end


puts quicksort([6, -7, 33, 12, 9, 19, 2, 97, 76, 98, 65, 89, 321, 341, 91, 7, 25, 239, 600, 450, 489, 501])
