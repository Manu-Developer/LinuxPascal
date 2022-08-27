program ej1c;

var suma,x:integer;

begin
	suma := 0;
	read (x);
	while x >= 0 do
	begin
		suma := suma + x;
		read (x)
	end;
	writeln (suma);
end.
