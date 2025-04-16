Proceso probador_distancia
	
	definir x1, x2, y1, y2 como real;
	
	escribir "x1, y1";
	leer x1, y1;
	
	escribir "x2, y2";
	leer x2, y2;
	
	escribir DistanciaR2(x1, x2, y1, y2);
	
FinProceso

funcion dist <- DistanciaR2(x1, x2, y1, y2)
	
	definir dist como real;
	
	dist <- raiz( (x1-x2)^2 + (y1-y2)^2 );
	
FinFuncion
	