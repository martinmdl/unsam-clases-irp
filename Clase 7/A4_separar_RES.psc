Proceso probador
	//Atención: No modificar el proceso probador, el objetivo es implementar la función Separar() abajo.
	Definir cade, separador como Cadena;
	Definir k, Largo Como Entero;
	Dimension separada[100];
	Definir separada como Cadena;
	
	Leer cade;
	Leer separador;
	
	Largo <- Separar(cade, separador, separada);
	
	Para k<- 0 hasta Largo-1 Hacer
		Escribir k,") ", separada[k];
	FinPara
	Escribir "Largo = ", Largo;
	
FinProceso

Funcion L <- Separar(cad, sep, arr)
    // Esta función recibe:
	// cad: una cadena de texto
	// sep: una cadena que se usa como separador
	// arr: un arreglo de cadenas de caracteres
	// Devuelve:
	// L un número real indicando cuantos lugares del arreglo llenó
	// Puebla el arreglo "arr" con secciones de la cadena original en su orden de aparición
	// según estén separadas por el separador indicade en "sep".
	// Ejemplo, invocar Separar(""Hola**que**tal") devuelve L=3, arr[0]="Hola", arr[1]="que", arr[2]="tal";
	
	definir i, L, indiceInicial, indiceFinal, indicesSeparador como entero;
	
	L <- 0; // Inicializado en uno porque la cantidad de palabras es igual a la cantidad de separadores mas uno.
	
	indiceInicial <- 0; // Inicializado en cero porque en este ejercicio nos aseguran que el primer caracter de la cadena pertenecerá a una palabra
	
	indicesSeparador <- longitud(sep) - 1; // Lo necesito para manipular los índices.
	
	para i <- 0 hasta longitud(cad)-1 hacer // Recorre toda la cadena caracter por caracter.
		
		si subcadena(cad, i, i + indicesSeparador) = sep o i = longitud(cad)-1 entonces // Identifica si estamos posicionados sobre un caracter separador.
			
			indiceFinal <- i-1; // Determina en qué índice finalizó la palabra previa a la aparición del separardor.
			
			si i = longitud(cad)-1 entonces
				indiceFinal <- i; // Si estamos en la última iteración, significa que no fui interrumpido por un separador.
			FinSi
			
			arr[L] <- subcadena(cad, indiceInicial, indiceFinal); // Guarda la palabra.
			
			L <- L + 1; // Aumenta en uno la cuenta de palabras guardadas (valor retornado).
			
			indiceInicial <- i + 1 + indicesSeparador; // Estable el siguiente inicio de una palabra en el caracter siguiente al separador.
			
		FinSi
		
	FinPara
	
FinFuncion
