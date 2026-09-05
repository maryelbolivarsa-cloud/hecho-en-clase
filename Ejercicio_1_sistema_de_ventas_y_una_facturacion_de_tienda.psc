Algoritmo Ejercicio_1_sistema_de_ventas_y_una_facturacion_de_tienda
	Definir cantidad_clientes, cantpro, i, j Como Entero
	Definir nom_mayor Como Cadena
	total_dia <- 0
	mayor_compra <- -1
	Repetir
		Escribir "Digite la cantidad de clientes que seran atendidos:"
		Leer cantidad_clientes
		Si cantidad_clientes <= 0 Entonces
			Escribir "ERROR: La cantidad de clientes debe ser mayor a 0."
		FinSi
	Hasta Que cantidad_clientes > 0
	Dimension nom[cantidad_clientes]
	Para i <- 1 Hasta cantidad_clientes Hacer
		Escribir "CLIENTE ", i, " DE ", cantidad_clientes
		Escribir "Digite su nombre:"
		Leer nom[i]
		Repetir
			Escribir "Digite la cantidad de productos a comprar:"
			Leer cantpro
			Si cantpro <= 0 Entonces
				Escribir "ERROR: La cantidad debe ser mayor a 0."
			FinSi
		Hasta Que cantpro > 0
		Dimension pronom[cantpro]
		Dimension L[cantpro]
		Dimension precio[cantpro]
		subtotal_cliente <- 0
		Para j <- 1 Hasta cantpro Hacer
			Escribir "--- Producto ", j, " ---"
			Escribir "Digite el nombre del producto:"
			Leer pronom[j]
			Repetir
				Escribir "Digite la cantidad del producto:"
				Leer L[j]
				Si L[j] <= 0 Entonces
					Escribir "ERROR: La cantidad debe ser mayor a 0."
				FinSi
			Hasta Que L[j] > 0
			Repetir
				Escribir "Digite el precio del producto:"
				Leer precio[j]
				Si precio[j] <= 0 Entonces
					Escribir "ERROR: El precio debe ser mayor a 0."
				FinSi
			Hasta Que precio[j] > 0
			subtotal_prod <- L[j] * precio[j]
			subtotal_cliente <- subtotal_cliente + subtotal_prod
		FinPara
		porc_desc <- calcula_descuento(subtotal_cliente)
		valor_desc <- subtotal_cliente * porc_desc
		valor_con_desc <- subtotal_cliente - valor_desc
		valor_iva <- calcula_IVA(valor_con_desc)
		total_cliente <- valor_con_desc + valor_iva
		total_dia <- total_dia + total_cliente
		Si total_cliente > mayor_compra Entonces
			mayor_compra <- total_cliente
			nom_mayor <- nom[i]
		FinSi
		Escribir "================ FACTURA CLIENTE ================"
		Escribir "Cliente: ", nom[i]
		Escribir "Subtotal acumulado: $", subtotal_cliente
		Escribir "Descuento aplicado (", (porc_desc * 100), "%): $", valor_desc
		Escribir "Valor IVA (19%): $", valor_iva
		Escribir "TOTAL FINAL A PAGAR: $", total_cliente
	FinPara
	Escribir "            RESUMEN GENERAL DEL DIA              "
	Escribir "Numero de clientes atendidos: ", cantidad_clientes
	Escribir "Valor total vendido en el dia: $", total_dia
	Si cantidad_clientes > 0 Entonces
		Escribir "Promedio de compra por cliente: $", (total_dia / cantidad_clientes)
		Escribir "Cliente con la compra de mayor valor ($", mayor_compra, "): ", nom_mayor
	FinSi
FinAlgoritmo
Funcion porc <- calcula_descuento (subtotal_compra)
	Definir porc Como Real
	Si subtotal_compra < 100000 Entonces
		porc <- 0.0
	SiNo
		Si subtotal_compra >= 100000 Y subtotal_compra <= 299999 Entonces
			porc <- 0.05
		SiNo
			porc <- 0.10
		FinSi
	FinSi
FinFuncion
Funcion valor_iva <- calcula_IVA (valor)
	Definir valor_iva Como Real
	valor_iva <- valor * 0.19
FinFuncion