program ej5;
var secuenciaFinal, i: integer;

begin
	write('Ingrese el final de la secuencia: ');
	readln(secuenciaFinal);
	
	for i:=0 to secuenciaFinal do
		if (sqr(i) - sqr(i-1) <= secuenciaFinal) then
		begin
			writeln(sqr(i));
		end;
end.



program P6E5;
var n,i, anteriorPow: integer;
begin 
    i:=0;
    write('Ingrese n: ');
    read(n);
    repeat
        anteriorPow := sqr(i);
        i :=  i+1; 
        write(sqr(i), ' ')
    until ((sqr(i) - anteriorPow)>n) 
end.
