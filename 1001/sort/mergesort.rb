=begin

Merge Sort
Author:
  John von Neumann, em 1945
Collaborator:
  Pedro Henrique Pereira de Souza (predoff@gmail.com)
Type:
  Sorting
Difficulty level:
  Easy
References:
  http://en.wikipedia.org/wiki/Merge_sort
	
=end

def mergesort(vetor)
	# Se o tamanho do vetor for menor que 1 ou igual, considere ordenado e retorne-o
	if vetor.length <= 1
		return vetor
	end
	
	metade = vetor.length/2
	left, right = [], []
	
	for i in 0..metade-1
		left << vetor[i]
	end
	
	for i in metade..vetor.length-1
		right << vetor[i]
	end
	
	left = mergesort(left)
	right = mergesort(right)
	
	return merge(left, right)
end

def merge(left, right)
	result = []
	
	while left.length > 0 || right.length > 0
		if left.length > 0 && right.length > 0
			if left[0] <= right[0]
				result << left[0]
				left.delete_at(0)
			else 
				result << right[0]
				right.delete_at(0)
			end
		elsif left.length > 0
			result << left[0]
			left.delete_at(0)
		elsif right.length
			result << right[0]
			right.delete_at(0)
		end
	end
	
	return result
end

puts mergesort([6, -7, 33, 12])
puts mergesort([2,8,-2,1,45,37,-463,24,50,80,4,3,7,4,55])
