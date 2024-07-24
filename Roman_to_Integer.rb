# @param {String} s
# @return {Integer}
def roman_to_int(s)
  @s = s + " "
  x = 0
  @cont = 0
  @s.each_char do |l|
    if l == "I"
      x = x + 1

      elsif l == "V"
        if @s[@cont-1] == "I"
        x = x + 3
        else
        x = x + 5
        end

      elsif l == "X"
        if @s[@cont-1] == "I"
          x = x + 8
          else
          x = x + 10
          end
        
      elsif l == "L"
        if @s[@cont-1] == "X"
          x = x + 30
          else
          x = x + 50
          end
      
      elsif l == "C"
        if @s[@cont-1] == "X"
          x = x + 80
          else
            x = x + 100
          end      

      elsif l == "D"
        if @s[@cont-1] == "C"
          x = x + 300
          else
            x = x + 500
          end  
      
      elsif l == "M"
        if @s[@cont-1] == "C"
          x = x + 800
        else
          x = x + 1000
        end 
      
    end
    
    @cont = @cont + 1
  end
  return x
end

s = "MCMXCIV"
numero = roman_to_int(s)

puts("O numero é:  #{numero} ")