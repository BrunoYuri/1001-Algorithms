=begin

Cesar Cipher (Cifra de César)
Autor:
    César
Colaborador:
    Pedro Henrique Pereira de Souza (predoff@gmail.com)
Tipo:
    Crypto
Descrição:
    Este algoritmo implementa a Cifra de César
Complexidade:  
    ?
Dificuldade:
    Fácil
Referências:
    http://pt.wikipedia.org/wiki/Cifra_de_C%C3%A9sar
Licença:
    Free
    
=end

class Cesar  
	def crypt(text = "", key= 0)
		count = 0
		encoded = ""

		while count < text.size		
			encoded << (text[count]+key).chr
			count += 1
		end
		
		return encoded
	end
	def decrypt(text = "", key= 0)
		count = 0
		encoded = ""

		while count < text.size		
			encoded << (text[count]-key).chr
			count += 1
		end
		
		return encoded
	end
end

c = Cesar.new
puts c.crypt("seila", 5)
puts c.decrypt("xjnqf", 5)