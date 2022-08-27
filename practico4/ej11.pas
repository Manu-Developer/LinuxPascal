program ej11 (input,output);

var i,m,n,puntoMaximo: integer;

begin
	write('Ingrese un valor para m: ');
	readln(m);
	write('Ingrese un valor para n: ');
	readln(n);
	
	puntoMaximo:=0;
	
	if(m<=n) then
	begin
		for i:=m to n do
		begin
			if(sqr(m)-(18*m)+5>puntoMaximo) then
				puntoMaximo:=sqr(m)-(18*m)+5;
		end;
	end;
	
	writeln('El valor maximo para x en el entorno de ',m, ' a ', n, ' es ', puntoMaximo)

end.
