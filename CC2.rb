
        


def solve_cipher (input, x)
	
	
      
    
    input.each_byte { |input_byte|
    	if (input_byte + x) >= 97
            puts (input_byte + x).chr
        elsif (input_byte + x) == 31
        	puts 32.chr

        else
            puts 122.chr
        end
    
  
    }

end

puts "Enter coded message"

	code = gets.chomp

	puts "Enter offset"

	x = gets.chomp.to_i

	if x == nil
		x == 3
	end
	
solve_cipher(code, x)
