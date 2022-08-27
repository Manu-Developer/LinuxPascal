program serieInfinita;

	var numero, resultadoFormula: real;

function elevarNumero(base, exponente:real): real;
begin
	elevarNumero:=exp(exponente*ln(base));
end;

begin
	write('Escriba un numero entre 0 y 1: ');
	readln(numero);
	
	if (numero>=0) and (numero<=1) then
	begin
		resultadoFormula:=1+(numero/1)+(elevarNumero(numero,2)/2)+(elevarNumero(numero,3)/6)+(elevarNumero(numero,4)/24);
		writeln('Valor introducido: x ', numero);
		writeln('Suma de los 5 terminos: ', resultadoFormula);
		writeln('Valor de Exp x: ', exp(numero));
	end
	else
		writeln('¡¡No has escrito un numero entre 0 y 1!!');
end.
