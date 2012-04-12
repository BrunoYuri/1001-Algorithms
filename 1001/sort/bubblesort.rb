=begin

Bubblesort
Autor:
    ?
Colaborador:
	Pedro Henrique Pereira de Souza (predoff@gmail.com)
Tipo:
    Sorting
Descrição:
    Varre o vetor comparando cada um dos pares de números
    possíveis e trocando suas posições no vetor se necessário
Complexidade:  
    O(n²)
Dificuldade:
    facil
Referências:
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