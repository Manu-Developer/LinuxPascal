program ej6 (input,output);

var min,max,n,aux,i:integer;

begin
	min:=0;
	max:=0;

	writeln('Ingrese n');
	readln(n);
	
	for i:=1 to n do
		begin
			read(aux);
			
			if(aux > max) then 
				max := aux;
			if (aux< min) then
				min:= aux;
		end;
	writeln('El menor entero ingresado es: ' , min);
	writeln('El maximo entero ingresado es: ' , max)
end.
