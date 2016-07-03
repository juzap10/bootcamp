puts "Cuantos números desea ingresar?"
cantidadNumeros = gets.chomp.to_i

arrayNumeros = Array.new(cantidadNumeros) { |e| e = gets.chomp.to_i }
suma = 0
for i in 0..(arrayNumeros.length-1)
	suma += arrayNumeros[i]
end

promedio = suma/cantidadNumeros

puts "el promedio es #{promedio}"