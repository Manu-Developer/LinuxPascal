program octalADecimal;

var	
	octal, decimal: integer;

begin
	write('Digite un numero en octal: ');
	readln(octal);
	
	{Ver repositorio de github}
	decimal:=((octal div 100)*sqr(8)) + ((octal mod 100) div 10)*8 + (octal mod 10);
	
	writeln('Octal: ', octal, ' Decimal: ', decimal);

end.
