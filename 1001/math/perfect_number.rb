=begin

Perfect number
Author:
  pedrosouza888@gmail.com	
Collaborator:
  Pedro H. P. Souza (predoff@gmail.com)
Type:
  Math
Difficulty level:
  Easy
References: (optional)
   http://en.wikipedia.org/wiki/Perfect_numbers
    
=end

def perfect(number)
  sum = 0
  divisors = []
  
  for i in (1..number/2)
    if number%i == 0
        divisors << i
    end
  end
  
  for divisor in divisors
    sum += divisor
  end
  
  if sum == number
    return true
  else
    return false
  end  
  
    
end

puts perfect(8128)