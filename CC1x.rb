
        


def solve_cipher (input)




    
      
    
    input.each_byte { |input|

    	if (input - 1) >= 97
            puts (input - 1).chr
        else
            puts 122.chr
        end
    
  
    }

end

puts "Enter coded message"

code = gets.chomp

solve_cipher(code)
