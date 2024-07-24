# Dado um array de inteiros nums e um inteiro target, 
# retorne os índices dos dois números de modo que a soma deles seja target .
# Você pode assumir que cada entrada teria exatamente 
# uma solução e não pode usar o mesmo elemento duas vezes.
# Você pode retornar a resposta em qualquer ordem.

class Soma_alvo

    def initialize(tabela , alvo)
      @tabela = tabela
      @alvo = alvo
      
    end

    def soma
      @cont1 = 0
      @cont2 = 0
      @tabela.each_with_index do |x , indicex|
        @tabela.each_with_index do |y , indicey|
        if x + y == @alvo
          puts "valor X:#{indicex} - #{x} valor Y: #{indicey} - #{y}  -  --  - #{y+x} "
        end
          
        @cont1+=1
        end
        @cont2+=1
      end
    end

end

tabela = [5,9,8,6,2,4]
alvo = 14
resposta = Soma_alvo.new(tabela,alvo)
resposta.soma

