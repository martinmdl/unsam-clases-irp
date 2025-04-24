Proceso Probador_de_CCS
	Definir C Como Caracter;
	Leer C;
	escribir CSS(C);
FinProceso

// NO MODIFIQUES el proceso principal de arriba, sólo completa abajo de este comentario la función llamada "CCS".
// La función CCS (por Código de Caracteres Simple) debe recibir una cadena de caracteres 
// y devolver el código numérico correspondiente a su *primer caracter* ignorará los demás.
// El número a devolver será el número de posición (basada en 0) de ese caracter 
// en la cadena llamada 'tabla' que contiene todos los caracteres que usamos normalmente
// Si el caracter no es encontrado deberá devolverse 106 (que es la longitud de la tabla).
// La cadena tabla será:
// TABLA <- " ,;.:/(){}[]¿?¡!0123456789abcdefghijklmnñopqrstuvwxyzABCDEFGHIJKLMNÑOPQRSTUVWXYZáÁéÉíÍóÓúÚüÜ<>+-/*_^°|~&%#";
// Por ejemplo CCSA(" ") debería dar 0 -el espacio es el primer caracter- y 
// CCSA("Loco") debería dar 64, porque la "L" está en el 'lugar' 64 si empezamos a contar desde 0.

Funcion idNum <- CSS(text)
	
	definir i, idNum como entero;
	definir tabla, caracterActual, caracterBuscado como texto;
	tabla <- " ,;.:/(){}[]¿?¡!0123456789abcdefghijklmnñopqrstuvwxyzABCDEFGHIJKLMNÑOPQRSTUVWXYZáÁéÉíÍóÓúÚüÜ<>+-/*_^°|~&%#";
	
	caracterBuscado <- Subcadena(text, 0, 0);
	
	para i <- 0 Hasta longitud(tabla)-1 Hacer
		
		caracterActual <- Subcadena(tabla, i, i);
		
		si caracterBuscado = caracterActual entonces
			idNum <- i;
		FinSi
		
	FinPara
	
FinFuncion

