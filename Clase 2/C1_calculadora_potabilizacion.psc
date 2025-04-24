Proceso calculadora_potabilizacion
	
	// PRIMERA PARTE: ELECCION DE MARCA DE LAVANDINA
	
	// inputs para comparar el precio del cloro
	definir concentracion_a, concentracion_b, litros_a, litros_b, precio_a, precio_b como real;
	
	// usuario ingresa 3 inputs por marca
	escribir "Ingresar marca A (concentracion, litros, precio)";
	leer concentracion_a, litros_a, precio_a;
	
	escribir "Ingresar marca B (concentracion, litros, precio)";
	leer concentracion_b, litros_b, precio_b;
	
	// auxiliares para calcular
	definir precio_litro_a, precio_litro_b, precio_gramo_a, precio_gramo_b como real;
	
	// calculo el precio por gramo de cloro para cada marca de lavandina (A y B)
	precio_litro_a <- precio_a / litros_a;
	precio_litro_b <- precio_b / litros_b;
	
	precio_gramo_a <- precio_litro_a / concentracion_a;
	precio_gramo_b <- precio_litro_b / concentracion_b;
	
	escribir "1g cloro de marca A cuesta: $", precio_gramo_a;
	escribir "1g cloro de marca B cuesta: $", precio_gramo_b;
	
	// SEGUNDA PARTE: GUIA PARA UTILIZAR LOS GOTEROS SEGÚN LA MARCA ELEGIDA
	
	// inputs para identificar la marca elegida y una variable auxiliar
	definir concentracion_x, litros_x, precio_x, cloro_por_gota como real;
	
	// defino varibales "Simbólicas" (podrían ser constantes)
	definir VOLUMEN_GOTA, NORMA_MAX, NORMA_OPT, NORMA_MIN, NORMA_LIM como real;
	VOLUMEN_GOTA <- 0.00005;
	NORMA_MAX <- 0.0002;
	NORMA_OPT <- 0.0004;
	NORMA_MIN <- 0.0005;
	NORMA_LIM <- 0.002;
	
	// usuario ingresa la concentración de cloro de la marca elegida
	escribir "Ingresar concentración de cloro de la marca elegida)";
	leer concentracion_x;
	
	// calculo el rendimiento de una gota de 0,05 ml según la normativa de potabilización
	cloro_por_gota <- VOLUMEN_GOTA * concentracion_x;
	
	// muestro los resultados según cuánta eficiencia se le desee dar al cloro
	escribir "Potabilizar como máximo ", cloro_por_gota / NORMA_MAX, " litros de agua";
	escribir "Potabilizar de manera óptima ", cloro_por_gota / NORMA_OPT, " litros de agua";
	escribir "Potabilizar como mínimo ", cloro_por_gota / NORMA_MIN, " litros de agua";
	escribir "No potabilizar menos de ", cloro_por_gota / NORMA_LIM, " litros de agua";
	
FinProceso
