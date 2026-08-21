Algoritmo Calculadora
	Escribir "Bienvendos a la calculadora, donde segun el numero que elija, va a ser la operacion a realizar"
	Escribir "Suma 1, Resta 2, Multiplicacion 3, Divion 4"
	Leer opera
	Escribir "Cantidad de Números a operar" 
	leer cantidad
	operacion<- 0 
	para i <- 1 hasta cantidad hacer 
		Escribir "Digite un número"
		leer numero
		Si Opera=1
			operacion<- operacion + numero 
		FinSi
		Si Opera =2
			operacion<- operacion - numero 
		FinSi
		Si Opera=3
			operacion<- operacion * numero
		FinSi
		Si Opera =4
			operacion<- operacion * numero
		FinSi
	FinPara
	escribir "La operacion es: ",operacion 
FinAlgoritmo
