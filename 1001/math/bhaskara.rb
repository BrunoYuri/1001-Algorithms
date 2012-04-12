=begin

Bhaskara
Autor:
    Bhaskara Akaria [1]
Colaborador:
    Pedro Henrique Pereira de Souza (predoff@gmail.com)
Tipo:
    math
Descrição:
    Calcula as raízes de uma equação de segundo grau
Complexidade:  
    O(1)
DIficuldade:
    fácil
Referências:
    [1] http://pt.wikipedia.org/wiki/Bhaskara_Akaria
    
=end

def bhaskara(a, b, c)
	delta = b ** 2 - 4 * a * c
	
	if delta < 0
		return nil
	else
		raizes = []
		r1 = (-b + Math.sqrt(delta)) / (2*a)
		raizes << r1
		r2 = (-b - Math.sqrt(delta)) / (2*a)
		raizes << r2
	end
end

puts bhaskara(1, -1, -2)

