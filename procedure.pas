program untitled;

uses 
crt;
var Nombre,Tipo: string; 
CBoletos,Sub1,Sub2,Pago,Sistema,Salida,Vers:integer;
opcion,Comprar,Sal,Des,Vehiculo,Trans : string;
Cedula,Cedula2,Precio,Dinero: longint;


procedure mostrar;
begin
	clrscr;				 writeln('Seleccione el Boleto de su Preferencia');Readln();
						Writeln(' -----------------------------------------------------------------------------------------------------');
						writeln('|1  Simple                         Amarillo       1 Viaje en metro                              (5BS)  |');
						Writeln('|2  Integrado                      Amarillo       1 Viaje en metro y  1 Viaje en metrobus       (10BS) |');
						writeln('|3  Ida y vuelta                   Amarillo       2 Viajes en metro                             (15BS) |');
						Writeln('|4  Ida y vuelta integrado         Amarillo       2 Viajes en metro y 2 en metrobus             (20BS) |');
						writeln('|5  MultiAbono                     Naranja        10 Viajes en metro                            (25BS) |');
						writeln('|6  Multiabono Integrado           Naranja        10 Viajes en metro y 10 Viajes en metrobus    (30BS) |');
						writeln('|7  Estudiantil Simple             Azul           10 Viajes en metro                            (4Bs)  |');
						writeln('|8  Estudiantil Integrado          Azul           10 Viajes en metro y 20 Viajes en metrobus    (8BS)  |');
						Writeln('|9  MetroTarjeta                   Rojo           20, 30 y 40 Viajes (Metro y MetroBus)         (45Bs) |');
						Writeln('|10 Metro tarjeta Integrada       Rojo           20, 30 y 40 Viajes (Metro y MetroBus)          (50Bs) |');
						Writeln(' -----------------------------------------------------------------------------------------------------');
						Readln(Tipo);
						while (Tipo <> '1') and (Tipo <> '2') and (Tipo <> '3') 
	and (Tipo <> '4') and (Tipo <> '5') and (Tipo <> '6') and (Tipo <> '7') and (Tipo <> '8') 
	and (Tipo <> '9') and (Tipo <> '10') do
	
		begin
				write('Por favor ingrese algun tipo de boleto que se muestra en pantalla: '); readln(Tipo);
		end;
						writeln('Cuantos boletos desea?');readln(CBoletos);
						if CBoletos <= 0 then
						begin
						repeat
						Writeln('Por favor Ingrese una cantidad valida');readln(CBoletos);
						until CBoletos > 0;
						end;

end;


procedure Fin;
begin
	  clrscr;CBoletos:=(0);writeln('Hasta la proxima');
end;

procedure Simple;
	Begin
	Tipo:= 'Simple';
	Vehiculo := '1';
	if Vehiculo = '1' then Trans := 'Metro' ;
	Precio :=(CBoletos*5);
	clrscr;
	writeln('Debe pagar ',(Precio),'Bs Por los boletos');readln;
	End;

procedure Integrado;
begin
	Tipo:= 'Integrado';
	writeln('De que modo quiere transportarse');
	writeln('1- Metro 2-MetroBus');Readln(Vehiculo);
	if Vehiculo = '1' then Trans := 'Metro' ;
	if Vehiculo = '2' then Trans := 'MetroBus'; 
	clrscr;Precio :=(CBoletos*10);
	writeln('Debe pagar ',(Precio),'Bs Por los boletos');readln;clrscr;

end;
procedure Ida_y_Vuelta;
begin
	Tipo:= 'Ida_y_Vuelta';
	clrscr;Precio :=(CBoletos*15);
	writeln('Debe pagar ',(Precio),'Bs Por los boletos');readln;

end;
procedure Ida_y_Vuelta_Integrado;
begin
	Tipo:= 'Ida_y_Vuelta_Integrado';
	writeln('De que modo quiere transportarse');
	writeln('1- Metro 2-MetroBus');Readln(Vehiculo);
	if Vehiculo = '1' then Trans := 'Metro' ;
	if Vehiculo = '2' then Trans := 'MetroBus'; 
	clrscr;Precio :=(CBoletos*20);
	writeln('Debe pagar ',(Precio),'Bs Por los boletos');readln;

end;
procedure Multiabono;
begin
	Tipo:= 'Multiabono';
	clrscr;Precio :=(CBoletos*25);
	writeln('Debe pagar ',(Precio),'Bs Por los boletos');readln;

end;
procedure Multiabono_Integrado;
begin
	Tipo:= 'Multiabono_Integrado';
	writeln('De que modo quiere transportarse');
	writeln('1- Metro 2-MetroBus');Readln(Vehiculo);
	if Vehiculo = '1' then Trans := 'Metro' ;
	if Vehiculo = '2' then Trans := 'MetroBus'; 
	clrscr;Precio :=(CBoletos*30);
	writeln('Debe pagar ',(Precio),'Bs Por los boletos');readln;

end;
procedure Estudiantil_Simple;
begin
	Tipo:= 'Estudiantil_Simple';
	clrscr;Precio :=(CBoletos*4);
	writeln('Debe pagar ',(Precio),'Bs Por los boletos');readln;

end;
procedure  Estudiantil_Integrado;
begin
	Tipo:= 'Estudiantil_Integrado';
	writeln('De que modo quiere transportarse');
	writeln('1- Metro 2-MetroBus');Readln(Vehiculo);
	if Vehiculo = '1' then Trans := 'Metro' ;
	if Vehiculo = '2' then Trans := 'MetroBus'; 
	clrscr;Precio :=(CBoletos*8);
	writeln('Debe pagar ',(Precio),'Bs Por los boletos');readln;

end;
procedure  MetroTarjeta;
begin
	Tipo:= 'MetroTarjeta';
	writeln('De que modo quiere transportarse');
	writeln('1- Metro 2-MetroBus');Readln(Vehiculo);
	if Vehiculo = '1' then Trans := 'Metro' ;
	if Vehiculo = '2' then Trans := 'MetroBus'; 
	clrscr;Precio :=(CBoletos*35);
	writeln('Debe pagar ',(Precio),'Bs Por los boletos');readln;

end;
procedure MetroTarjeta_Integrada;
begin
	Tipo:= 'MetroTarjeta_Integrada';
	writeln('De que modo quiere transportarse');
	writeln('1- Metro 2-MetroBus');Readln(Vehiculo);
	if Vehiculo = '1' then Trans := 'Metro' ;
	if Vehiculo = '2' then Trans := 'MetroBus'; 
	clrscr;Precio :=(CBoletos*40);
	writeln('Debe pagar ',(Precio),'Bs Por los boletos');readln;

end;



procedure   Linea1;
begin
	clrscr;writeln('La linea 1 tiene las siguientes estaciones disponibles');
	writeln(' ---------------------------------------------');
	writeln('| 1 Propatria          12 Plaza Venezuela     |');
	writeln('| 2 Perez Bonalde      13 Sabana Grande       |');
	writeln('| 3 Plaza Sucre        14 Chacaito            |');
	writeln('| 4 Gato Negro         15 Chacao              |');
	writeln('| 5 Agua Salud         16 Altamira            |');
	writeln('| 6 Cano Amarillo      17 Miranda             |');
	writeln('| 7 Capitolio          18 Los Dos Caminos     |');
	writeln('| 8 La Moyada          19 Los Cortijos        |');
	writeln('| 9 Parque Carabobo    20 La California       |');
	writeln('| 10 Bellas Artes      21 Petare              |');
	writeln('| 11 Colegio de Ing    22 Palo Verde          |');
	writeln(' ---------------------------------------------');
	writeln;
	writeln('Seleccione la estacion de salida');Readln(Sub1);
	if Sub1 = 1 then Sal := 'Propatria';
	if Sub1 = 2 then Sal := 'Perez Bonalde';
	if Sub1 = 3 then Sal := 'Plaza Sucre';
	if Sub1 = 4 then Sal := 'Gato Negro  ';
	if Sub1 = 5 then Sal := 'Agua Salud';
	if Sub1 = 6 then Sal := 'Cano Amarillo ';
	if Sub1 = 7 then Sal := 'Capitolio';
	if Sub1 = 8 then Sal := 'La Moyada';
	if Sub1 = 9 then Sal := 'Parque Carabobo';
	if Sub1 = 10 then Sal := 'Bellas Artes';
	if Sub1 = 11 then Sal := 'Colegio de Ing';
	if Sub1 = 12 then Sal := 'Plaza Venezuela';
	if Sub1 = 13 then Sal := 'Sabana Grande';
	if Sub1 = 14 then Sal := 'Chacaito';
	if Sub1 = 15 then Sal := 'Chacao';
	if Sub1 = 16 then Sal := 'Altamira';
	if Sub1 = 17 then Sal := 'Miranda';
	if Sub1 = 18 then Sal := 'Los Dos Caminos';
	if Sub1 = 19 then Sal := 'Los Cortijos';
	if Sub1 = 20 then Sal := 'La California';
	if Sub1 = 21 then Sal := 'Petare';
	if Sub1 = 22 then Sal := 'Palo Verde';
	
	      while (Sub1 <> 1) and (Sub1 <> 2) and (Sub1 <> 3)  and (Sub1 <> 4)  
				and (Sub1 <> 5)  and (Sub1 <> 6)  and (Sub1 <> 7)  and (Sub1 <> 8)  
				and (Sub1 <> 9)  and (Sub1 <> 10)  and (Sub1 <> 11)  and (Sub1 <> 12)  
				and (Sub1 <> 13)  and (Sub1 <> 14)  and (Sub1 <> 15)  and (Sub1 <> 16)  
				and (Sub1 <> 17)  and (Sub1 <> 18)  and (Sub1 <> 19)  and (Sub1 <> 20)  
				and (Sub1 <> 21)  and (Sub1 <> 22)  do			
				
begin
              write('Por favor elige una opcion en pantalla : '); 
	       readln(Sub1);
	       if Sub1 = 1 then Sal := 'Propatria';
		   if Sub1 = 2 then Sal := 'Capitolio';
		   if Sub1 = 3 then Sal := 'Plaza Venezuela';
		   if Sub1 = 4 then Sal := 'Miranda';
		   if Sub1 = 5 then Sal := 'Perez bonalde';
		   if Sub1 = 6 then Sal := 'La Hoyada';
		   if Sub1 = 7 then Sal := 'Sabana Grande';
		   if Sub1 = 8 then Sal := 'Los Dos Caminos';
		   if Sub1 = 9 then Sal := 'Plaza Sucre';
		   if Sub1 = 10 then Sal := 'Parque Carabobo';
		   if Sub1 = 11 then Sal := 'Chacaito';
		   if Sub1 = 12 then Sal := 'Los Cortijos';
		   if Sub1 = 13 then Sal := 'Gato Negro';
		   if Sub1 = 14 then Sal := 'Bellas Artes';
		   if Sub1 = 15 then Sal := 'Chacao';
		   if Sub1 = 16 then Sal := 'La california';
		   if Sub1 = 17 then Sal := 'Cano Amarillo';
		   if Sub1 = 18 then Sal := 'Colegio de ing.';
		   if Sub1 = 19 then Sal := 'Altamira';
		   if Sub1 = 20 then Sal := 'Petare';
		   if Sub1 = 21 then Sal := 'Agua Salud';
		   if Sub1 = 22 then Sal := 'Palo Verde';
		   end;  
		   
	writeln('Seleccione la estacion de destino');Readln(Sub2);
	
	           if Sub1 = 1 then Des := 'Propatria';
	           if Sub2 = 2 then Des := 'Perez Bonalde';
	           if Sub2 = 3 then Des := 'Plaza Sucre';
	           if Sub2 = 4 then Des := 'Gato Negro  ';
	           if Sub2 = 5 then Des := 'Agua Salud ';
	           if Sub2 = 6 then Des := 'Cano Amarillo ';
	           if Sub2 = 7 then Des := ' Capitolio';
	           if Sub2 = 8 then Des := ' La Moyada';
	           if Sub2 = 9 then Des := ' Parque Carabobo';
	           if Sub2 = 10 then Des := ' Bellas Artes';
	           if Sub2 = 11 then Des := ' Colegio de Ing';
	           if Sub2 = 12 then Des := 'Plaza Venezuela';
	           if Sub2 = 13 then Des := 'Sabana Grande';
	           if Sub2 = 14 then Des := 'Chacaito';
	           if Sub2 = 15 then Des := 'Chacao';
	           if Sub2 = 16 then Des := 'Altamira';
	           if Sub2 = 17 then Des := 'Miranda';
	           if Sub2 = 18 then Des := 'Los Dos Caminos';
	           if Sub2 = 19 then Des := 'Los Cortijos';
	           if Sub2 = 20 then Des := 'La California';
	           if Sub2 = 21 then Des := 'Petare';
	           if Sub2 = 22 then Des := 'Palo Verde';
	           if Sub2 = (Sub1) then Des := 'Estacion Salida';
	
		while (Sub2 <> 1) and (Sub2 <> 2) and (Sub2 <> 3)  and (Sub2 <> 4)  
				and (Sub2 <> 5)  and (Sub2 <> 6)  and (Sub2 <> 7)  and (Sub2 <> 8)  
				and (Sub2 <> 9)  and (Sub2 <> 10)  and (Sub2 <> 11)  and (Sub2 <> 12)  
				and (Sub2 <> 13)  and (Sub2 <> 14)  and (Sub2 <> 15)  and (Sub2 <> 16)  
				and (Sub2 <> 17)  and (Sub2 <> 18)  and (Sub2 <> 19)  and (Sub2 <> 20)  
				and (Sub2 <> 21)  and (Sub2 <> 22)  do
						
begin
           write('Por favor elige una opcion en pantalla : '); 
	       readln(Sub2);
	       
	       if Sub2 = 1 then Sal := 'Propatria';
		   if Sub2 = 2 then Sal := 'Capitolio';
		   if Sub2 = 3 then Sal := 'Plaza Venezuela';
		   if Sub2 = 4 then Sal := 'Miranda';
		   if Sub2 = 5 then Sal := 'Perez bonalde';
		   if Sub2 = 6 then Sal := 'La Hoyada';
		   if Sub2 = 7 then Sal := 'Sabana Grande';
		   if Sub2 = 8 then Sal := 'Los Dos Caminos';
		   if Sub2 = 9 then Sal := 'Plaza Sucre';
		   if Sub2 = 10 then Sal := 'Parque Carabobo';
		   if Sub2 = 11 then Sal := 'Chacaito';
		   if Sub2 = 12 then Sal := 'Los Cortijos';
		   if Sub2 = 13 then Sal := 'Gato Negro';
		   if Sub2 = 14 then Sal := 'Bellas Artes';
		   if Sub2 = 15 then Sal := 'Chacao';
		   if Sub2 = 16 then Sal := 'La california';
		   if Sub2 = 17 then Sal := 'Cano Amarillo';
		   if Sub2 = 18 then Sal := 'Colegio de ing.';
		   if Sub2 = 19 then Sal := 'Altamira';
		   if Sub2 = 20 then Sal := 'Petare';
		   if Sub2 = 21 then Sal := 'Agua Salud';
		   if Sub2 = 22 then Sal := 'Palo Verde';
		   	if Sub2 = (Sub1) then Des := 'Estacion Salida';
		   
		   end; 
end;

procedure Linea2;
begin
	clrscr;writeln('La linea 2 tiene las siguientes estaciones disponibles');
	writeln(' --------------------------------------------- ');
	writeln('|1 El Silencio     7 Carapita                  |');
	writeln('|2 Capuchinos      8 Antimano                  |');
	writeln('|3 Maternidad      9 Mamera                    |');
	writeln('|4 Artiguas        10 Caricuao                 |');
	writeln('|5 La Paz          11 Zoologico                |');
	writeln('|6 La Yaguara      12 Ruiz Pineda/Las Adjuntas |');
	writeln(' --------------------------------------------- ');
	writeln();
	writeln('Seleccione la estacion de salida');Readln(Sub1);
		   if Sub1 = 1 then Sal := 'El Silencio';
		   if Sub1 = 2 then Sal := 'Capuchinos';
		   if Sub1 = 3 then Sal := 'Maternidad';
		   if Sub1 = 4 then Sal := 'Artiguas';
		   if Sub1 = 5 then Sal := 'La Paz';
		   if Sub1 = 6 then Sal := 'La Yaguara';
		   if Sub1 = 7 then Sal := 'Carapita';
		   if Sub1 = 8 then Sal := 'Antimano';
		   if Sub1 = 9 then Sal := 'Mamera';
		   if Sub1 = 10 then Sal := 'Caricuao';
		   if Sub1 = 11 then Sal := 'Zoologico';
		   if Sub1 = 12 then Sal := 'Ruiz Pineda/Las Adjuntas';
					while (Sub1 <> 1) and (Sub1 <> 2) and (Sub1 <> 3)  and (Sub1 <> 4)  
					and (Sub1 <> 5)  and (Sub1 <> 6)  and (Sub1 <> 7)  and (Sub1 <> 8)  
					and (Sub1 <> 9)  and (Sub1 <> 10)  and (Sub1 <> 11)  and (Sub1 <> 12) do
begin
              write('Por favor elige una opcion en pantalla : '); 
	       readln(Sub1);
	       if Sub1 = 1 then Sal := 'El Silencio';
		   if Sub1 = 2 then Sal := 'Capuchinos';
		   if Sub1 = 3 then Sal := 'Maternidad';
		   if Sub1 = 4 then Sal := 'Artiguas';
		   if Sub1 = 5 then Sal := 'La Paz';
		   if Sub1 = 6 then Sal := 'La Yaguara';
		   if Sub1 = 7 then Sal := 'Carapita';
		   if Sub1 = 8 then Sal := 'Antimano';
		   if Sub1 = 9 then Sal := 'Mamera';
		   if Sub1 = 10 then Sal := 'Caricuao';
		   if Sub1 = 11 then Sal := 'Zoologico';
		   if Sub1 = 12 then Sal := 'Ruiz Pineda/Las Adjuntas';
		   end;
	      writeln('Seleccione la estacion de destino');Readln(Sub2);
	        if Sub2 = 1 then Sal := 'El Silencio';
		   if Sub2 = 2 then Sal := 'Capuchinos';
		   if Sub2 = 3 then Sal := 'Maternidad';
		   if Sub2 = 4 then Sal := 'Artiguas';
		   if Sub2 = 5 then Sal := 'La Paz';
		   if Sub2 = 6 then Sal := 'La Yaguara';
		   if Sub2 = 7 then Sal := 'Carapita';
		   if Sub2 = 8 then Sal := 'Antimano';
		   if Sub2 = 9 then Sal := 'Mamera';
		   if Sub2 = 10 then Sal := 'Caricuao';
		   if Sub2 = 11 then Sal := 'Zoologico';
		   if Sub2 = 12 then Sal := 'Ruiz Pineda/Las Adjuntas';
		   if Sub2 = (Sub1) then Des := 'Estacion Salida';
		   					while (Sub2 <> 1) and (Sub2 <> 2) and (Sub2 <> 3)  and (Sub2 <> 4)  
					and (Sub2 <> 5)  and (Sub2 <> 6)  and (Sub2 <> 7)  and (Sub2 <> 8)  
					and (Sub2 <> 9)  and (Sub2 <> 10)  and (Sub2 <> 11)  and (Sub2 <> 12) do
begin
              write('Por favor elige una opcion en pantalla : '); 
	       readln(Sub2);
	       if Sub2 = 1 then Sal := 'El Silencio';
		   if Sub2 = 2 then Sal := 'Capuchinos';
		   if Sub2 = 3 then Sal := 'Maternidad';
		   if Sub2 = 4 then Sal := 'Artiguas';
		   if Sub2 = 5 then Sal := 'La Paz';
		   if Sub2 = 6 then Sal := 'La Yaguara';
		   if Sub2 = 7 then Sal := 'Carapita';
		   if Sub2 = 8 then Sal := 'Antimano';
		   if Sub2 = 9 then Sal := 'Mamera';
		   if Sub2 = 10 then Sal := 'Caricuao';
		   if Sub2 = 11 then Sal := 'Zoologico';
		   if Sub2 = 12 then Sal := 'Ruiz Pineda/Las Adjuntas';
		   	if Sub2 = (Sub1) then Des := 'Estacion Salida';
		   end;
end;
procedure Linea3;
begin
	clrscr;writeln('La linea 3 tiene las siguientes estaciones disponibles');
	writeln(' --------------------------------------------- ');
	writeln('|1 Plaza Venezuela        7 Coche             |');
	writeln('|2 Ciudad Universitaria   8 Meracdo           |');
	writeln('|3 Los Simbolos           9 La Rinconada      |');
	writeln('|4 La Bander                        		   |');
	writeln('|5 El Valle                          		   |');
	writeln('|6 Los Jardines      						   |');
	writeln(' --------------------------------------------- ');
	writeln();
	writeln('Seleccione la estacion de salida');Readln(Sub1);
		   if Sub1 = 1 then Sal := 'Plaza Venezuela';
		   if Sub1 = 2 then Sal := 'Ciudad Universitaria';
		   if Sub1 = 3 then Sal := 'Los Simbolos';
		   if Sub1 = 4 then Sal := 'La Bander';
		   if Sub1 = 5 then Sal := 'El Valle';
		   if Sub1 = 6 then Sal := 'Los Jardines';
		   if Sub1 = 7 then Sal := 'Coche';
		   if Sub1 = 8 then Sal := 'Meracdo';
		   if Sub1 = 9 then Sal := 'La Rinconada';
		   	while (Sub1 <> 1) and (Sub1 <> 2) and (Sub1 <> 3)  and (Sub1 <> 4)  
				and (Sub1 <> 5)  and (Sub1 <> 6)  and (Sub1 <> 7)  and (Sub1 <> 8)  
				and (Sub1 <> 9) do
begin
              write('Por favor elige una opcion en pantalla : '); 
	       readln(Sub1);
	       if Sub1 = 1 then Sal := 'Plaza Venezuela';
		   if Sub1 = 2 then Sal := 'Ciudad Universitaria';
		   if Sub1 = 3 then Sal := 'Los Simbolos';
		   if Sub1 = 4 then Sal := 'La Bander';
		   if Sub1 = 5 then Sal := 'El Valle';
		   if Sub1 = 6 then Sal := 'Los Jardines';
		   if Sub1 = 7 then Sal := 'Coche';
		   if Sub1 = 8 then Sal := 'Meracdo';
		   if Sub1 = 9 then Sal := 'La Rinconada';
		   end;
	       writeln('Seleccione la estacion de destino');Readln(Sub2);
		   if Sub2 = 1 then Des := 'Plaza Venezuela';
		   if Sub2 = 2 then Des := 'Ciudad Universitaria';
		   if Sub2 = 3 then Des := 'Los Simbolos';
		   if Sub2 = 4 then Des := 'La Bander';
		   if Sub2 = 5 then Des := 'El Valle';
		   if Sub2 = 6 then Des := 'Los Jardines';
		   if Sub2 = 7 then Des := 'Coche';
		   if Sub2 = 8 then Des := 'Meracdo';
		   if Sub2 = 9 then Des := 'La Rinconada';
		   	if Sub2 = (Sub1) then Des := 'Estacion Salida';
		   		   	while (Sub2 <> 1) and (Sub2 <> 2) and (Sub2 <> 3)  and (Sub2 <> 4)  
				and (Sub2 <> 5)  and (Sub2 <> 6)  and (Sub2 <> 7)  and (Sub2 <> 8)  
				and (Sub2 <> 9) do		
begin
              write('Por favor elige una opcion en pantalla : '); 
	       readln(Sub2);
	       		   if Sub2 = 1 then Des := 'Plaza Venezuela';
		   if Sub2 = 2 then Des := 'Ciudad Universitaria';
		   if Sub2 = 3 then Des := 'Los Simbolos';
		   if Sub2 = 4 then Des := 'La Bander';
		   if Sub2 = 5 then Des := 'El Valle';
		   if Sub2 = 6 then Des := 'Los Jardines';
		   if Sub2 = 7 then Des := 'Coche';
		   if Sub2 = 8 then Des := 'Meracdo';
		   if Sub2 = 9 then Des := 'La Rinconada';
		   	if Sub2 = (Sub1) then Des := 'Estacion Salida';
		   end;
end;
procedure Linea4;
begin
	clrscr;writeln('La linea 4 tiene las siguientes estaciones disponibles');
		writeln (' ---------------------------------------------------------------- ');
		writeln ('|1 Zona Rental     6 Maternidad     11 Antimano                  |');
		writeln ('|2 Parque central  7 Artigas        12 Mamera                    |');
		writeln ('|3 Nuevo Circo     8 La Paz         13 Ruiz Pineda/ Las adjuntas |');
		writeln ('|4 Teatros         9 La Yaragua                                  |');
		writeln ('|5 Capuchinos     10 Carapita                                    |');
		writeln (' ---------------------------------------------------------------- ');
	writeln();
	writeln('Seleccione la estacion de salida');Readln(Sub1);
	       if Sub1 = 1 then Sal := 'Zona Rental';
		   if Sub1 = 2 then Sal := 'Parque Central';
		   if Sub1 = 3 then Sal := 'Nuevo Circo';
		   if Sub1 = 4 then Sal := 'Teatros';
		   if Sub1 = 5 then Sal := 'Capuchinos';
		   if Sub1 = 6 then Sal := 'Maternidad';
		   if Sub1 = 7 then Sal := 'Artigas';
		   if Sub1 = 8 then Sal := 'La Paz';
		   if Sub1 = 9 then Sal := 'La Yaragua';
		   if Sub1 = 10 then Sal := 'Carapita';
		   if Sub1 = 11 then Sal := 'Antimano';
		   if Sub1 = 12 then Sal := 'Mamera';
		   if Sub1 = 13 then Sal := 'Ruiz Pineda/ Las adjuntas';
				while (Sub1 <> 1) and (Sub1 <> 2) and (Sub1 <> 3)  and (Sub1 <> 4)  
				and (Sub1 <> 5)  and (Sub1 <> 6)  and (Sub1 <> 7)  and (Sub1 <> 8)  
				and (Sub1 <> 9)  and (Sub1 <> 10)  and (Sub1 <> 11)  and (Sub1 <> 12)  
				and (Sub1 <> 13)do
begin
           write('Por favor elige una opcion en pantalla : '); 
	       readln(Sub1);
	       if Sub1 = 1 then Sal := 'Zona Rental';
		   if Sub1 = 2 then Sal := 'Parque Central';
		   if Sub1 = 3 then Sal := 'Nuevo Circo';
		   if Sub1 = 4 then Sal := 'Teatros';
		   if Sub1 = 5 then Sal := 'Capuchinos';
		   if Sub1 = 6 then Sal := 'Maternidad';
		   if Sub1 = 7 then Sal := 'Artigas';
		   if Sub1 = 8 then Sal := 'La Paz';
		   if Sub1 = 9 then Sal := 'La Yaragua';
		   if Sub1 = 10 then Sal := 'Carapita';
		   if Sub1 = 11 then Sal := 'Antimano';
		   if Sub1 = 12 then Sal := 'Mamera';
		   if Sub1 = 13 then Sal := 'Ruiz Pineda/ Las adjuntas';
		   end;
	writeln('Seleccione la estacion de destino');Readln(Sub2);
		   if Sub2 = 1 then Des := 'Zona Rental';
		   if Sub2 = 2 then Des := 'Parque Central';
		   if Sub2 = 3 then Des := 'Nuevo Circo';
		   if Sub2 = 4 then Des := 'Teatros';
		   if Sub2 = 5 then Des := 'Capuchinos';
		   if Sub2 = 6 then Des := 'Maternidad';
		   if Sub2 = 7 then Des := 'Artigas';
		   if Sub2 = 8 then Des := 'La Paz';
		   if Sub2 = 9 then Des := 'La Yaragua';
		   if Sub2 = 10 then Des := 'Carapita';
		   if Sub2 = 11 then Des := 'Antimano';
		   if Sub2 = 12 then Des := 'Mamera';
		   if Sub2 = 13 then Des := 'Ruiz Pineda/ Las adjuntas';
		   	if Sub2 = (Sub1) then Des := 'Estacion Salida';
		   		while (Sub2 <> 1) and (Sub2 <> 2) and (Sub2 <> 3)  and (Sub2 <> 4)  
				and (Sub2 <> 5)  and (Sub2 <> 6)  and (Sub2 <> 7)  and (Sub2 <> 8)  
				and (Sub2 <> 9)  and (Sub2 <> 10)  and (Sub2 <> 11)  and (Sub2 <> 12)  
				and (Sub2 <> 13) do
begin
           write('Por favor elige una opcion en pantalla : '); 
	       readln(Sub2);
	       		   if Sub2 = 1 then Des := 'Zona Rental';
		   if Sub2 = 2 then Des := 'Parque Central';
		   if Sub2 = 3 then Des := 'Nuevo Circo';
		   if Sub2 = 4 then Des := 'Teatros';
		   if Sub2 = 5 then Des := 'Capuchinos';
		   if Sub2 = 6 then Des := 'Maternidad';
		   if Sub2 = 7 then Des := 'Artigas';
		   if Sub2 = 8 then Des := 'La Paz';
		   if Sub2 = 9 then Des := 'La Yaragua';
		   if Sub2 = 10 then Des := 'Carapita';
		   if Sub2 = 11 then Des := 'Antimano';
		   if Sub2 = 12 then Des := 'Mamera';
		   if Sub2 = 13 then Des := 'Ruiz Pineda/ Las adjuntas';
		   	if Sub2 = (Sub1) then Des := 'Estacion Salida';
		   end;
	
end;
procedure Linea5;
begin
	clrscr;writeln('La linea 5 tiene las siguientes estaciones disponibles');
		writeln (' -------------------------------------------------------- ');
		writeln ('|1 Bello Monte           4 Bello Campo    7 Boleita       |');
		writeln ('|2 Las Mercedes          5 Hugo chavez    8 El marquez    |');
		writeln ('|3 Parque Simon bolivar  6 Montecristo    9 Warairarepero |');
		writeln (' --------------------------------------------------------- ');
	writeln();
	writeln('Seleccione la estacion de salida');Readln(Sub1);
	       if Sub1 = 1 then Sal := 'Bello Monte';
		   if Sub1 = 2 then Sal := 'Las Mercedes';
		   if Sub1 = 3 then Sal := 'Parque Simon Bolivar';
		   if Sub1 = 4 then Sal := 'Bello Campo';
		   if Sub1 = 5 then Sal := 'Hugo Chavez';
		   if Sub1 = 6 then Sal := 'Montecristo';
		   if Sub1 = 7 then Sal := 'Boleita';
		   if Sub1 = 8 then Sal := 'El Marquez';
		   if Sub1 = 9 then Sal := 'Warairarepero';
		   		   	while (Sub1 <> 1) and (Sub1 <> 2) and (Sub1 <> 3)  and (Sub1 <> 4)  
				and (Sub1 <> 5)  and (Sub1 <> 6)  and (Sub1 <> 7)  and (Sub1 <> 8)  
				and (Sub1 <> 9) do
begin
           write('Por favor elige una opcion en pantalla : '); 
	       readln(Sub1);
	       if Sub1 = 1 then Sal := 'Bello Monte';
		   if Sub1 = 2 then Sal := 'Las Mercedes';
		   if Sub1 = 3 then Sal := 'Parque Simon Bolivar';
		   if Sub1 = 4 then Sal := 'Bello Campo';
		   if Sub1 = 5 then Sal := 'Hugo Chavez';
		   if Sub1 = 6 then Sal := 'Montecristo';
		   if Sub1 = 7 then Sal := 'Boleita';
		   if Sub1 = 8 then Sal := 'El Marquez';
		   if Sub1 = 9 then Sal := 'Warairarepero';
		   end;
		   
	writeln('Seleccione la estacion de destino');Readln(Sub2);
		   if Sub2 = 1 then Des := 'Bello Monte';
		   if Sub2 = 2 then Des := 'Las Mercedes';
		   if Sub2 = 3 then Des := 'Parque Simon Bolivar';
		   if Sub2 = 4 then Des := 'Bello Campo';
		   if Sub2 = 5 then Des := 'Hugo Chavez';
		   if Sub2 = 6 then Des := 'Montecristo';
		   if Sub2 = 7 then Des := 'Boleita';
		   if Sub2 = 8 then Des := 'El Marquez';
		   if Sub2 = 9 then Des := 'Warairarepero';
		   	if Sub2 = (Sub1) then Des := 'Estacion Salida';
		   		while (Sub2 <> 1) and (Sub2 <> 2) and (Sub2 <> 3)  and (Sub2 <> 4)  
				and (Sub2 <> 5)  and (Sub2 <> 6)  and (Sub2 <> 7)  and (Sub2 <> 8)  
				and (Sub2 <> 9) do		
begin
           write('Por favor elige una opcion en pantalla : '); 
	       readln(Sub2);
	       		   if Sub2 = 1 then Des := 'Bello Monte';
		   if Sub2 = 2 then Des := 'Las Mercedes';
		   if Sub2 = 3 then Des := 'Parque Simon Bolivar';
		   if Sub2 = 4 then Des := 'Bello Campo';
		   if Sub2 = 5 then Des := 'Hugo Chavez';
		   if Sub2 = 6 then Des := 'Montecristo';
		   if Sub2 = 7 then Des := 'Boleita';
		   if Sub2 = 8 then Des := 'El Marquez';
		   if Sub2 = 9 then Des := 'Warairarepero';
		   	if Sub2 = (Sub1) then Des := 'Estacion Salida';
		   end;
	
end;
procedure Linea6;
begin
	clrscr;writeln('La linea 6 tiene las siguientes estaciones disponibles');
	writeln(' --------------------------------------------- ');
	writeln('| 1 Zoologico     2 La Rinconada                |');
	writeln(' --------------------------------------------- ');
	writeln();
	writeln('Seleccione la estacion de salida');Readln(Sub1);
	if Sub1 = 1 then Sal := 'Zoologico';
	if Sub1 = 1 then Sal := 'La Rinconada';
		while (Sub1 <> 1) and (Sub1 <> 2) do
begin
           write('Por favor elige una opcion en pantalla : '); 
	       readln(Sub1);
			if Sub1 = 1 then Sal := 'Zoologico';
			if Sub1 = 1 then Sal := 'La Rinconada';
	       end;
	writeln('Seleccione la estacion de destino');Readln(Sub2);
	if Sub2 = 1 then Des := 'Zoologico';
	if Sub2 = 2 then Des := 'La Rinconada';
		if Sub2 = (Sub1) then Des := 'Estacion Salida';
			while (Sub2 <> 1) and (Sub2 <> 2) do
begin
           write('Por favor elige una opcion en pantalla : '); 
	       readln(Sub2);
			if Sub2 = 1 then Des := 'Zoologico';
			if Sub2 = 1 then Des := 'La Rinconada';
				if Sub2 = (Sub1) then Des := 'Estacion Salida';
	       end;
end;
procedure Linea7;
begin
	clrscr;writeln('La linea 7 tiene las siguientes estaciones disponibles');
		writeln (' ----------------------------------------------------------- ');
		writeln ('|1 Las Flores    5 El Cristo            9 Roosvelt          |');
		writeln ('|2 Panteon       6 Roca Tarpeya         10 La bandera       |');
		writeln ('|3 Socorro       7 Presidente Medina    11 Los ilustres     |');
		writeln ('|4 La Hoyada     8 INCES                                    |');
		writeln ('------------------------------------------------------------ ');
	writeln();
	writeln('Seleccione la estacion de salida');Readln(Sub1);
	       if Sub1 = 1 then Sal := 'Las Flores';
		   if Sub1 = 2 then Sal := 'Panteon';
		   if Sub1 = 3 then Sal := 'Socorro';
		   if Sub1 = 4 then Sal := 'La Hoyada';
		   if Sub1 = 5 then Sal := 'El Cristo';
		   if Sub1 = 6 then Sal := 'Roca Tarpeya';
		   if Sub1 = 7 then Sal := 'Presidente Medina';
		   if Sub1 = 8 then Sal := 'INCES';
		   if Sub1 = 9 then Sal := 'Roosvelt';
		   if Sub1 = 10 then Sal := 'La Bander';
		   if Sub1 = 11 then Sal := 'Los Ilustres';
		   	while (Sub1 <> 1) and (Sub1 <> 2) and (Sub1 <> 3)  and (Sub1 <> 4)  
				and (Sub1 <> 5)  and (Sub1 <> 6)  and (Sub1 <> 7)  and (Sub1 <> 8)  
				and (Sub1 <> 9)  and (Sub1 <> 10)  and (Sub1 <> 11) do				
				
begin
           write('Por favor elige una opcion en pantalla : '); 
	       readln(Sub1);
	       if Sub1 = 1 then Sal := 'Las Flores';
		   if Sub1 = 2 then Sal := 'Panteon';
		   if Sub1 = 3 then Sal := 'Socorro';
		   if Sub1 = 4 then Sal := 'La Hoyada';
		   if Sub1 = 5 then Sal := 'El Cristo';
		   if Sub1 = 6 then Sal := 'Roca Tarpeya';
		   if Sub1 = 7 then Sal := 'Presidente Medina';
		   if Sub1 = 8 then Sal := 'INCES';
		   if Sub1 = 9 then Sal := 'Roosvelt';
		   if Sub1 = 10 then Sal := 'La Bander';
		   if Sub1 = 11 then Sal := 'Los Ilustres';
	       
	       end;
	writeln('Seleccione la estacion de destino');Readln(Sub2);
	       if Sub2 = 1 then Des := 'Las Flores';
		   if Sub2 = 2 then Des := 'Panteon';
		   if Sub2 = 3 then Des := 'Socorro';
		   if Sub2 = 4 then Des := 'La Hoyada';
		   if Sub2 = 5 then Des := 'El Cristo';
		   if Sub2 = 6 then Des := 'Roca Tarpeya';
		   if Sub2 = 7 then Des := 'Presidente Medina';
		   if Sub2 = 8 then Des := 'INCES';
		   if Sub2 = 9 then Des := 'Roosvelt';
		   if Sub2 = 10 then Des := 'La Bander';
		   if Sub2 = 11 then Des := 'Los Ilustres';
		   	if Sub2 = (Sub1) then Des := 'Estacion Salida';
		   		   	while (Sub2 <> 1) and (Sub2 <> 2) and (Sub2 <> 3)  and (Sub2 <> 4)  
				and (Sub2 <> 5)  and (Sub2 <> 6)  and (Sub2 <> 7)  and (Sub2 <> 8)  
				and (Sub2 <> 9)  and (Sub2 <> 10)  and (Sub2 <> 11) do				
				
begin
           write('Por favor elige una opcion en pantalla : '); 
	       readln(Sub2);
	       	       if Sub2 = 1 then Des := 'Las Flores';
		   if Sub2 = 2 then Des := 'Panteon';
		   if Sub2 = 3 then Des := 'Socorro';
		   if Sub2 = 4 then Des := 'La Hoyada';
		   if Sub2 = 5 then Des := 'El Cristo';
		   if Sub2 = 6 then Des := 'Roca Tarpeya';
		   if Sub2 = 7 then Des := 'Presidente Medina';
		   if Sub2 = 8 then Des := 'INCES';
		   if Sub2 = 9 then Des := 'Roosvelt';
		   if Sub2 = 10 then Des := 'La Bander';
		   if Sub2 = 11 then Des := 'Los Ilustres';
		   	if Sub2 = (Sub1) then Des := 'Estacion Salida';
	       
	       end;
end;
procedure Linea8;
begin
	clrscr;writeln('Clabetren tiene las siguientes estaciones disponibles');
		writeln (' ------------------------------------------------------------ ');
		writeln ('|1 Petare 2      3 5 de Julio           5 Warairarepano      |');
		writeln ('|2 19 de abril   4 24 de Julio                               |');
		writeln (' ------------------------------------------------------------ ');
		writeln();
		writeln('Seleccione la estacion de salida');Readln(Sub1);
		if Sub1 = 1 then Sal := 'Petare 2';
		if Sub1 = 2 then Sal := '19 de Abril';
		if Sub1 = 3 then Sal := '5 de Julio';
		if Sub1 = 4 then Sal := '24 de Julio';
		if Sub1 = 5 then Sal := 'Warairarepano';
			while (Sub1 <> 1) and (Sub1 <> 2) and (Sub1 <> 3)  and (Sub1 <> 4)  
					and (Sub1 <> 5) do
				
begin
        write('Por favor elige una opcion en pantalla : '); 
	    readln(Sub1);
		if Sub1 = 1 then Sal := 'Petare 2';
		if Sub1 = 2 then Sal := '19 de Abril';
		if Sub1 = 3 then Sal := '5 de Julio';
		if Sub1 = 4 then Sal := '24 de Julio';
		if Sub1 = 5 then Sal := 'Warairarepano';   
end;
		writeln('Seleccione la estacion de destino');Readln(Sub2);
		if Sub2 = 1 then Des := 'Petare 2';
		if Sub2 = 2 then Des := '19 de Abril';
		if Sub2 = 3 then Des := '5 de Julio';
		if Sub2 = 4 then Des := '24 de Julio';
		if Sub2 = 5 then Des := 'Warairarepano';
			if Sub2 = (Sub1) then Des := 'Estacion Salida';
					while (Sub2 <> 1) and (Sub2 <> 2) and (Sub2 <> 3)  and (Sub2 <> 4)  
					and (Sub2 <> 5) do
begin
        write('Por favor elige una opcion en pantalla : '); 
	    readln(Sub2);
	    if Sub2 = 1 then Des := 'Petare 2';
		if Sub2 = 2 then Des := '19 de Abril';
		if Sub2 = 3 then Des := '5 de Julio';
		if Sub2 = 4 then Des := '24 de Julio';
		if Sub2 = 5 then Des := 'Warairarepano';
			if Sub2 = (Sub1) then Des := 'Estacion Salida';
end;

end;


procedure Factura;
begin
	clrscr;writeln('Debe pagar ',(Precio),'Bs Por los boletos');
	writeln('En este momento usted tiene ',Dinero,' Bs');
			if Dinero < Precio then  begin
			repeat
			if Dinero < Precio then writeln('Le falta exactamente ',Dinero-Precio,'Bs', ' Debe Pagar: ',Precio,'Bs');
			write('Ingrese el dinero aqui: '); readln(Dinero);
			writeln('');
			until Dinero >= Precio;
			end;
	Pago := (Dinero-Precio);clrscr;textcolor(lightgreen);writeln('Compra exitosa!');textcolor(white);
	if Pago > 0 then writeln('Le han quedado ',Pago,' Bs');readln;clrscr;

end;



procedure Viaje;
begin
clrscr; 			Writeln('Seleccione La Linea por la que desea viajar');
					writeln(' ------------------------------------------ ');
					writeln('|Seleccione la linea en la que desea viajar |');
					writeln(' ------------------------------------------ ');
					writeln('| Presione (1) para viajar por la "LINEA 1" |');
					writeln(' -------------------------------------------');
					writeln('| Presione (2) para viajar por la "LINEA 2" |');
					writeln(' -------------------------------------------');
					writeln('| Presione (3) para viajar por la "LINEA 3" |');
					writeln(' -------------------------------------------'); 
					writeln('| Presione (4) para viajar por la "LINEA 4" |');
					writeln(' ------------------------------------------');
					writeln('| Presione (5) para viajar por la "LINEA 5" |');
					writeln(' ------------------------------------------ ');
					writeln('| Presione (6) para viajar por la "LINEA 6" |');
					writeln(' ------------------------------------------ ');
					writeln('| Presione (7) para viajar por la "LINEA 7" |');
					writeln(' ------------------------------------------');
					writeln('| Presione (8) para viajar por la "LINEA" 8 |');
					writeln(' ------------------------------------------');
	readln(Salida);
	while (Salida  <>  1)  and   (Salida  <>  2) and  (Salida  <>  3)  
	and  (Salida  <>  4)  and  (Salida  <>  5)  and  (Salida  <>  6)  and  (Salida  <>  7)  and  (Salida  <>  8)  do
begin
write('Por favor elige una opcion en pantalla : '); 
		readln(Salida);
end; 
	
	if Salida = 1 then Linea1;
	if Salida = 2 then Linea2;
	if Salida = 3 then Linea3;
	if Salida = 4 then Linea4;
	if Salida = 5 then Linea5;
	if Salida = 6 then Linea6;
	if Salida = 7 then Linea7;
	if Salida = 8 then Linea8;
	
	writeln;clrscr;
	writeln('Ticket:');
	writeln(' ------------------------------------------------------------------------');
	writeln(' Nombre: "',Nombre,'"   Linea: "',Salida,'" Boleto: "',Tipo,'"           ');
	writeln('                                                                         ');
	writeln(' Cedula: "',Cedula,'"   Salida: ',Sal,'" Destino ',Des,'                 ');
	writeln(' ------------------------------------------------------------------------');
	writeln('Desea realizar la compra? <s/n>');Readln(Comprar);
	if Comprar = 's' then Factura;
	if Comprar = 'S' then Factura;
	if Comprar = 'n' then Fin;
	if Comprar = 'N' then Fin;
end;

procedure Ver_Sistema;
begin
clrscr;begin
								writeln('-----------------------------------');
								writeln('         Datos del usuario         ');
								writeln('-----------------------------------');
								writeln('Nombre : ', Nombre);
								writeln('Cedula : ', Cedula);
								writeln('Boletos Comprados: ', CBoletos);
								writeln('Boletos restantes: ', CBoletos-1);
								writeln('Linea elegida: ', Salida);
								writeln('Costo total: ', Precio,'Bs');
								writeln('-----------------------------------');
								writeln('ingresados por linea: 1');
								writeln('Promedio de venta: ', Precio div CBoletos,'Bs');
								writeln('===================================');
								writeln;Vers := (1);Readln();
								end;
end;


procedure Utilizar_Boleto;
begin
begin
clrscr;				writeln;
					writeln(' --------------------------------------------- ');
					writeln('| Antes de continuar por favor ingrese su cedula |');
					writeln(' ---------------------------------------------- ');
					repeat readln(Cedula2);
  
  
  if Cedula2 <> Cedula then write(' Cedula incorrecta, Por favor intentelo de nuevo: ');
  until Cedula2 = Cedula;
						
						writeln('---------------------------------------------');
						writeln(' Ha utilizado 1 boleto                        ');
						writeln(' Metodo de transporte: ',Trans,'              ');
						writeln(' Estacion de salida: ',Sal,'                  ');
						writeln(' Estacion de destino: ',Des,'                 ');
						writeln(' Linea elegida: ', Salida,'                   ');
						writeln(' Boletos Comprados: ', CBoletos,'             ');
						writeln(' Boletos restantes: ', CBoletos-1,'           ');
						writeln(' Costo : ', Precio,'Bs                        ');
							
						writeln('------------------------------------------');readln();
				 writeln;
				 Writeln('-----------------------------------------------------------');
				 writeln('|         Feliz viaje! y gracias por elegirnos             |');
				 Writeln('-----------------------------------------------------------');readln();clrscr;
writeln('___________   _______________________________________^__');
writeln(' ___   ___ |||  ___   ___   ___    ___ ___  |   __  ,----\');
writeln('|   | |   |||| |   | |   | |   |  |   |   | |  |  | |_____\');
writeln('|___| |___|||| |___| |___| |___|  | O | O | |  |  |        \');
writeln('           |||                    |___|___| |  |__|         )');
writeln('___________|||______________________________|______________/');
writeln('           |||                                        /--------');readln;				 
				end;

			
end;

procedure terminal;
begin
clrscr;
writeln(' ------------------------------');
writeln('|    Selecione una opcion      |');
writeln('|                              |');
writeln('|       1 Ver Sistema          |');
writeln('|                              |');
writeln('|       2 Utilizar Boleto      |');
writeln('|                              |');
writeln('|       3 Salir del Sistema    |');
writeln('|                              |');
writeln(' ------------------------------');
readln(Sistema);
Vers := (0);
if Sistema = 1 then Ver_Sistema;
if Sistema = 2 then Utilizar_Boleto;
if Sistema = 3 then Fin;
while (Sistema <> 1) and (Sistema <> 2) and (Sistema <> 3) do
begin
	write('Por favor elige una opcion en pantalla : '); 
		readln(Sistema)
		end;
end;



procedure Compra;
begin
	Writeln('Se ha quedado sin boletos. SiDesea Comprar otro boleto reinicie el Sistema');Readln;
	Fin;
	
end;

BEGIN
	writeln(' ------------------------------- ');
	writeln('|       VENTA DE BOLETOS         |');
	writeln('|  POR FAVOR INGRESE SUS DATOS   |');
	writeln(' --------------------------------  ');
	Writeln('Ingrese su Nombre y Apellido');Readln(Nombre);
	Writeln('Ingrese su Cedula');Readln(Cedula);
	writeln(Nombre);
	writeln(Cedula,' ');
	TextColor(white); Writeln; Writeln('¨Desea comprar un boleto? (s/n)');
	Readln(opcion);
	while (opcion <> 's') and (opcion <> 'n') do
			begin
				write('Por favor elige una opcion en pantalla : '); 
					readln(opcion);
			end;
	if opcion = ('s') then mostrar;
	if opcion = ('S') then mostrar;
	if opcion = ('n') then Fin;
	if opcion = ('N') then Fin;

	if Tipo = '1' then Simple;
	if Tipo = '2' then Integrado;
	if Tipo = '3' then Ida_y_Vuelta;
	if Tipo = '4' then Ida_y_Vuelta_Integrado;
	if Tipo = '5' then Multiabono;
	if Tipo = '6' then Multiabono_Integrado;
	if Tipo = '7' then Estudiantil_Simple;
	if Tipo = '8' then Estudiantil_Integrado;
	if Tipo = '9' then MetroTarjeta;
	if Tipo = '10' then MetroTarjeta_Integrada;
	if opcion = ('s') then Viaje;
	if opcion = ('s') then terminal;
	if Vers = (1) then terminal;
	begin
	repeat
	CBoletos := (CBoletos-1);
	If CBoletos > 0 then terminal;
	until CBoletos = 0;
	end;
	begin
	if CBoletos = 0 then Compra;
	
	
		



	

End;
End.
