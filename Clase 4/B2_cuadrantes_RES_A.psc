Proceso cuadrantes
	Definir x1, x2, d Como Real;
	Definir nroDeCuadrante como Cadena;
	
	Escribir "Ingresar una después de otra las dos componentes de un par ordenado de números reales.";
	Leer x1, x2;
	
    // ############# Completar el programa debajo de esta linea de comentario
	
	si x1 = 0 y x2 = 0 Entonces		
		nroDeCuadrante <- "primer";		
	FinSi
		
	si x1 > 0 y x2 >= 0 Entonces			
		nroDeCuadrante <- "primer";
	FinSi
	
	si x1 <= 0 y x2 > 0 Entonces
		nroDeCuadrante <- "segundo";
	FinSi
		
	si x1 < 0 y x2 <= 0 Entonces
		nroDeCuadrante <- "tercer";
	FinSi
	
	si x1 >= 0 y x2 < 0 Entonces
		nroDeCuadrante <- "cuarto";		
	FinSi
	
	d <- raiz(x1^2 + x2^2);	
	
	// ############# Completar el programa por encima de esta linea de comentario
	
	Escribir "El par (",x1,", ",x2,") pertenece al ",nroDeCuadrante," cuadrante y está a ",d," unidades de distancia del origen.";
	
FinProceso
