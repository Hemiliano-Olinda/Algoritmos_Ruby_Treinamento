class Tres_maiores
  def initialize(x)
    @base = x.sort.reverse
    @primeiro = 0
    @segundo = 0
    @terceiro = 0
  end
  def confere

    @base.each do |n|
      if n > @primeiro
        @primeiro = n
      elsif n > @segundo
        @segundo = n
      elsif n > @terceiro
        @terceiro = n
      end
    end
    return "Numeros:  #{@primeiro} - #{@segundo} - #{@terceiro} - #{@base}"
  end
  
end

puts "--- Na Frase ---"
numeros = [589, 1400, 1410, 324, 501, 23, 90]

num = Tres_maiores.new(numeros)
puts num.confere