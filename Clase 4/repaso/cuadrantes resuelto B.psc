Proceso cuadrantes
	Definir x1, x2, d Como Real;
	Definir nroDeCuadrante como Cadena;
	
	Escribir "Ingresar una después de otra las dos componentes de un par ordenado de números reales.";
	Leer x1, x2;
	
    // ############# Completar el programa debajo de esta linea de comentario
	
	si x1 = 0 Entonces
		si x2 = 0 Entonces
			nroDeCuadrante <- "primer";
		SiNo
			si x2 > 0 Entonces
				nroDeCuadrante <- "segundo";
			SiNo
				nroDeCuadrante <- "cuarto";
			FinSi
		FinSi
	SiNo
		si x1 > 0 Entonces
			si x2 >= 0 Entonces
				nroDeCuadrante <- "primer";
			SiNo
				nroDeCuadrante <- "cuarto";
			FinSi
		SiNo
			si x2 > 0 Entonces
				nroDeCuadrante <- "segundo";
			SiNo
				nroDeCuadrante <- "tercer";
			FinSi
		FinSi
	FinSi
	
	d <- raiz(x1^2 + x2^2);	
	
	// ############# Completar el programa por encima de esta linea de comentario
	
	Escribir "El par (",x1,", ",x2,") pertenece al ",nroDeCuadrante," cuadrante y está a ",d," unidades de distancia del origen.";
	
FinProceso
