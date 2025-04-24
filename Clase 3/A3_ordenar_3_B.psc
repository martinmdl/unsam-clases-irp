Proceso ordenar_3_B
	definir n1, n2, n3 Como Real;
	
	Escribir "Ingresar el primer número.";
	Leer n1;
	Escribir "Ingresar el segundo número.";
	Leer n2;
	Escribir "Ingresar el tercer número.";
	Leer n3;

	// Completar el programa a partir de esta línea
	
	si n1 <= n2 y n1 <= n3 Entonces
		
        si n2 <= n3 Entonces
            escribir n1, "<=", n2, "<=", n3;
        Sino
            escribir n1, "<=", n3, "<=", n2;
        FinSi
		
    Sino si n2 <= n1 y n2 <= n3 Entonces
			
			si n1 <= n3 Entonces
				escribir n2, "<=", n1, "<=", n3;
			Sino
				escribir n2, "<=", n3, "<=", n1;
			FinSi
			
		Sino
			
			si n1 <= n2 Entonces
				escribir n3, "<=", n1, "<=", n2;
			Sino
				escribir n3, "<=", n2, "<=", n1;
			FinSi
			
		FinSi
		
	FinSi
	
FinProceso
