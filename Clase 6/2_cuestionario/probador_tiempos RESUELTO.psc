Proceso probador_tiempos
	// Atención, no toque el proceso probador principal.
	Definir t1,t2 Como Entero;
	Leer t1;
	Escribir "Esos son ", SegAbs(t1)," s desde el principio del dia.";
	Leer t2;
	Escribir "Esos son ", SegAbs(t2)," s desde el principio del dia.";
	Escribir "El intervalo de tiempo entre esos dos momentos es de ", Deltaseg(t1, t2)," s.";
FinProceso

Funcion s <- SegAbs(hhmmss)
	definir s Como Entero;
	// COMPLETAR ACÁ
	
	definir horas, mins, segs como entero;
	
	horas <- Trunc(hhmmss / 10000);
	mins <- Trunc((hhmmss % 10000) / 100);
	segs <- hhmmss % 100;
	
	s <- horas * 3600 + mins * 60 + segs;
	
FinFuncion

Funcion s <- DeltaSeg(h1, h2)
	// COMPLETAR ESTA FUNCIÓN TAMBIÉN
	
	definir s como entero;
	
	si h1 < h2 entonces
		s <- SegAbs(h2) - SegAbs(h1);
	SiNo
		s <- (SegAbs(h2) + 24 * 3600) - SegAbs(h1);
	FinSi
	
FinFuncion
	