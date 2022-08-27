program exponente;

var numero: real;

begin
	write('Ingrese un numero: ');
	readln(numero);
	writeln('Valor introducido: ', numero);
	writeln('Raiz cuadrada calculada: ', exp(0.5*ln(numero)));
	writeln('Valor de Sqrt (a): ', sqrt(numero));
end.
