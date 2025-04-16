Proceso sacar_redundantes
	
	// Se debe esperar una cadena de carácteres
	// e imprimir en pantalla otra cadena que
	// 1) tenga el primer caracter de cada tipo que aparezca en la cadena de entrada en el orden de aparición.
	// 2) no tenga caracteres repetidos
	// Un ejemplo de ejecución podría ser:
	// *** Ejecución Iniciada ***
	// > palabra
	// palbr
	// *** Ejecución Finalizada ***
	
	definir repetidos, text, currentChar, currentRep como texto;
	definir nextIndexI, i, j como entero;
	
	leer text;
	repetidos <- subcadena(text, 0, 0);
	
	// asndaissdn
	// 0123456789
	
	// repetidos <- asndi
	
	para i <- 1 hasta longitud(text)-1 hacer
		
		currentChar <- subcadena(text, i, i);
		nextIndexI <- i;
		
		para j <- 0 hasta longitud(repetidos)-1 Hacer
			
			currentRep <- subcadena(repetidos, j ,j);
			
			si currentChar = currentRep entonces
				nextIndexI <- i + 1;
			FinSi
			
		FinPara
		
		si i = nextIndexI entonces
			repetidos <- concatenar(repetidos, currentChar);
		FinSi
		
	FinPara
	
	escribir repetidos;
	
FinProceso