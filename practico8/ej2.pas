program ej2 (input, output);
var x : integer;
procedure procA (var y : integer);
begin
	y := y * 2;
end;
	
procedure procB (x : integer);
begin
	x := x + 5;
end;
	
begin
	readln(x);
	writeln;
	procB(x);
	writeln(x);
	procA(x);
	writeln(x)
end.
