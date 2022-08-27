program ej7;
var n, i: integer;
    soyPrimo:boolean;
begin 
    soyPrimo:=true;
    write('Ingrese el supuesto numero primo: ');
    read(n);
    for i:=2 to n-1 do
		if (n mod i = 0) then
			soyPrimo:=false;
	
	if(soyPrimo) then
		writeln('Soy Primo')
	else
		writeln('No soy primo')
	
end.
