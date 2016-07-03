def validMonth(mes,valid)
	birthMonth = mes
	if mes == -1
		print "¿Cual es tu mes de nacimiento?:-->"
		birthMonth = gets.chomp.to_i
	elsif !valid
		print "Por favor digite un mes válido:-->"
		birthMonth = gets.chomp.to_i
	end	

	if birthMonth>0 and birthMonth<13
		return birthMonth
	else
		validMonth(birthMonth,false)
	end
end

def validDay(month,day,valid)
	birthMonth = month
	birthDay = day
	if day == -1
		print "¿Cual es tu día de nacimiento?:-->"
		birthDay = (gets.chomp).to_i
	elsif !valid
		print "Por favor digite un día válido para el mes #{birthMonth}:-->"
		birthDay = (gets.chomp).to_i
	end	

	if birthMonth == 2 and (birthDay <1 or birthDay>28)
		validDay(birthMonth,birthDay,false)
	elsif (birthMonth == 4 or birthMonth == 6 or birthMonth == 9 or birthMonth == 11) and 
		  (birthDay <1 or birthDay>30) 
		validDay(birthMonth,birthDay,false)
	elsif (birthMonth == 1 or birthMonth == 3  or birthMonth == 5 or birthMonth == 7 or 
			 birthMonth == 8 or birthMonth == 10 or birthMonth == 12) and (birthDay <1 or birthDay>31)
		validDay(birthMonth,birthDay,false)
	else
		return birthDay
	end
end


def zodiaco(dia,mes)

	if (mes == 1 and dia >= 20) or (mes == 2 and dia <= 18)
		puts "Usted es Acuario"
	elsif (mes == 2 and dia >= 19) or (mes == 3 and dia <= 20)
		puts "Usted es Piscis"
	elsif (mes == 3 and dia >= 21) or (mes == 4 and dia <= 19)
		puts "Usted es Aries"
	elsif (mes == 4 and dia >= 20) or (mes == 5 and dia <= 20)
		puts "Usted es Tauro"
	elsif (mes == 5 and dia >= 21) or (mes == 6 and dia <= 20)
		puts "Usted es Géminis"
	elsif (mes == 6 and dia >= 21) or (mes == 7 and dia <= 22)
		puts "Usted es Cáncer"
	elsif (mes == 7 and dia >= 23) or (mes == 8 and dia <= 22)
		puts "Usted es Leo"
	elsif (mes == 8 and dia >= 23) or (mes == 9 and dia <= 22)
		puts "Usted es Virgo"
	elsif (mes == 9 and dia >= 23) or (mes == 10 and dia <= 22)
		puts "Usted es Libra"
	elsif (mes == 10 and dia >= 23) or (mes == 11 and dia <= 21)
		puts "Usted es Escorpio"
	elsif (mes == 11 and dia >= 22) or (mes == 12 and dia <= 21)
		puts "Usted es Sagitario"
	elsif (mes == 12 and dia >= 22) or (mes == 1 and dia <= 19)
		puts "Usted es Capricornio"
	else
		puts "Que signo mas raro"
	end
		
end


mesNacimiento = validMonth(-1,false)
diaNacimiento = validDay(mesNacimiento,-1,false)

zodiaco(diaNacimiento,mesNacimiento)












