Proceso ejercicio_3
	Definir Año,Mes,lim_Dia, Dia Como Entero;
	Mostrar " Este programa sirve para verificar si una fecha ingresada es valida";
	Mostrar "";
	Mostrar " Digite el año:";
	leer AÑO ;
	
	Mientras  Año <= 0 Hacer
		Limpiar Pantalla;
		Mostrar " El año no puede ser menor que cero";
		Mostrar " Digite el año nuevamente:";
		leer Año;
	FinMientras
	Limpiar Pantalla;
	Mostrar " (I) Año, es un año bisiesto";
	Mostrar "_/_/",Año;
	Mostrar " Digite el mes :";
	leer Mes;
	
	Mientras  Mes <=0 | Mes >= 13 Hacer
		Limpiar Pantalla;
		Mostrar "_/_/",Año;
		Mostrar " El mes solo puede variar del 1 al 12";
		Mostrar " Digite el mes nuevamente";
		leer Mes;
		
	FinMientras
	
	Si Año mod 4= 0 Entonces
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
	Mostrar "_/",Mes,"/",Año;
	Mostrar " Digite el Dia :";
	leer Dia;
	
	Mientras  Dia <= 0 | Dia > lim_Dia Hacer
		Limpiar Pantalla;
		Mostrar "_/",Mes,"/",Año;
		Mostrar " Fecha Incorrecta", lim_Dia,"dias digite nuevamente ";
		leer Dia;
	FinMientras
	Mostrar " Fecha Correcta:",Dia,"/",Mes,"/",Año;
FinProceso
