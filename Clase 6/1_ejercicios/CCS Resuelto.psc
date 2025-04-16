Proceso Probador_de_CCS
	Definir C Como Caracter;
	Leer C;
	escribir CSS(C);
FinProceso

// NO MODIFIQUES el proceso principal de arriba, s�lo completa abajo de este comentario la funci�n llamada "CCS".
// La funci�n CCS (por C�digo de Caracteres Simple) debe recibir una cadena de caracteres 
// y devolver el c�digo num�rico correspondiente a su *primer caracter* ignorar� los dem�s.
// El n�mero a devolver ser� el n�mero de posici�n (basada en 0) de ese caracter 
// en la cadena llamada 'tabla' que contiene todos los caracteres que usamos normalmente
// Si el caracter no es encontrado deber� devolverse 106 (que es la longitud de la tabla).
// La cadena tabla ser�:
// TABLA <- " ,;.:/(){}[]�?�!0123456789abcdefghijklmn�opqrstuvwxyzABCDEFGHIJKLMN�OPQRSTUVWXYZ������������<>+-/*_^�|~&%#";
// Por ejemplo CCSA(" ") deber�a dar 0 -el espacio es el primer caracter- y 
// CCSA("Loco") deber�a dar 64, porque la "L" est� en el 'lugar' 64 si empezamos a contar desde 0.

Funcion idNum <- CSS(text)
	
	definir i, idNum como entero;
	definir tabla, caracterActual, caracterBuscado como texto;
	tabla <- " ,;.:/(){}[]�?�!0123456789abcdefghijklmn�opqrstuvwxyzABCDEFGHIJKLMN�OPQRSTUVWXYZ������������<>+-/*_^�|~&%#";
	
	caracterBuscado <- Subcadena(text, 0, 0);
	
	para i <- 0 Hasta longitud(tabla)-1 Hacer
		
		caracterActual <- Subcadena(tabla, i, i);
		
		si caracterBuscado = caracterActual entonces
			idNum <- i;
		FinSi
		
	FinPara
	
FinFuncion

