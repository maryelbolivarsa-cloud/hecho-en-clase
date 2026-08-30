Algoritmo Ejercicio_1_sistema_de_ventas_y_una_facturacion_de_tienda
	Escribir "digite la cantidad  de clientes que serán atendidos."
	leer cantidad_clientes
	dimension nom[cantidad_clientes]
	dimension pronom[nom[1]]
	dimension L[cantpro]
	dimension precio[L[j]]
	Para i<-1 hasta cantidad_clientes Hacer
		Escribir "digite su nombre"
		leer nom[i]
		Para j<-1 hasta contpro Hacer
			Escribir "digite la cantidad de productos"
			leer cantpro
			Escribir "digite el nombre del producto"
			leer pronom[j]
			Escribir "digite la cantidad del producto anterior"
			leer L[j]
			Escribir "digite el precio del producto"
			leer precio[j]
		FinPara
	FinPara
	para m<-1 hasta cantidad_clientes Hacer
		Escribir "El cliente", nom[m]
		para n<-1 hasta cantpro hacer 
			Escribir "producto es", pronom[n]
			Escribir "El valor del producto es:", precio[n]
			Escribir "La cantidad del producto", L[n]
			subtotal <-(L[n]* precio[n])
			Escribir subtotal
		FinPara
	FinPara
FinAlgoritmo
	