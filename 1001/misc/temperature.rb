=begin

Temperature Conversion
Author:
  ?
Collaborator:
  Pedro Henrique Pereira de Souza (predoff@gmail.com)
Type:
  Misc
Difficulty level:
  Easy
References:
  http://www.mathsisfun.com/temperature-conversion.html
    
=end

def fahrenheit_to_celsius(valor)
	return (valor - 32) * 5 / 9
end

def celsius_to_fahrenheit(valor)
	return (valor * 9 / 5) + 32
end

def kelvin_to_celsius(valor)
	return valor - 273.15
end

def celsius_to_kelvin(valor)
	return valor + 273.15
end

def fahrenheit_to_kelvin(valor)
	return (valor + 459.67) * 5 / 9
end

def kelvin_to_fahrenheit(valor)
	return (valor * 9 / 5) - 459.67
end

puts fahrenheit_to_celsius(104.0).to_s + " Celsius"
puts kelvin_to_celsius(313.15).to_s + " Celsius"
puts celsius_to_fahrenheit(40.0).to_s + " Fahrenheits"
puts kelvin_to_fahrenheit(313.15).to_s + " Fahrenheits"
puts celsius_to_kelvin(40.0).to_s + " Kelvins"
puts fahrenheit_to_kelvin(104.0).to_s + " Kelvins"
