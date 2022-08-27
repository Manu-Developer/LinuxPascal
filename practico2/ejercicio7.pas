program errorRelativo;
var
	medicion, valor, resultado: real;
begin
	write('Digita el valor de la medicion: ');
	readln(medicion);
	write('Digita el valor del valor verdadero: ');
	readln(valor);
	
	resultado:=abs(medicion-valor)/valor;
	
	writeln('Medicion: ', medicion);
	writeln('Valor verdadero: ', valor);
	writeln('El resultado final es: ', resultado);
end.
