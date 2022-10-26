program ej2;
const N = 5; {valor mayor estricto a 1}
var cadena: array [1..N] of char;
	k: integer;
	temp: char;
	
begin
	
	cadena[1]:='a';
	cadena[2]:='b';
	cadena[3]:='c';
	cadena[4]:='d';
	cadena[5]:='e';
	
	for k := 1 to (N DIV 2) do
	begin
		temp := cadena[k];
		cadena[k] := cadena[(N+1) - k];
		cadena[(N+1) - k] := temp;
	end;

	writeln(cadena[1]);
	writeln(cadena[2]);
	writeln(cadena[3]);
	writeln(cadena[4]);
	writeln(cadena[5]);
	
end.
