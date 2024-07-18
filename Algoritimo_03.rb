class Tres_maiores
  def initialize(x)
    @base = x.sort.reverse
    @primeiro = @base[0]
    @segundo = @base[1]
    @terceiro = @base[2]
    puts "--- São os Numeros:  [#{@primeiro} - #{@segundo} - #{@terceiro}] ------"
  end
  
end

puts "--- Os Maiores numero da basa: ---"
numeros = [5809, 1400, 1410, 3240, 501, 23, 90]
puts "--- Numeros: #{numeros} ---"
puts "---------------------------------------"

num = Tres_maiores.new(numeros)
