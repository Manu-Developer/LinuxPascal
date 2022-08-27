program ej10 (input,output);

var 
	n,i,acumulador: integer;
begin 

	write('Ingrese un valor para n: ');
	readln(n);
	acumulador:=n;
	
    for i:=n-1 downto 1 do begin
		acumulador:=acumulador*i;
		writeln(acumulador)
    end;
    
    writeln('El factorial de ',n,' es ',acumulador);
end.

