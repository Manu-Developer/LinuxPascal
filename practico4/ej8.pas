program ej8 (input,output);

var 
	caracter: char;
	i,j,n: integer;
begin 
    write('Ingrese un caracter c: ');
    readln(caracter);
	write('Ingrese un valor para n: ');
    readln(n);
    
    for i:=n downto 1 do
    begin
		for j:=i downto 1 do
			write(caracter);
		writeln
    end;
end.
