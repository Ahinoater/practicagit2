class Dado
  def initialize
    rodar
  end
  
  def rodar
    @numero_mostrar = 1 + rand(6)
  end

  def mostrar
    @numero_mostrar
  end
end

puts "cuantas veces desea lanzar el dado"
lanzar = gets.chomp

while lanzar.to_i > 0
  lanza_dado = Dado.new.mostrar
  puts "\nLanzamiento "
  puts lanza_dado
  lanzar = lanzar.to_i - 1
end