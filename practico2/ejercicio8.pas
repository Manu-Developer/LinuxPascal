program cuadradoMedio;
var
	numero, numeroCuadrado, decena, centena: Integer;


begin
	write('Digite un numero: ');
	readln(numero);
	
	numeroCuadrado:=numero*numero;
	decena:= (numeroCuadrado div 100) mod 10;
	centena:= (numeroCuadrado mod 100) div 10;

	
	writeln('Numero introducido: ', numero);
	writeln('Cuadrado del numero: ', numeroCuadrado);
	writeln('Siguiente numero seudoaleatorio: ', decena, centena);
end.
