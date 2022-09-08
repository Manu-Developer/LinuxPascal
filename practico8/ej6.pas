program ej6 (input,output);
var z: integer;

{Pq z es modificado en la function pero en el procedure sin el var no es modificado z?}
function f (y : integer) : boolean;
begin
	z := z + y;
	f := y mod 2 = 0
end;

procedure a (var y : integer);
begin
	y := 2 * y;

end;

procedure b (var z : integer);
begin
	z := z + 5;
end;

begin
	readln (z); {5} {7}
	if f(z) then a(z) else b(z); {5+5=10, 5 mod 2 -> False -> b(z)->10+5->15} {7+7=14, 7 mod 2 -> False -> b(z)->14+5->19}
	writeln ('Salida = ', z)
end.
