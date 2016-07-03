puts "Ingrese el número a calcular:-->"
numeroIngresado = gets.chomp.to_i
numeroCalculado = 0

for i in 0..numeroIngresado
	numeroCalculado += i**2
end

puts "El resultado es #{numeroCalculado}"
