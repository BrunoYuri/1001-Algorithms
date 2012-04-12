=begin

Quicksort
Autor:
    C.A.R. Hoare
Colaborador:
   Pedro Henrique Pereira de Souza (predoff@gmail.com)
Tipo:
 	Sorting
Descrição:
    Quicksort é um algorítmo de ordenação de vetores cuja estratégia é
    dividir para conquistar. Basicamente o algorítmo organiza os elementos
    dos vetores de forma que os menores estejam antes dos maiores.
    Esse passo é feito recursivamente até que a lista completa esteja ordenada.
Complexidade:  
    O(n log(n)) - Melhor caso e médio caso.
    O(n²) - Pior caso.
Dificuldade:
    Fácil
Referências: (opcional)
    http://en.wikipedia.org/wiki/Quicksort
Licenca:
	Free

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