Proceso ordenar_3_A
	definir n1, n2, n3 Como Real;
	
	Escribir "Ingresar el primer n�mero.";
	Leer n1;
	Escribir "Ingresar el segundo n�mero.";
	Leer n2;
	Escribir "Ingresar el tercer n�mero.";
	Leer n3;

	// Completar el programa a partir de esta l�nea
	
	si n1 <= n2 Entonces
		
		si n1 <= n3 Entonces
			
			si n2 <= n3 Entonces
				escribir n1, "<=", n2, "<=", n3;
			SiNo
				escribir n1, "<=", n3, "<=", n2;
			FinSi
			
		SiNo
			
			escribir n3, "<=", n1, "<=", n2;
			
		FinSi
		
	SiNo
		
		si n1 <= n3 Entonces
			
			escribir n2, "<=", n1, "<=", n3;
			
		SiNo
			si n2 <= n3 Entonces
				escribir n2, "<=", n3, "<=", n1;
			SiNo
				escribir n3, "<=", n2, "<=", n1;
			FinSi
		FinSi
		
	FinSi
	
FinProceso
