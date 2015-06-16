
        


def solve_cipher (input)




    
      
    
    input.each_byte { |input|

    if

      (input - 1) >= 97
            puts (input - 1).chr
            else
              puts 122.chr
        end
    
  
          }

end

solve_cipher(ifmmp)
