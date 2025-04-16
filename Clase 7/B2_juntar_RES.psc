Proceso probador_juntar
	// No modificar este proceso probador, agregar la funci�n Juntar al final.
	Dimensionar arreglo[20];
	Definir arreglo, sep como Cadena;
	Definir k Como Entero;
	k <- 0;
	Repetir
		Leer arreglo[k];
		k <- k + 1;
	Hasta Que k=20 o arreglo[k-1]="//"
	Leer sep;
	Si sep=":" Entonces
		k <- k-2;
	FinSi
	Escribir juntar(arreglo, k-1, sep);
FinProceso

// Definir la funci�n Juntar:
// SE INVOCA ASI: Juntar(arreglo, n, sep) donde
// arreglo es un arreglo de tipo cadena.
// n es n�mero entero mas chico o igual a la dimensi�n de arreglo.
// sep es una cadena que se usar� como separador.
// DEVUELVE: una cadena que concatena las cadenas del arreglo, intercalando el separador.
// EJEMPLO: Si saludo es el arreglo ("Hola","que","tal","como","te","va") entonces
// Juntar(saludo, 3, "* *") debe devolver la cadena "Hola* *que* *tal".

funcion cadenaFinal <- juntar(arr, largo, sep)
	
	definir i como entero;
	definir cadenaFinal como cadena;
	
	cadenaFinal <- "";
	
	para i <- 0 hasta largo - 1 hacer
		
		cadenaFinal <- concatenar(cadenaFinal, arr[i]);
		
		si i < largo - 1 entonces
			cadenaFinal <- concatenar(cadenaFinal, sep);			
		FinSi
		
	FinPara
	
FinFuncion
	