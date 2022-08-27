program ej1b;

var suma,i:integer;

begin
	suma := 0;
	i := 3;
	while i <= 7 do
	begin
		suma := suma + i;
		i := i + 2
	end;
	writeln (i, suma);
end.
