Proceso invertir_entradas
	
	Dimension ent[20];
	Definir ent Como Caracter;
	Definir k, n Como Entero;
	
	Escribir "Ingrese la cantidad de entradas a invertir (20 o menos):";
	Leer n;
	
	// Completar desde acá hacia abajo
	// Podés, aunque no es necesario, agregar funciones.
	// Hay que recibir n cadenas ingresadas por el usuario y después imprimerlas en el orden inverso, empezando por la última.
	// Ejemplo de ejecución:
	//  *** Ejecución Iniciada. ***
	//  Ingrese la cantidad de entradas a invertir (20 o menos):
	//  > 3
	//  > Hola
	//  > que
	//  > tal
	//  tal
	//  que
	//  Hola
	//  *** Ejecución Finalizada. ***
	
	para k <- 1 hasta n hacer 
		leer ent[k-1];
	FinPara
 	
	para k <- 1 hasta n hacer 
		escribir ent[n-k];
	FinPara
	
FinProceso  
