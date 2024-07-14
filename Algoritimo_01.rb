class Pangram

    def initialize(x)
      @texto = x.downcase
      @letras = ""
      @alfabeto = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
      @alfabeto = @alfabeto.downcase
    end
    
    def letras_que_faltam
      @cont = 0
      @letras_faltam = @alfabeto 
      @alfabeto.each_char do |letra_a|  
        @cont = @cont + 1
        @texto.each_char do |letra_t|
          
            if letra_a == letra_t              
              @letras_faltam[@cont-1] = "#"
              break
            end
        end 
      end
      

      @letras_faltam.each_char do |resp|
      
        if resp != "#"
          @letras = @letras + resp
        end
      end
    @letras
  end

 


end


puts "########################################################"
puts "################# DIGITE UMA FRASE #####################"
puts "########################################################"
texto = gets.chomp
frase = Pangram.new(texto)
puts "########################################################"
puts "################# FALTA AS SEQUINTES LETRAS ############"
puts "########################################################"
puts "###########{frase.letras_que_faltam}##############"
puts "########################################################"



