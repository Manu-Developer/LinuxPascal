program ej4;

var 
	a,b,n,i: integer;

begin
	write('Digita el valor de a: ');
	readln(a);
	write('Digita el valor de b: ');
	readln(b);
	writeln('Ingresa el valor de n para calcular sus respectivos multiplos entre ', a, ' y ', b);
	readln(n);

	for i:=a to b do
		begin
			if(i mod n = 0) then
				write(i,' ')
		end
end.
