program numerosDecimales;

var numero: integer;

begin
	write('Ingrese un numero decimal de a lo sumo 4 cifras: ');
	read(numero);
 
	if numero>=1000 then
		writeln((numero/1000):4:3)
	else
		writeln(numero);
end.
