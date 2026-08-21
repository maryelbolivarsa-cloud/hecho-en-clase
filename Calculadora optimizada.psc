Algoritmo Calculadora
	Escribir "Bienvendos a la calculadora, donde segun el numero que elija, va a ser la operacion a realizar"
	Escribir "Suma 1, Resta 2, Multiplicacion 3, Divion 4"
	Leer opera
	Escribir "Cantidad de Números a operar" 
	leer cantidad
	para i <- 1 hasta cantidad hacer 
		Escribir "Digite un número"
		leer numero
		Si Opera=1
			operacion<- 0 
			operacion<- operacion + numero 
		FinSi
		Si Opera =2
			si operacion<- 0 Entonces
				operacion<- numero
			SiNo 
			operacion<- operacion - numero 
		FinSi
	FinSi
	Si Opera=3
		si operacion<- 0 Entonces
			operacion<- numero
		SiNo 
			operacion<- operacion * numero
		FinSi
	FinSi
		Si Opera =4
			si operacion<- 0 Entonces
				operacion<- numero
			SiNo 
			operacion<- operacion / numero
		FinSi
	FinSi
	
	FinPara
	escribir "La operacion es: ",operacion 
FinAlgoritmo
