//Ejercicio 1: Calculadora de vuelto
//Pedir costo y dinero recibido. Calcular y mostrar el vuelto o advertir si no alcanza.

//Entrada: Costo=0 (se lee), dinero_recibido=0 (se lee), vuelto=0 (se calcula)
//Proceso:vuelto = dinero_recibido - costo 
//Salida: mostrar vuelto o advertencia si no alcanza

Funcion Calculadora_vuelto
	Definir costo, dinero_recibido, vuelto Como Real
	costo=0; dinero_recibido=0; vuelto=0
	
	Escribir "Ingrese el costo total: "
	Leer costo
	Escribir "Ingrese el dinero recibido"
	Leer dinero_recibido
	
	vuelto = dinero_recibido - costo
	
	Si vuelto >= 0 Entonces
		Escribir "Su cambio es de: $", vuelto
	SiNo
		Escribir "El dinero recibido es insuficiente, faltando: $", abs(vuelto) //se coloca el abs para que el vuelto no refleje como negativo
	Fin Si

FinFuncion


//Ejercicio 2: Conversor de kilogramos al libras 
//Crear un menú que permita al usuario:Convertir kilogramos a libras o  Convertir libras a kilogramos

//entrada: cantidad=0 (se calcula), resultado=0 (se calcula), opc=0 (se lee)
//proceso: si elige la opcion 1 Se multiplica el valor de 1libra q es 2.20462  para convertir kg a Lb
//si elige la opccion 2 se divide el valor de 1libra q es 2.20462 y asi se convierte de lb a kg
//salida: kg a lb , lb a kg

Funcion  Conversor_de_kilogramos_a_libras
    Definir opcion Como Entero
    Definir cantidad, resultado Como Real	
	cantidad=0; resultado=0; opc=0
	
	//ingresar un menu de opciones para elegir si kilogramos o libras 
    Escribir "Conversor de peso"   
    Escribir "1. Convertir kilogramos a libras"   //opcion 1
    Escribir "2. Convertir libras a kilogramos"   //opcion 2
    Escribir "Seleccione una opción (1 o 2): "   // instrucción del proceso 
    Leer opc // opc es la abreviatura de opción
	
	//si es la opcion 1 debe de ingresar un valor 
    Si opc = 1 Entonces
        Escribir "Ingrese el peso en kilogramos: "
        Leer cantidad
        resultado <- cantidad * 2.20462  //se debe de multiplicar la cantidad ingresada por lo equivalente de una libra 
        Escribir cantidad, " kg equivalen a ", resultado, " libras."
    Sino
		//si es la opcion 2 debe de ingresar un valor 
        Si opc = 2 Entonces
            Escribir "Ingrese el peso en libras: "
            Leer cantidad
            resultado <- cantidad / 2.20462   //se debe de divir la cantidad por lo equivale una libra 
            Escribir cantidad, " libras equivalen a ", resultado, " kilogramos."
        Sino
            Escribir "Opción no válida."
        FinSi
    FinSi
FinFuncion


//Ejercicio 3: Calculadora de descuentos
// Aplicar 0%, 5% o 10% de descuento según el monto de compra

// ENTRADA
// monto
// descuento_aplicado
// descuento1
// descuento2
// descuento3
// total_pagar

// PROCESO 
// monto (leer)
// descuento1=0, descuento2=0.05, descuento3=0.10, descuento_aplicado, total pagar (calcular)
// Si monto < 100 Entonces
// descuento_aplicado = monto * descuento1
// Si monto < 500 Entonces
// descuento_aplicado = monto * descuento2
//Sino
// descuento_aplicado = monto * descuento3
//FinSi

// total_pagar = monto - descuento_aplicado

//SALIDA
//Escribir "Descuento aplicado: ", descuento_aplicado
//Escribir "Total a pagar: $", total_pagar

Funcion Calculadora_descuentos
	Definir monto, descuento_aplicado, descuento1, descuento2, descuento3, total_pagar Como Real
	monto=0; descuento_aplicado=0; descuento1=0; descuento2=0.05; descuento3=0.10; total_pagar=0
	
	Escribir "Ingrese el monto"
	Leer monto
	Si monto < 100 Entonces
		descuento_aplicado= monto * descuento1
	SiNo
		Si monto < 500 Entonces
			descuento_aplicado= monto * descuento2
		SiNo
			descuento_aplicado= monto * descuento3
		Fin Si
	Fin Si
	
	total_pagar= monto - descuento_aplicado
	
	Escribir "Descuento aplicado: ", descuento_aplicado
	Escribir "Total a pagar: $", total_pagar
FinFuncion

// ejercicio:4 Calcular_IVA_Y_descuento

// Entrada: definir precio sin iva , precio con iva, precio FinAl
//pedir el precio sin iva
// leer precio 
// Proceso: calcular precio con iva del 15%
// precios  con iva<- precio   sin iva + (presiosiniva * o.15)
// aplicar un descuento de 30% al precio con iva 
// precio final <- precio con iva - ( precio con iva * 0.30)
// Salida: mostrar el presio con iva (escribir)
// mostar el precio final con el 30% de descuento (escribir)

Funcion Calcular_IVA_Y_descuento
	Definir preciosinIva, precioconIva, preciofinal Como Real 
	
	Escribir "ingrese el precio sin IVA:" ; Leer preciosinIva
	
	// calcular precio con IVA de 15%
	precioconIva <- preciosinIva + (preciosinIva * 0.15)
	
	// aplicar un descuento de 30 % al precioconIva
	preciofinal <- precioconIva - (precioconIva * 0.30)
	
	// mostrar resutaltado 
	Escribir " El precio con IVA incluido es : ", precioconIva
	Escribir " El precio final con el descuento del 30% es :", preciofinal
FinFuncion


// Ejercicio 5: Comparación de precios entre dos productos.

// entrada: precio1, precio2
// Pedir dos precios.
// presentar los precios
//proceso: si el precio del primer producto es mayor 
// presentar "el primer producto es más caro"
//si el precio del segundo producto es mayor
//presentar "el segundo es más caro"
//Sino "ambos productos tienen el mismo precio"
//salida: Mostrar cuál es mayor, menor o si son iguales.

Funcion  Comparacion_De_Precios
    Definir precio1, precio2 Como Real
	precio1=0;precio2=0
    // Solicitar el precio del primer producto
    Escribir "Ingrese el precio del primer producto: "
    Leer precio1
    // Solicitar el precio del segundo producto
    Escribir "Ingrese el precio del segundo producto: "
    Leer precio2
    // Comparar los precios
    Si precio1 > precio2 Entonces
        Escribir "El primer producto es más caro."
    Sino
        Si precio1 < precio2 Entonces
            Escribir "El segundo producto es más caro."
        Sino
            Escribir "Ambos productos tienen el mismo precio."
        FinSi
    FinSi
FinFuncion



//Ejercicio 6: Clasificador de edad del cliente
//Pedir edad. Indicar si es niño (0-12), joven (13-17), adulto (18-64), adulto mayor (65+).

//Entrada: edad=0 (se lee)
//Proceso: calcular la edad según los parámetros dados
//Salida: edad de 0 a 12 = niño, edad de 13 a 17 = joven, edad de 18 a 64 = adulto, edad de 65 a + = adulto mayor

Funcion Clasificación_edad
	Definir edad Como Entero
	edad=0
	
	Escribir "Ingrese su edad actual"
	Leer edad
	
	//Se coloca el Op. Logico Y para que se cumpla solo si ambas condiciones entran en el rango establecido
	Si edad >= 0 Y edad <= 12 Entonces
		Escribir "A los ", edad, " años, se lo considera como: Niño/Niña."
	SiNo
		Si edad >= 13 Y edad <= 17 Entonces
			Escribir "A los ", edad, " años, se lo considera como: Joven."
		SiNo
			Si edad >= 18 Y edad <= 64 Entonces
				Escribir "A los ", edad, " años, se lo considera como: Adulto."
			SiNo
				Si edad >= 65 Entonces
					Escribir "A los ", edad, " años, se lo considera como: Adulto Mayor."
				FinSi
			FinSi
		Fin Si
	Fin Si
	
FinFuncion

// ejercicio : 7. Identificador de número par o impar

//ENTRADA:   numero=0 (se lee) , residuo=0 (se calcula)
//PROCESO: residuo <- numero - (Trunc(numero / 10) * 10)
//SALIDA: si es par o impar y si es multiplo de 10 o
//si no es multiplo de 10 

Funcion Identificador_de_número_par_e_impar
	
	Definir numero, residuo Como Entero
	numero=0;residuo=0
	
	// ENTRADA
	Escribir "Ingrese un número :"
	Leer numero
	
	// PROCESO: Verificar si es par con MOD
	Si numero MOD 2 = 0 Entonces
		Escribir "El número es PAR"
	Sino
		Escribir "El número es IMPAR"
	FinSi
	
	// PROCESO: Calcular módulo 10 manualmente
	residuo <- numero - (Trunc(numero / 10) * 10)
	
	Si residuo = 0 Entonces
		Escribir "El número es MÚLTIPLO DE 10"
	Sino
		Escribir "El número NO es múltiplo de 10"
	FinSi
FinFuncion



//Ejercicio 8: Evaluador de puntuación de servicio
// Pedir una puntuación del 1 al 10 e interpretar como "Malo", "Regular", "Bueno",
//"Excelente".
	
// ENTRADA
// puntuacion
	
// PROCESO
// puntuacion (leer)
// Si puntuacion >= 1 y puntuacion <= 4 Entonces
// Escribir "MALO"
// Si puntuacion >= 5 y puntuacion <= 6 Entonces
// Escribir "REGULAR"
// Si puntuacion >= 7 y puntuacion <= 8 Entonces
// Escribir "BUENO"
// Si puntuacion >= 9 y puntuacion <= 10 Entonces
// Escribir "EXCELENTE"
//FinSi
//SALIDA

Funcion Puntuacion_servicio
	Definir puntuacion Como Entero
	puntuacion=0
	
	Escribir "Ingrese la puntuacion"
	Leer puntuacion
	    Si puntuacion >= 1 y puntuacion <= 4 Entonces
			Escribir "MALO"
		SiNo
			Si puntuacion >= 5 y puntuacion <= 6 Entonces
				Escribir "REGULAR"
			SiNo
				Si puntuacion >= 7 y puntuacion <= 8 Entonces
					Escribir "BUENO"
				SiNo
					Escribir "EXCELENTE"
				Fin Si
			Fin Si
		Fin Si
FinFuncion




// ejercicio 9 verificador de múltiplos de 3 o múltiplos de 9 o múltiplo de 12

//entrada: perdir un número
// leer num=0
//proceso: ver si el número ingresado es múltiplo  para 3
// presentar si es o no múltiplo para 3 
// asi mismo ver si o no es múltiplo  para 9 y 12
//salida: mostrar si son o no multiplos para 3, 9 y 12
//fin

Funcion  Verificador_de_múltiplos
	Definir num Como Entero
	num=0
	
	Escribir "Ingrese un número"
	Leer num
	
	si num mod 3 = 0 Entonces
		Escribir "El número es múltiplo de 3"
	sino 
		Escribir "El número NO es múltiplo de 3"
	FinSi
	si num mod 9 = 0 Entonces
		Escribir "El número es múltiplo de 9"
	sino 
		Escribir "El número NO es múltiplo de 9"
	FinSi
	Si num mod 12 = 0 Entonces
		Escribir "El número es múltipo de 12"
	sino 
		Escribir "El número  NO es múltiplo de 12"
	FinSi
	
FinFuncion



//Ejercicio 10: Calculadora de propina
//Pedir valor de la cuenta. Calcular propina del 10% o 15% según nivel de servicio.

//Entrada: Definir las variables (cuenta (se lee), propina (se lee), total (se calcula) y nivel_servicio (se lee))
//Proceso: nivel_servicio = (nivel_servicio)
//si el nivel_servicio es "bueno" Entonces
//propina <- cuenta * 0.15
//SiNo
//propina <- cuenta * 0.10
//FinSi
//poner total <- cuenta + propina
//Salida de los resultados: presentar el calculo de la propina dada.

//ENTRADA DE DATOS:
Funcion Calculadora_propina
	//DEFINICION DE LAS VARIABLES: (cuenta, propina, total y nivel_servicio) 
	//DEFINICION DEL VALOR DE LA VARIABLE: cuenta=0;propina=0;total=0;nivel_servicio=""
	Definir cuenta, propina, total Como Real
    Definir nivel_servicio Como Caracter
	cuenta = 0; propina = 0; total = 0; nivel_servicio=""
	
	//PROCESO DE DATOS:
    Escribir "Ingrese el valor de la cuenta: "
    Leer cuenta
    Escribir "Ingrese el nivel de servicio si es: (bueno / regular / malo): "
    Leer nivel_servicio
	
    nivel_servicio <- (nivel_servicio)  
	
    Si nivel_servicio = "bueno" Entonces
        propina <- cuenta * 0.15
    Sino
        propina <- cuenta * 0.10
    Fin Si
    total <- cuenta + propina
	
	//SALIDA DE LOS RESULTADOS:
    Escribir "El monto de la propina es: ", propina
    Escribir "El total a pagar es: ", total
FinFuncion



//Ejercicio 11: Clasificador de monto de compra
//Categorizar la compra: "baja" (<$10), "media" ($10-30), "alta" (>$30).

//Entrada: Definir variables monto  (se lee) y categoria="" (se asigna)
//Proceso: si < 10 entonces // categoria = "es baja"
// SiNo
// si monto >= 10 y monto <= 30 entonces // categoria = "es media"
// SiNo
// categoria = "es alta"
//Escribir "La categoria es de: ", categoria (resultado)
//Salida de loes resultados: Presentación de la categoria final de la compra
//ENTRADA DE LAS VARIABLES: monto (Como real), categoria (Como Caracter)

Funcion clasificador_compra
	Definir monto Como Real
	Definir categoria Como Caracter
	//PROCESO DE DATOS: valor incial de cada variables // monto=0;categoria=""
	monto=0;categoria=""
	
	Escribir "Ingrese el monto de la compra: "
	Leer monto
	Si monto < 10 Entonces
		categoria <- "es baja"
	Sino 
		Si monto >= 10 Y monto <= 30 Entonces
			categoria <- "es media"
		Sino
			categoria <- "es alta"
		Fin si
	finsi
	
	//SALIDA DE LOS RESULTADOS:
	Escribir "La categoría de la compra es de: ", categoria
FinFuncion


//Ejercicio 12: Determinar si un número es positivo deberá presentar el doble del número
//Si es negativo lo convierte a positivo y lo presenta. Si es cero presenta el número es neutro
//Pedir un número y clasificar su signo.

//Entrada:num=0 (se lee), doble=0 (se calcula), contrario=0 (se calcula)
//Proceso: si num > 0 = doble = num * 2,
//         si num < 0 = contrario = abs(num) 
//         si num = 0 escribir: el número es neutro
//Salida: mostrar el resultado según su clasificación de signo

Funcion Clasificación_signo
	Definir num, doble, contrario Como Real
	num=0; doble=0; contrario=0
	
	Escribir "Ingrese un número"
	Leer num
	
	Si num > 0 Entonces
		doble = num * 2
		Escribir "El doble del número ingresado es: ", doble
	SiNo
		Si num < 0 Entonces
			contrario = abs(num) //se utiliza abs para cambiar el signo del número a positivo 
			Escribir "El contrario del número ingresado es: ", contrario
		SiNo
				Escribir "El número que ingresó es neutro"
			FinSi
		FinSi
	
FinFuncion


//EJERCICIO 13. Verificador de acceso por edad y dinero 
//LEER edad para verificar si tiene acceso a la tienda 
//y leer dinero para ver si alcanza para realizar una compra 

//entrada: edad=0 (se lee), dinero=0 (se lee)
//proceso: Si edad > 18 Y dinero >= 1 Entonces
//salida : mostrar si tiene acceso o si no tiene acceso por su edad o por dinero 

Funcion Verificador_Acceso_Tienda
	Definir edad Como Entero
	Definir dinero Como Real
	edad=0;dinero=0
	
	Escribir "Ingrese su edad:"
	Leer edad
	Escribir "Ingrese la cantidad de dinero que tiene ($):"
	Leer dinero
	
	Si edad > 18 Y dinero >= 1 Entonces
		Escribir "Acceso permitido a la tienda"
	Sino
		Escribir "Acceso denegado. Verifique su edad o dinero disponible."
	FinSi
Finfuncion




//Ejercicio 14: Descuento por edad y monto
// Aplicar descuento especial solo si el cliente es mayor de 60 y compra más de $50. Si no lo es
// aplica el iva del 15% con un descuento solo del 5%

// ENTRADA
// edad (leer)
// monto (leer)
// Iva= 0.15
// descuento=0.05
// Total_pagar(calcular)
// descuento_aplicado
// total_iva=0

// PROCESO
// leer edad, monto
// si edad > 60 y monto > 50 Entonces
// descuento_aplicado= monto * 0.10
// total_pagar= monto - descuento_aplicado
//SiNo
// total_iva= monto + (monto * Iva)
// descuento_aplicado= total_iva * descuento
// total_pagar= total_iva - descuento_aplicado
//FinSi
//SALIDA
// Escribir "Descuento aplicado: $", descuento_aplicado
//Escribir "Total a pagar: $", total_pagar

Funcion Descuento_Edad_Monto
	Definir edad Como Entero
	definir monto, Iva, descuento, total_pagar, descuento_aplicado, total_iva Como Real
	edad=0; monto=0; Iva=0.15; descuento=0.05; total_pagar=0; descuento_aplicado=0; total_iva=0
	
	Escribir "Ingrese la edad"
	Leer edad
	Escribir "Ingrese el monto"
	Leer monto
	
	Si edad > 60 y monto > 50 Entonces
		descuento_aplicado= monto * 0.10
		total_pagar= monto - descuento_aplicado
	SiNo
		total_iva= monto + (monto * Iva)
		descuento_aplicado= total_iva * descuento
		total_pagar= total_iva - descuento_aplicado
	Fin Si
	
	Escribir "Descuento aplicado: $", descuento_aplicado
	Escribir "Total a pagar: $", total_pagar
FinFuncion


// Ejercicio:15. Cálculo de cambio exacto con billetes de $10 y $5
// Pedir valor del vuelto y mostrar cuántos billetes de $10 y $5 necesita

// entrada: vuelto=0 (se lee), B10=0 (se calcula), B5=0 (se calcula)
// poceso: pedir el valor del vuelto 
// leer vuelto
// si vuelto es >= 10 
// B10 = trunc ( vuelto/10) =0 
// vuelto = vuelto mod 10 =0 
// presentar cuantos billestes necesita
// si vuelto >= 5 Entonces
// vuelto = vuelto - 5 
// B5 = 1
// salida: presentar cuantos billete necesita 

Funcion  vuelto_en_billetes_de10_5
	definir vuelto,B10, B5 Como Entero
	vuelto=0;B10=0;B5=0
	
	Escribir "Ingrese el valor del vuelto:"
	Leer vuelto 
	
	si vuelto  >= 10 Entonces
		B10 = trunc (vuelto/10)
		vuelto = vuelto mod 10
	FinSi
	si vuelto >= 5 Entonces
		B5 = 1
		vuelto = vuelto - 5 
	FinSi
	
	Escribir " Necesitas " , B10 " billestes de 10 "
	Escribir " Necesitas " , B5 " billestes de 5 "
	
FinFuncion


// Ejercicio 16: Categorizador de día de la semana. 

//entrada: Pedir número del 1 al 7 , num=0 (se lee)
// proceso: mostrar qué día es.
//Validar entrada
//salida: presentar que dia de la semana es

Funcion  Categorizador_De_Dia_De_La_Semana
	Definir Num Como Entero
	num=0 
	
	//La utiliza "repetir" y "Hasta Que" para asegurar que el usuario solo ingrese un número válido entre 1 y 7 
	Repetir
		Escribir "Ingresar un numero del 1 al 7"
		Leer Num
		Si num < 1 O num > 7 Entonces
			Escribir "Entrada Invalida, debe ser del 1 al 7" 
		FinSi
	Hasta Que num >= 1 Y num <= 7
	// Mostrar el día correspondiente según el número
	Segun num hacer
		1:
			Escribir "Lunes"
		2:
			Escribir "Martes"
		3:
			Escribir "Miércoles"
		4:
			Escribir "Jueves"
		5:
			Escribir "Viernes"
		6:
			Escribir "Sábado"
		7:
			Escribir "Domingo"
			
	FinSegun
	
FinFuncion



// Ejercicio 17: Clasificador de producto por precio unitario.
//Pedir precio unitario y decir si es "económico", "regular" o "caro" 

// entrada: precio=0 (se lee)
// proceso: si precio es menor que 50 entonces (el preducto es económico)
// si el precio es >= 50 y <= 100 (el producto es regular)
// sino (el producto es caro)
// salida: mostrar si el producto es económico, regular o caro

Funcion  Clasificador_Precio_Producto
	Definir precio Como Real
	precio=0
	
	// Pedimos al usuario que ingrese el precio unitario
	Escribir "Ingrese el precio unitario del producto:"
	Leer precio
	
	// Clasificamos el producto según el precio
	Si precio < 50 Entonces
		Escribir "El producto es económico"
	Sino
		Si precio >= 50 Y precio <= 100 Entonces
			Escribir "El producto es regular"
		Sino
			Escribir "El producto es caro"
		FinSi
	Finsi
FinFuncion


//Ejercicio 18: Determinador de bisiesto
// Pedir un año. Indicar si es bisiesto usando regla condicional (mod 4 y mod 100, mod 400).

// ENTRADA
// anio 
// es bisiesto

// PROCESO
// anio (leer)
// es bisiesto (calcular)
// Si (anio MOD 4=0 y anio MOD 100<>0) o (anio MOD 400=0) Entonces 
// Escribir " El año ", anio, " es bisiesto "
// SiNo
// Escribir " El año ", anio, " no es bisiesto "
//FinSi
//SALIDA

Funcion Año_bisiesto
	Definir anio Como Entero
	anio=0
	
	Escribir "Ingrese el año"
	Leer anio
	
	Si (anio MOD 4 = 0 Y anio MOD 100 <> 0) o (anio mod 400 = 0) Entonces
		Escribir " El año ", anio, " es bisiesto "
	SiNo
		Escribir " El año ", anio, " no es bisiesto "
	Fin Si
FinFuncion


//Ejercicio 19: Conversor de horas a minutos y segundos
//Pedir horas y calcular su equivalencia en minutos y segundos.

//Entrada: hora=0 (se lee), minutos=0 (se calcula), segundos=0 (se calcula)
//Proceso: minutos = horas * 60
//         segundos = minutos * 60
//Salida:mostrar la conversiónn de horas a minutos y segundos

Funcion Conversor_hora
	Definir horas, minutos, segundos Como Entero
	horas=0; minutos=0; segundos=0
	
	Escribir "Ingrese las horas a convertir"
	Leer horas
	
	minutos = horas * 60
	segundos = minutos * 60
	
	Escribir "Las horas ingresadas: ", horas, " h"
	Escribir "Conversión en minutos: ", minutos, " min"
	Escribir "Conversión en segundos: ", segundos, " s"
	
FinFuncion


//Ejercicio20. Verificador de triple de un número
// Ingresar un numero que puede ser cualquiera y despues ingresar el segundo numero q sea el triple del primero y verificar si es o no es el triple 

//entrada: numm1=0 (se lee) ,  numm2=0 (se lee)
//proceso : numm2 es la multiplicacion de numm1 * 3 y si no , no es el triple 
//salida : mostrar si es el triple o no del primer numero 

Funcion Verificador_Triple
    Definir numm1, numm2 Como Entero
	numm1=0 ; numm=0
	
    Escribir "Ingrese el primer número:"
    Leer numm1
    Escribir "Ingrese el segundo número:"
    Leer numm2
	
    Si numm2 = 3 * numm1 Entonces
        Escribir "El segundo número ES el triple del primero."
    Sino
        Escribir "El segundo número NO es el triple del primero."
    FinSi
FinFuncion


// ejercicio:21 Determinar riesgo por síntomas múltiples para el efecto tienes

//entrada: definir variables de cada sintoma = fiebre="" (se lee), respira="" (se lee), pecho="" (se lee)
//proceso:
//preguntar si tiene fiebre 
//presentar respuesta 
// preguntar dificultad al respirar 
// presentar respuesta 
// preguntar si tiene dolor en el pecho
//presentar respuesta
//salida:
// si tiene todos los sintomas entonces 
// presentar "alto riesgo : derivar a emergencia"
//si no presenta uno de los sintomas 
// presentar "riesgo bajo o medio"

Funcion  Riesgo_de_sintomas
	Definir fiebre, respira, pecho Como Caracter
	fiebre="";respira="";pecho=""
	
	Escribir "¿Tiene fiebre?(SI/NO):"
	leer fiebre 
	Escribir "¿Tiene dificultad para respirar? (SI/NO):"
	Leer respira 
	Escribir "¿Tiene dolor en el pecho?(SI/NO):"
	Leer pecho
	
	//Para evitar errores en el programa al ingresar (si / no) de manera mayuscula o minuscula, se convierten en minusculas las respuestas
	fiebre = Minusculas(fiebre)
	respira = Minusculas(respira)
	pecho = Minusculas(pecho)
	
	si fiebre = "si" y respira = "si" y pecho = "si" Entonces
		Escribir "Alto riesgo: Derivar a emergencia"
	sino 
		Escribir "Riesgo bajo o medio"
	FinSi
FinFuncion


//Ejercicio 22: Clasificador presión arterial
// La tienda desea implementar una función básica en su sistema para identificar el estado
// de salud de los clientes que se toman la presión arterial en su tienda. Para ello, solicita un
// pequeño algoritmo que reciba la presión sistólica como entrada y muestre una clasificación
// médica básica según la siguiente tabla:
// Presión Sistólica Clasificación
// Menor a 90 Presión baja
// Entre 90 y 120 Presión normal
// Entre 121 y 139 Prehipertensión
// 140 o más Hipertensión

// ENTRADA
// presion=0 (se lee)
// clasificacion= "" (se asigna)

// PROCESO
// presion (leer)
// Si presion < 90 Entonces
// Clasificacion = "Presion baja"
// Si presion <= 120 Entonces
// Clasificacion = "Presion normal"
// Si presion <= 139 Entonces
// Clasificacion = "Prehipertension"
// SiNo
// Clasificacion = "Hipertension"

//SALIDA
//Escribir "Clasificación médica: ", clasificacion

Funcion Presion_arterial
	Definir presion Como Entero
	Definir clasificacion Como Caracter
	presion=0; clasificacion= " "
	
	Escribir "Ingrese la presion"
	Leer presion
	Si presion < 90 Entonces
		clasificacion= "Presion baja"
	SiNo
		Si presion <= 120 Entonces
			clasificacion= "Presion normal"
		SiNo
			Si presion <= 139 Entonces
				clasificacion= "Prehipertension"
			SiNo
				clasificacion= "Hipertension"
			Fin Si
		Fin Si
	Fin Si
	
	Escribir "Clasificación médica: ", clasificacion
FinFuncion



// ejercicio 23. Mostrar saludo personalizado

// entrada: definir nombre como caracter nombre="" (se lee)
// proceso: pedir un nombre y leer el nombre 
// salida: presentar un saludo personalizado
// con el nombre del usuario


Funcion  Saludo_personalizado
	Definir nombre Como Caracter
	nombre=""
	
	Escribir "Ingrese su nombre:"
	Leer nombre
	
	Escribir "¡hola! Que tal, " , nombre " espero que en cuentres muy bien :)"
	
FinFuncion


//Ejercicio 24: Detectar si el carácter ingresado es una vocal
//Ingresar una letra. Verificar si es a, e, i, o, u.

//Entrada: letra= "" (se lee)
//Proceso: Letra = minuscula (letra) 
//         letra= "a" o letra="e" o letra="i" o letra="o" o letra="u" 
//Salida: Verificar el tipo de vocal 

Funcion Carácter_vocal
	Definir letra, vocales Como Caracter
	letra=""
	
	Escribir "Ingrese una letra"
	Leer letra
	
	letra = Minusculas(letra) //se coloca para evitar fallas en el algoritmo al ingresar un caráter en mayuscula
	
	Si letra= "a" o letra="e" o letra="i" o letra="o" o letra="u" Entonces
		Escribir "La letra que ingresó es la vocal: ", letra
	SiNo
		Escribir "La letra que ingresó no es una vocal" 
		
	FinSi
	
FinFuncion


//ejercicio25. Detectar si el carácter ingresado es una consonante
//La función Verificar_Constante tiene como propósito identificar si una letra ingresada por el usuario es una consonante.

//Entrada: El usuario debe escribir una letra (carácter) mediante el teclado.
//Proceso: El programa convierte esa letra a minúscula usando Minusculas(letra) para facilitar la comparación. Luego, verifica si:
//La letra está entre "a" y "z" (es una letra del abecedario).
//No es una vocal (a, e, i, o, u).
//Si ambas condiciones se cumplen, se considera que la letra es una consonante.
//Salida: Se muestra un mensaje indicando si la letra ingresada es o no una consonante.

Funcion Verificar_Constante 
	Definir letra Como Carácter
	Letra = ""
	
	Escribir "Ingrese una letra: "
	Leer letra
	
	Letra <- Minusculas(letra) //se coloca para evitar fallas en el algoritmo al ingresar un caráter en mayuscula
	
	Si letra >= "a" y letra <= "z" y letra <>  "a" y letra <>  "e" y letra <>  "i" y letra <> "o" y letra  <> "u" Entonces
		Escribir "La letra: " + letra + " es una consonante."
	SiNo
		Escribir "La letra: " +letra+ " no es una consonante"
	FinSi
FinFuncion


//Ejercicio 26: Comparar si dos nombres ingresados son iguales
// Pedir dos nombres y verificar si son iguales (texto exacto).

// ENTRADA
//nombre1= "" (se lee)
//nombre2= "" (se lee)
//verificar si son iguales

// PROCESO
//nombre1, nombre2 
// compara si nombre1 = nombre2

//SALIDA
// Si son iguales, guardar: "Los nombres son iguales".
// Si no son iguales, guardar: "Los nombres son diferentes".

Funcion Nombres_iguales
	Definir nombre1, nombre2 Como Caracter
	nombre1= " "; nombre2= " "
	
	Escribir "Ingrese el primer nombre"
	Leer nombre1
	Escribir "Ingrese el segundo nombre"
	Leer nombre2
	
	Si nombre1 = nombre2 Entonces
		Escribir "Los nombres son iguales"
	SiNo
		Escribir "Los nombres son diferentes"
	Fin Si
FinFuncion


// ejercicio 27. Verificar si una letra es mayúscula o minúscula
//Ingresar una letra. Comparar con su versión en mayúscula/minúscula.

// entrada: definir una variable llamada letra= "" (se lee)
// proceso: pedir al usario que ingrese una letra 
//leer letra  ingresada por el usuario
// valiada si es mayúscula usando ,letra >= A y letra <= Z
// si se cumple; mostrar "La letra ingresada es mayúscula"
// si no es mayúscula, verificar si es minúscula usando letra >= a y letra <= z 
// si se cumple mostrar "La letra ingresada es minúscula."
//si no es ninguna de las dos; mostar "No es una letra válida"
//salida: mostrar si la letra ingresada se encuentra en mayúscula, minúscula o no es una ketra válida

Funcion  Verificar_letra_mayúscula_minúscula
	Definir letra Como Caracter
	letra=""
	
    Escribir "Ingrese una letra:"
    Leer letra
	
    Si (letra >= "A" Y letra <= "Z") Entonces
        Escribir "La letra ingresada es mayúscula."
    Sino
        Si (letra >= "a" Y letra <= "z") Entonces
            Escribir "La letra ingresada es minúscula."
        Sino
            Escribir "No es una letra válida."
        FinSi
    FinSi
FinFuncion


//ejercicio 28. Mostrar nombre completo del cliente
//Pedir nombre y apellido por separado. Mostrar nombre completo.

//ENTRADA 
//Definir nombre y apellido, nombre_completo como carácter.
//nombre="" (leer), apellido="" (leer), nombre_completo="" (calcular)
//Proceso: nombre_completo = nombre + " " + apellido
//salida  "su nombre completo es: " , nombre_completo

Funcion NOMBRE_ENTERO
	
	Definir  nombre, apellido, nombre_completo Como Carácter
	//definir nombre y apellido como carácter usando ("")
	nombre <- ""
	apellido <- ""
	nombre_completo <- ""
	
	//Proceso 
	// Ingresamos el nombre y el apellido del usuario.
	Escribir Sin Saltar "ingrese su nombre"
	Leer nombre
	Escribir Sin Saltar "ingrese su apellido"
	Leer apellido
	
	//calculamos el nombre completo una vez ingresado el nombre y el apellido.
	//	nombre_completo = nombre + apellido, usamos +""+ para dar espacio.
	nombre_completo = nombre + " " + apellido
	
	//SALIDA
	//Presentamos por pantalla el resultado final o en este caso, el nombre mas el apellido.
	//formando el nombre completo del usuario.
	Escribir "su nombre completo es: " , nombre_completo
FinFuncion


// Ejercicio 29: Verificar si una palabra es corta o larga
//Pedir una palabra. Si tiene más de 6 caracteres, decir "larga"; si no, "corta".

// Entrada: definir palabra="" (se lee)
//Proceso: cantidadCaracteres = Longitud(palabra)
//Si cantidadCaracteres > 6 es larga, caso contrario es corta 
//salida: escribir si el número de caracteres es largo o corto

Funcion Palabra_corta_o_larga
	Definir palabra Como Caracter
	palabra= ""
	
	Escribir "Ingresa un texto: "
	Leer palabra
	
	// Obtener el número de caracteres del texto
	cantidadCaracteres = Longitud(palabra)
	
	// Realizar una acción según el tamaño del texto
	Si cantidadCaracteres > 6 Entonces
		// Si el texto tiene más de 6 caracteres
		Escribir "Elemento con volumen considerable"
	Sino
		// Si el texto tiene 6 caracteres o menos
		Escribir "Elemento con volumen reducido"
	FinSi
FinFuncion


//Ejercicio 30: Contar los caracteres y convertir a mayúsculas cualquier frase (sin recorrer)
//Pedir frase. Usar funciones de PseInt de cadenas para este ejercicio

//Entrada: frase = "" (se calcula), num_carácter = 0 (se calcula), mayus = "" (se calcula)
//Proceso: 	num_carácter = Longitud(frase)
//          mayus = Mayusculas(frase)
//Salida: convertir la frase en mayuscula y contar el número de carácteres de la frase ingresada

Funcion Contar_caracteres
	Definir num_carácter Como Entero
	Definir frase, mayus Como Caracter
	num_carácter=0
	frase = ""; mayus = ""
	
	Escribir "Ingrese una frase: "
	Leer frase
	
	num_carácter = Longitud(frase)
	mayus = Mayusculas(frase)
	
	Escribir "Frase en mayúscula: ", mayus
	Escribir "El número de caracteres es: ", num_carácter
	
FinFuncion


Algoritmo Menú_Ciclo
	Definir opciones Como Entero
	opciones=0
	
	Mientras opciones <> 31 Hacer //"Mientras" permite que el menú se muestre repetitivamente hasta seleccionar la opción 31. Salida
		Escribir ""
		Escribir "Menú de opciones"
		Escribir "Nivel Básico (Secuenciales y Condicionales Simples):"
		Escribir "1. Calculadora_vuelto"
		Escribir "2. Conversor_de_kilogramos_a_libras"
		Escribir "3. Calculadora_descuentos"
		Escribir "4. Calcular_IVA_Y_descuento"
		Escribir "5. Comparacion_De_Precios"
		Escribir "6. Clasificación_edad"
		Escribir "7. Identificador_de número_par_e_impar"
		Escribir "8. Puntuacion_servicio"
		Escribir "9. Verificador_de_múltiplos"
		Escribir "10. Calculadora_propina"
		Escribir ""
		Escribir "Nivel Intermedio (Condicionales Anidadas y Complejas):"
		Escribir "11. clasificador_compra"
		Escribir "12. Clasificación_signo"
		Escribir "13. Verificador_Acceso_Tienda"
		Escribir "14. Descuento_Edad_Monto"
		Escribir "15. vuelto_en_billetes_de10_5"
		Escribir "16. Categorizador_De_Dia_De_La_Semana"
		Escribir "17. Clasificador_Precio_Producto"
		Escribir "18. Año_bisiesto"
		Escribir "19. Conversor_hora"
		Escribir "20. Verificador_Triple"
		Escribir "21. Riesgo_de_sintomas"
		Escribir "22. Presion_arterial"
		Escribir ""
		Escribir "Nivel Básico (Lógica Simples de cadenas y Comparaciones):"
		Escribir "23. Saludo_personalizado"
		Escribir "24. Carácter_vocal"
		Escribir "25. Verificar_Constante "
		Escribir "26. Nombres_iguales"
		Escribir "27. Verificar_letra_mayúscula_minúscula"
		Escribir "28. NOMBRE_ENTERO"
		Escribir "29. Palabra_corta_o_larga"
		Escribir "30. Contar_carácteres"
		Escribir ""
		Escribir "31. Salir"
		Escribir "Seleccione una de las opciones: "
		Leer opciones
		Escribir ""
		
		//Se utiliza "segun" para evaluar una variable y ejecutar distintas acciones dependiendo de su valor
		//Se utiliza "hacer" ya que indica la acción que debe ejecutarse cuando se cumpla una de las condiciones dentro de "segun"
		Segun opciones Hacer  
			//Se usa "caso" dentro de la estructura "segun" para definir cada posible valor de la variable evaluada
			Caso 1:
				//Se les coloca los "()" para indicar que esas son llamadas a funciones
                Calculadora_vuelto()
			Caso 2:
				Conversor_de_kilogramos_a_libras()
			Caso 3:
				Calculadora_descuentos()
			Caso 4:
				Calcular_IVA_Y_descuento()
			caso 5:
				Comparacion_De_Precios()
            Caso 6:
                Clasificación_edad()
			Caso 7:
				Identificador_de_número_par_e_impar()
			caso 8:
				Puntuacion_servicio()
			caso 9:
				Verificador_de_múltiplos()
			Caso 10:
				Calculadora_propina()
			caso 11 :
				clasificador_compra()
            Caso 12:
                Clasificación_signo()
			Caso 13:
				Verificador_Acceso_Tienda()
			caso 14:
				Descuento_Edad_Monto()
			Caso 15: 
				vuelto_en_billetes_de10_5()
			caso 16 :
				Categorizador_De_Dia_De_La_Semana()
			caso 17:
				Clasificador_Precio_Producto()
			caso 18: 
				Año_bisiesto()
            Caso 19:
                Conversor_hora()
			caso 20: 
				Verificador_Triple()
			caso 21: 
				Riesgo_de_sintomas()
			caso 22: 
				Presion_arterial()
			caso 23:
				Saludo_personalizado()
			Caso 24:
                Carácter_vocal()
			caso 25:
				Verificar_Constante()
			caso 26: 
				Nombres_iguales()
			caso 27:
				Verificar_letra_mayúscula_minúscula()
			caso 28:
				NOMBRE_ENTERO()
			caso 29:
				Palabra_corta_o_larga()
            Caso 30:
                Contar_carácteres()
            Caso 31:
				Escribir "Ciclo Culminado"
				//Se utiliza "de otro modo" para cuando la variable evaluada en "segun" no coinciden con ninguna de las opciones predefinidas
			De Otro Modo:
				Escribir "Opción inválida, ingrese otro."
				
		FinSegun
	FinMientras
FinAlgoritmo

	