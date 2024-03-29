=begin

Vigenère Cipher
Author:
  ?  
Collaborator:
  Pedro H. P. Souza - predoff@gmail.com
Type:
  Crypto
Difficulty level:
  Easy
References:
  http://pt.wikipedia.org/wiki/Cifra_de_Vigen%C3%A8re

=end

class Vigenere
 
	def self.crypt(text, key)
		count = 0
		encoded = ""
		key = key * (text.size.to_f / key.size).ceil
		text.downcase!
		
		while count < text.size		
			# 97 is the number where start Alphabet in ASCII http://www.asciitable.com/
			encoded << ((((text[count].ord - 97) + (key[count].ord - 97)) % 26 ) + 97).chr
			count += 1
		end
		return encoded
	end
	
	def self.decrypt(text, key)
		count = 0
		decoded = ""
		key = key * (text.size.to_f / key.size).ceil
		text.downcase!
		
		while count < text.size		
			decoded << ((((text[count].ord - 97) - (key[count].ord - 97)) % 26 ) + 97).chr
			count += 1
		end
		
		return decoded
	end
end

puts Vigenere.crypt("idontknow", "lemon")
puts Vigenere.decrypt("thabgvrak", "lemon")
