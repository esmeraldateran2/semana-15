Proceso ejercicio_6
	Definir palabra , letra Como Caracter;
	Definir cantidad, i , vocales Como Entero;
	cantidad= 0;
	i = 0;
	vocales = 0;
	Mostrar " Escribe la oracion: ";
	leer palabra;
	
	palabra = Minusculas(palabra);
	cantidad = Longitud(palabra);
	
	Para  i <- 0 Hasta  cantidad-1 Con Paso  1 Hacer
		letra= Subcadena(palabra,i,i);
		si letra= " a" | letra = " e " | letra = " i " | letra = " o " | letra  = " u " Entonces
			vocales = vocales+i;
		FinSi
	FinPara
	Mostrar " La palabra tiene ", vocales, " vocales, y " cantidad-vocales " consonantes::";
FinProceso
