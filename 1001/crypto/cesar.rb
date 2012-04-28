=begin

Cesar Cipher
Autohr:
    César
Collaborator:
    Pedro Henrique Pereira de Souza (predoff@gmail.com)
Type:
    Crypto
Description:
    (PT) Este algoritmo implementa a Cifra de César
Complexity:  
    ?
Difficulty level:
    Easy
References:
    http://pt.wikipedia.org/wiki/Cifra_de_C%C3%A9sar
License:
    
    
=end

class Cesar  
	def self.crypt(text, key)
		alpha = ("a".."z").to_a
	
		key.times { alpha.push(alpha.shift) }
		text = text.downcase.tr("a-z", alpha.join)
		
		return text
	end
	def self.decrypt(text, key)
		alpha = ("a".."z").to_a
	
		key.times { alpha.push(alpha.shift) }
		text = text.downcase.tr(alpha.join, "a-z")
		
		return text
	end
end

puts Cesar.crypt("SEILA", 5)
puts Cesar.decrypt("xjnqf", 5)