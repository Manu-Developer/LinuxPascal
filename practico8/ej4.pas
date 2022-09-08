program Final (input, output);
var manzanas, bananas, naranjas : integer;

procedure grado (a, b : integer; var c : integer);
var manzanas : integer;

	procedure que (var d : integer);
	begin
		d := d * 2
	end;
	
begin
	que (b); {b*2}
	manzanas := 16;
	que (c) {c*2}
end;

begin
	manzanas := 2;
	bananas := 3;
	naranjas := 6;
	grado (manzanas, bananas, naranjas); {2, 3, 12}
	writeln (manzanas, bananas, naranjas)
end.
