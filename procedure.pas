program untitled;

uses crt;
var Nombre,Apellido,cobertura,Color: string; 
Cedula,CantBoletos,Precio,Dinero,Tipo:integer;
opcion,Comprar : string;

BEGIN
	writeln(' ------------------------------- ');
	writeln('|       VENTA DE BOLETOS         |');
	writeln('|  POR FAVOR INGRESE SUS DATOS   |');
	writeln(' --------------------------------  ');
	Writeln('Ingrese su Nombre');Readln(Nombre);
	Writeln('Ingrese su Apellido');Readln(Apellido);
	Writeln('Ingrese su Cedula');Readln(Cedula);
	writeln(Nombre,' ',Apellido);
	writeln(Cedula);
	TextColor(10); Writeln; Writeln('¨Desea comprar un boleto? (s/n)');
	Readln(opcion);
	if opcion = ('s') then
	TextColor(10); writeln('Seleccione el boleto de su preferencia');
	TextColor(yellow); writeln('Simple');
	TextColor(yellow); writeln('Integrado');
	TextColor(yellow); writeln('Ida y Vuelta');
	TextColor(yellow); writeln('Ida y Vuelta Integrado');
	TextColor(lightred); writeln('Multiabono');
	TextColor(lightred); writeln('Multiabono Integrado');
	TextColor(lightblue); writeln('Estudiantil Simple');
	TextColor(lightblue); writeln('Estudiantil Integrado');
	TextColor(red); writeln('MetroTarjeta');
	TextColor(red); writeln('MetroTarjeta Integrada');
	case Tipo of
	1:writeln('xd');


End;
End.
