Proceso prueba_int_rect
	
	// Atención: No modifiques este proceso principal, tu trabajo es programar la función IntersecarLineales (busca mas abajo la declaración y las especificaciones).
	// Tampoco modifiques las otras funciones auxiliares que sirven para interpretar la entrada ni -como siempres- agregues texto a la salida para que funcionen las pruebas.
	
	Dimensionar coefR1[2], coefR2[2], punto[2];
	Definir coefR1, coefR2, punto Como Real;
	Definir cad como Cadena;
	Definir k Como entero;
	
	Para k <- 0 Hasta 1 Hacer
		coefR1[k] <- 0;
		coefR2[k] <- 0;
	FinPara
	
	Escribir "Ingrese una formula lineal para y en la recta 1:";
	Leer cad;
	k <- LeerPolinomio(cad, coefR1);
	
	Escribir "Ingrese una formula lineal para y en la recta 2:";
	Leer cad;
	k <- LeerPolinomio(cad, coefR2);
	
	Si IntersecarLineales(coefR1, coefR2, punto) Entonces
		Escribir "El punto de intersección entre las dos rectas es (", punto[0], ", ", punto[1], ").";
	SiNo
		Si punto[0] = 0 Entonces
			Escribir "Las dos rectas son paralelas no coincidentes, la intersección es vacía.";
		Sino
			Escribir "Se trata de dos veces la misma recta, la intersección vuelve a dar la misma recta, y =  ", coefR1[1],"x + ", coefR1[0],".";
		FinSi
	FinSi
	
FinProceso

Funcion exito <- IntersecarLineales(lin1, lin2, punto)
	
	definir exito como logico;
	definir x, fx como real;
	
	si lin1[1] = lin2[1] entonces // comparo pendientes
		
		// son paralelas
		exito <- falso;
		punto[0] <- 0;
		
		si lin1[0] = lin2[0] entonces // comparo ordenadas al origen
			
			// son la misma recta
			punto[0] <- 1;
			
		FinSi
		
	SiNo
		
		// hay una intersección
		x <- ( lin2[0] - lin1[0] ) / ( lin1[1] - lin2[1] );
		fx <- lin1[1] * x + lin1[0];		
		exito <- verdadero;
		punto[0] <- x;
		punto[1] <- fx;
		
	FinSi
	
FinFuncion


// ¡No modificar las siguientes funciones!

Funcion gr <- LeerPolinomio(cad, polinomio) // Librería: LibPolinomios
	// Devuelve el grado de un polinomio
	// Dependencias: 
	//  * Separar, Reemplazar en LibCadenas
	Dimension term[100];
	Dimension aux[4]; //2 lugares se van a usar, el resto por robustez
	Definir term, aux Como Cadena;
	Definir T, gr, k, j  Como Entero;
	Definir ind como entero;
	Definir coef Como Real;
	Definir RecGrado Como Logico;
	RecGrado <- Falso;
	
	gr <- -1;
	cad <- Reemplazar(cad, " ", ""); //sacar espacios
	cad <- Reemplazar(cad, "-", "+-"); //para separar en términos con +
	T <- Separar(cad, "+", term);
	
	Para k<-0 Hasta T-1 Hacer
		Si term[k] <> "" Entonces
			//aux[1] <- ""; //por si separar devuelve un solo valor
			j <- Separar(term[k], "x", aux);
			Segun j Hacer
				1:   // no hay x en este término
					ind <- 0;
					
				2:  
					Si aux[1]="" Entonces // es el término de grado 1
						ind <- 1;
					Sino
						Si Subcadena(aux[1],0,0)="^" Entonces
							aux[1] <- Subcadena(aux[1],1,Longitud(aux[1])-1);
						FinSi
						ind <- ConvertirANumero(aux[1]);
					FinSi
					
				De Otro Modo: 
					ind <- -1;
					Escribir "Error: El termino ", k+1," del polinomio está mal formado?";
			FinSegun;
			
			Si aux[0]="" Entonces
				coef <- 1; // los coeficientes 1 pueden omitirse
			SiNo
				Si aux[0] = "-" Entonces
					coef <- -1; //los coeficientes -1 pueden expresarse como "-"
				SiNo
					coef <- ConvertirANumero(aux[0]);
				FinSi
				
			FinSi
			polinomio[ind] <- polinomio[ind] + coef;
			Si ind > gr Entonces
				gr <- ind;
			FinSi
		FinSi
	FinPara
FinFuncion

Funcion ret <- Reemplazar(cad, origen, cambio) // Libreria: Libcadenas
	//Reemplaza todas las apariciones de la subcadena origen en cad por la cadena cambio
	Definir k,j, L, L2, p Como Entero;
	Definir ret como Cadena;
	
	Si origen="" Entonces
		ret <- cad;
	Sino
		L <- Longitud(cad);
		L2 <- Longitud(origen);
		k <- 0;
		j <- 0;
		p <- 0;
		ret<-"";
		Mientras k+j < L Hacer
			Si Subcadena(cad, k+j, k+j)=Subcadena(origen,j,j) Entonces
				j <- j + 1;
				Si j = L2 Entonces
					ret <- Concatenar(Concatenar(ret, Subcadena(cad, p, k-1)), cambio);
					p <- k+j;
					k <- p;
					j <- 0;
				FinSi
			SiNo
				k <- k + 1;
				j <- 0;
			FinSi
		FinMientras
		ret<-Concatenar(ret,Subcadena(cad, p, L));
	Finsi
FinFuncion

Funcion L <- Separar(cad, sep, arr Por Referencia) //LibCadenas
	//Separa la cadena cad en partes marcadas por la subcadena sep como separador y agrega esas partes al arreglo arr
	
	Definir i, j, p, f, L, v como Entero;
	L <- 0; //para contar la longitud usada del arreglo
	i <- 0; //indice a escanear en la cadena cad
	p <- 0; //principio de la siguiente parte en cad
	Si Longitud(sep)=0 Entonces //Para tratar correctamente el caso en que sep=""
		v <- 1;
	SiNo
		v <- 0;
	FinSi
	f <- v-1; //final de la última porción
	
	Mientras i < Longitud(cad) Hacer
		j <- 0; // indice de caracter a comparar en el separador sep
		
		Mientras j < Longitud(sep) y i+j < Longitud(cad) y Subcadena(cad,i+j,i+j) = Subcadena(sep,j,j) Hacer
			j <- j + 1;
		FinMientras
		
		Si j = Longitud(sep) Entonces
			arr[L] <- Subcadena(cad,p,f);
			p <- i + j + v;
			i <- p;
			f <- p - 1 + v;
			L <- L + 1;
		SiNo
			f <- i;
			i <- i + 1;
		FinSi
	FinMientras
	Si v=0 Entonces
		arr[L] <- Subcadena(cad,p,i);
		L <- L + 1;
	FinSi
FinFuncion

