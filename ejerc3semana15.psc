Proceso ejercicio_3
	Definir A�o,Mes,lim_Dia, Dia Como Entero;
	Mostrar " Este programa sirve para verificar si una fecha ingresada es valida";
	Mostrar "";
	Mostrar " Digite el a�o:";
	leer A�O ;
	
	Mientras  A�o <= 0 Hacer
		Limpiar Pantalla;
		Mostrar " El a�o no puede ser menor que cero";
		Mostrar " Digite el a�o nuevamente:";
		leer A�o;
	FinMientras
	Limpiar Pantalla;
	Mostrar " (I) A�o, es un a�o bisiesto";
	Mostrar "_/_/",A�o;
	Mostrar " Digite el mes :";
	leer Mes;
	
	Mientras  Mes <=0 | Mes >= 13 Hacer
		Limpiar Pantalla;
		Mostrar "_/_/",A�o;
		Mostrar " El mes solo puede variar del 1 al 12";
		Mostrar " Digite el mes nuevamente";
		leer Mes;
		
	FinMientras
	
	Si A�o mod 4= 0 Entonces
		Si Mes = 2 Entonces
			lim_Dia<- 29;
		SiNo
			Si Mes = 1 | Mes = 3 | Mes = 5 | Mes = 7 | Mes = 8 | Mes = 10 | Mes = 12 Entonces
				lim_Dia<-31;
			SiNo
				lim_Dia<-30;
			FinSi
		FinSi
	SiNo
		Si Mes = 2 Entonces
			lim_Dia<-28;
		SiNo
			Si Mes = 1 | Mes = 3 | Mes = 5 | Mes = 7 | Mes = 8 | Mes = 10 | Mes = 12 Entonces
				limi_Dia<-31;
			SiNo
				
			FinSi
		FinSi
	FinSi
	Limpiar Pantalla;
	Mostrar "_/",Mes,"/",A�o;
	Mostrar " Digite el Dia :";
	leer Dia;
	
	Mientras  Dia <= 0 | Dia > lim_Dia Hacer
		Limpiar Pantalla;
		Mostrar "_/",Mes,"/",A�o;
		Mostrar " Fecha Incorrecta", lim_Dia,"dias digite nuevamente ";
		leer Dia;
	FinMientras
	Mostrar " Fecha Correcta:",Dia,"/",Mes,"/",A�o;
FinProceso
