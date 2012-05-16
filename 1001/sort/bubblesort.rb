=begin

Bubble Sort
Author:
  ?
Collaborator:
  Pedro Henrique Pereira de Souza (predoff@gmail.com)
Type:
  Sorting
Difficulty level:
  Easy
References:
  http://en.wikipedia.org/wiki/Bubble_sort
	
=end

def bubblesort(vetor)
	for i in 0..vetor.length - 1
		for j in 0..vetor.length - 1
			if vetor[i] < vetor[j]
				vetor[i], vetor[j] = vetor[j], vetor[i]
			end
		end
	end
	return vetor
end

puts bubblesort([6, -7, 33, 12, 9, 19, 2])
