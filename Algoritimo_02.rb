class Verificacao

  def initialize (x)
   @texto = x
   @n = 0
   @maiusculo = 0
   @minuscula = 0
   @caractere = 0
  end

  def numero # confere se tem numeros na string
    @numero_teste="0123456789"
    
      @texto.each_char do |n1| 
        @numero_teste.each_char do |n2|
        if n1 == n2 
          @n = @n + 1 
        end
      end
    end
      return "Números: #{@n}"
  end

  def maiusculo # confere se tem letras maiusculas
    @alfabeto_teste="ABCDEFGHIJKLMNOPQRSTUVWXYZ"
    
      @texto.each_char do |n1| 
        @alfabeto_teste.each_char do |n2|
        if n1 == n2 
          @maiusculo = @maiusculo + 1 
        end
      end
    end
      return "Letras maiúsculas: #{@maiusculo}"
  end

  def minuscula # confere se tem letras minusculas
    @alfabeto_teste='ABCDEFGHIJKLMNOPQRSTUVWXYZ'.downcase
    
      @texto.each_char do |n1| 
        @alfabeto_teste.each_char do |n2|
        if n1 == n2 
          @minuscula = @minuscula + 1 
        end
      end
    end
      return "Letras minúsculas: #{@minuscula}"
  end

  def caractere # confere se tem letras minusculas
    @alfabeto_teste=':;<>,.?/°º}]^~´`{[-_=+§)(*&¨%¢$£#³@²!¹".+-/)]}'
    
      @texto.each_char do |n1| 
        @alfabeto_teste.each_char do |n2|
        if n1 == n2 
          @caractere = @caractere + 1 
        end
      end
    end
      return "Caracteres especiais: #{@caractere}"
  end
end
puts "--- Na Frase ---"
frase = "*GeEkS4GeEkS*"
puts "#{frase}"
texto = Verificacao.new(frase)
puts "--- As Letras São: ---"
puts "#{texto.numero}"
puts "#{texto.maiusculo}"
puts "#{texto.minuscula}"
puts "#{texto.caractere}"