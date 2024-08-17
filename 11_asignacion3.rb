class Calcular
  def initialize(numero)
    @numero = numero
  end 
  
  def suma_numeros_pares
    suma = 0
    (1..@numero).each do |num|
      if num % 2 == 0
        suma += num
      end
    end
    suma
  end

  def suma_numeros_impares
    suma = 0
    (1..@numero).each do |num|
      if num % 2 != 0
        suma += num
      end
    end
    suma
  end
end

exit = false
while exit == false
  puts "Ingrese el número máximo a sumar:"
  numero = gets.chomp.to_i

  calculadora = Calcular.new(numero)

  puts "La suma de los números PARES hasta #{numero} es: #{calculadora.suma_numeros_pares}"
  puts "La suma de los números IMPARES hasta #{numero} es: #{calculadora.suma_numeros_impares}"

  puts "Para salir introduce 0. Para continuar calculando, pulsa cualquier otro número"
  opc = gets.to_i

  if opc == 0
    exit = true
  end

end