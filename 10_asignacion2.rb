exit = false

while exit == false
  lista = [
    {nombre: 'Maria', celular: '2248-6559'},
    {nombre: 'Pedro', celular: '9845-6532'},
    {nombre: 'Juan', celular: '8265-4536'},
    {nombre: 'Alberto', celular: '7896-4514'}
  ]


  puts "Nombre\t\tCelular"
  lista.each do |integrantes|
    puts "#{integrantes[:nombre]}\t\t #{integrantes[:celular]}"
  end

  puts "--------------------------"

  puts "Ingrese un nombre"
  name = gets.chomp

  #Aplicar el método capitalize para convertir en mayúscula la primera letra del nombre
  nombre_capitalizado = name.capitalize
  puts "--------------------------"

  validar = false
  lista.each do |integrantes|
    if integrantes[:nombre] == nombre_capitalizado
      #Si el nombre coincide mostrar el celular
      puts "El número de celular de #{nombre_capitalizado} : #{integrantes[:celular]}"
      validar = true
      break
    end
  end

  puts "No se encontró a #{nombre_capitalizado}"unless validar

  puts "Para salir introduce 0. Para continuar calculando, pulsa cualquier otro número"
  opc = gets.to_i

  if opc == 0
    exit = true
  end
end