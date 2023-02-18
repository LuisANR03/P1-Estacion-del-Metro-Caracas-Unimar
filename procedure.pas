program untitled;

uses 
crt;
var Nombre,Apellido,Tipo,Salida,Destino: string; 
Cedula,CBoletos,Precio,Dinero,vehiculo,Sub1,Sub2,Falta,Pago,Sistema:integer;
opcion,Comprar : string;


procedure mostrar;
begin
	clrscr;TextColor(10); writeln('Seleccione el boleto de su preferencia');
	TextColor(yellow); writeln('1-Simple');
	TextColor(yellow); writeln('2-Integrado');
	TextColor(yellow); writeln('3-Ida y Vuelta');
	TextColor(yellow); writeln('4-Ida y Vuelta Integrado');
	TextColor(lightred); writeln('5-Multiabono');
	TextColor(lightred); writeln('6-Multiabono Integrado');
	TextColor(lightblue); writeln('7-Estudiantil Simple');
	TextColor(lightblue); writeln('8-Estudiantil Integrado');
	TextColor(red); writeln('9-MetroTarjeta');
	TextColor(red); writeln('10-MetroTarjeta Integrada');textcolor(white);Readln(Tipo);
	textcolor(white);writeln('Cuantos boletos desea?');readln(CBoletos);
	clrscr;

end;


procedure Fin;
begin
	clrscr;writeln('Hasta la proxima');
end;

procedure Simple;
	Begin
	writeln('Boleto simple = 1 viaje en metro');Precio :=(CBoletos*5);
	writeln('Debe pagar ',(Precio),'Bs Por los boletos');readln;
	End;

procedure Integrado;
begin
	clrscr;writeln('Boleto integrado = 1 viaje en metro y 1 un viaje en metrobus');Precio :=(CBoletos*8);
	writeln('Debe pagar ',(Precio),'Bs Por los boletos');
	writeln('Seleccione 1 para viajar en metro o 2 para viajar en metrobus');read(vehiculo);
end;

procedure Linea1;
begin
	clrscr;writeln('La linea 1 tiene las siguientes subestaciones disponibles');
	writeln(' ------------------------------------------');
	writeln('| 1Propatria          12Plaza Venezuela     |');
	writeln('| 2Perez Bonalde      13Sabana Grande       |');
	writeln('| 3Plaza Sucre        14Chacaíto          	 |');
	writeln('| 4Gato Negro         15Chacao              |');
	writeln('| 5Agua Salud         16Altamira            |');
	writeln('| 6Caño Amarillo      17Miranda             |');
	writeln('| 7Capitolio          18Los Dos Caminos     |');
	writeln('| 8La Moyada          19Los Cortijos        |');
	writeln('| 9Parque Carabobo    20La California       |');
	writeln('| 10Bellas Artes      21Petare              |');
	writeln('| 11Colegio de Ing    22Palo Verde          |');
	writeln(' -----------------------------------------');
	writeln;
	writeln('Seleccione la subestacion');Readln(Sub1);
end;

procedure Linea2;
begin
	clrscr;writeln('La linea 2 tiene las siguientes subestaciones disponibles');
	writeln(' -------------------------------------------- ');
	writeln('|1-El Silencio     7Carapita                  |');
	writeln('|2-Capuchinos      8Antimano                  |');
	writeln('|3-Maternidad      9Mamera                    |');
	writeln('|4-Artiguas        10Caricuao                 |');
	writeln('|5-La Paz          11Zoologico                |');
	writeln('|6-La Yaguara      12Ruiz Pineda/Las Adjuntas |');
	writeln(' -------------------------------------------- ');
	writeln();
	writeln('Seleccione la subestacion');Readln(Sub2);
end;


procedure Factura;
begin
	clrscr;writeln('Debe pagar ',(Precio),'Bs Por los boletos');
	writeln('En este momento usted tiene ',Dinero,' Bs');
	if dinero < precio then 
	Falta:=(Dinero-Precio);
	writeln('Necesita ',Falta,' Bs para realizar la compra');
	writeln('Porfavor ingrese la cantidad faltante');Readln(Dinero);
	Pago := (Dinero-Precio);writeln('Compra exitosa!');
	if Pago > 0 then writeln('Le ha quedado ',Pago,' Bs');

end;



procedure Viaje;
begin
	clrscr;Writeln('Seleccione la linea de salida');readln(Salida);
	if Salida = '1' then Linea1;
	if Salida = '2' then Linea2;
	
	Writeln('Seleccione la linea de Destino');Readln(Destino);
	if Destino = '1' then Linea1;
	if Destino = '2' then Linea2;
	
	writeln;
	writeln('Estos son sus datos');
	writeln(Nombre,' ',Apellido);
	writeln(Cedula);
	writeln('Salida de Linea ',Salida,' ',Sub1,' Destino Linea ',Destino,' ',Sub2);
	writeln('Desea realizar la compra? <s/n>');Readln(Comprar);
	if Comprar = 's' then Factura;
	if Comprar = 'S' then Factura;
	if Comprar = 'n' then Fin;
	if Comprar = 'N' then Fin;
end;


procedure terminal;
begin
writeln('Selecione una opcion');
writeln('1 Ver Sistema');
writeln('2 Utilizar Boleto');
writeln('3 Salir del Sistema');readln(Sistema);
if Sistema = 3 then Fin;
end;

BEGIN
	writeln(' ------------------------------- ');
	writeln('|       VENTA DE BOLETOS         |');
	writeln('|  POR FAVOR INGRESE SUS DATOS   |');
	writeln(' --------------------------------  ');
	Writeln('Ingrese su Nombre');Readln(Nombre);
	Writeln('Ingrese su Apellido');Readln(Apellido);
	Writeln('Ingrese su Cedula');Readln(Cedula);
	Writeln('Ingrese la cantidad de dinero disponible');Readln(Dinero);
	writeln(Nombre,' ',Apellido);
	writeln(Cedula,' ',Dinero);
	TextColor(10); Writeln; Writeln('¨Desea comprar un boleto? (s/n)');
	Readln(opcion);
	if opcion = ('s') then mostrar;
	if opcion = ('S') then mostrar;
	if opcion = ('n') then Fin;
	if opcion = ('N') then Fin;

	if Tipo = '1' then Simple;
	if Tipo = '2' then Integrado;
	if opcion = ('s') then Viaje;
	if opcion = ('s') then terminal;



	

End.
