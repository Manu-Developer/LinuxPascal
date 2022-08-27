program ej9 (input,output);

var 
	x,n,i,acumulador: integer;
begin 
    write('Ingrese un valor para x: ');
    readln(x);
    write('Ingrese un valor para n: ');
    readln(n);
    
    acumulador:=x;
    
    for i:=1 to n-1 do
	begin
		acumulador:=acumulador*x;
	end;
		
	writeln('El resultado de ', x, ' elevado a la ', n, ' es: ', acumulador);

end.

