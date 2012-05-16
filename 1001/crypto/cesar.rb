=begin

Cesar Cipher
Author:
   César
Collaborator:
   Pedro Henrique Pereira de Souza (predoff@gmail.com)
Type:
   Crypto
Difficulty level:
   Easy
References:
   http://pt.wikipedia.org/wiki/Cifra_de_C%C3%A9sar
    
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
