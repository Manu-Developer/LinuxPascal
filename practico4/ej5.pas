program ej5;

var 
	i,n: integer;

begin
	writeln('Ingresa el valor de n: ');
	readln(n);

	for i:=1 to n do
		begin
			if(n mod i = 0) then
				write(i, ' ');
		end;
end.
