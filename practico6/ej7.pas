program ej7;
var m,i,n,j: integer;

begin
	write('Ingrese m: ');
	readln(m);
	
	write('Ingrese n: ');
	readln(n);
	
	
	
	for j:=m to n do
		begin
			writeln;
			writeln('>>>Tabla ',j ,' <<<');
			for i:=0 to 10 do
			begin
				writeln(i,'*',j,'=',i*j);
			end;
		end;
end.
