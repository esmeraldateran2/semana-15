Algoritmo ejercicio_7
	Definir NUMERO_BILLETES , NUMERO_MONEDAS, TOTAL, billetes , monedas , indice_billetes, indice_monedas , cantidad Como Real;
	Definir cantidad_entera, i Como Entero;
	Definir cantidad_bill_mon , cantidad_decimal Como Real;
	
	NUMERO_BILLETES <- 7;
	NUMERO_MONEDAS <- 8;
	TOTAL <- NUMERO_BILLETES + NUMERO_MONEDAS;
	
	dimension billetes(NUMERO_BILLETES);
	
	billetes(0)<-500;
	billetes(1)<-200;
	billetes(2)<-100;
	billetes(3)<-50;
	billetes(4)<-20;
	billetes(5)<-10;
	billetes(6)<-5;
	
	
	dimension monedas(NUMERO_MONEDAS);
	
	monedas(0)<-200;
	monedas(1)<-100;
	monedas(2)<-50;
	monedas(3)<-20;
	monedas(4)<-10;
	monedas(5)<-5;
	monedas(6)<-2;
	monedas(7)<-1;
	
	dimension cantidad_bill_mon(TOTAL);
	
	indice_billetes<-0;
	indice_monedas<-0;
	

	escribir "Dame una cantidad mayor que 0";
	leer cantidad;
	
	
	Si cantidad > 0 Entonces
		
		
		cantidad_entera <- trunc(cantidad);
		cantidad_decimal <- trunc(((cantidad - cantidad_entera) *100) + 0.1);
		
	 
		Para i<-0 Hasta TOTAL-1 Con Paso 1 Hacer
			
			
			Si i<NUMERO_BILLETES Entonces
				
				
				cantidad_bill_mon(i) <- trunc(cantidad_entera / billetes(indice_billetes));
				
				
				cantidad_entera <- cantidad_entera MOD billetes(indice_billetes);
				
				
				indice_billetes <- indice_billetes +1;
				
			Sino
				
				
				Si indice_monedas>=0 y indice_monedas<=1 Entonces
					
					
					cantidad_bill_mon(i) <- trunc(cantidad_entera / (monedas(indice_monedas) / 100));
					
					
					cantidad_entera <- cantidad_entera MOD (monedas(indice_monedas) /100);
					
				Sino
					
					
					cantidad_bill_mon(i) <- trunc(cantidad_decimal / monedas(indice_monedas));
					
					
					cantidad_decimal <- cantidad_decimal MOD monedas(indice_monedas);
				Fin Si
				
				
				indice_monedas <- indice_monedas + 1;
			Fin Si
			
		Fin Para
		
		
		indice_billetes<-0;
		indice_monedas<-0;
		
		
		Para i<-0 Hasta TOTAL-1 Con Paso 1 Hacer
			
			
			Si i<NUMERO_BILLETES Entonces
				
				Si cantidad_bill_mon(i) > 0 Entonces
					Escribir "Cantidad de ",billetes(indice_billetes), "PAD es de: ",cantidad_bill_mon(i);		
				Fin Si
				
				
				indice_billetes <- indice_billetes + 1;
				
			Sino
				
				Si cantidad_bill_mon(i) > 0 Entonces
					
					Escribir "Cantidad de ",(monedas(indice_monedas) / 100), "PAD es de: ",cantidad_bill_mon(i);		
				Fin Si
				
				
				indice_monedas <- indice_monedas + 1;
			Fin Si
			
		Fin Para
		
	Sino
		escribir "La cantidad debe se mayor que 0";
	Fin Si
	
FinAlgoritmo
